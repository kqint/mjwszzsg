# 方案A：降低 targetSdkVersion（推荐优先尝试）

## 核心思路

将 `targetSdkVersion` 从 29 降到 **22**（Android 5.1），避开大部分现代 Android 限制，同时通过 `requestLegacyExternalStorage="true"` 解决存储问题。

## 为什么选 22 而不是 28？

| targetSdkVersion | 运行时权限 | getDeviceId() | Apache HTTP | Non-SDK灰名单 | requestLegacyStorage |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 29 (已尝试) | 需要 | 崩溃 | 需声明 | 受限 | 生效 |
| 28 | 需要 | 正常 | 需声明 | 受限 | 生效 |
| 22 | **自动授予** | 正常 | 正常 | 不受限 | **生效** |

targetSdkVersion=22 是"最后一个安全版本"——它正好是 Android 5.1 (API 22)，在运行时权限（API 23）之前。

## 预期效果

1. **不再触发 getDeviceId() 限制**：所有 29+ 处调用点全部安全，无需修补 smali
2. **Apache HTTP 类自动可用**：不需要 `<uses-library>` 声明
3. **Non-SDK 接口不受限**：23+ 处反射调用无需处理
4. **权限自动授予**：安装时所有权限自动授予，用户无需手动操作
5. **requestLegacyExternalStorage 仍生效**：Android 11 上使用旧版存储模型

## 修改内容

### AndroidManifest.xml

```xml
<uses-sdk android:minSdkVersion="8" android:targetSdkVersion="22" />

<application
    android:requestLegacyExternalStorage="true"
    android:usesCleartextTraffic="true"
    ... >
    <!-- 不需要 uses-library org.apache.http.legacy -->
</application>
```

### 其他文件（不变）

- `apktool.yml`：保留 `- so`（防止 .so 压缩）
- 所有 smali 文件：**恢复原始状态**（撤销之前对 SmsSdk.smali 和 c.smali 的修补）

> 如果不想撤销 smali 修补也可以保留——空字符串返回值不会导致崩溃，仅计费/统计功能受影响。

## 风险评估

| 风险 | 可能性 | 说明 |
|------|:--:|------|
| Android 11 强制分区存储 | 低 | `requestLegacyExternalStorage` 在 targetSdkVersion ≤ 29 时均有效 |
| Google Play 拒绝 | 无影响 | 本地安装，不上架 |
| 原生层崩溃 | 待验证 | .so 文件兼容性不依赖 targetSdkVersion |
| 权限被用户手动收回 | 低 | 即使被收回也不会像 SecurityException 一样闪退，最多功能降级 |

## 如果 targetSdkVersion=22 仍不行

退而求其次尝试 **targetSdkVersion=28**：
- 运行时权限需要手动授予（一次操作）
- 需要 `<uses-library android:name="org.apache.http.legacy"/>`
- getDeviceId() 不受限（API 28 还没引入这个限制）
- Non-SDK 接口可能受限（实测不一定崩溃，取决于具体调用的灰名单等级）

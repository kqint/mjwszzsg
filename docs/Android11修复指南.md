# 老游戏Android 11兼容性修复指南

## 问题分析

经过分析，你的游戏APK存在以下兼容性问题：

| 问题 | 严重程度 | 说明 |
|------|---------|------|
| 仅支持32位ARM | 🔴 高 | 只有armeabi库，无arm64-v8a |
| 分区存储限制 | 🔴 高 | Android 10+强制Scoped Storage |
| 运行时权限 | 🔴 高 | 提升targetSdkVersion后会触发 |
| 明文HTTP限制 | 🟡 中 | Android 9+默认禁用明文HTTP |
| 后台位置权限 | 🟢 低 | 可能需要单独申请 |

## 解决方案

### 方案1: APK修改法（推荐先尝试）

使用apktool修改AndroidManifest.xml和apktool.yml，设置兼容性参数。

**步骤：**

1. **安装必要工具**
   - 安装Java JDK: https://www.oracle.com/java/technologies/downloads/
   - 下载apktool: https://ibotpeaches.github.io/Apktool/
   - 下载后重命名为 `apktool.jar`，放在当前目录

2. **反编译APK**
   ```cmd
   java -jar apktool.jar d -o decompiled 原游戏.apk
   ```

3. **修改 apktool.yml（关键步骤，防止闪退）**

   在 `decompiled/apktool.yml` 中找到 `doNotCompress` 段，添加 `so`：
   ```yaml
   doNotCompress:
   - arsc
   - jpg
   - mid
   - mp3
   - png
   - so        # ← 必须添加！否则.so库会被压缩导致闪退
   - assets/JQ00.txt
   - assets/premessable.txt
   - assets/qa.txt
   ```

   > **为什么要加 `- so`？**
   >
   > 原始APK的 `.so` 原生库是以未压缩方式存储的，以便系统直接加载。apktool 默认会压缩所有未在 `doNotCompress` 中列出的文件类型。
   > 如果 `.so` 文件被压缩，`System.loadLibrary()` 会因无法正确加载原生库而导致 App **闪退**。这是本指南修复后闪退的直接原因。

4. **修改 AndroidManifest.xml**

   在 `decompiled/AndroidManifest.xml` 中修改以下内容：

   ```xml
   <!-- 在<manifest>标签内，<application>之前添加 -->
   <uses-sdk android:minSdkVersion="8" android:targetSdkVersion="29" />

   <!-- 在<application>标签内添加以下属性和标签 -->
   <application
       android:requestLegacyExternalStorage="true"
       android:usesCleartextTraffic="true"
       ... >
       <uses-library android:name="org.apache.http.legacy"/>
       ...原有内容...
   </application>
   ```

   > **需要同时添加 `<uses-library android:name="org.apache.http.legacy"/>`**：
   > - Android 9 (API 28) 起移除了 `org.apache.http.*` 类，targetSdkVersion=29 需要显式声明该库
   > - 本游戏大量使用 `DefaultHttpClient`，缺少此声明会导致 `NoClassDefFoundError`
   >
   > **注意：`targetSdkVersion` 必须是 `29` 而不是 `28`**：
   > - Android 11 上 `requestLegacyExternalStorage` 仅在 `targetSdkVersion=29` 时生效
   > - 如果设为 28，该标志在 Android 11 上会被忽略，分区存储仍然强制开启
   > - 不需要添加 `extractNativeLibs` 属性（步骤3已通过不压缩.so解决了加载问题）

5. **修补 smali 代码（关键步骤，防止 IMEI 限制导致闪退）**

   Android 10 (API 29) 起，`getDeviceId()` 和 `getSimSerialNumber()` 需要系统级权限，普通应用调用会直接抛 `SecurityException`。
   本游戏在主线程 `onCreate` 中直接调用这些方法，无 try-catch 保护，必须修补。

   **5a. 修补 `SmsSdk.init()` 中的 4 个调用点**

   编辑 `decompiled/smali/com/gamedo/v360/SmsSdk.smali`，找到 `init` 方法中的以下调用，全部替换为 `const-string v21, ""`：

   | 原调用 | 替换为 |
   |--------|--------|
   | `invoke-virtual {v15}, ...->getLine1Number()` + `move-result-object v21` | `const-string v21, ""` |
   | `invoke-virtual {v15}, ...->getSubscriberId()` + `move-result-object v21` | `const-string v21, ""` |
   | `invoke-virtual {v15}, ...->getDeviceId()` + `move-result-object v21` | `const-string v21, ""` |
   | `invoke-virtual {v15}, ...->getSimSerialNumber()` + `move-result-object v21` | `const-string v21, ""` |

   > 这会导致游戏获取不到 IMEI/IMSI/ICCID，但不影响单机游戏运行，仅影响计费/统计功能。

   **5b. 修补 `cn/cmgame/sdk/sms/c.smali` 中的 `n()` 和 `o()` 方法**

   这两个方法在 `GameInterface.initializeApp()` 中被调用（中国移动用户场景），分别调用 `getDeviceId()` 和 `getSubscriberId()`。

   将 `n()` 方法体替换为直接返回 `"@@@@@@@@@"`，将 `o()` 方法体替换为直接返回 `"0"`。

6. **重新打包**
   ```cmd
   java -jar apktool.jar b -o 游戏_fixed.apk decompiled
   ```

7. **签名APK**

   使用debug key签名（仅测试用）：
   ```cmd
   keytool -genkey -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -validity 10000 -dname "CN=Android Debug"

   jarsigner -verbose -keystore debug.keystore -storepass android 游戏_fixed.apk androiddebugkey
   ```

8. **对齐优化（可选）**
   ```cmd
   zipalign -v 4 游戏_fixed.apk 游戏_final.apk
   ```
   如果没有安装Android SDK，可以跳过此步（不影响运行）。

9. **安装后必须手动授予权限**

   由于修改后的 `targetSdkVersion=29`（≥23），系统会强制要求运行时权限。但游戏代码本身不会主动弹出权限请求窗口，因此**安装后必须手动操作**：

   > 设置 → 应用 → 找到游戏 → 权限 → 开启「存储空间」「电话」「短信」

   否则游戏将无法读写存档、获取设备信息、或使用短信支付功能。

## 问题分析（深度）

### 将 targetSdkVersion 提升到 29 的副作用分析

本 APK 原始未声明 targetSdkVersion（Android 系统按极低值给予大量兼容垫片）。将其提升到 29 后，系统会移除所有兼容垫片，触发以下 API 限制变更：

---

### 问题1：`getDeviceId()` / `getSimSerialNumber()` 抛出 SecurityException（概率最高）

**原因**：Android 10 (API 29) 起，`TelephonyManager.getDeviceId()` 和 `getSimSerialNumber()` 需要 `READ_PRIVILEGED_PHONE_STATE` 权限（仅系统应用可获取），普通应用即使持有 `READ_PHONE_STATE` 权限也会收到 `SecurityException`。

**影响范围**（反编译代码中存在的直接调用，均无 try-catch 保护）：

| 文件 | 行号 | 调用 | 调用时机 |
|------|------|------|---------|
| `com/gamedo/v360/SmsSdk.smali` | 871 | `getDeviceId()` | **主线程 onCreate** |
| `com/gamedo/v360/SmsSdk.smali` | 878 | `getSimSerialNumber()` | **主线程 onCreate** |
| `com/gamedo/v360/SmsSdk.smali` | 864 | `getSubscriberId()` | **主线程 onCreate** |
| `cn/game189/sms/SMS.smali` | 918 | `getDeviceId()` | 游戏启动时 |
| `com/a/f.smali` | 283 | `getDeviceId()` | 渠道SDK初始化 |
| `safiap/.../DeviceInfo.smali` | 133 | `getDeviceId()` | 360SDK初始化 |
| `mm/purchasesdk/core/l/g.smali` | 382 | `getSimSerialNumber()` | 支付SDK初始化 |
| `com/ccit/mmwlan/b/a.smali` | 59,108 | `getDeviceId()` | 咪咕SDK初始化 |
| `com/ccit/mmwlan/phone/MMClientSDK_ForPhone.smali` | 1229 | `getDeviceId()` | 咪咕SDK初始化 |

**总计**：29+ 个调用点，覆盖 **7个不同的SDK组件**，全部未做异常保护。

---

### 问题2：Apache HTTP Client 类缺失（概率较高）

**原因**：`org.apache.http.*` 从 Android 9 (API 28) 起被从 boot classpath 中移除。对于未声明 targetSdkVersion 的老应用，系统通过兼容垫片保留访问；但对于 `targetSdkVersion >= 28` 的应用，这些类不再自动可用，需显式声明 `<uses-library android:name="org.apache.http.legacy"/>`。

**影响范围**（20+ 个文件使用 Apache HTTP）：

| 主要使用方 | 用途 |
|------------|------|
| `com/gamedo/v360/SmsSdk.smali` | `DefaultHttpClient` 发起 HTTP 请求 |
| `cn/cmgame/billing/a/*.smali` (7个) | CMGame 计费 SDK |
| `com/ccit/mmwlan/**/*.smali` (6个) | 咪咕 SDK |
| `com/a/*.smali` (3个) | 渠道 SDK |
| `mm/purchasesdk/**/*.smali` (3个) | 支付 SDK |
| `safiap/framework/**/*.smali` (2个) | 360 SDK |

---

### 问题3：Non-SDK 接口限制

**原因**：Android 9 (API 28) 起逐步限制访问隐藏/非公开 API。targetSdkVersion=29 会对灰名单 API 施加更严格的限制。

**反编译中发现的反射/隐藏 API 使用**（23+ 文件）：

| 类型 | 示例 |
|------|------|
| `Class.forName()` 动态加载 | `android.os.SystemProperties`、运营商私有类 |
| `Method.invoke()` | 大量反射调用隐藏方法 |
| `Field.setAccessible()` | 访问非公开字段 |
| `getDeclaredMethod()` | 获取隐藏方法句柄 |

主要分布在：`cn/cmgame/sdk/e/j.smali`、`com/ccit/mmwlan/b/c.smali`、`mm/purchasesdk/fingerprint/c.smali`、`cn/cmgame/sdk/sms/b.smali`、`cn/cmgame/sdk/sms/c.smali` 等支付/渠道 SDK 中。

---

### 问题4：Activity 横屏锁定兼容性

**原因**：`sanguoAndroid360` 声明了 `android:screenOrientation="landscape"`。当 targetSdkVersion ≥ 27 时，固定屏幕方向的 Activity 在支持多窗口模式的设备上可能触发 `IllegalStateException`。

---

### 根本矛盾

提升 `targetSdkVersion` 到 29 的**目的**是为了让 `android:requestLegacyExternalStorage="true"` 在 Android 11 上生效。但此操作同时触发了至少 **4 类破坏性行为变更**，涉及 **50+ 个文件**。

**本质**：这个 APK 的代码是为 Android 2.x/4.x 时代编写的，强行将 targetSdkVersion 提升到 29 需要大量代码级适配，单纯修改 AndroidManifest 无法解决。

---

## 常见问题

### Q: 支付相关功能是否受影响？

A: 本游戏的反编译分析发现以下风险：
1. `libidentifyapp.so` 含有原生方法 `getAppSignature()`，用于支付SDK获取签名
2. 重新签名APK会导致签名值变化，支付服务器可能拒绝交易
3. 如果仅玩单机内容（不付费），此问题不影响游戏运行

### Q: 如何检查设备是否支持32位应用？

A: 安装"CPU-Z"应用，查看支持的ABI。如果只有arm64-v8a，则需要方案3（虚拟机/云手机）。

### Q: 游戏黑屏怎么办（非闪退）？

A: 尝试以下方法：
1. **先确认已在 apktool.yml 中添加 `- so`**
2. 授予所有权限（尤其是存储权限）
3. 关闭MIUI优化（开发者选项）
4. 在开发者选项中启用"允许模拟点击位置"

### Q: 如何添加64位库支持？

A: 需要游戏的64位so库文件。如果官方没有提供，可以尝试：
1. 联系游戏开发商
2. 使用其他渠道的64位版本
3. 使用ARM转译器（如libhoudini，需要Root）

## 附录: Android版本对应关系

| API级别 | Android版本 | 主要变化 |
|---------|-------------|---------|
| 23 | 6.0 | 运行时权限 |
| 24 | 7.0 | 文件URI暴露限制 |
| 26 | 8.0 | 后台执行限制 |
| 28 | 9.0 | 禁止明文HTTP |
| 29 | 10.0 | 分区存储 |
| 30 | 11.0 | 包可见性限制、分区存储强制 |
| 31+ | 12+ | 32位应用淘汰 |

## 结论与建议

方案1（纯 Manifest 修改 + targetSdkVersion=29）在此 APK 上**不可行**，因为：

- 提升 targetSdkVersion 到 29 会同时触发 **IMEI 访问限制、Apache HTTP 移除、Non-SDK API 限制、多窗口兼容** 等多项破坏性变更
- 涉及的 50+ 个文件、7+ 个 SDK 全部需要进行 smali 级代码修补，工作量和风险都很高
- 仅修改 AndroidManifest 无法解决闪退问题

### 替代方案

| 方案 | 可行性 | 说明 |
|------|--------|------|
| **方案A：不提升 targetSdkVersion** | 待验证 | 保留原始 targetSdkVersion（不声明），仅添加 `usesCleartextTraffic="true"`。Android 11 上分区存储仍生效，需依赖设备厂商的兼容模式 |
| **方案B：虚拟机** | ✅ | 使用 VMOS / vmos pro 等虚拟机运行，虚拟机内 Android 版本可控 |
| **方案C：云手机** | ✅ | 使用红手指、多多云等云手机服务 |
| **方案D：Smali 全量修补** | 困难 | 修补所有受影响的 SDK 调用（工程量极大，不推荐） |

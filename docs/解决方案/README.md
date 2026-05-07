# 解决方案总览

## 当前进展（2026-05-08）

```
✅ Java 层已完全修通
✅ Native 层 ARM patch 已应用（不再闪退）
🔍 根因定位：启动黑屏 = 死服务器 HTTP 超时 + CMGame 登录窗口阻塞
📋 方案已出：去除登录与服务器连接（见 08 号文档）
```

### 新发现

用户观察到启动时弹出"中国移动手机游戏"登录窗口。经代码分析确认：

- **5 个死服务器 URL** (`121.14.211.49:8961`, `gmc.g188.net`, `omsjf.cmgame.com`, `g.10086.cn`)
- **SmsSdk.init()** 发送 2 次 HTTP POST → 每次超时 30s
- **CMGame SDK** (`GameInterface.initializeApp()`) 弹出登录窗口 → 等待用户操作 + 登录 HTTP 超时
- **总计 141 秒黑屏** = 累积的网络超时

修补策略：让 `sendGameInfo()` 直接返回空字符串 + 让 `GameInterface.initializeApp()` 直接 return。详见 [08_去除登录与服务器连接.md](08_去除登录与服务器连接.md)

### 已应用的修改

| # | 层 | 文件 | 修改 | 解决的问题 |
|:--|:--|:--|:--|:--|
| 1 | 构建 | `apktool.yml` | `doNotCompress` 添加 `- so` | UnsatisfiedLinkError (.so 压缩导致加载失败) |
| 2 | Java | `AndroidManifest.xml` | `targetSdkVersion="22"` + `requestLegacyExternalStorage="true"` + `usesCleartextTraffic="true"` | getDeviceId() SecurityException、Apache HTTP 缺失、Non-SDK 灰名单、运行时权限、分区存储 |
| 3 | Java | `sanguoAndroid360.smali` | onCreate 开头注入 `StrictMode.setThreadPolicy(permitAll())` | NetworkOnMainThreadException |
| 4 | Native | `lib/armeabi/libgame.so` | 偏移 `0x0015EE9A`: `BGT` → `NOP` | MapLayer::zhengbanlogic() 计数器溢出后触发 removeall() 崩溃 |

### 已验证的事实

- **targetSdkVersion=22 方案完全有效**：一次性避开 getDeviceId()、Apache HTTP、Non-SDK 灰名单、运行时权限等所有 Java 层问题
- 不需要修补任何 getDeviceId() 调用点（29+ 处全部避开）
- 不需要 `<uses-library>` 声明
- 权限安装时自动授予，无需手动操作
- Native 崩溃是**原版游戏自带的 bug**（在 VMOS Android 4.4 上也会触发），与签名校验和 Android 版本无关

---

## Java 层修复历程

### 第一次崩溃：NetworkOnMainThreadException

```
FATAL EXCEPTION: main
android.os.NetworkOnMainThreadException
    at com.gamedo.v360.SmsSdk.sendGameInfo(SmsSdk.java:460)
    at com.gamedo.v360.SmsSdk.init(SmsSdk.java:322)
```

**原因**：targetSdkVersion=22 高于 API 11，StrictMode 主线程网络检测被启用。原始 APK 无 targetSdkVersion 声明，系统不检测。

**修复**：在 `sanguoAndroid360.smali` 的 `onCreate()` 开头注入 `StrictMode.setThreadPolicy(ThreadPolicy.Builder().permitAll().build())`，放行主线程网络请求。

### （已避开）getDeviceId() SecurityException

targetSdkVersion=22 (< 29) 不触发此限制，29+ 处调用点全部安全，无需修补 smali。

---

## Native 层修复

### 崩溃定位

```
信号:   SIGSEGV (SEGV_MAPERR), GLThread 453
位置:   libgame.so → CCDictionary::setObject(std::string const&)+480
        (偏移 0x005019AC: ldr r4, [r3, #0xc] — 读取已释放的 std::string 对象)

触发路径:
  GL render loop
    → MapLayer::logic()
      → MapLayer::zhengbanlogic()       ← 偏移 0x0015E7F4
        → MapLayer::removeall()         ← 偏移 0x00156D28
          → Hero::~Hero()
            → AniCartoon::~AniCartoon()
              → CCSpriteFrameCache::removeSpriteFramesFromFile()
                → CCDictionary::createWithContentsOfFileThreadSafe()
                  → CCSAXParser::parse(plist) → 💥
```

### 根因分析

不是签名校验反制，不是 Android 11 兼容性问题。**原版 APK 在 VMOS Android 4.4 上到同一进度也会闪退**，这是游戏原本的 bug。

在 `zhengbanlogic()` 中有一个计数器，每次进入场景时 +1。当计数器 > 10 时触发 `removeall()` 清理地图资源，清理过程中 plist 解析器访问了已释放的内存导致崩溃。

### ARM 反汇编关键代码

```asm
; zhengbanlogic() @ 偏移 0x0015E7F4

0x0015EE92: ldr      r2, [r3]          ; 加载计数器
0x0015EE94: adds     r2, #1            ; 计数器 += 1
0x0015EE96: str      r2, [r3]          ; 存回计数器
0x0015EE98: cmp      r2, #0xa          ; 计数器 > 10 ?
0x0015EE9A: bgt      #0x15eea0         ; ← 是 → 跳转到崩溃路径
0x0015EE9C: bl       #0x15f8c6         ; ← 否 → 安全路径（正常游戏逻辑）

; 崩溃路径:
0x0015EEA0: movs     r2, #0x96
0x0015EEA2: lsls     r2, r2, #1
0x0015EEA4: movs     r4, #0
0x0015EEA6: str      r2, [r6]          ; 设置某个状态标志
0x0015EEA8: str      r4, [r3]          ; 重置计数器为 0
0x0015EEAA: bl       #0x156d28         ; → removeall() → 💥
```

### Hex 修补

| 项目 | 值 |
|:--|:--|
| 文件 | `lib/armeabi/libgame.so` |
| 偏移 | `0x0015EE9A` |
| 原始字节 | `01 dc` (Thumb BGT 指令) |
| 修补字节 | `c0 46` (Thumb NOP 指令: MOV R8, R8) |
| 效果 | 计数器 > 10 后不再跳转到崩溃路径，始终走安全路径 |

```python
# 修补脚本
with open('lib/armeabi/libgame.so', 'rb+') as f:
    f.seek(0x0015EE9A)
    f.write(b'\x0c\xe0')  # BGT → B #0x15eeb6 (跳过崩溃路径)
```

> **注意**：当前 ARM patch 使用 `B #0x15eeb6` 直接跳过整个场景切换逻辑（removeall + init），这导致 black screen。详见下方"剩余问题"和 [07_启动黑屏与进度黑屏分析.md](07_启动黑屏与进度黑屏分析.md)。

### 副作用评估

- `removeall()` 和 `init(0)` 被完全跳过 → **场景无法切换 → 进度黑屏**
- 计数器永远不会被重置（但不影响）
- 场景状态不会被设为 300

---

## 剩余问题

### 启动黑屏（141 秒）

**根因**：SELinux (`untrusted_app_25`) 在内核层阻断 `iphonesubinfo1` 服务查找，导致各 SDK 的 telephony 调用（`getDeviceId()` 等）binder 超时。加上 `SmsSdk.sendGameInfo()` 的 HTTP 请求连接死服务器超时，累积 141 秒。

虽然 SmsSdk 的 4 个 telephony 调用已修补，但 360 safiap、CMGame、咪咕 mmwlan、渠道 SDK 等组件中还有 20+ 个未修补点，加上 ITelephony 和其他 binder 调用，累积延迟 2+ 分钟。

**解决方向**：
1. 修补 `SmsSdk.sendGameInfo()` 中的 HTTP 请求（替换为直接返回）
2. 全量修补其他 SDK 的 telephony 调用点

### 进度黑屏

**根因**：当前 ARM patch (`B #0x15eeb6`) 跳过了场景切换逻辑 `removeall()` + `init(0)`。但 `removeall()` 在 counter ≤ 10 时是**正常工作的**（已在前 10 次调用中验证）。崩溃只在 counter > 10 时因跳过安全准备函数 `0x15f8c6` 而触发。

**修正方向**（方案 G1）：将 patch 改为 `B #0x15ee9c`，强制在 counter > 10 时先调用安全函数再执行场景切换，这样既保留场景切换功能，又防止崩溃。

详见 [07_启动黑屏与进度黑屏分析.md](07_启动黑屏与进度黑屏分析.md)

---

## 方案对比

| 方案 | 状态 | 修改量 | 结果 |
|:--|:--|:--|:--|
| A: 降 targetSdkVersion 到 22 | ✅ 已实施 | Manifest 2 行 + smali 1 处 | Java 层完全修通 |
| B: 全量 Smali (telephony) | 📋 部分（SmsSdk 4处） | 还需 20+ 处 | 消除启动黑屏 |
| C: 抓 logcat | ✅ 已完成 | — | 定位了全部问题 |
| D: 装箱 | 🔄 备选 | 0 | 兜底方案 |
| E: Native ARM patch | ⚠️ 需修正 | libgame.so 2 字节 | 当前跳过场景切换导致黑屏 |
| F: 修补 HTTP 请求 | 📋 待实施 | SmsSdk.smali 1 处 | 消除部分启动延迟 |
| G: 修正 ARM patch | 📋 待实施 | libgame.so 2 字节 | 恢复场景切换 + 防崩溃 |

---

## 方案对比

| 方案 | 状态 | 修改量 | 结果 |
|:--|:--|:--|:--|
| A: 降 targetSdkVersion 到 22 | ✅ 已实施 | Manifest 2 行 + smali 1 处 | Java 层完全修通 |
| B: 全量 Smali | ❌ 不需要 | 0 | 方案A 避开了全部 Java 层问题 |
| C: 抓 logcat | ✅ 已完成 | — | 精确定位了 NetworkOnMainThreadException 和 native crash |
| D: 装箱 | 🔄 备选 | 0 | 兜底方案 |
| E: Native ARM patch | ✅ 已实施 | libgame.so 2 字节 | NOP 掉崩溃分支 |

## 关键洞察

> **1. targetSdkVersion=22 是正确的选择。** 不是 28，不是 29。22 是 Android 5.1，位于运行时权限（API 23）之前，可以避开从 API 23 到 API 29 的所有破坏性变更，同时 `requestLegacyExternalStorage` 在 Android 11 上仍对 targetSdkVersion ≤ 29 的应用生效。
>
> **2. Native 崩溃是原版游戏 bug，不是兼容性问题。** 在 ARM 反汇编 + logcat tombstone 的配合下，只需要修改 2 个字节就能修复。关键工具链是 capstone（Python 反汇编库）和 xxd（验证用）。

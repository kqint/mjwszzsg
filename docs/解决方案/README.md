# 解决方案总览

## 当前进展（2026-05-08）

```
✅ Java 层已完全修通（启动 141s → 0.4s）
✅ Native 层不再闪退
✅ plist 解析崩溃已阻止（P1 修正版）
❌ 进度黑屏：12 次 ARM patch 全部无法解决
🔍 根因：init(0) 在登录门处创建空场景，无法通过二进制 patch 修复
📋 务实方案：装箱（VMOS）/ 深入反汇编 init()
```

### 核心矛盾

```
zhengbanlogic 运行 → UI/交互正常 → 触发 init(0) → 空场景 → 黑屏
zhengbanlogic 不运行 → 场景正常渲染 → 但无UI无交互 → 无法游玩
```

### plist 崩溃有两条路径

```
路径A: zhengbanlogic → removeall → Hero::~Hero → AniCartoon::clear()+244 → 💥
路径B: MapLayer::logic → removenpc → Npc::~Npc → AniCartoon::clear()+150 → 💥
```

P1 修正版（`0x0052C3C2`→bx lr）同时阻止两条路径，已不闪退。

---

## 所有已尝试方案

### Java 层

| 方案 | 修改 | 结果 |
|:--|:--|:--|
| targetSdkVersion=29 | Manifest | ❌ 闪退（SecurityException） |
| **targetSdkVersion=22** | Manifest | ✅ Java 层全通 |
| **StrictMode.permitAll()** | smali | ✅ NetworkOnMainThread 修复 |
| 修补 getDeviceId() 等 4 调用 | SmsSdk.smali | ✅ 消除 binder 超时 |
| **sendGameInfo() → return ""** | SmsSdk.smali | ✅ 消除 HTTP 超时 |
| **initializeApp() → return-void** | GameInterface.smali | ✅ 消除登录窗口 |

### Native 层

| 方案 | 偏移 | 修改 | 结果 |
|:--|:--|:--|:--|
| NOP-BGT | `0x15EE9A` | `bgt` → `nop` | ❌ 黑屏 |
| B-skip | `0x15EE9A` | → `b #0x15eeb6` | ❌ 黑屏 |
| **B-safe** | `0x15EE9A` | → `b #0x15ee9c` | ⚠️ 不闪退（保留） |
| H1 | `0x15FAC0` | → `nop;nop` | ⚠️ **唯一有效**：有画面无UI |
| H3 | `0x15EE94` | → `movs r2,#0` | ❌ 黑屏（保留） |
| N1 | `0x558440` | curl_easy_perform → ret 7 | ❌ 黑屏（保留） |
| P1 (错) | `0x52C3B0` | → bx lr | ❌ 打错函数 |
| **P1 (正)** | `0x52C3C2` | → bx lr | ✅ 阻止 plist 解析，仍黑屏 |
| **L1** | `sanguoAndroid360` | denglu/guanka = 0 | ❌ 黑屏（闪退一次） |

### 当前生效的 patch（10 处）

| # | 文件 | 修改 | 目的 |
|:--|:--|:--|:--|
| 1 | `apktool.yml` | `- so` | 防 .so 压缩 |
| 2 | `AndroidManifest.xml` | `targetSdkVersion="22"` + 3 属性 | Java 全通 |
| 3 | `sanguoAndroid360.smali` | StrictMode.permitAll() | 主线程网络 |
| 4 | `SmsSdk.smali` | 4 telephony → `const-string ""` | binder 超时 |
| 5 | `SmsSdk.smali` | `sendGameInfo()` → `return ""` | HTTP 超时 |
| 6 | `GameInterface.smali` | `initializeApp()` → `return-void` | 登录窗口 |
| 7 | `libgame.so:0x15EE9A` | `bgt` → `b #0x15ee9c` | 防闪退 |
| 8 | `libgame.so:0x15EE94` | `adds r2,#1` → `movs r2,#0` | 计数器=0 |
| 9 | `libgame.so:0x558440` | `curl_easy_perform` → `return 7` | native HTTP stub |

---

## 关键洞察

> **1. targetSdkVersion=22 是正确选择**。不是 28，不是 29。22 (Android 5.1) 在运行时权限之前，避开 API 23-29 的全部破坏性变更。
>
> **2. Java 层 HTTP 和 Native 层 libcurl 是两层**。Java 层已 stub，Native libcurl 也已 stub（但非根因）。
>
> **3. 根因是 CCDictionary::setObject() 的堆损坏**。所有 ARM patch 无效是因为 `removeall()` 仍被调用。唯一有效的是直接阻止 plist 解析（P1）。
>
> **4. zhengbanlogic 是 30+ 状态游戏状态机**，不只是计数器函数。

---

## 文档索引

| 文档 | 内容 |
|:--|:--|
| [01_核心问题分析](01_核心问题分析.md) | 为什么 targetSdkVersion=29 注定失败 |
| [02_方案A_降低targetSdkVersion](02_方案A_降低targetSdkVersion.md) | targetSdkVersion=22 策略 |
| [03_方案B_全量Smali修补](03_方案B_全量Smali修补.md) | ❌ 不再需要（方案A 已避开） |
| [04_方案C_抓取logcat](04_方案C_抓取logcat.md) | logcat 诊断指南 |
| [05_方案D_装箱方案](05_方案D_装箱方案.md) | VMOS/云手机兜底 |
| [06_方案E_Native层ARM修补](06_方案E_Native层ARM修补.md) | ARM 反汇编 + hex patch 方法 |
| [07_启动黑屏与进度黑屏分析](07_启动黑屏与进度黑屏分析.md) | ❌ 部分过时（早期分析） |
| [08_去除登录与服务器连接](08_去除登录与服务器连接.md) | sendGameInfo/initializeApp stub |
| [09_进度黑屏深度分析](09_进度黑屏深度分析.md) | H1/H3 尝试分析 |
| [10_Native层深度分析](10_Native层深度分析与修复方向.md) | libcurl 发现 + 状态机分析 |
| [11_原版对比与最终方向](11_原版对比与最终方向.md) | 原版 vs 修补版对比 + P1 方案 |

# 方案B：全量 Smali 修补 ❌ 已废弃

> **2026-05-08**：targetSdkVersion=22 方案已完全避开所有 Java 层问题，不再需要全量 Smali 修补。本文保留仅供存档。

## 适用场景

方案A（降低 targetSdkVersion）失败，且你有耐心逐一修补所有调用点。

## 核心思路

一次性修补所有 29+ 处 `getDeviceId()` / `getSubscriberId()` / `getSimSerialNumber()` 调用，而不是像之前那样只修补 6 处。

## 全量调用点清单

需要修补的**所有**文件（基于已有分析，不受是否在启动路径影响）：

### 第一优先级（启动路径，绝对会触发）

| # | 文件 | 方法 | 调用 | 行号 |
|---|------|------|------|------|
| 1 | `com/gamedo/v360/SmsSdk.smali` | `getLine1Number` | getLine1Number() | 847 |
| 2 | `com/gamedo/v360/SmsSdk.smali` | `getSubscriberId` | getSubscriberId() | 864 |
| 3 | `com/gamedo/v360/SmsSdk.smali` | `getDeviceId` | getDeviceId() | 871 |
| 4 | `com/gamedo/v360/SmsSdk.smali` | `getSimSerialNumber` | getSimSerialNumber() | 878 |
| 5 | `cn/cmgame/sdk/sms/c.smali` | `n()` | getDeviceId() | 341 |
| 6 | `cn/cmgame/sdk/sms/c.smali` | `o()` | getSubscriberId() | 409 |

✅ 这 6 处已在尝试三中修补。

### 第二优先级（SDK 初始化路径，很可能触发）

| # | 文件 | 行号 | 调用 |
|---|------|------|------|
| 7 | `cn/game189/sms/SMS.smali` | 918 | getDeviceId() |
| 8 | `com/a/f.smali` | 283 | getDeviceId() |
| 9 | `com/a/f.smali` | 450 | getSubscriberId() |
| 10 | `com/ccit/mmwlan/b/a.smali` | 59 | getDeviceId() |
| 11 | `com/ccit/mmwlan/b/a.smali` | 108 | getDeviceId() |
| 12 | `com/ccit/mmwlan/phone/MMClientSDK_ForPhone.smali` | 1229 | getDeviceId() |
| 13 | `com/ccit/mmwlan/phone/MMClientSDK_ForPhone.smali` | 1401 | getSubscriberId() |
| 14 | `com/ccit/mmwlan/phone/MMClientSDK_ForPhone.smali` | 1565 | getSubscriberId() |
| 15 | `com/ccit/mmwlan/phone/MMClientSDK_ForPhone.smali` | 1711 | getSubscriberId() |
| 16 | `com/ccit/mmwlan/phone/MMClientSDK_ForPhone.smali` | 1743 | getDeviceId() |
| 17 | `com/ccit/mmwlan/MMClientSDK_ForPad.smali` | 1021 | getDeviceId() |
| 18 | `safiap/.../DeviceInfo.smali` | 133 | getDeviceId() |
| 19 | `safiap/.../DeviceInfo.smali` | 455 | getSubscriberId() |
| 20 | `mm/purchasesdk/core/l/g.smali` | 382 | getSimSerialNumber() |

### 第三优先级（后台/延迟触发）

| # | 文件 | 行号 | 调用 |
|---|------|------|------|
| 21 | `safiap/.../LogreportHandler.smali` | 1196 | getDeviceId() |
| 22 | `cn/cmgame/sdk/e/j.smali` | 3854 | getSubscriberId() |
| 23 | `com/infinit/.../PhoneInfoTools.smali` | 478 | getDeviceId() |
| 24 | `com/infinit/.../PhoneInfoTools.smali` | 501 | getSubscriberId() |

## 快速定位脚本

用 grep 精确定位所有调用点：

```bash
# 查找所有 getDeviceId 调用
grep -rn "Landroid/telephony/TelephonyManager;->getDeviceId" smali/

# 查找所有 getSubscriberId 调用
grep -rn "Landroid/telephony/TelephonyManager;->getSubscriberId" smali/

# 查找所有 getSimSerialNumber 调用  
grep -rn "Landroid/telephony/TelephonyManager;->getSimSerialNumber" smali/
```

## 修补模板

对于每个调用点，将：
```smali
invoke-virtual {vX}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object vY
```
替换为：
```smali
const-string vY, ""
```
**注意**：vY 必须和原来的 move-result-object 目标寄存器一致。

## 风险

1. **工作量大**：需逐一确认 24+ 个调用点的寄存器分配
2. **可能遗漏**：grep 可能漏掉通过反射调用的 getDeviceId（如 `Method.invoke()` 方式）
3. **Native 崩溃无法解决**：如果是 .so 层崩溃，smali 修补无效
4. **每次 rebuild 耗时**：修补一处 → rebuild → 安装 → 测试 → 崩溃 → 修补下一处，迭代次数多

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **decompiled APK** (apktool 3.0.1 output) of an old Cocos2dx Android game ("猛将无双之战三国" / Three Kingdoms), 360 channel, circa 2014. The goal is to make it run on Android 11+.

- Package: `com.gamedo.v360`
- APK: `mjwszzsg.apk` (versionName 1.7, versionCode 1)
- Only `armeabi` (32-bit ARM) native libs: `libgame.so` (7.7MB, embeds libcurl 7.26.0 + Cocos2dx), `libidentifyapp.so`, `libcasdkjni.so`
- Integrates 7 SDKs: 360 safiap, mm purchasesdk, CMGame billing, 咪咕 mmwlan, multimode_billing, cn.game189.sms, com.a (channel SDK)

## Current Status (2026-05-09)

**What works:**
- APK installs and launches on Android 11 (Realme RMX3031)
- Startup time: ~0.4s (was 141s before network stubs)
- Game renders, audio plays, characters animate
- No crashes (Java or native)
- Z1+Z2+Z3 patches: zhengban gate disabled → first level loads correctly
- B1 patch: purchase buttons no longer freeze the game

**What's broken:**
- "木牛流马" (game mechanic) shows black screen at a specific point
- Re-entering the first level causes character to freeze (UI visible)
- Likely remaining zhengbanFlag checks or missing server data

**Root cause of most issues:** `HeroShuXing::zhengbanFlag` defaults to `true` (1) when loaded from `CCUserDefault`. This triggers "genuine version" paths that need dead server data. Z1+Z2+Z3 patches force it to `false`.

## Active Modifications

All modifications are applied directly to the decompiled source. The APK is rebuilt from this directory.

### Java/Smali (all in effect)

| File | Change |
|------|--------|
| `apktool.yml` | `doNotCompress` includes `- so` |
| `AndroidManifest.xml` | `targetSdkVersion="22"`, `requestLegacyExternalStorage="true"`, `usesCleartextTraffic="true"` |
| `smali/com/gamedo/v360/sanguoAndroid360.smali` | `onCreate()` begins with `StrictMode.setThreadPolicy(permitAll())` |
| `smali/com/gamedo/v360/sanguoAndroid360.smali` | `denglu` field init: -1 → 0, `guanka` field init: -1 → 0 |
| `smali/com/gamedo/v360/SmsSdk.smali` | `init()`: 4 telephony calls (getLine1Number/getSubscriberId/getDeviceId/getSimSerialNumber) → `const-string v21, ""` |
| `smali/com/gamedo/v360/SmsSdk.smali` | `sendGameInfo()`: early return `const-string v0, ""` + `return-object v0` inserted after `.prologue` |
| `smali/com/gamedo/v360/SmsSdk.smali` | `sendSms(II)V`: `return-void` inserted after `.prologue` (prevents billing freeze) |
| `smali/cn/cmgame/billing/api/GameInterface.smali` | `initializeApp(Activity)`: entire body replaced with just `return-void` |

### Native/ARM (libgame.so hex patches, all in effect)

| Offset | Original | Patched | Effect |
|--------|----------|---------|--------|
| `0x0015EE9A` | `01 dc` (BGT) | `ff e7` (B #0x15ee9c) | Always call safe func before crash path |
| `0x0015EE94` | `01 32` (adds r2, #1) | `00 22` (movs r2, #0) | Counter always 0 |
| `0x0052C3C2` | `f0 b5` (push {r4-r7,lr}) | `70 47` (bx lr) | removeSpriteFramesFromFile → instant return |
| `0x00558440` | `70 b5 04 1c` (push; adds) | `07 20 70 47` (movs r0,#7; bx lr) | curl_easy_perform → instant error |
| `0x00243EEE` | `1b d0` (BEQ zhengban path) | `1b e0` (B skip zhengban) | getNowMapIndex: skip zhengban gate (Z1) |
| `0x001F0C20` | `01 22` (MOVS R2, #1) | `00 22` (MOVS R2, #0) | loadJF: zhengbanFlag default = 0 (Z2) |
| `0x001F0E7C` | `01 22` (MOVS R2, #1) | `00 22` (MOVS R2, #0) | loadZB: zhengbanFlag default = 0 (Z3) |

## Build / Rebuild / Install Cycle

```bash
# Rebuild APK
java -jar apktool.jar b -o mjwszzsg_fixed.apk .

# Sign (debug.keystore already exists)
jarsigner -verbose -keystore debug.keystore -storepass android \
  mjwszzsg_fixed.apk androiddebugkey

# Install
adb install -r mjwszzsg_fixed.apk
```

Use the `rebuild` skill for the full cycle.

## ARM Binary Patching Conventions

When patching `lib/armeabi/libgame.so` (32-bit ARM ELF, Thumb mode, stripped but has dynamic symbols):

### Finding symbols
```bash
readelf -s lib/armeabi/libgame.so | grep <function_name>
```
Dynamic symbols are preserved even though debug symbols are stripped. Function offsets have bit 0 set for Thumb mode (e.g. `0x00558441` = Thumb entry at `0x00558440`).

### Common Thumb patches
```asm
; Return integer (e.g. make function return error code)
movs r0, #N        ; 2 bytes: NN 20 (N < 256)
bx   lr            ; 2 bytes: 70 47

; Unconditional branch
b    #target       ; 2 bytes: encoding = 11100 + signed_imm11

; NOP (16-bit)
movs r8, r8        ; 2 bytes: c0 46
; or
nop-like           ; 2 bytes: 00 bf

; Replace 32-bit Thumb2 BL with two 16-bit NOPs
; BL instruction is 4 bytes, replace with two NOPs (4 bytes total)
```

### Key offsets in libgame.so

| Offset | Function/Symbol | Purpose |
|--------|----------------|---------|
| `0x0015E7F4` | `MapLayer::zhengbanlogic()` | Game state machine (30+ states) |
| `0x00156D28` | `MapLayer::removeall()` | Scene cleanup (triggers crash) |
| `0x0015DA90` | `MapLayer::restart(int)` | Scene re-initialization |
| `0x0015EE9A` | BGT in state 194 | Counter threshold check (our patch site) |
| `0x0015FAC0` | BL to zhengbanlogic | Called from MapLayer::logic() |
| `0x0052C3C2` | `removeSpriteFramesFromFile` | plist parsing crash trigger (patched) |
| `0x005019AC` | `CCDictionary::setObject` | Actual crash instruction |
| `0x00558440` | `curl_easy_perform` | libcurl network I/O (now stubbed) |
| `0x005585C4` | `curl_easy_init` | libcurl handle creation |
| `0x00243EAC` | `HeroShuXing::getNowMapIndex()` | zhengban gate (Z1 patch) |
| `0x001F0C20` | `SaveManager::loadJF()` | zhengbanFlag default load (Z2) |
| `0x001F0E7C` | `SaveManager::loadZB()` | zhengbanFlag default load (Z3) |

### Disassembling with capstone
```python
from capstone import CS_ARCH_ARM, CS_MODE_THUMB, Cs
md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
# Read binary, disassemble at offset
for insn in md.disasm(data[offset:offset+length], offset):
    print(f"0x{insn.address:08X}: {insn.mnemonic} {insn.op_str}")
```

### Verifying patches
```bash
xxd -s <offset> -l <length> lib/armeabi/libgame.so
```

### IDA disassembly
The file `lib/armeabi/libgame.lst` is a full IDA Pro disassembly listing (4.7M lines). Use `grep` to search it. Key patterns:
- Symbol names demangle with `c++filt` (e.g. `_ZN8MapLayer7restartEi` → `MapLayer::restart(int)`)
- `CODE XREF` shows callers
- `DATA XREF` shows data references

## Key Discoveries

1. **targetSdkVersion=22** is the critical choice — it's pre-runtime-permissions (API 23) so no SecurityException for telephony calls, but `requestLegacyExternalStorage` still works on Android 11 (works for targetSdkVersion ≤ 29).

2. **zhengbanlogic is a 30+ state state machine**, not a simple counter function. The counter block is just state 194 (0xC2). The "safe function" at 0x15F8C6 is actually the function epilogue (stack cleanup + return).

3. **libcurl 7.26.0 is statically embedded** in libgame.so. The game makes HTTP requests from native C++ code independently of Java. SaveManager uses it for cloud save sync.

4. **The crash is heap corruption** in `CCDictionary::setObject()` — not signature verification, not anti-piracy. The fault address varies between runs, confirming memory corruption rather than a deterministic logic bug.

5. **The zhengban (genuine) gate** is the root cause of most progress-blocking issues. `zhengbanFlag` defaults to `true` in `CCUserDefault`, causing `getNowMapIndex()` to return special levels (39-44) that need dead server data. 10+ functions check this flag. Z1+Z2+Z3 patches disable it at both the read site and the load defaults.

## Key Files for Modification

| File | Purpose |
|------|---------|
| `apktool.yml` | Controls compression (critical: `.so` files must be in `doNotCompress`) |
| `AndroidManifest.xml` | targetSdkVersion + compat flags |
| `smali/com/gamedo/v360/SmsSdk.smali` | Main SDK — telephony calls, HTTP requests, SMS billing (all stubbed) |
| `smali/cn/cmgame/billing/api/GameInterface.smali` | CMGame SDK entry point (now stubbed) |
| `smali/com/gamedo/v360/sanguoAndroid360.smali` | Main Activity — StrictMode patch, denglu/guanka init |
| `lib/armeabi/libgame.so` | Game engine native code — ARM patches for crash/curl/zhengban |
| `lib/armeabi/libgame.lst` | IDA Pro disassembly listing for analysis |

## Document Index

| Doc | Content |
|-----|---------|
| `docs/修复历程.md` | Full repair history with all attempts |
| `docs/解决方案/README.md` | Solution overview and current status |
| `docs/解决方案/14_IDA分析_正版门修复.md` | IDA analysis: zhengban gate discovery + Z1/Z2/Z3 patches |
| `docs/解决方案/08_去除登录与服务器连接.md` | Network stub details |
| `docs/解决方案/10_Native层深度分析与修复方向.md` | State machine + libcurl discovery |
| `docs/解决方案/13_当前状态与剩余方向.md` | All attempts summary |

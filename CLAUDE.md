# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **decompiled APK** (apktool 3.0.1 output) of an old Cocos2dx Android game ("猛将无双之战三国" / Three Kingdoms), 360 channel, circa 2014. The goal is to make it run on Android 11+.

- Package: `com.gamedo.v360`
- APK: `mjwszzsg.apk` (versionName 1.7, versionCode 1)
- Only `armeabi` (32-bit ARM) native libs: `libgame.so` (7.7MB, embeds libcurl 7.26.0 + Cocos2dx), `libidentifyapp.so`, `libcasdkjni.so`
- Integrates 7 SDKs: 360 safiap, mm purchasesdk, CMGame billing, 咪咕 mmwlan, multimode_billing, cn.game189.sms, com.a (channel SDK)

## Current Status (2026-05-08)

**What works:**
- APK installs and launches on Android 11 (Realme RMX3031)
- Startup time: ~0.4s (was 141s before network stubs)
- Game renders, audio plays, characters animate
- No crashes (Java or native)

**What's broken:**
- At a fixed game progress point, screen goes black (game logic/audio continue)
- Root cause: heap corruption in `CCDictionary::setObject()` during plist parsing inside `CCSpriteFrameCache::removeSpriteFramesFromFile()`, triggered by `AniCartoon::clear()` → `MapLayer::removeall()`

**Next step:** Patch `CCSpriteFrameCache::removeSpriteFramesFromFile` (offset `0x0052C3B0`) to return immediately via `bx lr`.

## Active Modifications

All modifications are applied directly to the decompiled source. The APK is rebuilt from this directory.

### Java/Smali (all in effect)

| File | Change |
|------|--------|
| `apktool.yml` | `doNotCompress` includes `- so` |
| `AndroidManifest.xml` | `targetSdkVersion="22"`, `requestLegacyExternalStorage="true"`, `usesCleartextTraffic="true"` |
| `smali/com/gamedo/v360/sanguoAndroid360.smali` | `onCreate()` begins with `StrictMode.setThreadPolicy(permitAll())` |
| `smali/com/gamedo/v360/SmsSdk.smali` | `init()`: 4 telephony calls (getLine1Number/getSubscriberId/getDeviceId/getSimSerialNumber) → `const-string v21, ""` |
| `smali/com/gamedo/v360/SmsSdk.smali` | `sendGameInfo()`: early return `const-string v0, ""` + `return-object v0` inserted after `.prologue` |
| `smali/cn/cmgame/billing/api/GameInterface.smali` | `initializeApp(Activity)`: entire body replaced with just `return-void` |

### Native/ARM (libgame.so hex patches, all in effect)

| Offset | Original | Patched | Effect |
|--------|----------|---------|--------|
| `0x0015EE9A` | `01 dc` (BGT) | `ff e7` (B #0x15ee9c) | Always call safe func before crash path |
| `0x0015EE94` | `01 32` (adds r2, #1) | `00 22` (movs r2, #0) | Counter always 0 |
| `0x00558440` | `70 b5 04 1c` (push; adds) | `07 20 70 47` (movs r0,#7; bx lr) | curl_easy_perform → instant error |

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
| `0x0015DA90` | `init(r0, r1)` | Scene initialization |
| `0x0015EE9A` | BGT in state 194 | Counter threshold check (our patch site) |
| `0x0015FAC0` | BL to zhengbanlogic | Called from MapLayer::logic() |
| `0x0052C3B0` | `removeSpriteFramesFromFile` | plist parsing crash trigger |
| `0x005019AC` | `CCDictionary::setObject` | Actual crash instruction |
| `0x00558440` | `curl_easy_perform` | libcurl network I/O (now stubbed) |
| `0x005585C4` | `curl_easy_init` | libcurl handle creation |

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

## Key Discoveries

1. **targetSdkVersion=22** is the critical choice — it's pre-runtime-permissions (API 23) so no SecurityException for telephony calls, but `requestLegacyExternalStorage` still works on Android 11 (works for targetSdkVersion ≤ 29).

2. **zhengbanlogic is a 30+ state state machine**, not a simple counter function. The counter block is just state 194 (0xC2). The "safe function" at 0x15F8C6 is actually the function epilogue (stack cleanup + return).

3. **libcurl 7.26.0 is statically embedded** in libgame.so. The game makes HTTP requests from native C++ code independently of Java. SaveManager uses it for cloud save sync.

4. **The crash is heap corruption** in `CCDictionary::setObject()` — not signature verification, not anti-piracy. The fault address varies between runs, confirming memory corruption rather than a deterministic logic bug.

## Key Files for Modification

| File | Purpose |
|------|---------|
| `apktool.yml` | Controls compression (critical: `.so` files must be in `doNotCompress`) |
| `AndroidManifest.xml` | targetSdkVersion + compat flags |
| `smali/com/gamedo/v360/SmsSdk.smali` | Main SDK — telephony calls, HTTP requests (now stubbed) |
| `smali/cn/cmgame/billing/api/GameInterface.smali` | CMGame SDK entry point (now stubbed) |
| `smali/com/gamedo/v360/sanguoAndroid360.smali` | Main Activity — StrictMode patch |
| `lib/armeabi/libgame.so` | Game engine native code — ARM patches for crash/curl |

## Document Index

| Doc | Content |
|-----|---------|
| `docs/修复历程.md` | Full repair history with all attempts |
| `docs/解决方案/README.md` | Solution overview and current status |
| `docs/解决方案/11_原版对比与最终方向.md` | Latest: original vs patched comparison + P1 plan |
| `docs/解决方案/06_方案E_Native层ARM修补.md` | ARM disassembly methodology |
| `docs/解决方案/08_去除登录与服务器连接.md` | Network stub details |
| `docs/解决方案/10_Native层深度分析与修复方向.md` | State machine + libcurl discovery |

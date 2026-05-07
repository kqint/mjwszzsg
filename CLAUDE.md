# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **decompiled APK** (apktool 3.0.1 output) of an old Cocos2dx Android game ("三国" / Three Kingdoms), 360 channel, circa 2014. The goal is to make it run on Android 11+.

- Package: `com.gamedo.v360`
- APK: `mjwszzsg.apk` (versionName 1.7, versionCode 1)
- Only `armeabi` (32-bit ARM) native libs: `libgame.so`, `libidentifyapp.so`, `libcasdkjni.so`
- No `targetSdkVersion` declared originally (system applies very low API compat shims)
- Integrates 7 SDKs: 360 safiap, mm purchasesdk, CMGame billing, 咪咕 mmwlan, multimode_billing, cn.game189.sms, com.a (channel SDK)

## Build / Rebuild / Install Cycle

There is no Gradle or IDE project. The APK is modified and rebuilt from the decompiled output.

```bash
# Rebuild APK from this directory
java -jar apktool.jar b -o mjwszzsg_fixed.apk .

# Generate debug keystore (one-time)
keytool -genkey -v -keystore debug.keystore -alias androiddebugkey \
  -storepass android -keypass android -keyalg RSA -validity 10000 \
  -dname "CN=Android Debug"

# Sign
jarsigner -verbose -keystore debug.keystore -storepass android \
  mjwszzsg_fixed.apk androiddebugkey

# Align (optional, requires Android SDK)
zipalign -v 4 mjwszzsg_fixed.apk mjwszzsg_final.apk

# Install and run
adb install mjwszzsg_final.apk
adb logcat -b crash | grep -E "AndroidRuntime|FATAL"
```

## Key Files for Modification

| File | Purpose |
|------|---------|
| `apktool.yml` | Controls compression (critical: `.so` files must be in `doNotCompress`) |
| `AndroidManifest.xml` | Add `targetSdkVersion`, `requestLegacyExternalStorage`, `usesCleartextTraffic`, `<uses-library>` |
| `smali/com/gamedo/v360/SmsSdk.smali` | Main SDK init — `getDeviceId()`/`getSubscriberId()`/`getSimSerialNumber()` in `init()` method |
| `smali/cn/cmgame/sdk/sms/c.smali` | CMGame SDK — `n()` (getDeviceId), `o()` (getSubscriberId) |

## Smali Editing Conventions

When patching smali to avoid `SecurityException` from restricted Android 10+ API calls (`getDeviceId()`, `getSubscriberId()`, `getSimSerialNumber()`, `getLine1Number()`):

- Replace `invoke-virtual {vX}, ...->getDeviceId()` + `move-result-object vY` with `const-string vY, ""`
- The value written must go to the **same register** (`vY`) that the original `move-result-object` targeted
- Do not remove or change `.line` debug annotations — apktool may fail to reassemble
- After editing, rebuild immediately to verify no smali syntax errors

## Critical Pitfalls

1. **`.so` compression**: apktool 3.0.1 compresses `.so` files by default unless `- so` is in `apktool.yml`'s `doNotCompress`. Compressed `.so` files cause `UnsatisfiedLinkError` → instant crash.
2. **Signature changes**: Re-signing the APK changes the signature. `libidentifyapp.so` has a native `getAppSignature()` method used by payment SDKs — payment servers may reject transactions after re-signing. Single-player gameplay is unaffected.
3. **Runtime permissions**: After setting `targetSdkVersion >= 23`, the system requires runtime permissions. The game code does NOT show permission dialogs. The user must manually grant Storage, Phone, and SMS permissions in Settings → App → Permissions.
4. **Apache HTTP removal**: Code uses `DefaultHttpClient` extensively (20+ files). When `targetSdkVersion >= 28`, `<uses-library android:name="org.apache.http.legacy"/>` is required in the manifest.
5. **29+ unpatched `getDeviceId()`/`getSubscriberId()` call sites**: Only 6 of 29+ known call sites are patched. Many are in SDK init paths that may still crash on startup. Without `adb logcat` crash logs, it's impossible to know which one fires next.

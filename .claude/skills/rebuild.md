# Rebuild Skill

Rebuild the APK from the current decompiled source, sign it, and optionally install.

## Usage

```
/rebuild [install]
```

- Without `install`: just rebuilds and signs
- With `install`: also runs `adb install -r`

## Steps

```bash
# Step 1: Rebuild APK
java -jar apktool.jar b -o mjwszzsg_fixed.apk .

# Step 2: Sign with debug keystore
jarsigner -verbose -keystore debug.keystore -storepass android \
  mjwszzsg_fixed.apk androiddebugkey

# Step 3 (optional): Install
adb install -r mjwszzsg_fixed.apk
```

## Common Variations

```bash
# Verify signature
jarsigner -verify -verbose mjwszzsg_fixed.apk

# Verify manifest in APK
java -jar apktool.jar d -s -f mjwszzsg_fixed.apk -o /tmp/check && \
  cat /tmp/check/AndroidManifest.xml && cat /tmp/check/apktool.yml && \
  rm -rf /tmp/check

# Capture crash logs during test
adb logcat -c && adb logcat -b crash | grep -E "AndroidRuntime|FATAL|F/libc|tombstone"
```

# 方案C：先抓 logcat，再对症修补

## 为什么这是不可或缺的一步

前三次尝试都是"盲修"——根据代码分析推测崩溃原因，但不知道实际崩溃点。24+ 个未修补调用点不一定都会在启动时触发（取决于 SDK 初始化顺序、线程调度、条件分支）。也可能崩溃原因根本不在 smali 层（原生 .so 崩溃）。

**获取 logcat 可以在 10 秒内告诉你真正的崩溃点。**

## 操作步骤

### 1. 连接设备并清空日志

```bash
adb logcat -c
```

### 2. 启动监控

```bash
# 方法1：只看崩溃
adb logcat -b crash

# 方法2：过滤关键信息
adb logcat | grep -E "AndroidRuntime|FATAL|F/libc|tombstone"

# 方法3：保存完整日志（推荐，信息最全）
adb logcat > crash_log.txt
```

### 3. 启动游戏（触发崩溃）

### 4. 根据日志判断崩溃类型

#### 情况1：Java 层 SecurityException

```
FATAL EXCEPTION: main
java.lang.SecurityException: getDeviceId: ...
    at android.os.Parcel.readException(Parcel.java:xxxx)
    at ...
    at com.gamedo.v360.SmsSdk.init(SmsSdk.java:xxx)
    at com.gamedo.v360.sanguoAndroid360.onCreate(...)
```

→ 说明还有未修补的 getDeviceId() 调用。堆栈会精确告诉你是哪个文件、哪个方法。

#### 情况2：Native 崩溃

```
F/libc: Fatal signal 11 (SIGSEGV), code 1 (SEGV_MAPERR)
F/libc: xxx  libgame.so  ...
    #00 pc 000xxxxx  /data/app/.../lib/arm/libgame.so
```

→ `.so` 文件在 Android 11 上有兼容性问题，需要分析 native 层。

#### 情况3：NoClassDefFoundError

```
java.lang.NoClassDefFoundError: org.apache.http.impl.client.DefaultHttpClient
```

→ Apache HTTP 类未找到，需要 `<uses-library>` 声明。

#### 情况4：UnsatisfiedLinkError

```
java.lang.UnsatisfiedLinkError: dlopen failed: ...
```

→ .so 加载失败（压缩问题或 32 位库在纯 64 位设备上）。

## 预期收益

| 无 logcat（当前状态） | 有 logcat |
|:--|:--|
| 不知道哪个调用触发崩溃 | 精确定位到文件:行号 |
| 不知道是 Java 还是 Native 崩溃 | 明确知道崩溃层 |
| 可能白修 20+ 处 smali | 只修确认真触发的那几处 |
| 无法排查 Native 问题 | 能看到 .so 偏移地址 |
| 每次尝试都是碰运气 | 每次修补都是针对已知问题 |

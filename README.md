# 猛将无双之战三国 - 解包修复

使用 apktool 对 360 渠道旧版 APK（com.gamedo.v360）解包，通过修改 smali 和 ARM 补丁修复其在 Android 11+ 上的兼容性问题。

> [!WARNING]
>
> 这是32位游戏，需要手机支持运行32位应用（原生支持或系统提供转译兼容）。

## 环境依赖

- Java JDK 8+
- [apktool 3.0.1](https://apktool.org/)（`apktool.jar` 放在项目根目录）
- Android SDK platform-tools（`adb`）

## 解包

```bash
java -jar apktool.jar d mjwszzsg.apk -o .
```

## 打包与安装

```bash
# 重建 APK
java -jar apktool.jar b -o mjwszzsg_fixed.apk .

# 签名
jarsigner -verbose -keystore debug.keystore -storepass android \
  mjwszzsg_fixed.apk androiddebugkey

# 安装
adb install -r mjwszzsg_fixed.apk
```

## 项目结构

```
mjwszzsg/
├── AndroidManifest.xml    # 清单文件（targetSdkVersion=22, 兼容性标志）
├── apktool.yml            # apktool 配置（.so 须加入 doNotCompress）
├── apktool.jar            # 打包工具
├── debug.keystore         # 调试签名
├── CLAUDE.md              # 项目指引（修改记录与 ARM 补丁详情）
├── README.md
│
├── smali/                 # Dalvik 字节码（SDK 调用 stub、StrictMode 等修改）
├── lib/armeabi/
│   ├── libgame.so         # 游戏引擎 + libcurl（ARM Thumb 补丁：崩溃/正版门/网络）
├── so_analysis/
│   └── libgame.lst        # IDA Pro 反汇编清单
│
├── assets/                # 游戏资源（贴图、地图、音效、配置文件等）
├── res/                   # Android 资源（布局、字符串、图标）
├── build/                 # 打包中间产物
├── original/              # apktool 备份的原始资源
│
├── docs/
│   ├── 编译打包.md        # 详细打包命令与调试方法
│   ├── 修复总结.md        # 所有修改及当前状态汇总
│   └── 解决方案/          # 各问题分析文档
```

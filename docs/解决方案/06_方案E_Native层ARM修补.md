# 方案E：Native 层 ARM 二进制修补

## 崩溃确认

### 不是签名校验，不是 Android 版本问题

用户确认：原版 APK 在 VMOS Pro（Android 4.4）上运行到同一进度也会闪退。这是**原版游戏自带的 bug**，与重签名和 Android 版本无关。

### 崩溃特征

```
信号:   SIGSEGV (11), SEGV_MAPERR (地址未映射)
线程:   GLThread 453 (OpenGL 渲染线程)
位置:   libgame.so → CCDictionary::setObject(std::string const&)+480 (偏移 0x005019AC)
崩溃指令: ldr r4, [r3, #0xc] — r3 指向无效内存
故障地址: 0x7b2c7e3b = r3(0x7b2c7e2f) + 12
```

偏移 +12 在 gnustl `std::string` COW 实现中对应 capacity 字段。崩溃时尝试读取一个已被释放的 string 对象。

## 完整的 Native 堆栈还原

```
#00  CCDictionary::setObject(std::string const&)+480      [偏移 0x005019AC]
#01  CCDictMaker::endElement(void*, char const*)+588      [偏移 0x00521591]
#02  CCSAXParser::endElement(void*, unsigned char const*)+14  [偏移 0x00520ACF]
#03  XmlSaxHander::VisitExit(XMLElement const&)+16        [偏移 0x00520AE3]
#04  XMLElement::Accept(XMLVisitor*) const+54              [偏移 0x0052EF8F]
#05  XMLElement::Accept(XMLVisitor*) const+34              [偏移 0x0052EF7B]
#06  XMLDocument::Accept(XMLVisitor*) const+32             [偏移 0x0052EF01]
#07  CCSAXParser::parse(char const*, unsigned int)+46      [偏移 0x00520A3B]
#08  CCSAXParser::parse(char const*)+46                    [偏移 0x00520A8F]
#09  CCFileUtils::createCCDictionaryWithContentsOfFile()+50 [偏移 0x00522B03]
#10  CCDictionary::createWithContentsOfFileThreadSafe()+28 [偏移 0x00501DBB]
#11  CCSpriteFrameCache::removeSpriteFramesFromFile()+26   [偏移 0x0052C3DD]
#12  AniCartoon::clear()+244                               [偏移 0x0016F001]
#13  AniCartoon::~AniCartoon()+44                          [偏移 0x0016F0F9]
#14  AniCartoon::~AniCartoon()+4                           [偏移 0x0016F125]
#15  CCObject::release()+70                                [偏移 0x0050232B]
#16  Hero::~Hero()+46                                      [偏移 0x0017FFA7]
#17  Hero::~Hero()+4                                       [偏移 0x00180019]
#18  CCObject::release()+70                                [偏移 0x0050232B]
#19  ccArrayRemoveAllObjects(_ccArray*)+16                 [偏移 0x0052E791]
#20  CCArray::removeAllObjects()+4                         [偏移 0x0050308D]
#21  MapLayer::removeall()+782                             [偏移 0x00157037]
#22  MapLayer::zhengbanlogic()+1718                        [偏移 0x0015EEAB]
#23  MapLayer::logic(float)+436                            [偏移 0x0015FAC1]
#24  MapManager::logic(float)+130                          [偏移 0x001673CB]
#25  CCTimer::update(float)+98                             [偏移 0x004EF5AF]
#26  CCScheduler::update(float)+184                        [偏移 0x004F0021]
#27  CCDirector::drawScene()+26                            [偏移 0x0050421F]
#28  CCDisplayLinkDirector::mainLoop()+32                  [偏移 0x005042B1]
#29  Java_org_cocos2dx_lib_Cocos2dxRenderer_nativeRender   [偏移 0x005254DF]
```

## ARM 反汇编分析

### 工具

- Python capstone 库（ARM/Thumb 反汇编）
- xxd（验证 hex bytes）
- 目标文件: `lib/armeabi/libgame.so`（7.7MB, 32-bit ARM ELF, stripped, Thumb 模式）

### 关键代码点

`MapLayer::zhengbanlogic()` 函数入口在偏移 `0x0015E7F4`。以下是在 +1718 附近（偏移 `0x0015EEAB`）的反汇编：

```asm
; ===== zhengbanlogic() 计数器阈值检查 =====

0x0015EE90: ldr      r3, [r7, r3]      ; 加载对象指针
0x0015EE92: ldr      r2, [r3]          ; r2 = 计数器值
0x0015EE94: adds     r2, #1            ; 计数器 += 1
0x0015EE96: str      r2, [r3]          ; 存回计数器
0x0015EE98: cmp      r2, #0xa          ; 计数器 > 10 ?
0x0015EE9A: bgt      #0x15eea0         ; ← 是 → 跳转到崩溃路径 [BGT, bytes: 01 dc]
0x0015EE9C: bl       #0x15f8c6         ; ← 否 → 安全路径（正常游戏逻辑）

; ===== 崩溃路径 =====

0x0015EEA0: movs     r2, #0x96
0x0015EEA2: lsls     r2, r2, #1        ; r2 = 300
0x0015EEA4: movs     r4, #0            ; r4 = 0
0x0015EEA6: str      r2, [r6]          ; 设置场景状态标志 = 300
0x0015EEA8: str      r4, [r3]          ; 重置计数器 = 0
0x0015EEAA: bl       #0x156d28         ; → MapLayer::removeall() → 💥

; 注: 偏移 0x00156D28 = MapLayer::removeall() 函数入口
```

### 语义还原（伪代码）

```cpp
void MapLayer::zhengbanlogic() {
    // ... 其他逻辑 ...

    _visitCounter++;           // 每次调用 +1

    if (_visitCounter > 10) {  // ← 被修补的分支!
        // 崩溃路径: 重置场景
        _sceneState = 300;     // 某种"重新开始"标志
        _visitCounter = 0;     // 重置计数器
        removeall();           // 清理所有地图对象 → 💥
        someInitFunction(0);   // 重新初始化 (永远到达不了)
    } else {
        // 安全路径: 正常游戏逻辑
        normalGameLogic();     // 继续正常游玩
    }
}
```

## Hex 修补

### 修补方案

将 `BGT`（条件分支）替换为 `NOP`（无操作），使代码永远走安全路径。

### 字节级修改

| 项目 | 值 |
|:--|:--|
| 文件路径 | `lib/armeabi/libgame.so` |
| 文件偏移 | `0x0015EE9A` |
| 原始字节 | `01 dc` |
| 原始指令 | `BGT #0x15eea0` (跳转到崩溃路径) |
| 修补字节 | `c0 46` |
| 修补指令 | `NOP` (MOV R8, R8, 无操作) |

### Thumb 指令编码说明

`BGT` 是 16 位 Thumb1 指令：
- `01 dc` = 0xDC01（小端序存储）
- 编码: `1101 1100 0000 0001`
- `1101` = Bcc (条件分支), `1100` = GT 条件码
- 偏移 = 1 × 2 = 2（跳转 4 字节到 0x15EEA0）

`NOP` 使用 `MOV R8, R8`（Thumb1 标准 NOP 等价指令）：
- `c0 46` = 0x46C0
- 编码: `0100 0110 1100 0000`

### 修补脚本

```python
import os
os.chdir('d:/Dev/AndroidDev/mjwszzsg')

with open('lib/armeabi/libgame.so', 'rb') as f:
    data = bytearray(f.read())

# 验证原始字节
assert data[0x0015EE9A:0x0015EE9A+2] == b'\x01\xdc'

# 应用修补
data[0x0015EE9A:0x0015EE9A+2] = b'\xc0\x46'

with open('lib/armeabi/libgame.so', 'wb') as f:
    f.write(data)
```

### 修补后验证

```bash
$ xxd -s 0x0015EE90 -l 20 lib/armeabi/libgame.so

修复前: ... 0132 1a60 0a2a 01dc 00f0 13fd ...
修复后: ... 0132 1a60 0a2a c046 00f0 13fd ...
                                        ^^^^
```

## 修改效果

```
修复前:
  cmp r2, #0xa      ← 比较计数器
  bgt crash_path    ← > 10 ? 跳转到崩溃路径 (removeall → 💥)
  [安全路径]        ← ≤ 10 ? 走这里（正常游戏）

修复后:
  cmp r2, #0xa      ← 比较计数器（无影响）
  nop               ← 无操作，始终 fall through
  [安全路径]        ← 永远走这里（正常游戏）
```

### 副作用

- 计数器持续递增但不被检查（BGT 已被 NOP）
- 计数器不会被重置为 0（重置代码在崩溃路径中，已被跳过）
- 场景状态不会被设为 300（`sceneState = 300` 标志也不会被设置）
- 不影响 `zhengbanlogic()` 中的其他正常游戏逻辑

### 未修补的替代点

如果此修补不够（游戏可能在另一处达到相同计数器检查），备份方案：
- 可在 `MapLayer::logic()` 中 NOP 掉对 `zhengbanlogic()` 的调用（偏移 `0x0015FAC0`: `bl #0x15e7f4` → NOP×4）
- 或直接修补 `MapLayer::removeall()` 函数使其直接返回（偏移 `0x00156D28`）

## 工具链速查

| 工具 | 用途 |
|:--|:--|
| `xxd -s <offset> -l <len> <file>` | 查看二进制字节 |
| `pip install capstone` | 安装 ARM 反汇编库 |
| `Cs(CS_ARCH_ARM, CS_MODE_THUMB)` | 创建 Thumb 模式反汇编器 |
| `apktool b -o out.apk .` | 重新打包 APK |
| `jarsigner -keystore debug.keystore ...` | 签名 |

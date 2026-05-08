# IDA 反汇编分析：正版门修复

## 结果

| 方案 | 状态 | 效果 |
|:--|:--|:--|
| Z1 | ✅ 已实施 | 初始关卡从教程变为第一关 |
| Z2 | ✅ 已实施 | loadJF 默认值 1→0 |
| Z3 | ✅ 已实施 | loadZB 默认值 1→0 |
| B1 | ✅ 已实施 | 购买按钮不再卡死 |

**剩余问题**：
- "木牛流马" 处黑屏（可能是另一处 zhengbanFlag 检查或资源缺失）
- 二次进入关卡人物卡死（游戏状态未正确重置）

## 发现过程

通过 IDA 反汇编文本 (`lib/armeabi/libgame.lst`) 追踪 `getNowMapIndex()` 函数，发现了游戏的正版门机制。

## 正版门机制

### 存档键值

`HeroShuXing::zhengbanFlag` 从本地存档 (`CCUserDefault`) 加载：

```c
// SaveManager::loadJF() @ 0x1F0C20
zhengbanFlag = CCUserDefault::getBoolForKey("zhengbanFlag", true);   // 默认=1!

// SaveManager::loadZB() @ 0x1F0E7C
zhengbanFlag = CCUserDefault::getBoolForKey("zhengbanFlag", true);   // 默认=1!
if (GameShuXing::UI_DEBUG) {
    zhengbanFlag = 0;  // debug 模式强制关闭
}
```

**zhengbanFlag 的默认值是 `true` (1)**。新安装/无存档时，游戏默认进入"正版模式"。

### getNowMapIndex() 中的正版门

```c
int HeroShuXing::getNowMapIndex() {
    int idx = computeFromLevelData();  // 正常关卡索引
    
    if (zhengbanFlag != 0) {           // ← 正版门!
        // 返回固定特殊关卡 39-44 (0x27-0x2C)
        // 这些关卡需要正版验证/服务端数据
        if (zhengbanStep == 0)   return 39;
        if (zhengbanStep == 100) return 40;
        if (zhengbanStep == 200) return 41;
        // ...
        return computed;
    }
    
    return idx;  // 正常路径
}
```

当 `zhengbanFlag = 1` 时：
- 正常前 38 关 (0-38) 不受影响（restart 中 `CMP R0, #0x26` 检查）
- 到达"固定进度"（需要加载 >38 号关卡）时 → restart 走不同分支 → **黑屏**

## 修复

**方案 Z1**：在 `getNowMapIndex()` 中禁用正版门检查。

| 项目 | 值 |
|:--|:--|
| 文件 | `lib/armeabi/libgame.so` |
| 偏移 | `0x00243EEE` |
| 原始 | `1b d0` (BEQ → 条件跳过正版路径) |
| 修补 | `1b e0` (B → **无条件跳过**正版路径) |

```asm
; HeroShuXing::getNowMapIndex+0x42 @ 0x243EEE

; 修补前:
  CMP  R3, #0          ; zhengbanFlag == 0?
  BEQ  loc_243F28      ; 如果是 → 走正常路径
  ; [正版门代码]        ; 如果否 → 返回特殊关卡 39-44

; 修补后:
  CMP  R3, #0          ; (无影响)
  B    loc_243F28      ; 始终走正常路径
  ; [正版门代码]        ; 永不执行
```

效果：`getNowMapIndex()` 始终返回正常关卡索引，不受 `zhengbanFlag` 影响。

## 其他发现

1. **`SimpleGame::meiridenglu()` 是空函数**（只有 `BX LR`）——每日登录检查已废弃
2. **`MapLayer::restart(int)`** 是 `init()` 的真实名称——重启蒙层
3. **`zhengbanFlag` 在多处被检查**：
   - `MapLayer::addbeibao()`：正版时跳过物品添加
   - `MapLayer` 多个方法
4. **`zhengbanStep`** 跟踪正版进度（0/100/200/300/400/500），影响返回的特殊关卡号
5. **`GameShuXing::UI_DEBUG`** 可以强制关闭正版模式

## 备选方案

如果 Z1 不够（其他代码仍检查 zhengbanFlag），可叠加：

| 方案 | 偏移 | 修改 | 效果 |
|:--|:--|:--|:--|
| Z2 | `0x1F0C20` | `MOVS R2, #1` → `MOVS R2, #0` | loadJF: zhengbanFlag 默认值改为 0 |
| Z3 | `0x1F0E7C` | `MOVS R2, #1` → `MOVS R2, #0` | loadZB: zhengbanFlag 默认值改为 0 |
| Z4 | `0x1F0EC4` | `MOVS R3, #0` → 不变 | loadZB: 强制关闭（需 UI_DEBUG） |

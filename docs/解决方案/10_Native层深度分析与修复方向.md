# Native 层深度分析与修复方向

## 重大发现

### 1. zhengbanlogic 是一个 30+ 状态的游戏状态机

之前我们以为 `zhengbanlogic` 只是一个"计数器 → removeall → init"的简单函数。反汇编入口 (0x15E7F4) 后发现：

```asm
; zhengbanlogic 加载当前游戏状态
ldr  r3, [sp, #0x14]       ; 加载状态指针
ldr  r3, [r3]              ; 加载状态值

; 对 30+ 个状态值进行分支判断
cmp  r3, #0x64   ; state 100 → 处理器 A
cmp  r3, #0x6e   ; state 110 → 处理器 B
cmp  r3, #0x78   ; state 120 → 处理器 C
cmp  r3, #0x82   ; state 130 → 处理器 D
cmp  r3, #0x8c   ; state 140 → 处理器 E
cmp  r3, #0x96   ; state 150 → 处理器 F
cmp  r3, #0xa0   ; state 160 → 处理器 G
cmp  r3, #0xaa   ; state 170 → 处理器 H
cmp  r3, #0xb4   ; state 180 → 处理器 I
cmp  r3, #0xbe   ; state 190 → 处理器 J
cmp  r3, #0xc0   ; state 192 → 处理器 K
cmp  r3, #0xc1   ; state 193 → 处理器 L
cmp  r3, #0xc2   ; state 194 → **我们的计数器块!** ← 只是其中一个
cmp  r3, #0xc8   ; state 200 → 处理器 M
cmp  r3, #0xd2   ; state 210 → 处理器 N
cmp  r3, #0xd4   ; state 212 → 处理器 O
cmp  r3, #0xdc   ; state 220 → 处理器 P
cmp  r3, #0xe6   ; state 230 → 处理器 Q
```

**"安全函数" 0x15f8c6 的真相**：它不是"安全准备函数"，而是 **zhengbanlogic 的清理/返回尾声**：

```asm
; 0x15F8C6:
add  sp, #0x34          ; 恢复 zhengbanlogic 的栈帧
pop  {r4, r5, r6, r7, pc}  ; 弹出保存的寄存器并返回
```

每个状态处理器完成工作后调用 0x15F8C6 退出 zhengbanlogic。

### 2. init(0) 函数的真相

`init()` 函数（0x15da90）的参数 r1=0 被用作循环起始索引，循环 8 次初始化一个数据结构。它不检查登录状态，不读取全局标志——只是一个通用的"分配并初始化 8 个对象"函数。参数 0 是"从第 0 个开始"。

### 3. libcurl 7.26.0 嵌入在 libgame.so 中

**这是最关键的新发现。** 游戏从 native 层通过 libcurl 做 HTTP 请求，**不经过 Java 层**。

完整的 libcurl API 列表：
- **Easy 接口**: `curl_easy_init`, `curl_easy_setopt`, `curl_easy_perform`, `curl_easy_cleanup`, `curl_easy_getinfo`
- **Multi 接口**: `curl_multi_init`, `curl_multi_add_handle`, `curl_multi_perform`, `curl_multi_cleanup`
- **Form 接口**: `curl_formadd`, `curl_formfree`
- **Global**: `curl_global_init`, `curl_global_cleanup`

Native 层 HTTP 字符串：
- `"Authorization: Basic %s"`, `"Authorization: Digest"`
- `"%s LOGIN %s %s"`, `"auth using %s with user '%s'"`, `"Authentication failed: %d"`
- `"Content-Type: application/x-www-form-urlencoded"`
- `"Couldn't connect to server"`, `"Empty reply from server"`

### 4. SaveManager——libcurl 的调用者

从符号表找到的关键类：

| 方法 | 推测功能 |
|:--|:--|
| `SaveManager::loadZB()` | 加载某类存档 |
| `SaveManager::loadSX()` | 加载 SX 存档 |
| `SaveManager::loadGameAll()` | 加载全部游戏数据 |
| `SaveManager::saveZB()` | 保存 ZB 存档 |
| `SaveManager::saveGold()` | 保存金币数据 |
| `SaveManager::saveWuping()` | 保存物品数据 |
| `SaveManager::saveEnemyNum()` | 保存敌人数量 |
| `SaveManager::maxARPUE` | 统计数值 |

### 5. UI 层初始化符号

zhengbanlogic 的状态机负责调度以下 UI 层的初始化：
- `ButtonLayer::iinit()` — 按钮 UI
- `ZDUILayer::iinit()` — ZD UI 框架
- `PauseLayer::iinit()` — 暂停覆盖层
- `TiShiLayer::iinit()` — 提示层
- `JiFeiDianLayer::iinit()` — **计费点层**
- `JiFeiTeachLayer::iinit()` — 计费教程层
- `BeginLayer::iinit()` — 开始层
- `EndLayer::iinit()` — 结束层
- `MapLayer::iinit()` — 地图层
- `MapLayer::initmap()` — 地图初始化

## 进度黑屏的根因假说（更新）

### 假说：native 层 libcurl HTTP 请求超时或失败

时序：

```
游戏运行到固定进度
  → zhengbanlogic 进入某个状态 (可能是状态转换到需要服务器数据的场景)
    → 状态处理器调用 SaveManager::loadGameAll()
      → SaveManager 内部调用 curl_easy_perform()
        → HTTP 请求 → 死服务器 → 超时 30-75 秒
          → 超时返回错误
            → 状态处理器收到错误，无法完成场景设置
              → 场景为空 → 黑屏
```

**此假说可解释**：
- 为什么所有 ARM patch (NOP/B/H1/H3) 都无法解决黑屏——都没触及 libcurl 层
- 为什么 H1 能看到画面但无 UI——zhengbanlogic 被跳过，状态机不运行，curl 也不被触发
- 为什么原版 APK 在 VMOS 4.4 上也黑屏——同样是 libcurl 请求死服务器
- 为什么黑屏在"固定进度"发生——该进度触发需要服务器数据的状态

### 假说：Java 层和 Native 层双重 HTTP

| 层 | HTTP 库 | 状态 |
|:--|:--|:--|
| Java (SmsSdk) | DefaultHttpClient | ✅ 已 stub |
| Java (CMGame SDK) | HttpURLConnection | ✅ 已 skip |
| Native (libgame.so) | **libcurl 7.26.0** | ❌ 未处理！|

## 待实施的修复方案

### 方案 N1：查找并 patch curl_easy_perform（治本）

找到 libgame.so 中 `curl_easy_perform` 的 PLT 入口或实现，将其替换为**直接返回错误**：

```asm
; curl_easy_perform stub:
; 直接返回 CURLE_COULDNT_CONNECT (7)
movs r0, #7
bx  lr
; 6 字节
```

所有 native HTTP 请求瞬间失败 → 不超时 → 游戏逻辑用默认值继续。

**风险**：libcurl 的所有功能失效，可能影响：
- SaveManager 云存档同步（本地存档应不受影响）
- 可能的资源下载
- 可能的配置更新

**优点**：一次修改解决所有 native HTTP 问题。

### 方案 N2：查找并移除 libcurl 初始化（治标）

在 `curl_global_init` 调用点之前插入 `bx lr`（跳过 curl 初始化）。没有初始化，所有 curl 调用都会快速失败。

但 `curl_global_init` 可能只在游戏启动时调用一次，而且可能已经被我们跳过（因为 init 在 zhengbanlogic 的某个状态中）。

### 方案 N3：使用符号表定位 libcurl 调用点

1. 反汇编 `SaveManager::loadGameAll()` 和 `SaveManager::saveZB()` 等函数
2. 找到其中对 `curl_easy_perform` 的调用
3. NOP 掉这些调用或替换为返回空数据

### 方案 N4：分析 libcurl 地址（快速验证）

用 capstone 反汇编 `curl_easy_perform` 字符串地址附近的代码，找到该函数的实现：

```python
# curl_easy_perform 字符串在偏移 0x5A9E0
# 搜索对它的交叉引用，找到 PLT 表项
```

然后 patch PLT 表项为返回错误。

---

## 建议实施顺序

1. **方案 N1**：查找 curl_easy_perform 在 binary 中的位置 → patch 为返回错误 → 最快验证
2. 如果 N1 有效 → 分析哪些游戏功能受影响，做精细修补
3. 如果 N1 无效 → 用方案 N3 分析 SaveManager 的具体逻辑

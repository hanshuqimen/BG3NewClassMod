# Tasks

- [x] Task 1: 搭建 Mod 工程骨架与元数据
  - [x] SubTask 1.1: 创建 `Mods/FuJianTaoist/meta.lsx`（Mod UUID、名称 `FuJianTaoist`、版本、作者、依赖 BG3 原版）。
  - [x] SubTask 1.2: 创建标准 BG3 Mod 目录结构 `Public/FuJianTaoist/Stats/Generated/`、`Localization/English`、`Localization/Chinese`、`Scripts/`。
  - [x] SubTask 1.3: 建立本地化文件骨架 `FuJianTaoist.english.loca.xml` 与 `FuJianTaoist.chinese.loca.xml`（含 `<contentList>` 占位）。

- [x] Task 2: 定义职业与子职业（ClassDescription）
  - [x] SubTask 2.1: 在 `Class.txt` 中新增主职业 `Taoist_FuJian`：主属性力量/智力、施法属性智力、生命值骰 10/6、豁免力量+智力、无护甲熟练、剑类武器熟练、技能熟练选项。
  - [x] SubTask 2.2: 新增子职业 `Taoist_SwordPath`（剑道流）与 `Taoist_RunePath`（符道流），绑定各自成长表与法术池。
  - [x] SubTask 2.3: 配置职业在角色创建界面可见（`PrimaryAbility`、`Description`、复用原版图标资源名）。

- [x] Task 3: 编写成长表 Progression（1–20 级，双分支）
  - [x] SubTask 3.1: 编写主职业公共成长（各等级法术位、已知法术数、4/8/12/16/19 级属性提升）。
  - [x] SubTask 3.2: 编写剑道流分支成长（1–12 级）：1 级符剑术姿态+剑意护体(+1)、5 级额外攻击、8 级 AC(+3)、11 级三重打击、12 级 AC(+4)。
  - [x] SubTask 3.3: 编写剑道流分支成长（13–20 级）：13/15/16/19 级 AC 阶梯（+4/+5）、20 级"剑神下凡"封顶（4 次攻击+附魔骰 3d6）。
  - [x] SubTask 3.4: 编写符道流分支成长（1–12 级）：法术位扩展、6 级封符次数提升、各等级新法术解锁。
  - [x] SubTask 3.5: 编写符道流分支成长（13–20 级）：13 级 7 环、15 级 8 环、17 级 9 环法术位解锁；18/19/20 环位增量；20 级"道法自然"封顶。
  - [x] SubTask 3.6: 将两个流派在第 1 级设定为子职业选择点。

- [x] Task 4: 实现剑道流核心机制（符剑附着 + 剑意护体）
  - [x] SubTask 4.1: 在 `Spell.txt` 新增 4 个姿态法术 `FuJian_FlameStance/ThunderStance/FrostStance/ArcaneStance`，引用原版武器附魔 VFX 与图标。
  - [x] SubTask 4.2: 配套被动 `Passive.txt`：姿态激活时给武器附加元素附魔 boost，伤害骰随等级阶梯（1d6→1d8→1d10→2d6）。
  - [x] SubTask 4.3: 实现"同一时刻仅一姿态"互斥逻辑（释放新姿态移除旧姿态状态）。
  - [x] SubTask 4.4: 在 `Passive.txt`/`Boost.txt` 实现"剑意护体"：无甲无盾时 AC 阶梯加值 +1/+2/+3/+4/+5/+6（覆盖 1–20 级），穿甲失效。

- [x] Task 5: 实现符道流核心机制（封符术 + 专属法术）
  - [x] SubTask 5.1: 新增技能 `Fu_Dao_SealRune`（封符术）：以目标态/技能形式触发，打开已习得法术选择子菜单（或实现为按法术分发的多个 spell）。
  - [x] SubTask 5.2: 在 `TreasureTable.txt` 为每个可封印法术（含 7–9 环自制法术）定义对应卷轴产出表（复用原版卷轴物品模板）。
  - [x] SubTask 5.3: 如纯 stats 无法动态给予卷轴，在 `Scripts/` 编写 Osiris/Lua 脚本处理"封符术 → 给予卷轴"逻辑与每日次数资源（长休恢复）。
  - [x] SubTask 5.4: 在 `Spell.txt` 新增符道流专属法术：五雷正法、三昧真火、玄冰诀、飞剑诀、镇魂符、解厄符、护身符阵，均复用原版 VFX/图标。

- [x] Task 5b: 实现 13–20 级高阶法术（7/8/9 环自制法术 + 法术位资源）
  - [x] SubTask 5b.1: 在 `ActionResource.txt` 定义 7/8/9 环法术位资源（突破原版 6 环上限），并在 Progression 的 13/15/17/18/19/20 级分配。
  - [x] SubTask 5b.2: 在 `Spell.txt` 新增 7 环自制法术：天罡北斗阵、九天玄雷、乾坤大挪移（复用原版神圣/雷/传送 VFX）。
  - [x] SubTask 5b.3: 新增 8 环自制法术：万剑归宗、太乙神雷、混元一气（复用投射物/雷/群体治疗 VFX）。
  - [x] SubTask 5b.4: 新增 9 环自制法术：诛仙剑阵、天道轮回、万法归一（复用剑阵/复活/力场 VFX），对标原版同环上限。
  - [x] SubTask 5b.5: 实现两流派 20 级封顶能力：剑道流"剑神下凡"（4 次攻击+附魔骰 3d6）、符道流"道法自然"（每日免费 1 个 8 环及以下法术 + 封符术每长休 4 次）。
  - [x] SubTask 5b.6: 扩展封符术 TreasureTable，使 7–9 环自制法术可产出对应卷轴。

- [x] Task 6: 数值平衡与强度校验
  - [x] SubTask 6.1: 校验 1–12 级剑道流 AC/DPR 略高于原版同类组合（+1~+2 区间内），12 级不超过 3 次攻击。
  - [x] SubTask 6.2: 校验符道流法术位规模接近法师且封符术资源不过量。
  - [x] SubTask 6.3: 校验 13–20 级自制 7/8/9 环法术单法威力不超越原版同环上限（如 9 环不超过 `Meteor_Swarm` 量级）。
  - [x] SubTask 6.4: 确认 20 级封顶 4 次攻击仅剑道流拥有，AC 加值封顶 +6，符道流不获得额外攻击。
  - [x] SubTask 6.5: 修复姿态附魔伤害骰阶梯缺失——实现 1d6→5级1d8→9级1d10→12级2d6→20级3d6 阶梯（核查发现 Status 恒为 1d6，需新增阶梯 boost 被动并接入 Progression L5/L9/L12）。

- [x] Task 9: 修复后重新验证 FAIL 项并勾选 checklist 第16行

- [x] Task 10: 添加 4-6 环自制法术 + 显式赋值所有攻击/治疗法术伤害与治疗值
  - [x] SubTask 10.1: 新增 4 环法术（剑气纵横/烈焰莲华/金刚护体），L7 习得。
  - [x] SubTask 10.2: 新增 5 环法术（御剑飞行/天火焚城/冰封三里），L9 习得。
  - [x] SubTask 10.3: 新增 6 环法术（万剑齐发/紫霄神雷/生生不息），L11 习得。
  - [x] SubTask 10.4: 为全部 19 个 Attack/Heal 法术显式赋值 `data Damage`，确保法术切实有效。
  - [x] SubTask 10.5: 为 9 个新法术创建封符子法术/卷轴/战利品表/Handler 映射/本地化。

- [x] Task 11: 验证 4-6 环法术与伤害赋值，更新 checklist <!-- 已完成：Passive.txt 新增 FuJian_StanceDamage_T1~T5（1d6/1d8/1d10/2d6/3d6），每阶含 4 元素条件 boost；Progression 剑道流 L1/L5/L9/L12/L20 切换 T1→T5 无断链无重叠；Status 4 姿态状态已移除 WeaponDamage；loca 中英文 T1-T5 handle 齐全；checklist 第16行 FAIL 项重验通过并勾选为 [x]。 -->

- [x] Task 7: 本地化与命名规范
  - [x] SubTask 7.1: 为所有新增法术、被动、技能、子职业编写中式风格显示名与描述（中英文）。
  - [x] SubTask 7.2: 确认所有 `Name`/`Description` handle 在 loca 文件中均有对应条目。

- [ ] Task 8: 资源复用核查
  - [ ] SubTask 8.1: 核查所有新法术/被动的 `Icon` 与 `VisualResources`/`SpellAnimation` 字段均引用原版资源名，无新增美术文件。

# Task Dependencies
- Task 2 依赖 Task 1（需先有目录骨架）。
- Task 3 依赖 Task 2（成长表需引用职业与子职业）。
- Task 4、Task 5 依赖 Task 3（机制需挂载到成长表对应等级）。
- Task 5b 依赖 Task 3 与 Task 5（高阶法术需成长表解锁节点 + 封符术 TreasureTable 框架）。
- Task 6 依赖 Task 4、Task 5、Task 5b（需全部机制实现后再做数值校验）。
- Task 7、Task 8 可与 Task 4/5/5b 并行推进，但需在其完成后做最终核查。

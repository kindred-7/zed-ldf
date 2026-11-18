# Changelog

## 0.1.1 - 2026-11-18

### 修复
- 修复 `Diagnostic_signals` 条目（无收发方）被误判并级联吞掉整段的问题
- 新增 `Diagnostic_frames`、`Signal_groups` 段与 `Channel_name` 声明
- 支持 LIN 2.2 字节数组信号初值（如 `{0x32, 32}`）
- 支持 LIN 1.3 无 DLC 的帧定义与 LIN 2.0 两值 `product_id`
- 支持不带引号的 `LIN_protocol` 版本号
- 调度表支持命令槽（AssignNAD、AssignFrameId、AssignFrameIdRange、ConditionalChangeNAD、DataDump、SaveConfiguration、FreeFormat）
- `Event_triggered_frames` 支持工具写法（表名在前、平铺帧列表）
- `configurable_frames` 兼容裸帧名列表与 `帧名 = NAD` 两种写法
- 修正 `N_As_timeout` / `N_Cr_timeout` 拼写

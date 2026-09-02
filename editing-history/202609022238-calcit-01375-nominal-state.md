# Calcit 0.13.75 nominal state / nominal 状态收紧

- Upgraded the Calcit project and JS runtime contract to 0.13.75.
- Replaced optional lookups on `GenCodeState` with direct nominal field access.
- Typed plugin payloads as `GenCodeState` and narrowed the Reel store boundary to `StoreData`.
- Replaced mixed list/tag dispatch inspection with nominal operation matching and an `Enum` dispatch schema.
- Upgraded `setup-calcit` to v1.4.0 so CI installs the standalone Caps release instead of probing the Calcit release for a missing Caps asset.
- Project-local strict warnings are now zero; final CI readiness follows the Respo → Reel release chain.

- 将 Calcit 项目与 JS runtime 契约升级到 0.13.75。
- 将 `GenCodeState` 上的可选查询替换为 nominal 字段访问。
- 将 plugin payload 标为 `GenCodeState`，并把 Reel store 边界收窄到 `StoreData`。
- 用 nominal operation 匹配替代 list/tag 混合检查，并将 dispatch schema 收紧为 `Enum`。
- 将 `setup-calcit` 升级到 v1.4.0，使 CI 从独立 Caps release 安装，不再错误查询 Calcit release 中不存在的 Caps 资产。
- 项目自身严格类型告警已清零；最终 CI 可合并状态依赖 Respo → Reel 的发布链。

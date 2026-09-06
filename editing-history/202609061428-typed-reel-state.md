# Typed Reel state boundary / 类型化 Reel 状态边界

- Upgrade to the published Reel 0.6.19, Respo 0.16.95, and respo-ui 0.7.19
  provider graph and replace the open Reel map with
  `State<GenCodeOp, StoreData>`.
- Decode Reel controls separately from application operations before recording
  typed operations. Persist and refresh the typed Store directly, and render the
  published typed Reel devtools adapter.
- Attach `GenCodeActions` to the public nominal plugin enum and declare
  `use-gen-code`'s concrete return type, so `.render` is statically specialized.
- Use the published browser visibility/date adapters at host boundaries and add
  executable coverage for application-operation decoding.
- Exact 0.13.77 normal checking, all five attached tests, JS generation, stream
  regressions, and the Node 24 Vite build pass. Strict preprocessing reaches and
  validates both main/reload entries, then the command correctly remains red on
  the separate project-wide strict-zero quality debt (six partial definitions,
  five deprecated calls, and seven audited unsafe host assertions).
- Browser smoke rendered the prompt UI, kept 108 static style tags mounted, and
  verified the typed `Take` dispatch updates `hello` to `hello\n\nprintln |demo`.

- 升级到已发布的 Reel 0.6.19、Respo 0.16.95 与 respo-ui 0.7.19 依赖图，
  将开放 Reel map 替换为 `State<GenCodeOp, StoreData>`。
- 分离 Reel 控制操作与应用操作的解码后再记录具名操作；持久化、刷新和
  devtools 渲染均使用正式 typed Reel API。
- 将 `GenCodeActions` 挂载到公开具名插件 enum，并声明 `use-gen-code` 的
  具体返回类型，使 `.render` 能静态专化。
- 浏览器可见性与日期改用已发布适配器，并增加应用操作解码的可执行测试。
- 精确 0.13.77 的普通检查、4 个 attached tests、JS 生成、stream 回归及
  Node 24 Vite 构建通过。strict 预处理已覆盖 main/reload，两者通过后命令仍按预期
  被独立的全项目 strict-zero 质量债务阻断（6 个 partial definitions、5 个
  deprecated calls、7 个已审计 unsafe host assertions）。
- 浏览器 smoke 成功渲染输入界面、挂载 108 个静态 style 标签，并验证 typed
  `Take` dispatch 将 `hello` 更新为 `hello\n\nprintln |demo`。

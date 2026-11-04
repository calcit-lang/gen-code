# Gen Code Component for Calcit

Demo: https://repo.calcit-lang.org/gen-code/

## 使用者影响

候选 **0.0.21** 配对正式 **Calcit CLI / @calcit/procs 0.34.2**，依赖 Reel **0.9.0**、UI **0.14.1**、Respo **0.19.2**、JS-FFI **0.2.10**，传递 Router **0.11.2**。消费者需统一完整精确依赖图并重新生成 JS；候选发 tag 前不要把 main/hash 当成正式版本。

本次仅修正 `on-submit` 的 dispatch 参数声明：从 Dynamic 明确为 `Fn Enum (-> Unit)`，使消费者可以提供具体的提交回调，不必加断言。函数体、插件调用方式、单事件派发和 wire 合同均保持；这是实际实现已提供的保证，既有可接收 Dynamic 的回调仍能接收该函数。

沿用 0.0.20 的事件与宿主边界：页面回调接收 `respo.schema/RespoEvent`，返回 Unit；键盘宿主的浅检查不证明字段的运行时值或 Promise payload。

业务事件与 Reel 控制事件经过现有解码后进入 `ResolvedOp` union，未知事件仍记录原错误。Demo 根渲染改用 `render-with!` 管理 memo 帧；旧间距写法改为 `space-y`。保留 `hud!`、热更新入口、SDK 版本、模型和请求地址。

## 插件合同与边界

在 namespace 的 `:require` 中引入 `gen-code.core :refer (use-gen-code)`。调用 `use-gen-code states get-hint-code on-submit`：`states` 来自 `(>> states :drafter)`，`get-hint-code` 是无参返回 String 的函数；`on-submit` 的合同为 `Fn String (Fn Enum (-> Unit)) (-> Unit)`，接收 `(code d!)` 并返回 Unit。

`use-gen-code` 返回插件，`.render` 生成界面，`.reset-state` 向传入的 dispatch 发送一个 `:: :states cursor state` 事件。提交回调接收代码字符串和 dispatch，继续遵守单事件合同。

开放 Map/Struct 字段读取如实返回 Dynamic：缺失或显式 nil 使用 fallback，false 和 Option 载荷原样保留。不能直接换为会展开 Option 的 field-or。外部同名 StoreData 仅作为数据输入，转 Map、检查 states 和嵌套状态，再重建本地类型；名称不代表身份，见 [#41](https://github.com/calcit-lang/gen-code/issues/41)。

Demo 先恢复存档，再渲染和注册持久化。启动恢复清除中断请求的 loading?，保留 query、answer、code、done?，不恢复请求或 AbortController。可解析但结构不符的数据保留旧回退行为，不宣称全部坏存档都会被拒绝，见 [#38](https://github.com/calcit-lang/gen-code/issues/38)。

保留两处已审阅的 SDK unsafe 边界。Chat / stream 的宿主成员检查不证明深层值；未提供 key 时仍走原提示，取消或空值保留原报错。离线测试不代表真实付费模型验收。

## 开发与验收

使用 Node 24 / Yarn 4.18.0。以下 canonical 检查用于源码改动已暂存的工作区（CI checkout 也满足）；本地先审阅并暂存源码改动，避免把已有未暂存修改误判为格式变化。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit edit format
git diff --exit-code --quiet -- calcit.cirru
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format json
calcit analyze quality --baseline config/calcit-quality.cirru
calcit test --require-match
yarn build
yarn test:stream
```

`yarn dev` 编译一次后启动 Vite；另开终端运行 `yarn watch` 监听源码。无需增加进程管理依赖。

0.0.21 本地验收：248 个定义、完整 strict、原质量门禁、七项原测试、离线 stream/dispatch 回归、immutable 安装与构建通过。官方 query 前后对照确认仅 `use-gen-code` 的 schema 改动。隔离 Editor 候选中，Gen Code Box 与 Modal 的 12 个定义全部通过；这不代表 Editor 整体已完成迁移。

0.0.20 迁移验收：248 个定义、完整 strict（diagnostics=[]）、原七项附带测试、离线 stream 与真实 dispatch 回归、工具链与 immutable 安装、构建全部通过。49 个原定义和所有原 schema 保留；新增 union 及两个派发辅助函数。七个事件回调不再使用 Dynamic 参数/返回提示，unsafe 从 3 降至 2，相应收紧原基线，其他预算不放宽。

现有 Node 测试入口还验证真实 dispatch 的 states-merge 状态及历史记录、Reel 控制不进入历史；模块加载时仅提供 mount 查询夹具，并为已发布 bottom-tip 0.1.5 的 ESM 子路径补齐 `.js`（上游 [#42](https://github.com/mvc-works/bottom-tip/issues/42)）；真实 dispatch、store、Reel 和 HUD 模块不作替换。不把它当作 DOM/HUD 交互验收，实际页面另行验收。

实际页面通过合成中文/emoji 输入、Take 追加本地模板、Reel 打开/关闭及刷新恢复；页面异常、console warn/error、失败资源均为空。未点击 Run/Refresh、未读取 key、未调用模型、未操作剪贴板或真实数据。既有 SDK 可选 peer 提示和构建体积 warning 保留。

## 前端部署

本地构建使用相对路径，`VITE_BASE_URL` 指定 CDN 基址。原工作流为 PR 使用独立 `pr/<number>/<run-id>/<attempt>/` 前缀，main 使用仓库前缀；构建、COS 上传和 action 内置 verify 共用该前缀，不增加重复校验脚本。

保留 npm 一小时包龄、原全部门禁及上传队列。服务器部署仅在 main 执行，来源 `dist/*`、目的地和后端均不变；PR 不执行生产部署。

## License

MIT

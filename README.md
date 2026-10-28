
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### Calcit 0.32.0 迁移候选：使用者影响

CLI/procs 配对正式 0.32.0，需要重新安装依赖、生成 JS 并刷新。
Reel 0.7.0、UI 0.9.0、Respo 0.17.0 当前使用本地候选，JS-FFI 为 0.2.8；
正式标签整图尚待验收。0.0.17 仍是未发版候选，不移动旧 tag 或发布 npm。

官方工具转换 48 处类型写法，49 个定义 schema 保持。单事件 dispatch、输入/Take、
stream、存档恢复、两处 HUD 及模型配置不变，Google SDK 不升级。
保留原质量基线与全部测试，不新增强转、预算或脚本；npm 发布年龄门禁为一小时。
本轮完整 strict、全部定义、原质量基线、七项附带测试、原 stream 回归、构建
和 immutable 安装通过；独立评审无待处理问题。实际输入、Take、恢复后继续 Take
及连续刷新通过，浏览器无警告或错误。正式依赖整图和远端 CI 尚待验收。
不读取凭据、不执行 Run/Refresh、不调用外部生成服务。

### Calcit 0.31.0 迁移

使用者影响：CLI / `@calcit/procs` 配对正式 **0.31.0**，依赖 Reel 0.7.0-alpha.4、
UI 0.9.0-alpha.4、Respo 0.17.0-alpha.4、JS-FFI 0.2.7（传递 Router 0.9.0-alpha.3）。
需要同步整张图、重新生成 JS 并完整刷新。Reel、UI、Respo 和传递 Router 使用已发布 alpha tag；JS-FFI 0.2.7 是正式版。
0.0.17 仍是未发版候选，不移动旧 tag，也不要求消费者引用 main/hash。

`.reset-state` 的 dispatch 回调改为接收单个 `:: :states cursor state` 事件，
与新版 Respo 一致；原来接收两个参数的自定义回调需同步调整。输入和 Take 同样改用
单事件 dispatch，修复页面报参数数量错误、状态不更新的问题。其他模型参数和请求地址不变。

开放字段读取不再伪称保留泛型 T，明确返回 Dynamic；插件状态通过字段解码构建本地
GenCodeState，不用 assert-type 冒充验证。存档恢复对同名外部 StoreData 只按数据处理，
转为 Map、检查 states 后重建本地 StoreData；嵌套状态也先转 Map 再完整解码。
名称不代表名义身份或授权，其他无效输入的原 fallback 合同保留，见
[#41](https://github.com/calcit-lang/gen-code/issues/41)。非法嵌套状态可能更早明确报错。

Demo 从存档启动时清除 drafter 的 loading? 标志，保留 query、answer、code、done? 和其他状态；刷新不会恢复已中断的请求或 AbortController。该清理仅在启动恢复执行，正常渲染中的请求不受影响。

全部定义、完整 strict、未修改的质量基线、原六项附带测试及新增的一项中断请求往返回归、原 stream 回归通过。
原测试同步单事件合同，并补入非空存档往返断言；不新增测试脚本或放宽预算。
实际 Demo 验证输入、Take、恢复后继续 Take 及连续刷新恢复。未点 Run/Refresh、
未调用外部 GenAI 或使用凭据；两处 HUD、存档 key、部署路径和 COS 内置校验保留。
既有三处 unsafe 与 SDK 开放边界仍存在，原 bundle 体积警告保留。
以下为历史迁移记录，不代替本轮精确提交的 CI 与评审。

### 本轮公开 API 与类型边界清理

使用者影响：继续配对正式 CLI / `@calcit/procs` **0.30.1**，正式模块图更新为
Reel 0.6.42、UI 0.8.1、Respo 0.16.126、js-ffi 0.2.6，传递 Router 0.8.38。
更新后重新生成 JS、重启开发服务并完整刷新；SDK、公开签名、模型/请求地址、key 和存档格式不变。
0.0.17 仍是未发版候选。已发布 0.0.16 的实际 tag 配对 alpha.5，而不是正式 0.30.1；
Release 标题的歧义已报告到 [#39](https://github.com/calcit-lang/gen-code/issues/39)，不移动旧 tag。

源码 11 处 `option:` helper 改为同实现接收者方法；原附带测试的 3 处 `%some` / `%none`
改为名义 Option 构造，原六项测试名、标签、断言与预期不变。JS stream 回归也不再直接导入旧 core helper，
改用配对 runtime 导出的接收者方法调度，原正常/nullish/结束/异常/清理断言全部保留。

AbortController 构造改用现有 external-object trait 的 `js-cast` 检查实际 `signal` 和 `abort` 能力，
不是添加断言冒充验证；这仍是浅形状检查，不证明所有深层字段或浏览器平台能力。
同一原 stream 测试入口直接调用真实构造函数，验证 signal 初始未取消、abort 后已取消；不增加测试框架或脚本。
source unsafe 4→3，旧预算上限 6→3（包含清理 get-gemini-key! 已为零的旧余量），其余预算不放宽。
SDK client、可缺失 keyboard 字段和流 chunk 的三个真实宿主边界仍保留，不能为清零而要求可选字段必然存在。
两处 `hud!`、启动恢复顺序、原 CI/COS 内置校验、npm/lock 和部署路径均保留；不调用外部模型服务。
以下为前轮候选说明及历史证据，不代替本轮最新 HEAD 的 CI、页面和评审验收。

### 0.0.17 使用者影响

本候选配对精确正式 Calcit / `@calcit/procs` 0.30.1，模块更新至 Reel 0.6.41、
UI 0.8.0、Respo 0.16.124、js-ffi 0.2.5，传递 Router 0.8.37。
升级后重启开发服务并完整刷新。插件公开签名、输入/Take/stream 合同、模型选择、
key 存储与数据格式不变，不增加外部 GenAI 请求或权限。
Demo 先完成原有存档恢复再渲染和注册持久化，避免解析抛错后继续保存初始值覆盖原数据。
`normalize-store-data` 对可解析但结构不符数据的旧回退合同保留；不能把顺序修复理解成
所有坏存档都已拒绝，详见 [#38](https://github.com/calcit-lang/gen-code/issues/38)。
0.0.17 正式 tag 发布前，消费者仍使用已发布的 0.0.16，不引用 main/hash 候选。
旧 0.0.16 使用 alpha.5，不能把它的发布说明误作正式编译器的验收。
生产和 PR 的 COS 前缀、原服务器路径不变；COS 仅使用 Action 自带 verify。

### Usages

Import code:

```cirru.no-check
:dependencies $ {} $ |calcit-lang/gen-code |0.0.16
```

```cirru.no-check
:require $ gen-code.core :refer $ use-gen-code

let
    plugin $ use-gen-code (>> states :drafter)
      fn () "\"println |demo"
      fn (code d!) (println "\"submit code" code)
  .render plugin
  .reset-state plugin d!
```

### Workflow

`yarn dev` 编译一次后启动 Vite；另开终端运行 `yarn watch` 监听 Calcit 源码。
不需要 concurrently 或其他进程管理依赖，关闭时分别停止两个终端。
`yarn build` 仍只编译和构建一次。
The existing Reel boundary and stream business tests remain in CI.

Local Vite builds use relative asset URLs. `VITE_BASE_URL` selects the frontend
CDN base. CI uses the same prefix for the build, COS upload and public verification:
the repository directory on main, or `pr/<number>/<run-id>/<attempt>/` for each PR run.
COS Action v1.2.0 通过原有 public-base-url 校验上传内容及 HTML 同域脚本/样式引用，
不增加额外 CDN 校验脚本；Action 固定到已发布版本的不可变提交。
同组上传队列使用 queue: max，避免待运行任务被新任务替换。
The server deployment source `dist/*`, destination and main-only
condition are unchanged. The deployed HTML deliberately changes: its frontend
asset URLs now point to COS rather than relative server paths.

The current candidate targets formal Calcit/procs 0.30.1 and Yarn 4.18.0,
with canonical `calcit.cirru` / `deps.cirru` and published module tags.
Ref declarations and watch APIs use the current names; model selections are unchanged.
Application operation cursors are typed Lists; states-merge carries GenCodeState
and Map<Tag, Dynamic> changes. The GenAI call declares its async contract with
Tag model, List<Tag> cursor, typed state, String prompt and Ref<String> output.
Run and keyboard submission both pass the same model Tag.

CI retains strict dependency/toolchain, all-definition checks, the unchanged
quality baseline and existing Reel/stream business tests. One definition-attached
plugin render/reset regression checks the actual method contract. No new test framework or
CDN checker is added; repeated diagnostic reports are removed. Production runs
are serialized, PR uploads retain their run-isolated prefix, and an upload or
built-in verification failure prevents server deployment.

SDK Chat and resolved stream objects now receive checked external-host shape validation;
stream requests declare the actual async contract. The check does not call the external
service or prove Promise payload contents. Storage/prompt absence is handled through Option:
a missing stored key prompts, and cancellation or blank input raises the existing key error.
Plugin render/reset-state contracts describe the actual Element, Tag cursor and state callback.
The mount target uses Respo's own DOM adapter rather than treating two nominal DOM traits as equal.

此前 0.0.16 已发布。它的 Reel 更新解除旧 0.6.36 的完整 strict 阻断。Demo 的 render
动态回调先检查 Enum 再交给原 dispatch，仍接受原匿名/名义 Enum；非法非 Enum
输入更早报错。热更新保留原 HUD 副作用，返回值明确为 Unit。插件公开签名、
模型选择、存储 key 与数据格式不变，没有新增 GenAI 请求、权限或 unsafe。

CI 使用现有完整 `calcit fix --workflow strict --verify`，并以一次 `calcit test --require-match`
运行所有六项原附着测试，保留原 stream 回归、全定义、原质量预算及构建。
全定义检查已覆盖的逐命名空间检查不再重复，工具链配对由 `caps verify --toolchain` 检查，
不另写死一个容易过期的 CLI 版本。
不新增检查脚本、测试框架、concurrently 或校验重复项；COS 继续仅使用 action
内置 verify。未调用外部 GenAI 服务或验证付费 API，Demo 部署须另获维护者授权。

此前 alpha.5 本地已通过完整 strict、235/235 全定义、47/47 public、原六项附着测试、原 stream
回归、原质量预算、immutable Yarn 与 CDN 构建。隔离回环 Demo 的实际挂载、输入和
Take 更新通过，浏览器 warn/error 为空；没有点击 Run/Refresh 或调用外部模型。
SDK 既有可选 peer 提示和 Vite 大块体积 warning 保留，不冒称全无 warning。
上述是此前版本的验收；本轮正式依赖图的 CI 和浏览器结果以迁移 PR 为准，不沿用历史结果宣称完成。

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT

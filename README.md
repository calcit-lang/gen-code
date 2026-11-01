
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### 使用者影响

候选 **0.0.18** 配对正式 **Calcit CLI / @calcit/procs 0.32.1**，使用正式 Reel **0.7.1**、UI **0.10.0**、Respo **0.18.0**、JS-FFI **0.2.9**（传递 Router **0.9.0**）。消费者须协调完整精确图并重新生成 JS、完整刷新；直接构造上游 DomProps 的代码采用 Option 字段。已发布 **0.0.17 实际配对 Calcit 0.30.1**，旧 tag 不移动；0.0.18 正式 tag 发布前不引用候选 main/hash，不发布 npm。

本 PR 只改依赖、版本与本文档，Snapshot、原测试、质量基线和工作流相对当前 main 不变。但 0.0.18 的发版范围还包括 main 已合并的 0.31/0.32 迁移：当前 quoted 类型语法、单事件 dispatch/插件回调、名义状态解码及存档恢复，不能将整个新版本描述为只有依赖变化。旧调用方需要按下述方法合同更新，尤其 `.reset-state` 的 dispatch 接收单个 Enum。原 Google SDK 锁定版本仍为 1.4.0，模型与请求地址保持。

本候选从真实已发布 tag 正常 Caps strict 安装五模块，通过 toolchain0.32.1、Yarn immutable、canonical、全定义240、完整 strict diagnostics=[]、原未改质量基线、原七项附带测试、原离线 stream 回归和构建。真实浏览器输入中文/emoji后，Take 调用 get-hint-code 并追加原 `println |demo` 模板；连续两次普通刷新保留完整 query，warn/error=[]。未点击 Run/Refresh、读取凭据或调用外部生成服务，不冒称真实模型请求已验收。npm 一小时新候选包龄与无单包豁免保持。

`.reset-state` 回调接收单个 `:: :states cursor state` 事件，其他自定义回调也须遵守
单事件合同。开放字段读取如实返回 Dynamic，具体插件状态经过字段解码构造 GenCodeState。
外部同名 StoreData 只当数据：转 Map、检查 states 和嵌套状态，再重建本地类型；名称不
代表身份。无效输入保留原 fallback，见 [#41](https://github.com/calcit-lang/gen-code/issues/41)。

Demo 先恢复存档，再渲染并注册持久化；启动恢复清除中断请求的 loading?，保留 query、
answer、code、done? 等字段，不恢复请求或 AbortController。可解析但结构不符的数据
仍有旧回退合同，不宣称所有坏存档都被拒绝，见 [#38](https://github.com/calcit-lang/gen-code/issues/38)。
原三处 unsafe 和 SDK 开放边界保持，不为清零而伪造可选字段。AbortController 的既有
浅宿主检查只证明实际 signal/abort 能力，不证明深层值或所有平台行为。

### 候选源码与历史安装示例

当前 0.32.1 支持位于 main 及本 PR 候选源码，0.0.18 尚未发布。可将候选检出到独立目录，按下方 Workflow 安装依赖、运行原门禁与构建；跨项目本地试用必须显式配置本地模块路径，不能把 main/hash 当成发布版本。正式安装需等待 0.0.18 tag。

下面的 **0.0.17** 是已发布的旧 **Calcit/procs 0.30.1** 图，**不适用于 0.32.1**，不要在新工具链下照抄。原更早 0.0.16 说明见 [#39](https://github.com/calcit-lang/gen-code/issues/39)。

历史安装示例：

```cirru.no-check
:dependencies $ {} $ |calcit-lang/gen-code |0.0.17
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
不增加额外 CDN 校验脚本；Action 使用与原 SHA 对应的精确正式 tag，接受 tag 可移动风险。
同组上传队列使用 queue: max，避免待运行任务被新任务替换。
The server deployment source `dist/*`, destination and main-only
condition are unchanged. The deployed HTML deliberately changes: its frontend
asset URLs now point to COS rather than relative server paths.

The current candidate targets formal Calcit/procs 0.32.1 and Yarn 4.18.0,
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

CI 保留原七项附带测试、stream 回归、全定义、完整 strict 与质量基线。
COS 只使用 action 内置 verify；Demo 部署须另获维护者授权。
既有 SDK 可选 peer 提示和 Vite 大块体积 warning 保留，不冒称全无 warning。
未调用外部模型，离线流测试不代表付费服务验收。

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT

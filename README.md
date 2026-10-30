
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.32.1**，升级后需重新安装整图、生成 JS 并完整
刷新。使用已发布 Reel **0.7.0-alpha.5**、UI **0.9.0**、Respo **0.17.1**、JS-FFI
**0.2.9**；Reel 和传递 Router 仍为 alpha，不宣称整图全部稳定。
Google SDK 锁定版本、模型和请求地址不变。**0.0.17 仍是未发版候选**，不移动旧 tag
或发布 npm；旧 0.0.16 配对 alpha.5 的说明见 [#39](https://github.com/calcit-lang/gen-code/issues/39)。

官方工具转换48处类型表达式，49个定义schema保持。单事件 dispatch、输入/Take、
stream、存档恢复、两处 HUD 和模型配置保留。原质量基线、七项附带测试及原 stream
回归继续执行，不新增强转、预算、验证脚本或进程管理依赖。npm等待为一小时，无单包例外。

真实 Caps strict/toolchain、全定义、完整 strict diagnostics=[]、未改的质量基线、
原测试、构建和 immutable 安装通过。此前0.32.0候选已验证输入/Take及连续刷新；
本次未重跑浏览器，不读取凭据、不点Run/Refresh、不调用生成服务。

`.reset-state` 回调接收单个 `:: :states cursor state` 事件，其他自定义回调也须遵守
单事件合同。开放字段读取如实返回 Dynamic，具体插件状态经过字段解码构造 GenCodeState。
外部同名 StoreData 只当数据：转 Map、检查 states 和嵌套状态，再重建本地类型；名称不
代表身份。无效输入保留原 fallback，见 [#41](https://github.com/calcit-lang/gen-code/issues/41)。

Demo 先恢复存档，再渲染并注册持久化；启动恢复清除中断请求的 loading?，保留 query、
answer、code、done? 等字段，不恢复请求或 AbortController。可解析但结构不符的数据
仍有旧回退合同，不宣称所有坏存档都被拒绝，见 [#38](https://github.com/calcit-lang/gen-code/issues/38)。
原三处 unsafe 和 SDK 开放边界保持，不为清零而伪造可选字段。AbortController 的既有
浅宿主检查只证明实际 signal/abort 能力，不证明深层值或所有平台行为。

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

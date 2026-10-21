
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### 0.0.17 使用者影响

本候选配对精确正式 Calcit / `@calcit/procs` 0.30.1，模块更新至 Reel 0.6.41、
UI 0.8.0、Respo 0.16.124、js-ffi 0.2.5，传递 Router 0.8.37。
升级后重启开发服务并完整刷新。插件公开签名、输入/Take/stream 合同、模型选择、
key 存储与数据格式不变；Snapshot 不改，不增加外部 GenAI 请求或权限。
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

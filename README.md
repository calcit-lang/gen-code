
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### Usages

Import code:

```cirru.no-check
:dependencies $ {} $ |calcit-lang/gen-code |0.0.14
```

```cirru.no-check
:require $ gen-code.core :refer $ use-gen-code

let
    plugin $ use-gen-code (>> states :drafter)
      fn () "\"println |demo"
      fn (code d!) (println "\"submit code" code)
  .render plugin
  .reset-state plugin
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

This migration targets stable Calcit/procs 0.27.0 and Yarn 4.18.0, with canonical
`calcit.cirru` / `deps.cirru`. Fourteen deprecated Option constructors are migrated.
Application operation cursors are typed Lists; states-merge carries GenCodeState
and Map<Tag, Dynamic> changes. The GenAI call declares its async contract with
Tag model, List<Tag> cursor, typed state, String prompt and Ref<String> output.
Run and keyboard submission both pass the same model Tag.

CI retains strict dependency/toolchain, entry/all-public checks, the unchanged
quality baseline and existing Reel/stream business tests. No new test suite or
CDN checker is added; repeated diagnostic reports are removed. Production runs
are serialized, PR uploads retain their run-isolated prefix, and an upload or
built-in verification failure prevents server deployment.

Local macOS tools still report upstream Respo ToString warnings
(Respo/respo.calcit#198); current-commit official Linux CI is the acceptance
criterion. Actual browser interaction and production deployment require separate
verification, not merely a build result.

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT

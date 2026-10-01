
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

Use `yarn dev` to compile once, then run Calcit `js -w` and Vite together;
either process exiting stops the other. `yarn build` compiles and builds once.
The existing Reel boundary and stream business tests remain in CI.

Local Vite builds use relative asset URLs. `VITE_BASE_URL` selects the frontend
CDN base. CI uses the same prefix for the build, COS upload and public verification:
the repository directory on main, or `pr/<number>/<run-id>/<attempt>/` for each PR run.
cos-upload-action v1.1.1 verifies the uploaded files itself; no extra CDN checker
is needed. The server deployment source `dist/*`, destination and main-only
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

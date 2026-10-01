
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

Local Vite builds use relative asset URLs. `VITE_BASE_URL` selects the frontend
CDN base. CI uses the same prefix for the build, COS upload and public verification:
the repository directory on main, or `pr/<number>/<run-id>/` for each PR run.
cos-upload-action v1.1.1 verifies the uploaded files itself; no extra CDN checker
is needed. The server deployment source `dist/*`, destination and main-only
condition are unchanged. The deployed HTML deliberately changes: its frontend
asset URLs now point to COS rather than relative server paths.

This local migration branch targets Calcit/procs 0.27.0. Strict dependency and
toolchain checks, the unchanged quality baseline and all four existing Calcit
tests pass. Fourteen deprecated Option constructors have been migrated.
The official compiler still rejects six ToString-bound warnings in published
Respo 0.16.114-alpha.5 (tracked in Respo/respo.calcit#198), so JS generation,
the stream contract test and browser acceptance remain incomplete. Do not deploy
this branch as a completed Calcit upgrade. The separate COS-only PR keeps its
existing 0.24.3 toolchain until these upgrade checks pass.

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT

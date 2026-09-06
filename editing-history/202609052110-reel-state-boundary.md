# Reel/application state boundary

- Upgraded the immutable provider graph to Reel 0.6.14, respo-ui 0.7.17, Respo 0.16.93, and the exact Calcit / `@calcit/procs` 0.13.77 toolchain.
- Replaced `get` over `Map<Tag, Dynamic>` at the Reel and Respo state boundary with the deliberately open `read-open-field-or` adapter. Its contract does not claim a generic input/output relationship, and callers immediately narrow application values to `StoreData`, `GenCodeState`, or `List<Tag>`.
- Removed two unused state reads that constructed `Option<Dynamic>` and added executable coverage for present and missing Reel store fields.
- Declared local UI callback contracts and narrow external-object traits for keyboard, GenAI chat, and abort-controller host values reached after the state boundary was repaired.
- Kept the explicit GenAI stream callback migration in calcit-lang/calcit#860 and calcit-lang/gen-code#13. The full strict check now advances to that known `fn (? chunk)` blocker (`E_LEGACY_OPTIONAL_PARAM`) instead of failing at the Reel state boundary.
- Made pull-request builds deployment-free while preserving main-branch deployment.

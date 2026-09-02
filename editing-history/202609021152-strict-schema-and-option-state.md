# strict schema and Option state migration

- Migrated `include-file!` from a legacy runtime function schema to a strict `Macro` contract with explicit `Expr<String>` input/expansion and `:fs-read` capability.
- Replaced nullable AI chat and abort-controller atoms with `Option<JsObject>` and explicit `some`/`none` handling.
- Typed browser keyboard/document fields with external-object traits, changed Struct state updates to `struct-with` plus required field access, and returned `&unit` from the storage effect.
- Replaced the layout sentinel `nil` with numeric zero and upgraded Calcit/Respo dependencies for the strict compiler.
- Verified current-compiler preprocessing and JavaScript codegen against the local Respo fix; remaining unresolved Dynamic positions are the heterogeneous Reel/framework maps.

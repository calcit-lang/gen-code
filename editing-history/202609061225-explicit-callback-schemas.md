# Explicit callback and text-ref schemas / 显式回调与文本 Ref 契约

Milestone: calcit-lang/calcit#2. Related blockers: #867, #871 and #872.

This focused change stays outside the separately owned Reel migration. It types
the streaming text accumulator as `Ref<String>`, gives the JSON error callback
an explicit JavaScript-boundary schema, and declares the callback contracts used
by `use-gen-code` and `GenCodeActions`. Call-site and implementation lambdas now
carry matching `hint-fn` contracts.

With Calcit 0.13.77 and the currently pinned published dependency graph, the
strict preflight now clears the former `E_ERASED_GENERIC_RELATION` at `*text`
and the newly exposed anonymous-function schema diagnostics. It next stops at
the existing #867 `E_DYNAMIC_METHOD_DISPATCH` for `.render`; that Reel/trait
state boundary is intentionally not modified here.

The repository's non-strict check, focused Reel-state test, generated-JavaScript
stream contract test, and Vite production build pass under Node 24.4.1. No
dependency or release metadata changed.

本改动不接管另一路 Reel 迁移，只补齐 gen-code 自有的 `Ref<String>`、JSON
异常回调、`use-gen-code` 回调和 `GenCodeActions` 方法契约。Calcit 0.13.77
严格预检已越过原先的 `*text` 泛型擦除与匿名函数 schema 错误，当前准确停在
#867 已登记的 `.render` 动态方法分派。普通类型检查、聚焦状态测试、生成 JS
流契约测试和 Node 24.4.1/Vite 构建均通过，依赖与版本未变。

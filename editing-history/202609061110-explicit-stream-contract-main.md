# Explicit GenAI stream contract on current main / 当前主线的显式流契约

Issues: calcit-lang/gen-code#13, calcit-lang/calcit#860, parents #653/#578.

The earlier implementation worktree predated merged gen-code PR #16. This change
was rebuilt on exact main 64967bdd rather than rebasing or overwriting its Reel
state-boundary work. A focused `gen-code.stream/consume-genai-stream!` adapter
owns the JavaScript async-iterator boundary: its host callback accepts
JsNullish<JsObject>, a narrow `read-genai-chunk` adapter attaches the
`GenAIChunkHost` external-object trait, and application code receives
Option<GenAIChunkHost>. This keeps `.text` access typed without granting raw
member access to every `JsObject`.

`call-genai-msg!` no longer declares `fn (? chunk)`. Normal chunks and nullish
yields preserve the existing dispatch path; successful completion returns Unit.
Generated-JavaScript tests cover ordinary/nullish chunks, normal completion,
textless chunks, stream failure, callback failure and iterator cleanup. The
no-text diagnostic uses a fixed message instead of dereferencing optional host
candidate data. CI runs the suite after fresh code generation. Application
version and dependency versions are unchanged.

Calcit 0.13.77 strict checking clears the optional callback and untyped chunk
field sites, then stops at the already split `E_ERASED_GENERIC_RELATION`: the
dynamic `*text` argument reaches `deref` inside `call-genai-msg!`. Per #860's
acceptance boundary this is recorded, not suppressed or folded into this PR;
the non-overlapping state/generic repair remains #867 / gen-code#14.

旧实现基于 #16 之前的主线，本次在最新 main 上按最小范围重新移植，不覆盖 Reel
边界。宿主 nullish 只在独立适配器转换为 Option，并在同一边界附加最小
`GenAIChunkHost` trait，应用回调不再依赖隐式 nil 或裸 `JsObject` 字段访问；
新增完成、异常及 cleanup 回归，版本和依赖均不变。严格检查继续推进到已拆分的
#867 泛型状态边界，本改动不抑制或顺带修改该问题。

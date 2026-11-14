import assert from "node:assert/strict";
import { registerHooks } from "node:module";

import { invoke_method } from "@calcit/procs";
import { consume_genai_stream_$x_ } from "../js-out/gen-code.stream.mjs";
import * as c from "../js-out/calcit.core.mjs";
import { event__GT_edn } from "../js-out/respo.util.format.mjs";
import { _$s_abort_control, _$s_ai_chat, initial_state, new_abort_controller_$x_, use_gen_code, use_gen_code_with_dispatch } from "../js-out/gen-code.core.mjs";

const unwrapChunk = (chunkOption) =>
  invoke_method("none?", chunkOption) ? null : invoke_method("unwrap", chunkOption);

const controller = new_abort_controller_$x_();
assert.equal(controller.signal.aborted, false);
controller.abort();
assert.equal(controller.signal.aborted, true);

let completedCleanupCount = 0;
async function* completedStream() {
  try {
    yield { text: "first" };
    yield null;
    yield {};
    yield { text: "second" };
  } finally {
    completedCleanupCount += 1;
  }
}

const completedChunks = [];
const completedResult = await consume_genai_stream_$x_(
  completedStream(),
  (chunkOption) => {
    completedChunks.push(unwrapChunk(chunkOption));
  },
);

assert.deepEqual(completedChunks, [
  { text: "first" },
  null,
  {},
  { text: "second" },
]);
assert.equal(completedResult, undefined);
assert.equal(completedCleanupCount, 1);

let failedCleanupCount = 0;
async function* failedStream() {
  try {
    yield { text: "before-error" };
    throw new Error("stream failed");
  } finally {
    failedCleanupCount += 1;
  }
}

const failedChunks = [];
await assert.rejects(
  consume_genai_stream_$x_(failedStream(), (chunkOption) => {
    failedChunks.push(unwrapChunk(chunkOption));
  }),
  /stream failed/,
);
assert.deepEqual(failedChunks, [{ text: "before-error" }]);
assert.equal(failedCleanupCount, 1);

let callbackCleanupCount = 0;
async function* callbackFailureStream() {
  try {
    yield { text: "callback-error" };
    yield { text: "unreachable" };
  } finally {
    callbackCleanupCount += 1;
  }
}

await assert.rejects(
  consume_genai_stream_$x_(callbackFailureStream(), () => {
    throw new Error("callback failed");
  }),
  /callback failed/,
);
assert.equal(callbackCleanupCount, 1);

console.log("stream contract: normal, nullish, end, error, and cleanup paths passed");

// Import the browser entry without starting its UI.
globalThis.document = { querySelector: () => ({}) };
// Published bottom-tip 0.1.5 needs this exact ESM subpath fix (upstream #42).
const uiImport = registerHooks({ resolve(specifier, context, nextResolve) {
  return nextResolve(specifier === "virtual-dom/create-element"
    ? "virtual-dom/create-element.js" : specifier, context);
} });
const { dispatch_$x_, on_control_$x_, _$s_reel } = await import("../js-out/gen-code.main.mjs");
const { GenCodeOp, decode_gen_code_op } = await import("../js-out/gen-code.schema.mjs");
const { Control } = await import("../js-out/reel.typed.mjs");
uiImport.deregister();
delete globalThis.document;
const field = (value, name) => invoke_method("unwrap", c.get(value, c.to_tag(name)));
const before = c.deref(_$s_reel);
const cursorKeys = [c.to_tag("drafter"), "nested", 7];
const cursor = c._$L_(...cursorKeys);
const originalChat = c.deref(_$s_ai_chat);
const originalAbort = c.deref(_$s_abort_control);
const patches = [];
const keyboardPatches = [];
const fakeChat = {
  async *sendMessageStream() {
    yield {};
    yield { text: '["println","|offline"]' };
  },
};
function findElement(element, matches) {
  if (matches(element)) return element;
  for (const pair of field(element, "children").toArray()) {
    const node = field(pair, "node");
    if (invoke_method("none?", node)) continue;
    const child = invoke_method("unwrap", node);
    if (child.tag === c.to_tag("element")) {
      const found = findElement(child.extra[0], matches);
      if (found) return found;
    }
  }
}
const plugin = use_gen_code(
  c._$n__$M_(c.to_tag("cursor"), cursor, c.to_tag("data"), initial_state),
  () => "",
  () => {},
);
const rendered = invoke_method("render", plugin);
const run = findElement(rendered, element => field(element, "attrs").toArray().some(
  attr => attr.get(0) === c.to_tag("inner-text") && attr.get(1) === "Run",
));
const textarea = findElement(rendered, element => field(element, "name") === c.to_tag("textarea"));
assert.ok(run && textarea);
const keydown = field(field(textarea, "event"), "keydown");
const enter = { type: "keydown", key: "Enter", code: "Enter", keyCode: 13 };
try {
  c.reset_$x_(_$s_ai_chat, c._PCT__$o__$o_(c.Option, c.to_tag("some"), fakeChat));
  await field(field(run, "event"), "click")(null, op => { patches.push(op); });
  const emit = op => { keyboardPatches.push(op); };
  await keydown(event__GT_edn({ ...enter, metaKey: false }), emit);
  assert.deepEqual(keyboardPatches, []);
  await keydown(event__GT_edn({ ...enter, metaKey: true }), emit);
  await new Promise(resolve => setTimeout(resolve, 0));
  assert.match(field(keyboardPatches.at(-1).extra[2], "code"), /println.*offline/);
} finally {
  c.reset_$x_(_$s_ai_chat, originalChat);
  c.reset_$x_(_$s_abort_control, originalAbort);
}
assert.ok(patches.length > 0);
for (const op of [...patches, ...keyboardPatches]) {
  assert.ok(invoke_method("none?", c.enum_definition(op)));
  assert.equal(op.tag, c.to_tag("states-merge"));
  assert.ok(c._$n__$e_(op.extra[0], cursor));
  assert.ok(c._$n__$e_(op.extra[1], initial_state));
}
const initialPatch = patches[0].extra[2];
assert.equal(field(initialPatch, "answer"), "");
assert.equal(field(initialPatch, "loading?"), true);
const finalPatch = patches.at(-1).extra[2];
assert.equal(field(finalPatch, "done?"), true);
assert.equal(field(finalPatch, "loading?"), false);
assert.match(field(finalPatch, "code"), /println.*offline/);

const changes = c._$n__$M_(c.to_tag("query"), "dispatch 合成提示 🐈", c.to_tag("loading?"), true);
const legacyDraft = c._$n__$M_(c.to_tag("query"), "旧草稿", c.to_tag("loading?"), false);
const decodedDraft = invoke_method("unwrap", decode_gen_code_op(
  c._$o__$o_(c.to_tag("states"), cursor, legacyDraft),
));
assert.equal(invoke_method("unwrap", c.enum_definition(decodedDraft)), GenCodeOp);
assert.ok(c._$n__$e_(decodedDraft.extra[1], legacyDraft));
assert.ok(invoke_method("none?", decode_gen_code_op(
  c._$o__$o_(c.to_tag("states"), cursor, 42),
)));
assert.ok(invoke_method("none?", decode_gen_code_op(
  c._$o__$o_(c.to_tag("states-merge"), c._$L_(true), initial_state, changes),
)));
const typedPlugin = use_gen_code_with_dispatch(
  c._$n__$M_(c.to_tag("cursor"), cursor, c.to_tag("data"), initial_state),
  () => "typed host hint",
  () => {},
  op => op,
);
const take = findElement(invoke_method("render", typedPlugin), element =>
  field(element, "attrs").toArray().some(
    attr => attr.get(0) === c.to_tag("inner-text") && attr.get(1) === "Take",
  ),
);
assert.ok(take);
let takeOperation;
field(field(take, "event"), "click")(null, op => { takeOperation = op; });
assert.equal(invoke_method("unwrap", c.enum_definition(takeOperation)), GenCodeOp);
assert.equal(takeOperation.tag, c.to_tag("states"));
assert.ok(c._$n__$e_(takeOperation.extra[0], cursor));
assert.match(field(takeOperation.extra[1], "query"), /typed host hint/);

const expectedOp = c._PCT__$o__$o_(
  GenCodeOp,
  c.to_tag("states-merge"), cursor, initial_state, changes,
);
dispatch_$x_(expectedOp);
const recorded = c.deref(_$s_reel);
const records = field(recorded, "records");
assert.equal(invoke_method("len", records), invoke_method("len", field(before, "records")) + 1);
const nested = cursorKeys.reduce(
  (states, key) => invoke_method("unwrap", c.get(states, key)),
  field(field(recorded, "store"), "states"),
);
const state = field(nested, "data");
assert.equal(field(state, "query"), "dispatch 合成提示 🐈");
assert.equal(field(state, "loading?"), true);
const record = invoke_method("unwrap", c.nth(records, invoke_method("len", records) - 1));
assert.ok(c._$n__$e_(field(record, "op"), expectedOp));
on_control_$x_(c._PCT__$o__$o_(Control, c.to_tag("toggle")));
const controlled = c.deref(_$s_reel);
assert.equal(field(controlled, "display?"), !field(recorded, "display?"));
assert.ok(c._$n__$e_(field(controlled, "store"), field(recorded, "store")));
assert.ok(c._$n__$e_(field(controlled, "records"), records));
c.reset_$x_(_$s_reel, before);
console.log("dispatch contract: states-merge updates and records; Reel control bypasses history");

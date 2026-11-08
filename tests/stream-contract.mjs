import assert from "node:assert/strict";
import { registerHooks } from "node:module";

import { invoke_method, ref } from "@calcit/procs";
import { consume_genai_stream_$x_ } from "../js-out/gen-code.stream.mjs";
import * as c from "../js-out/calcit.core.mjs";
import { _$s_abort_control, _$s_ai_chat, call_genai_msg_$x_, initial_state, new_abort_controller_$x_ } from "../js-out/gen-code.core.mjs";

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
const { dispatch_render_event_$x_, on_control_$x_, _$s_reel } = await import("../js-out/gen-code.main.mjs");
const { Control } = await import("../js-out/reel.typed.mjs");
uiImport.deregister();
delete globalThis.document;
const field = (value, name) => invoke_method("unwrap", c.get(value, c.to_tag(name)));
const before = c.deref(_$s_reel);
const cursor = c._$L_(c.to_tag("drafter"));
const originalChat = c.deref(_$s_ai_chat);
const originalAbort = c.deref(_$s_abort_control);
const patches = [];
const fakeChat = {
  async *sendMessageStream() {
    yield { text: '["println","|offline"]' };
  },
};
try {
  c.reset_$x_(_$s_ai_chat, c._PCT__$o__$o_(c.Option, c.to_tag("some"), fakeChat));
  await call_genai_msg_$x_(c.to_tag("gemini"), cursor, initial_state, "offline fixture",
    op => patches.push(op), ref(""));
  await new Promise(resolve => setTimeout(resolve, 0));
} finally {
  c.reset_$x_(_$s_ai_chat, originalChat);
  c.reset_$x_(_$s_abort_control, originalAbort);
}
assert.ok(patches.length > 0);
for (const op of patches) {
  assert.equal(op.tag, c.to_tag("states-merge"));
  assert.equal(op.extra[0], cursor);
  assert.equal(op.extra[1], initial_state);
}
const finalPatch = patches.find(op => op.extra[2].get(c.to_tag("done?")) === true).extra[2];
assert.equal(field(finalPatch, "loading?"), false);
assert.match(field(finalPatch, "code"), /println.*offline/);

const changes = c._$n__$M_(c.to_tag("query"), "dispatch 合成提示 🐈", c.to_tag("loading?"), true);
dispatch_render_event_$x_(c._$o__$o_(c.to_tag("states-merge"), cursor, initial_state, changes));
const recorded = c.deref(_$s_reel);
const records = field(recorded, "records");
assert.equal(invoke_method("len", records), invoke_method("len", field(before, "records")) + 1);
const state = field(field(field(field(recorded, "store"), "states"), "drafter"), "data");
assert.equal(field(state, "query"), "dispatch 合成提示 🐈");
assert.equal(field(state, "loading?"), true);
const record = invoke_method("unwrap", c.nth(records, invoke_method("len", records) - 1));
const expectedOp = c._PCT__$o__$o_(
  (await import("../js-out/gen-code.schema.mjs")).GenCodeOp,
  c.to_tag("states-merge"), cursor, initial_state, changes,
);
assert.ok(c._$n__$e_(field(record, "op"), expectedOp));
on_control_$x_(c._PCT__$o__$o_(Control, c.to_tag("toggle")));
const controlled = c.deref(_$s_reel);
assert.equal(field(controlled, "display?"), !field(recorded, "display?"));
assert.ok(c._$n__$e_(field(controlled, "store"), field(recorded, "store")));
assert.ok(c._$n__$e_(field(controlled, "records"), records));
c.reset_$x_(_$s_reel, before);
console.log("dispatch contract: states-merge updates and records; Reel control bypasses history");

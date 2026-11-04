import assert from "node:assert/strict";
import { registerHooks } from "node:module";

import { invoke_method } from "@calcit/procs";
import { consume_genai_stream_$x_ } from "../js-out/gen-code.stream.mjs";
import * as c from "../js-out/calcit.core.mjs";
import { initial_state, new_abort_controller_$x_ } from "../js-out/gen-code.core.mjs";

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
const { dispatch_$x_, _$s_reel } = await import("../js-out/gen-code.main.mjs");
uiImport.deregister();
delete globalThis.document;
const field = (value, name) => invoke_method("unwrap", c.get(value, c.to_tag(name)));
const before = c.deref(_$s_reel);
const cursor = c._$L_(c.to_tag("drafter"));
const changes = c._$n__$M_(c.to_tag("query"), "dispatch 合成提示 🐈");
dispatch_$x_(c._$o__$o_(c.to_tag("states-merge"), cursor, initial_state, changes));
const recorded = c.deref(_$s_reel);
const records = field(recorded, "records");
assert.equal(invoke_method("len", records), invoke_method("len", field(before, "records")) + 1);
const state = field(field(field(field(recorded, "store"), "states"), "drafter"), "data");
assert.equal(field(state, "query"), "dispatch 合成提示 🐈");
const record = invoke_method("unwrap", c.nth(records, invoke_method("len", records) - 1));
const expectedOp = c._PCT__$o__$o_(
  (await import("../js-out/gen-code.schema.mjs")).GenCodeOp,
  c.to_tag("states-merge"), cursor, initial_state, changes,
);
assert.ok(c._$n__$e_(field(record, "op"), expectedOp));
dispatch_$x_(c._$o__$o_(c.to_tag("reel/toggle")));
const controlled = c.deref(_$s_reel);
assert.equal(field(controlled, "display?"), !field(recorded, "display?"));
assert.ok(c._$n__$e_(field(controlled, "store"), field(recorded, "store")));
assert.ok(c._$n__$e_(field(controlled, "records"), records));
c.reset_$x_(_$s_reel, before);
console.log("dispatch contract: states-merge updates and records; Reel control bypasses history");

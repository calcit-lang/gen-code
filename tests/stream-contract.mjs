import assert from "node:assert/strict";

import { invoke_method } from "@calcit/procs";
import { consume_genai_stream_$x_ } from "../js-out/gen-code.stream.mjs";
import { new_abort_controller_$x_ } from "../js-out/gen-code.core.mjs";

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

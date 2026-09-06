{}
  :schema-version 1
  :feature 'explicit-genai-stream-contract
  :doc "|Adapt the JavaScript async iterator's JsNullish chunk boundary once, attach the minimal GenAIChunkHost capability, then expose Option<GenAIChunkHost> while preserving completion and failure propagation."
  :roots $ #{} 'gen-code.core/call-genai-msg!
  :definitions $ {}
    'gen-code.stream/consume-genai-stream! $ {}
      :mode :ensure
      :kind :fn
      :doc "|Consume a host async iterator and normalize each nullish yield into Option before invoking application code."
      :params $ [] 'stream 'on-chunk!
      :schema $ :: 'Fn $ {} (:return 'Unit)
        :args $ [] 'JsObject
          :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Option 'GenAIChunkHost)
        :features $ #{} :js-ffi
    'gen-code.core/call-genai-msg! $ {}
      :mode :external
      :kind :fn
      :schema $ :: 'Fn $ {} (:return 'Dynamic)
        :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        :features $ #{} :js-ffi
  :edges $ #{}
    :: :call 'gen-code.core/call-genai-msg! 'gen-code.stream/consume-genai-stream!

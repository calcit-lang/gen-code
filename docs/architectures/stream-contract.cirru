{}
  :schema-version 1
  :feature 'explicit-genai-stream-contract
  :doc "|Reject a nullish JavaScript async iterator before consumption, expose yielded chunks as Option<JsObject>, and use read-genai-chunk to read the caller-facing JsNullish text field."
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
            :args $ [] (:: 'Option 'JsObject)
        :features $ #{} :js-ffi
    'gen-code.stream/read-genai-chunk $ {}
      :mode :ensure
      :kind :fn
      :doc "|Read the stream text from its typed host boundary."
      :params $ [] 'value
      :schema $ :: 'Fn $ {} (:return $ :: 'JsNullish 'String)
        :args $ [] 'JsObject
        :features $ #{} :js-ffi
    'gen-code.core/call-genai-msg! $ {}
      :mode :external
      :kind :fn
      :schema $ :: 'Fn $ {} (:return 'Dynamic)
        :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        :features $ #{} :js-ffi
  :edges $ #{}
    :: :call 'gen-code.core/call-genai-msg! 'gen-code.stream/consume-genai-stream!


{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |gen-code
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'gen-code.main/main!) (:mode :js) (:reload-fn 'gen-code.main/reload!) (:target :browser)
      :feature-policy $ {} $ :js-ffi :allow
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'gen-code.schema/GenCodeOp
  :files $ {}
    'gen-code.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                store $ :store reel
                states $ :states store
                plugin-gen-code $ use-gen-code-with-dispatch (>> states :drafter)
                  fn ()
                    hint-fn $ Fn $ -> String
                    , "|println |demo"
                  fn (code d!)
                    hint-fn $ Fn String
                      Fn schema/GenCodeOp $ -> Unit
                      -> Unit
                    println "|submit code" code
                  fn (op)
                    hint-fn $ Fn schema/GenCodeOp $ -> schema/GenCodeOp
                    , op
              assert-traits plugin-gen-code GenCodeActions
              div
                {} $ :class-name $ str-spaced css/preset css/global css/row
                div
                  {} $ :style $ {} (:width 800)
                  .render plugin-gen-code
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State schema/GenCodeOp gen-code.types/StoreData)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :io :state
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.comp.container
          :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            gen-code.config :refer $ dev?
            gen-code.core :refer $ use-gen-code-with-dispatch GenCodeActions
            gen-code.schema :as schema
    'gen-code.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.config
    'gen-code.core $ %{} 'FileEntry
      :defs $ {}
        '%gen-code-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %gen-code-actions GenCodeActions
            .render $ fn (self)
              hint-fn $ Fn GenCodePluginData0 $ -> respo.schema/Element
              match self $
                :plugin render-node cursor state
                render-node
            .reset-state $ fn (self d!)
              hint-fn $ Fn GenCodePluginData0
                Fn AnyEnum $ -> Unit
                -> Unit
              match self $
                :plugin r cursor state
                d! $ gen-code.schema/plugin-op-to-wire $ gen-code.schema/GenCodeOp :states cursor initial-state
            .reset-state-with $ fn (self emit!)
              hint-fn $ Fn GenCodePluginData0
                Fn schema/GenCodeOp $ -> Unit
                -> Unit
              match self $
                :plugin r cursor state
                emit! $ gen-code.schema/GenCodeOp :states cursor initial-state
          :examples $ []
          :schema $ quote Impl
        '*abort-control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *abort-control None
          :examples $ []
          :schema $ quote $ Ref (Option AbortControllerHost)
        '*ai-chat $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *ai-chat None
          :examples $ []
          :schema $ quote $ Ref (Option GenAIChatHost)
        'AbortControllerHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait AbortControllerHost (:signal 'JsObject)
            .abort $ Fn $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'GenAIChatHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIChatHost
            .sendMessageStream $ Fn GenAIChatHost JsObject $ -> (JsNullish JsObject)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'GenAIChatsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIChatsHost
            .create $ Fn JsObject $ -> GenAIChatHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'GenAIClientHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIClientHost (:chats 'GenAIChatsHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'GenCodeActions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenCodeActions
            .render $ Fn T (-> respo.schema/Element) (:generics T)
            .reset-state $ Fn T
              Fn AnyEnum $ -> Unit
              -> Unit
              :generics T
            .reset-state-with $ Fn T
              Fn gen-code.schema/GenCodeOp $ -> Unit
              -> Unit
              :generics T
          :examples $ []
          :schema $ quote Trait
        'GenCodePluginData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def GenCodePluginData (impl-traits GenCodePluginData0 %gen-code-actions)
          :examples $ []
          :schema $ quote EnumDef
          :tests $ []
            %{} 'TestEntry (:name |render-and-reset-contract)
              :code $ quote $ let
                  *renders $ ref 0
                  *reset $ ref $ :: :states ([] :initial) initial-state
                  render-node $ fn ()
                    hint-fn $ Fn $ -> respo.schema/Element
                    swap! *renders inc
                    div $ {}
                  plugin $ %:: GenCodePluginData :plugin render-node ([] :drafter) initial-state
                  node $ .render plugin
                assert=
                  div $ {}
                  , node
                .reset-state plugin $ fn (op)
                  hint-fn $ Fn AnyEnum $ -> Unit
                  reset! *reset op
                  , &unit
                assert= 1 @*renders
                assert=
                  :: :states ([] :drafter) initial-state
                  , @*reset
            %{} 'TestEntry (:name |nominal-reset)
              :code $ quote $ let
                  captured $ ref $ gen-code.schema/GenCodeOp :states ([] :initial) initial-state
                  plugin $ %:: GenCodePluginData :plugin
                    fn () $ div $ {}
                    [] :drafter
                    , initial-state
                .reset-state-with plugin $ fn (op)
                  hint-fn $ Fn schema/GenCodeOp $ -> Unit
                  reset! captured op
                  , &unit
                assert=
                  gen-code.schema/GenCodeOp :states ([] :drafter) initial-state
                  , @captured
        'GenCodePluginData0 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum GenCodePluginData0
            :plugin
              Fn $ -> respo.schema/Element
              List respo.schema/CoordKey
              , gen-code.schema/GenCodeState
          :examples $ []
          :schema $ quote EnumDef
        'call-genai-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-genai-msg! (variant prompt-text emit-patch! *text)
            hint-fn $ Fn Tag String
              Fn (Map Tag schema/GenCodeFieldValue) (-> Unit)
              Ref String
              -> Unit
              :features :js-ffi
              :async
            when
              .none? $ deref *ai-chat
              initialize-chat! variant
            match (deref *abort-control)
              (:some abort)
                do (js/console.warn "|Aborting prev") (.!abort abort)
              (:none) &unit
            emit-patch! $ {} (:answer |) (:loading? true)
            let
                sdk-result $ js-await $ send-genai-stream!
                  .unwrap $ deref *ai-chat
                  , prompt-text
              js-await $ consume-genai-stream! sdk-result $ fn (chunk-option)
                hint-fn $ Fn (Option JsObject) (-> Unit) (:features :js-ffi)
                match chunk-option
                  (:some chunk)
                    match
                      js-nullish->option $ read-genai-chunk chunk
                      (:some t)
                        do (swap! *text str t)
                          emit-patch! $ {}
                            :answer $ deref *text
                            :loading? true
                            :done? false
                          , &unit
                      (:none)
                        do (js/console.log "|GenAI chunk has no text") &unit
                  (:none) &unit
                emit-patch! $ {}
                  :answer $ deref *text
                  :loading? true
                  :done? false
                , &unit
              emit-patch! $ {}
                :answer $ deref *text
                :loading? false
                :done? true
                :code $ try
                  decode-map-as
                    writeCirruCode $ js-array $ js/JSON.parse (deref *text)
                    , String
                  fn (err)
                    hint-fn $ Fn Dynamic (-> String) (:features :js-ffi)
                    js/console.error err
                    str err
            , &unit
          :examples $ []
          :schema $ quote $ Fn Tag String
            Fn (Map Tag schema/GenCodeFieldValue) (-> Unit)
            Ref String
            -> Unit
            :features :io :js-ffi :state
            :async
        'get-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-gemini-key! ()
            let
                key $ .unwrap-or (browser/storage-get |gemini-key) |
              if (blank? key)
                let
                    v $ .unwrap-or
                      browser/prompt! $ str |Required |gemini-key |in |localStorage
                      , |
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  browser/storage-set! |gemini-key v
                  , v
                , key
          :examples $ []
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'include-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro include-file! (filepath)
            read-file $ str
              if (empty? calcit-dirname) |. calcit-dirname
              , |/prompts/ filepath
          :examples $ []
          :schema $ quote $ Macro (Expr String)
            -> $ Expr String
            :capabilities :fs-read
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            schema/GenCodeState :answer | :loading? false :done? false :query | :code |
          :examples $ []
          :schema $ quote schema/GenCodeState
        'initialize-chat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn initialize-chat! (variant)
            reset! *ai-chat $ Some $ let
                model $ pick-model variant
                doc-content $ str (include-file! |declare-task.md) sep (include-file! |format-guide.md) sep (include-file! |calcit-lang.md) sep $ include-file! |respo.md
                ai $ unsafe-coerce
                  new GoogleGenAI $ js-object $ :apiKey (get-gemini-key!)
                  , GenAIClientHost
              js-cast
                .!create (.-chats ai)
                  js-object (:model model)
                    :config $ js/Object.assign $ js-object
                      :httpOptions $ js-object $ :baseUrl
                        .unwrap-or (get-env |gemini-host) |https://ja.chenyong.life
                      :responseMimeType |application/json
                    :history $ js-array $ js-object (:role |model)
                      :parts $ js-array $ js-object (:text doc-content)
                , GenAIChatHost
            , &unit
          :examples $ []
          :schema $ quote $ Fn Tag (-> Unit) (:features :io :js-ffi :state)
        'new-abort-controller! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-abort-controller! ()
            js-cast (new js/AbortController) AbortControllerHost
          :examples $ []
          :schema $ quote $ Fn (-> AbortControllerHost) (:features :js-ffi)
        'pick-model $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pick-model (variant)
            match variant (:gemini |gemini-2.5-flash) (:gemini-pro |gemini-2.5-pro-preview-06-05) (:gemini-pro-1.5 |gemini-1.5-pro) (:gemini-flash-lite |gemini-2.0-flash-lite) (:gemma |gemma-3-27b-it) (_ |gemini-2.5-flash)
          :examples $ []
          :schema $ quote $ Fn Tag (-> String)
        'send-genai-request! $ %{} 'CodeEntry
          :doc "|The raw Gemini SDK call is kept as a leaf FFI adapter so its capability is lexical."
          :code $ quote $ defn send-genai-request! (chat prompt-text abort)
            hint-fn $ Fn GenAIChatHost String AbortControllerHost
              -> $ JsNullish JsObject
              :features :js-ffi
            .!sendMessageStream chat $ js-object (:message prompt-text)
              :config $ js-object
                :httpOptions $ js-object $ :baseUrl
                  .unwrap-or (get-env |gemini-host) |https://ja.chenyong.life
                :abortSignal $ .-signal abort
                :responseMimeType |application/json
          :examples $ []
          :schema $ quote $ Fn GenAIChatHost String AbortControllerHost
            -> $ JsNullish JsObject
            :features :io :js-ffi
        'send-genai-stream! $ %{} 'CodeEntry
          :doc "|Keep the Gemini SDK method call and browser abort signal in one typed JS adapter."
          :code $ quote $ defn send-genai-stream! (chat prompt-text)
            hint-fn $ Fn GenAIChatHost String (-> GenAIStreamHost) (:features :js-ffi) (:async)
            let
                abort $ new-abort-controller!
                pending $ send-genai-request! chat prompt-text abort
              reset! *abort-control $ Some abort
              if (js-nullish? pending) (raise "|GenAI stream response is nullish")
                js-cast (js-await pending) GenAIStreamHost
          :examples $ []
          :schema $ quote $ Fn GenAIChatHost String (-> GenAIStreamHost) (:features :io :js-ffi :state) (:async)
        'sep $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def sep (str &newline &newline |----------- &newline &newline)
          :examples $ []
          :schema $ quote String
        'style-codebox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-codebox
            {} $ |& $ {} (:margin 0) (:max-height 600) (:overflow :auto) (:padding |8px)
              :border $ str "|1px solid " $ hsl 0 0 90
              :border-radius |6px
              :overflow :auto
              :font-size 12
              :line-height |16px
          :examples $ []
          :schema $ quote String
        'style-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-snippet
            {} $ |& $ {} (:margin 0) (:line-height |20px) (:overflow :auto) (; :padding |8px) (:border-radius |6px) (:width |100%) (:max-height 600) (:padding-right 0)
          :examples $ []
          :schema $ quote String
        'use-gen-code $ %{} 'CodeEntry (:doc "|this component can be used to integrate")
          :code $ quote $ defn use-gen-code (states get-hint-code on-submit) (use-gen-code-with-dispatch states get-hint-code on-submit gen-code.schema/plugin-op-to-wire)
          :examples $ []
          :schema $ quote $ Fn StatesInput
            Fn $ -> String
            Fn String
              Fn AnyEnum $ -> Unit
              -> Unit
            -> GenCodePluginData
            :generics StatesInput
            :features :io :js-ffi :state
            :open :host
        'use-gen-code-with-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-gen-code-with-dispatch (states get-hint-code on-submit encode-op)
            let
                cursor $ decode-map-as
                  schema/read-open-field-or states :cursor $ []
                  List respo.schema/CoordKey
                state $ schema/read-draft $ schema/read-open-field-or states :data initial-state
                loading? $ :loading? state
                wire-dispatch $ fn (dispatch!)
                  hint-fn $ Fn
                    Fn HostOp $ -> Unit
                    -> $ Fn schema/GenCodeOp $ -> Unit
                  fn (op)
                    hint-fn $ Fn schema/GenCodeOp $ -> Unit
                    dispatch! $ encode-op op
                    , &unit
                patch-dispatch $ fn (request-state emit!)
                  hint-fn $ Fn schema/GenCodeState
                    Fn schema/GenCodeOp $ -> Unit
                    -> $ Fn (Map Tag schema/GenCodeFieldValue) (-> Unit)
                  fn (patch)
                    hint-fn $ Fn (Map Tag schema/GenCodeFieldValue) (-> Unit)
                    emit! $ gen-code.schema/GenCodeOp :states-merge cursor request-state patch
                render-node $ fn ()
                  hint-fn $ Fn $ -> respo.schema/Element
                  div
                    {}
                      :style $ {} $ :padding 16
                      :class-name css/column
                    div
                      {} $ :class-name $ str-spaced css/column css/gap8
                      textarea $ {}
                        :class-name $ str-spaced css/textarea css/font-code!
                        :style $ {} (:width |100%) (:height 120)
                        :placeholder "|prompts about the task...\n\n<code example>"
                        :value $ :query state
                        :on-input $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn HostOp $ -> Unit
                            -> Unit
                          d! $ encode-op $ gen-code.schema/GenCodeOp :states cursor
                            assoc state :query $ let
                                value $ :value e
                              if (nil? value) | $ decode-map-as value String
                          , &unit
                        :on-keydown $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn HostOp $ -> Unit
                            -> Unit
                            :async
                          let
                              meta? $ .unwrap-or
                                js-nullish->option $ :meta? e
                                , false
                              key-code $ .unwrap-or
                                js-nullish->option $ :key-code e
                                , -1
                            if
                              and meta? $ = 13 key-code
                              let
                                  *text $ ref |
                                  send-patch! $ patch-dispatch state $ wire-dispatch d!
                                try
                                  js-await $ call-genai-msg! :gemini (:query state) send-patch! *text
                                  fn (e)
                                    send-patch! $ {}
                                      :answer $ str @*text &newline &newline $ str "|Failed to load: " e
                                      :loading? false
                                      :done? true
                          , &unit
                      div
                        {} $ :class-name css/row-parted
                        a $ {} (:class-name css/link) (:inner-text |Take)
                          :on-click $ fn (e d!)
                            hint-fn $ Fn respo.schema/RespoEvent
                              Fn HostOp $ -> Unit
                              -> Unit
                            d! $ encode-op $ gen-code.schema/GenCodeOp :states cursor
                              assoc state :query $ str (:query state) &newline &newline $ trim (get-hint-code)
                            , &unit
                        div
                          {} $ :class-name $ str-spaced css/row-middle css/gap8
                          a $ {} (:class-name css/link) (:inner-text |Refresh)
                            :on-click $ fn (e d!)
                              hint-fn $ Fn respo.schema/RespoEvent
                                Fn HostOp $ -> Unit
                                -> Unit
                              initialize-chat! :gemini
                              let
                                  send-patch! $ patch-dispatch state $ wire-dispatch d!
                                send-patch! $ {} $ :loading? false
                              , &unit
                          if loading?
                            button $ {} (:class-name css/button) (:inner-text |Abort)
                              :style $ {} (:border-color :red) (:color :red)
                              :on-click $ fn (e d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn HostOp $ -> Unit
                                  -> Unit
                                match (deref *abort-control)
                                  (:some abort)
                                    do (js/console.warn "|Aborting prev") (.!abort abort)
                                  (:none) &unit
                                , &unit
                            button $ {} (:class-name css/button) (:inner-text |Run)
                              :on-click $ fn (e d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn HostOp $ -> Unit
                                  -> Unit
                                  :async
                                let
                                    *text $ ref |
                                    emit! $ wire-dispatch d!
                                  try
                                    js-await $ call-genai-msg! :gemini (:query state)
                                      patch-dispatch (assoc state :code |) emit!
                                      , *text
                                    fn (e)
                                      let
                                          send-patch! $ patch-dispatch state emit!
                                        send-patch! $ {}
                                          :answer $ str @*text &newline &newline $ str "|Failed to load: " e
                                          :loading? false
                                          :done? true
                                , &unit
                    if loading?
                      pre $ {}
                        :class-name $ str-spaced css/font-code! style-codebox
                        :inner-text $ :answer state
                      if
                        not $ blank? $ :code state
                        Some $ div
                          {} $ :class-name css/column
                          comp-cirru-snippet (:code state)
                            Some $ %{} respo-ui.schema/PresentationOptions
                              :class-name $ Some style-snippet
                              :style None
                          space-y 8
                          div
                            {} $ :class-name css/row-parted
                            span $ {}
                            button $ {} (:class-name css/button) (:inner-text |Accept)
                              :on-click $ fn (e d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn HostOp $ -> Unit
                                  -> Unit
                                on-submit (:code state) d!
                                , &unit
                        , None
              assert-type (%:: GenCodePluginData :plugin render-node cursor state) 'GenCodePluginData
          :examples $ []
          :schema $ quote $ Fn StatesInput
            Fn $ -> String
            Fn String
              Fn HostOp $ -> Unit
              -> Unit
            Fn schema/GenCodeOp $ -> HostOp
            -> GenCodePluginData
            :generics StatesInput HostOp
            :features :io :js-ffi :state
            :open :host
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.core
          :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre img
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            |@google/genai :refer $ GoogleGenAI Modality Type
            |@cirru/writer.ts :refer $ writeCirruCode
            respo-ui.comp :refer $ comp-cirru-snippet
            respo.comp.space :refer $ space-y
            gen-code.$meta :refer $ calcit-dirname
            gen-code.schema :as schema
            gen-code.stream :refer $ consume-genai-stream! read-genai-chunk GenAIStreamHost
            js-ffi.browser :as browser
    'gen-code.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/GenCodeOp gen-code.types/StoreData)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ match op
                (:states _ _) false
                _ true
              js/console.log |Dispatch: op
            reset! *reel $ typed/record-op updater @*reel op (generate-id!)
              :timestamp $ host/date-now-snapshot
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/GenCodeOp (-> Unit) (:features :io :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            match
              browser/storage-get $ .unwrap-or (get config/site :storage-key) |workflow
              (:some raw)
                dispatch! $ gen-code.schema/GenCodeOp :hydrate-storage $ schema/clear-interrupted-loading
                  schema/normalize-store-data $ parse-cirru-edn raw
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (reel prev)
              hint-fn $ Fn (typed/State schema/GenCodeOp gen-code.types/StoreData) (typed/State schema/GenCodeOp gen-code.types/StoreData) (-> Unit)
              render-app!
            listen-devtools! |k on-control!
            browser/add-event-listener! |beforeunload $ fn (event)
              hint-fn $ Fn browser/EventHost (-> Unit) (:features :js-ffi)
              persist-storage!
            browser/add-event-listener! |visibilitychange $ fn (event)
              hint-fn $ Fn browser/EventHost (-> Unit) (:features :js-ffi)
              match (browser/visibility-state)
                (:hidden) (persist-storage!)
                _ &unit
            js/setInterval persist-storage! 60000
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            reset! *reel $ typed/apply-control updater @*reel control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :io :state)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ host/date-now-snapshot
            js/localStorage.setItem
              .unwrap-or (get config/site :storage-key) |workflow
              format-cirru-edn $ :store @*reel
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev)
                  hint-fn $ Fn (typed/State schema/GenCodeOp gen-code.types/StoreData) (typed/State schema/GenCodeOp gen-code.types/StoreData) (-> Unit)
                  render-app!
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.main
          :require
            respo.core :refer $ render-with! clear-cache!
            gen-code.comp.container :refer $ comp-container
            gen-code.updater :refer $ updater
            gen-code.schema :as schema
            reel.util :refer $ listen-devtools!
            gen-code.config :as config
            |bottom-tip :default hud!
            reel.typed :as typed
            js-ffi.shared :as host
            js-ffi.browser :as browser
            respo.ffi.browser :as dom
            |./calcit.build-errors.mjs :default build-errors
    'gen-code.schema $ %{} 'FileEntry
      :defs $ {}
        'GenCodeDraftValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion GenCodeDraftValue gen-code.schema/GenCodeState (Map Tag gen-code.schema/GenCodeFieldValue)
          :examples $ []
          :schema $ quote UnionDef
        'GenCodeFieldValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion GenCodeFieldValue String Bool
          :examples $ []
          :schema $ quote UnionDef
        'GenCodeOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum GenCodeOp
            :states (List respo.schema/CoordKey) gen-code.schema/GenCodeDraftValue
            :states-merge (List respo.schema/CoordKey) gen-code.schema/GenCodeState $ Map Tag gen-code.schema/GenCodeFieldValue
            :hydrate-storage gen-code.types/StoreData
          :examples $ []
          :schema $ quote EnumDef
        'GenCodeState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct GenCodeState (:answer String) (:loading? Bool) (:done? Bool) (:query String) (:code String)
          :examples $ []
          :schema $ quote StructDef
        'clear-interrupted-loading $ %{} 'CodeEntry
          :doc "|Demo 启动恢复时清除无对应运行中请求的 loading 标志，保留草稿、结果和其他状态；不在正常渲染时调用。"
          :code $ quote $ defn clear-interrupted-loading (store-data)
            match
              get-in (:states store-data) ([] :drafter :data)
              (:err _) store-data
              (:ok raw)
                let
                    state $ read-draft raw
                  if (:loading? state)
                    struct-with store-data $ :states $ decode-map-as
                      assoc-in (:states store-data) ([] :drafter :data) (assoc state :loading? false)
                      Map Tag Dynamic
                    , store-data
          :examples $ []
          :schema $ quote $ Fn gen-code.types/StoreData (-> gen-code.types/StoreData)
          :tests $ [] $ %{} 'TestEntry (:name |interrupted-request-roundtrip)
            :code $ quote $ let
                state $ GenCodeState :query |draft :answer |partial :code |code :loading? true :done? false
                original $ gen-code.types/StoreData :states $ {} (:other |kept)
                  :drafter $ {} $ :data state
                restored $ clear-interrupted-loading $ normalize-store-data
                  parse-cirru-edn $ format-cirru-edn original
                expected $ gen-code.types/StoreData :states $ {} (:other |kept)
                  :drafter $ {} $ :data (assoc state :loading? false)
              assert= expected restored
        'decode-gen-code-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-gen-code-op (op)
            try
              match op
                (:states cursor state)
                  Some $ GenCodeOp :states
                    decode-map-as cursor $ List respo.schema/CoordKey
                    decode-map-as state 'gen-code.schema/GenCodeDraftValue
                (:states-merge cursor state changes)
                  if
                    and (struct? state) (&struct:matches? state GenCodeState)
                    Some $ GenCodeOp :states-merge
                      decode-map-as cursor $ List respo.schema/CoordKey
                      assert-type state GenCodeState
                      decode-map-as changes $ Map Tag gen-code.schema/GenCodeFieldValue
                    , None
                (:hydrate-storage data)
                  if
                    and (struct? data) (&struct:matches? data gen-code.types/StoreData)
                    Some $ GenCodeOp :hydrate-storage $ assert-type data 'gen-code.types/StoreData
                    , None
                _ None
              fn (_) None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option GenCodeOp
            :generics Input
          :tests $ []
            %{} 'TestEntry (:name |decodes-hydration)
              :code $ quote $ assert=
                Some $ GenCodeOp :hydrate-storage store
                decode-gen-code-op $ :: :hydrate-storage store
            %{} 'TestEntry (:name |rejects-reel-control)
              :code $ quote $ assert= None
                decode-gen-code-op $ :: :reel/toggle
            %{} 'TestEntry (:name |rejects-invalid-hydration)
              :code $ quote $ assert= None
                decode-gen-code-op $ :: :hydrate-storage $ {}
        'normalize-store-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-store-data (data)
            if
              and (struct? data) (&struct:matches? data gen-code.types/StoreData)
              assert-type data gen-code.types/StoreData
              let
                  candidate $ if
                    and (struct? data)
                      = (&struct:get-name data) :StoreData
                    &struct:to-map data
                    , data
                if (map? candidate)
                  let
                      states $ read-open-field-or candidate :states $ {}
                    if (map? states) (gen-code.types/StoreData :states states) store
                  , store
          :examples $ []
          :schema $ quote $ Fn Input (-> gen-code.types/StoreData) (:generics Input) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-and-nominal-hydration)
            :code $ quote $ let
                empty-map $ {}
                legacy $ {} $ :states empty-map
                nonempty $ gen-code.types/StoreData :states $ {} (:marker |synthetic)
              do
                assert= store $ normalize-store-data legacy
                assert= store $ normalize-store-data store
                assert= nonempty $ normalize-store-data $ parse-cirru-edn (format-cirru-edn nonempty)
        'plugin-op-to-wire $ %{} 'CodeEntry
          :doc "|Preserve anonymous events for hosts that use their own dispatch definition."
          :code $ quote $ defn plugin-op-to-wire (op)
            :: (&enum:nth op 0) & $ &enum:params op
          :examples $ []
          :schema $ quote $ Fn GenCodeOp (-> AnyEnum) (:open :reflect)
        'read-draft $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-draft (raw)
            decode-map-as
              if (struct? raw) (&struct:to-map raw) raw
              , 'gen-code.schema/GenCodeState
          :examples $ []
          :schema $ quote $ Fn Input (-> GenCodeState) (:generics Input)
        'read-open-field-or $ %{} 'CodeEntry
          :doc "|Read an open Map/Struct field; missing and nil values use the fallback, while false and Option payloads remain unchanged."
          :code $ quote $ defn read-open-field-or (value field fallback)
            let
                fields $ if (struct? value) (&struct:to-map value) (decode-map-as value 'Map)
              match (get fields field)
                (:some found)
                  if (nil? found) fallback found
                (:none) fallback
          :examples $ []
          :schema $ quote $ Fn Raw Tag Fallback (-> Dynamic) (:generics Raw Fallback) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |present-and-missing-store)
            :code $ quote $ let
                expected store
                present $ assert-type
                  read-open-field-or
                    {} $ :store expected
                    , :store expected
                  , 'gen-code.types/StoreData
                missing $ assert-type
                  read-open-field-or ({}) :store expected
                  , 'gen-code.types/StoreData
              assert= expected present
              assert= expected missing
              assert= false $ read-open-field-or
                {} $ :data false
                , :data |fallback
              assert= |fallback $ read-open-field-or
                {} $ :data nil
                , :data |fallback
              assert= (Some false)
                read-open-field-or
                  {} $ :data $ Some false
                  , :data |fallback
              assert= None $ read-open-field-or
                {} $ :data None
                , :data |fallback
              , &unit
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            gen-code.types/StoreData :states $ {}
          :examples $ []
          :schema $ quote gen-code.types/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.schema
    'gen-code.stream $ %{} 'FileEntry
      :defs $ {}
        'GenAIChunkHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIChunkHost
            :text $ JsNullish String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'GenAIStreamHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait GenAIStreamHost
            .next $ Fn GenAIStreamHost $ -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'consume-genai-stream! $ %{} 'CodeEntry
          :doc "|Consume a host async iterator and normalize each nullish yield into Option before invoking application code."
          :code $ quote $ defn consume-genai-stream! (stream on-chunk!)
            hint-fn $ Fn GenAIStreamHost
              Fn (Option JsObject) (-> Unit)
              -> Unit
              :features :js-ffi
              :async
            js-await $ js-for-await stream $ fn (chunk)
              hint-fn $ Fn (JsNullish JsObject) (-> Unit) (:features :js-ffi)
              match (js-nullish->option chunk)
                (:some value)
                  on-chunk! $ Some value
                (:none) (on-chunk! None)
            , &unit
          :examples $ []
          :schema $ quote $ Fn GenAIStreamHost
            Fn (Option JsObject) (-> Unit)
            -> Unit
            :features :js-ffi
            :async
        'read-genai-chunk $ %{} 'CodeEntry
          :doc "|Read the stream text from its typed host boundary."
          :code $ quote $ defn read-genai-chunk (value)
            .-text $ js-cast
              if (js/Reflect.has value |text) value $ js-object $ :text js/undefined
              , GenAIChunkHost
          :examples $ []
          :schema $ quote $ Fn JsObject
            -> $ JsNullish String
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.stream
    'gen-code.types $ %{} 'FileEntry
      :defs $ {} $ 'StoreData
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StoreData (:states respo.schema/States)
          :examples $ []
          :schema $ quote StructDef
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.types
    'gen-code.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                struct-with store $ :states $ decode-map-as
                  update-state-tree (:states store) cursor s
                  Map Tag Dynamic
              (:states-merge cursor s0 changes)
                struct-with store $ :states $ decode-map-as
                  update-state-tree-merge (:states store) cursor s0 changes
                  Map Tag Dynamic
              (:hydrate-storage data) data
              _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ quote $ Fn gen-code.types/StoreData gen-code.schema/GenCodeOp String Number (-> gen-code.types/StoreData) (:features :io)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns gen-code.updater
          :require $ respo.cursor :refer $ update-state-tree update-state-tree-merge


{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |gen-code)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'gen-code.main/main!) (:mode :native) (:reload-fn 'gen-code.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'gen-code.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ option:unwrap-or (get reel :store) {}
                  states $ option:unwrap-or (get store :states) {}
                  cursor $ option:unwrap-or (get states :cursor) []
                  state $ option:unwrap-or (get states :data)
                    {} $ :content |
                  plugin-gen-code $ use-gen-code (>> states :drafter)
                    fn () "|println |demo"
                    fn (code d!) (println "|submit code" code)
                div
                  {} $ :class-name (str-spaced css/preset css/global css/row)
                  div
                    {} $ :style
                      {} $ :width 800
                    .render plugin-gen-code
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns gen-code.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            gen-code.config :refer $ dev?
            gen-code.core :refer $ use-gen-code
    'gen-code.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key |workflow)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns gen-code.config)
    'gen-code.core $ %{} 'FileEntry
      :defs $ {}
        '%gen-code-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %gen-code-actions GenCodeActions
              .render $ fn (self)
                tag-match self $
                  :plugin render-node cursor state
                  render-node
              .reset-state $ fn (self d!)
                tag-match self $
                  :plugin r cursor state
                  d! cursor initial-state
          :examples $ []
          :schema $ :: 'Impl
        '*abort-control $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *abort-control $ %none
          :examples $ []
          :schema $ :: 'Ref (:: 'Option 'JsObject)
        '*ai-chat $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *ai-chat $ %none
          :examples $ []
          :schema $ :: 'Ref (:: 'Option 'JsObject)
        'GenCodeActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait GenCodeActions (:render :fn) (:reset-state :fn)
          :examples $ []
          :schema $ :: 'Trait
        'GenCodePluginData $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum GenCodePluginData $ :plugin 'Fn 'List 'Map
          :examples $ []
          :schema $ :: 'EnumDef
        'KeyboardEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait KeyboardEventHost
              :metaKey $ :: 'JsNullish 'Bool
              :keyCode $ :: 'JsNullish 'Number
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'call-genai-msg! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn call-genai-msg! (variant cursor state prompt-text d! *text)
              hint-fn $ {} (:async true)
              when
                option:none? $ deref *ai-chat
                initialize-chat! variant
              tag-match (deref *abort-control)
                (:some abort)
                  do (js/console.warn "|Aborting prev") (.!abort abort)
                (:none) &unit
              js/setTimeout $ fn ()
                d! $ :: :states-merge cursor state
                  {} (:answer |) (:loading? true)
              let
                  sdk-result $ js-await
                    .!sendMessageStream
                      option:unwrap $ deref *ai-chat
                      js-object (:message prompt-text)
                        :config $ js-object
                          ; :thinkingConfig $ js-object (:thinkingBudget 400) (:includeThoughts false)
                          :httpOptions $ js-object
                            :baseUrl $ option:unwrap-or (get-env |gemini-host) |https://ja.chenyong.life
                          :abortSignal $ let
                              abort $ new js/AbortController
                            reset! *abort-control $ %some abort
                            .-signal abort
                          :responseMimeType |application/json
                js-await $ js-for-await sdk-result
                  fn (? chunk)
                    if (some? chunk)
                      if-let
                        t $ js-nullish->option (.-text chunk)
                        do (swap! *text str t)
                          d! $ :: :states-merge cursor state
                            {} (:answer @*text) (:loading? true) (:done? false)
                        do $ js/console.log js/chunk.candidates[0].content?.parts?.[0]?.text
                    d! $ :: :states-merge cursor state
                      {} (:answer @*text) (:loading? true) (:done? false)
                d! $ :: :states-merge cursor state
                  {} (:answer @*text) (:loading? false) (:done? true)
                    :code $ try
                      writeCirruCode $ js-array (js/JSON.parse @*text)
                      fn (err) (js/console.error err) (str err)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        'gen-code-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def gen-code-actions-plugin $ impl-traits GenCodePluginData %gen-code-actions
          :examples $ []
          :schema $ :: 'gen-code.core/GenCodePluginData
        'get-gemini-key! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-gemini-key! () $ let
                key $ unsafe-coerce (js/localStorage.getItem |gemini-key) String
              if (blank? key)
                let
                    v $ unsafe-coerce
                      js/prompt $ str |Required |gemini-key |in |localStorage
                      , String
                  if (blank? v)
                    raise $ new js/Error "|key is empty"
                  js/localStorage.setItem |gemini-key v
                  , v
                , key
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
              :features $ #{} :js-ffi
        'include-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro include-file! (filepath)
              read-file $ str
                if (empty? calcit-dirname) |. calcit-dirname
                , |/prompts/ filepath
          :examples $ []
          :schema $ :: 'Macro
            {}
              :capabilities $ #{} :fs-read
              :expansion $ :: 'Expr 'String
              :required $ [] (:: 'Expr 'String)
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ %{} schema/GenCodeState (:answer |) (:loading? false) (:done? false) (:query |) (:code |)
          :examples $ []
          :schema $ :: 'gen-code.schema/GenCodeState
        'initialize-chat! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn initialize-chat! (variant)
              reset! *ai-chat $ %some
                let
                    model $ pick-model variant
                    doc-content $ str (include-file! |declare-task.md) sep (include-file! |format-guide.md) sep (include-file! |calcit-lang.md) sep (include-file! |respo.md)
                    ai $ new GoogleGenAI
                      js-object $ :apiKey (get-gemini-key!)
                  .!create
                    unsafe-coerce (.-chats ai) JsObject
                    js-object (:model model)
                      :config $ js/Object.assign
                        js-object
                          :httpOptions $ js-object
                            :baseUrl $ option:unwrap-or (get-env |gemini-host) |https://ja.chenyong.life
                          :responseMimeType |application/json
                      :history $ js-array
                        js-object (:role |model)
                          :parts $ js-array
                            js-object $ :text doc-content
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'pick-model $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              case-default variant |gemini-2.5-flash (:gemini |gemini-2.5-flash) (:gemini-pro |gemini-2.5-pro-preview-06-05) (:gemini-pro-1.5 |gemini-1.5-pro) (:gemini-flash-lite |gemini-2.0-flash-lite) (:gemma |gemma-3-27b-it)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Tag
        'sep $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def sep $ str &newline &newline |----------- &newline &newline
          :examples $ []
          :schema $ :: 'String
        'style-codebox $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-codebox $ {}
              |& $ {} (:margin 0) (:max-height 600) (:overflow :auto) (:padding |8px)
                :border $ str "|1px solid " (hsl 0 0 90)
                :border-radius |6px
                :overflow :auto
                :font-size 12
                :line-height |16px
          :examples $ []
          :schema $ :: 'String
        'style-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-snippet $ {}
              |& $ {} (:margin 0) (:line-height |20px) (:overflow :auto) (; :padding |8px) (:border-radius |6px) (:width |100%) (:max-height 600) (:padding-right 0)
          :examples $ []
          :schema $ :: 'String
        'use-gen-code $ %{} 'CodeEntry (:doc "|this component can be used to integrate")
          :code $ quote
            defn use-gen-code (states get-hint-code on-submit)
              let
                  cursor $ option:unwrap-or (get states :cursor) []
                  state $ either
                    option:unwrap-or (get states :data) initial-state
                    , initial-state
                  loading? $ option:unwrap-or (get state :loading?) false
                  render-node $ fn ()
                    div
                      {}
                        :style $ {} (:padding 16)
                        :class-name css/column
                      div
                        {} $ :class-name (str-spaced css/column css/gap8)
                        textarea $ {}
                          :class-name $ str-spaced css/textarea css/font-code!
                          :style $ {} (:width |100%) (:height 120)
                          :placeholder "|prompts about the task...\n\n<code example>"
                          :value $ option:unwrap-or (get state :query) |
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :query
                              option:unwrap-or (get e :value) |
                          :on-keydown $ fn (e d!)
                            hint-fn $ {} (:async true)
                            let
                                event $ unsafe-coerce
                                  option:unwrap-or (get e :event) {}
                                  , KeyboardEventHost
                                meta? $ option:unwrap-or
                                  js-nullish->option $ .-metaKey event
                                  , false
                                key-code $ option:unwrap-or
                                  js-nullish->option $ .-keyCode event
                                  , -1
                              if
                                and meta? $ = 13 key-code
                                let
                                    *text $ atom |
                                  try
                                    js-await $ call-genai-msg! |gemini cursor state
                                      option:unwrap-or (get state :query) |
                                      , d! *text
                                    fn (e)
                                      d! $ :: :states-merge cursor state
                                        {}
                                          :answer $ str @*text &newline &newline (str "|Failed to load: " e)
                                          :loading? false
                                          :done? true
                        div
                          {} $ :class-name css/row-parted
                          a $ {} (:class-name css/link) (:inner-text |Take)
                            :on-click $ fn (e d!)
                              d! cursor $ update state :query
                                fn (q)
                                  str q &newline &newline $ trim (get-hint-code)
                          div
                            {} $ :class-name (str-spaced css/row-middle css/gap8)
                            a $ {} (:class-name css/link) (:inner-text |Refresh)
                              :on-click $ fn (e d!) (initialize-chat! :gemini)
                                d! $ :: :states-merge cursor state
                                  {} $ :loading? false
                            if loading?
                              button $ {} (:class-name css/button) (:inner-text |Abort)
                                :style $ {} (:border-color :red) (:color :red)
                                :on-click $ fn (e d!)
                                  tag-match (deref *abort-control)
                                    (:some abort)
                                      do (js/console.warn "|Aborting prev") (.!abort abort)
                                    (:none) &unit
                              button $ {} (:class-name css/button) (:inner-text |Run)
                                :on-click $ fn (e d!)
                                  hint-fn $ {} (:async true)
                                  let
                                      *text $ atom |
                                    try
                                      js-await $ call-genai-msg! :gemini cursor (assoc state :code |)
                                        option:unwrap-or (get state :query) |
                                        , d! *text
                                      fn (e)
                                        d! $ :: :states-merge cursor state
                                          {}
                                            :answer $ str @*text &newline &newline (str "|Failed to load: " e)
                                            :loading? false
                                            :done? true
                      if loading?
                        pre $ {}
                          :class-name $ str-spaced css/font-code! style-codebox
                          :inner-text $ option:unwrap-or (get state :answer) |
                        if
                          not $ blank?
                            option:unwrap-or (get state :code) |
                          div
                            {} $ :class-name css/column
                            comp-cirru-snippet
                              option:unwrap-or (get state :code) |
                              {} $ :class-name style-snippet
                            =< 0 8
                            div
                              {} $ :class-name css/row-parted
                              span $ {}
                              button $ {} (:class-name css/button) (:inner-text |Accept)
                                :on-click $ fn (e d!)
                                  on-submit
                                    option:unwrap-or (get state :code) |
                                    , d!
                %:: gen-code-actions-plugin :plugin render-node cursor state
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns gen-code.core $ :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre img
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            |@google/genai :refer $ GoogleGenAI Modality Type
            |@cirru/writer.ts :refer $ writeCirruCode
            respo-ui.comp :refer $ comp-cirru-snippet
            respo.comp.space :refer $ =<
            gen-code.$meta :refer $ calcit-dirname
            gen-code.schema :as schema
    'gen-code.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref (:: 'Map 'Tag 'Dynamic)
        'DocumentHost $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait DocumentHost $ :visibilityState (:: 'JsNullish 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                js/console.log |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                let
                    document $ unsafe-coerce js/document DocumentHost
                    visibility-state $ option:unwrap-or
                      js-nullish->option $ .-visibilityState document
                      , |
                  if (= |hidden visibility-state) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem
                    option:unwrap-or (get config/site :storage-key) |workflow
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw 'String
              println "|App started."
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'JsObject
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "|Saved at" $ .!toISOString (new js/Date)
              do
                js/localStorage.setItem
                  option:unwrap-or (get config/site :storage-key) |workflow
                  format-cirru-edn $ option:unwrap-or (get @*reel :store) {}
                , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns gen-code.main $ :require
            respo.core :refer $ render! clear-cache!
            gen-code.comp.container :refer $ comp-container
            gen-code.updater :refer $ updater
            gen-code.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            gen-code.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'gen-code.schema $ %{} 'FileEntry
      :defs $ {}
        'GenCodeOp $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum GenCodeOp (:states 'Dynamic 'Dynamic) (:states-merge 'Dynamic 'Dynamic 'Dynamic) (:hydrate-storage 'Dynamic)
          :examples $ []
          :schema $ :: 'EnumDef
        'GenCodeState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct GenCodeState (:answer 'String) (:loading? 'Bool) (:done? 'Bool) (:query 'String) (:code 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ %{} gen-code.types/StoreData
              :states $ {}
          :examples $ []
          :schema $ :: 'gen-code.types/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns gen-code.schema)
    'gen-code.types $ %{} 'FileEntry
      :defs $ {}
        'StoreData $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct StoreData $ :states 'Map
          :examples $ []
          :schema $ :: 'StructDef
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns gen-code.types)
    'gen-code.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s)
                  struct-with store $ :states
                    update-state-tree (:states store) cursor s
                (:states-merge cursor s0 changes)
                  struct-with store $ :states
                    update-state-tree-merge (:states store) cursor s0 changes
                (:hydrate-storage data) data
                _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'gen-code.types/StoreData)
              :args $ [] 'gen-code.types/StoreData 'gen-code.schema/GenCodeOp 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns gen-code.updater $ :require
            respo.cursor :refer $ update-state-tree update-state-tree-merge

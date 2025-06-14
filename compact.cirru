
{} (:package |gen-code)
  :configs $ {} (:init-fn |gen-code.main/main!) (:reload-fn |gen-code.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |gen-code.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} $ :content "\""
                div
                  {} $ :class-name (str-spaced css/preset css/global css/row)
                  comp-drafter $ >> states :drafter
                  when dev? $ comp-reel (>> states :reel) reel ({})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns gen-code.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            gen-code.config :refer $ dev?
            gen-code.core :refer $ comp-drafter
    |gen-code.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"workflow")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns gen-code.config)
    |gen-code.core $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *abort-control nil)
        |*gen-ai-new $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *gen-ai-new nil)
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-genai-msg! (variant cursor state prompt-text d! *text) (hint-fn async)
              if (nil? @*gen-ai-new)
                reset! *gen-ai-new $ new GoogleGenAI
                  js-object $ :apiKey (get-gemini-key!)
              if-let
                abort $ deref *abort-control
                do (js/console.warn "\"Aborting prev") (.!abort abort)
              js/setTimeout $ fn ()
                d! $ :: :states cursor
                  -> state (assoc :answer nil) (assoc :loading? true)
              let
                  gen-ai $ let
                      ai @*gen-ai-new
                    ; js/console.log ai
                    , ai
                  model $ pick-model variant
                  content $ str (include-file! "\"declare-task.md") prompt-text sep (include-file! "\"format-guide.md") sep (include-file! "\"calcit-lang.md") sep (include-file! "\"respo.md")
                  search? $ or (.!includes prompt-text "\"{{search}}") (.!includes prompt-text "\"{{SEARCH}}")
                  has-url? $ or (.!includes prompt-text "\"http://") (.!includes prompt-text "\"https://")
                  sdk-result $ js-await
                    .!generateContentStream (.-models gen-ai)
                      js-object (:model model)
                        :contents $ js-array
                          js-object (:role "\"user")
                            :parts $ js-array
                              js-object $ :text content
                        :config $ js/Object.assign
                          js-object
                            :thinkingConfig $ js-object (:thinkingBudget 400) (:includeThoughts true)
                            :httpOptions $ js-object
                              :baseUrl $ get-env "\"gemini-host" "\"https://ja.chenyong.life"
                            :tools $ let
                                t $ ->
                                  js-array
                                    if search? $ js-object
                                      :googleSearch $ js-object
                                    if has-url? $ js-object
                                      :urlContext $ js-object
                                  .!filter $ fn (x & _a) x
                              if
                                = 0 $ .-length t
                                , js/undefined t
                            :abortSignal $ let
                                abort $ new js/AbortController
                              reset! *abort-control abort
                              .-signal abort
                            :responseMimeType |application/json
                js-await $ js-for-await sdk-result
                  fn (? chunk)
                    if (some? chunk)
                      if-let
                        t $ .-text chunk
                        do (swap! *text str t)
                          d! $ :: :states cursor
                            -> state (assoc :answer @*text) (assoc :loading? true) (assoc :done? false)
                        do $ js/console.log js/chunk.candidates[0].content?.parts?.[0]?.text
                    d! $ :: :states cursor
                      -> state (assoc :answer @*text) (assoc :loading? true) (assoc :done? false)
                d! $ :: :states cursor
                  -> state (assoc :answer @*text) (assoc :loading? false) (assoc :done? true)
                    assoc :code $ try
                      writeCirruCode $ js-array (js/JSON.parse @*text)
                      fn (err) (js/console.error err) (str err)
        |comp-drafter $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-drafter (states)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:answer "\"") (:loading? false) (:done? false) (:query "\"") (:code "\"")
                  loading? $ :loading? state
                div
                  {}
                    :style $ {} (:padding 16)
                    :class-name css/column
                  div
                    {} $ :class-name (str-spaced css/column css/gap8)
                    textarea $ {}
                      :class-name $ str-spaced css/textarea css/font-code!
                      :style $ {} (:width "\"100%") (:height 120)
                      :placeholder "\"inputs"
                      :value $ :query state
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :query (:value e)
                      :on-keydown $ fn (e d!)
                        if
                          and (-> e :event .-metaKey)
                            = 13 $ -> e :event .-keyCode
                          let
                              *text $ atom "\""
                            call-genai-msg! "\"gemini" cursor state (:query state) d! *text
                    div
                      {} $ :class-name css/row-parted
                      span nil
                      div
                        {} $ :class-name (str-spaced css/row-middle css/gap8)
                        if loading?
                          button $ {} (:class-name css/button-danger) (:inner-text "\"Abort")
                            :on-click $ fn (e d!)
                              if-let
                                abort $ deref *abort-control
                                do (js/console.warn "\"Aborting prev") (.!abort abort)
                          button $ {} (:class-name css/button) (:inner-text "\"Run")
                            :on-click $ fn (e d!)
                              let
                                  *text $ atom "\""
                                call-genai-msg! "\"gemini" cursor (assoc state :code "\"") (:query state) d! *text
                    div
                      {} $ :class-name css/row
                      if loading?
                        pre $ {}
                          :class-name $ str-spaced css/font-code! style-codebox style-code-secondary
                          :innerText $ :answer state
                        if
                          not $ blank? (:code state)
                          comp-cirru-snippet (:code state)
                            {} $ :class-name style-codebox
        |get-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-gemini-key! () $ let
                key $ js/localStorage.getItem "\"gemini-key"
              if (blank? key)
                let
                    v $ js/prompt "\"Required gemini-key in localStorage"
                  if (blank? v)
                    raise $ new js/Error "\"key is empty"
                  js/localStorage.setItem "\"gemini-key" v
                  , v
                , key
        |include-file! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro include-file! (filepath)
              read-file $ str "\"prompts/" filepath
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-model (variant)
              case-default variant "\"gemini-2.5-flash-preview-05-20" (:gemini-pro "\"gemini-2.5-pro-preview-06-05") (:gemini-pro-1.5 "\"gemini-1.5-pro") (:gemini-flash-lite "\"gemini-2.0-flash-lite") (:gemma "\"gemma-3-27b-it")
        |sep $ %{} :CodeEntry (:doc |)
          :code $ quote
            def sep $ str &newline &newline "\"-----------" &newline &newline
        |style-code-secondary $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-code-secondary $ {}
              "\"&" $ {} (:font-size 12) (:max-width "\"480px") (:line-height "\"16px")
        |style-codebox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-codebox $ {}
              "\"&" $ {} (:margin 0) (:line-height "\"20px") (:max-height 600) (:overflow :auto) (:padding "\"8px")
                :border $ str "\"1px solid " (hsl 0 0 90)
                :border-radius "\"6px"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns gen-code.core $ :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre img
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            "\"@google/genai" :refer $ GoogleGenAI Modality Type
            "\"@cirru/writer.ts" :refer $ writeCirruCode
            respo-ui.comp :refer $ comp-cirru-snippet
    |gen-code.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= "\"hidden" js/document.visibilityState) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "\"Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ %{} :CodeEntry (:doc |)
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
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
    |gen-code.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns gen-code.schema)
    |gen-code.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:hydrate-storage data) data
                _ $ do (eprintln "\"unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns gen-code.updater $ :require
            respo.cursor :refer $ update-states

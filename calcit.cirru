
{} (:package |gen-code)
  :configs $ {} (:init-fn |gen-code.main/main!) (:output |src) (:port 6001) (:reload-fn |gen-code.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.2)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |gen-code.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1626777497473) (:by |rJG4IHzWf) (:text |store)
                      |n $ %{} :Expr (:at 1584780921790) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1584780991636) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627849325504) (:by |rJG4IHzWf) (:text |or)
                              |T $ %{} :Expr (:at 1584780923944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584780926681) (:by |rJG4IHzWf) (:text |states)
                              |b $ %{} :Expr (:at 1679237728653) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1679237728821) (:by |rJG4IHzWf) (:text |[])
                      |r $ %{} :Expr (:at 1584780887905) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780889620) (:by |rJG4IHzWf) (:text |state)
                          |j $ %{} :Expr (:at 1584780889933) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627849327831) (:by |rJG4IHzWf) (:text |or)
                              |j $ %{} :Expr (:at 1584780894090) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780894689) (:by |rJG4IHzWf) (:text |:data)
                                  |j $ %{} :Leaf (:at 1584780900314) (:by |rJG4IHzWf) (:text |states)
                              |r $ %{} :Expr (:at 1584780901014) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780901408) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1584780901741) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584780906050) (:by |rJG4IHzWf) (:text |:content)
                                      |j $ %{} :Leaf (:at 1584780907617) (:by |rJG4IHzWf) (:text "|\"")
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659805533) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695659808341) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1701711029710) (:by |rJG4IHzWf) (:text |css/preset)
                                  |j $ %{} :Leaf (:at 1695659810151) (:by |rJG4IHzWf) (:text |css/global)
                                  |r $ %{} :Leaf (:at 1695659811823) (:by |rJG4IHzWf) (:text |css/row)
                      |n $ %{} :Expr (:at 1749664181421) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749921560584) (:by |rJG4IHzWf) (:text |comp-gen-code)
                          |b $ %{} :Expr (:at 1749664234145) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664234680) (:by |rJG4IHzWf) (:text |>>)
                              |b $ %{} :Leaf (:at 1749664235492) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Leaf (:at 1749664238307) (:by |rJG4IHzWf) (:text |:drafter)
                          |h $ %{} :Expr (:at 1749921171020) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749921171770) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1749921172114) (:by |rJG4IHzWf)
                                :data $ {}
                              |h $ %{} :Leaf (:at 1749921185442) (:by |rJG4IHzWf) (:text "|\"println |demo")
                          |l $ %{} :Expr (:at 1749921186856) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749921187276) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1749921187600) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1749921227838) (:by |rJG4IHzWf) (:text |code)
                                  |T $ %{} :Leaf (:at 1749921193623) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1749921194335) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749921219635) (:by |rJG4IHzWf) (:text |println)
                                  |b $ %{} :Leaf (:at 1749921236311) (:by |rJG4IHzWf) (:text "|\"submit code")
                                  |h $ %{} :Leaf (:at 1749921419817) (:by |rJG4IHzWf) (:text |code)
                      |x $ %{} :Expr (:at 1521954055333) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                          |T $ %{} :Expr (:at 1507461809635) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1584780610581) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584780611347) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1584780613268) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507461840980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |gen-code.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1695659797743) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1695659799627) (:by |rJG4IHzWf) (:text |css)
                |t $ %{} :Expr (:at 1695659844346) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695659847085) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1695659847949) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1695659848197) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695659850247) (:by |rJG4IHzWf) (:text |defstyle)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |gen-code.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |z $ %{} :Expr (:at 1749664175280) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749905251619) (:by |rJG4IHzWf) (:text |gen-code.core)
                    |b $ %{} :Leaf (:at 1749664175280) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749664175280) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749921558800) (:by |rJG4IHzWf) (:text |comp-gen-code)
    |gen-code.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1624469709435) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1624469715390) (:by |rJG4IHzWf) (:text |=)
                  |D $ %{} :Leaf (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1624469701389) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env)
                      |T $ %{} :Leaf (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode")
                      |b $ %{} :Leaf (:at 1658121345573) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |gen-code.config)
    |gen-code.core $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749664624193) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749664624193) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1749664624193) (:by |rJG4IHzWf) (:text |*abort-control)
              |h $ %{} :Leaf (:at 1749664624193) (:by |rJG4IHzWf) (:text |nil)
        |*gen-ai-new $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749664546754) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749664554484) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1749664546754) (:by |rJG4IHzWf) (:text |*gen-ai-new)
              |h $ %{} :Leaf (:at 1749664556875) (:by |rJG4IHzWf) (:text |nil)
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |call-genai-msg!)
              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |variant)
                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |cursor)
                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |state)
                  |l $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |prompt-text)
                  |o $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |d!)
                  |q $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |*text)
              |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |async)
              |o $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |nil?)
                      |b $ %{} :Leaf (:at 1749664576876) (:by |rJG4IHzWf) (:text |@*gen-ai-new)
                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |reset!)
                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |*gen-ai-new)
                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |new)
                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |GoogleGenAI)
                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:apiKey)
                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |get-gemini-key!)
              |q $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |abort)
              |s $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js/setTimeout)
                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |fn)
                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |d!)
                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |::)
                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:states)
                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |cursor)
                              |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |->)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |state)
                                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:answer)
                                      |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |nil)
                                  |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:loading?)
                                      |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |true)
              |t $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |gen-ai)
                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |ai)
                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |@*gen-ai-new)
                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |;)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |ai)
                              |l $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |ai)
                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |model)
                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |pick-model)
                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |variant)
                      |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1749827821435) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1749827822276) (:by |rJG4IHzWf) (:text |str)
                              |H $ %{} :Expr (:at 1749832139181) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749832139181) (:by |rJG4IHzWf) (:text |include-file!)
                                  |b $ %{} :Leaf (:at 1749832175791) (:by |rJG4IHzWf) (:text "|\"declare-task.md")
                              |T $ %{} :Leaf (:at 1749665542428) (:by |rJG4IHzWf) (:text |prompt-text)
                              |X $ %{} :Leaf (:at 1749832039616) (:by |rJG4IHzWf) (:text |sep)
                              |b $ %{} :Expr (:at 1749827831799) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749827836755) (:by |rJG4IHzWf) (:text |include-file!)
                                  |b $ %{} :Leaf (:at 1749827846596) (:by |rJG4IHzWf) (:text "|\"format-guide.md")
                              |e $ %{} :Leaf (:at 1749832135777) (:by |rJG4IHzWf) (:text |sep)
                              |h $ %{} :Expr (:at 1749832113118) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749832122534) (:by |rJG4IHzWf) (:text |include-file!)
                                  |b $ %{} :Leaf (:at 1749832126451) (:by |rJG4IHzWf) (:text "|\"calcit-lang.md")
                              |j $ %{} :Leaf (:at 1749836948323) (:by |rJG4IHzWf) (:text |sep)
                              |l $ %{} :Expr (:at 1749832113118) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749832122534) (:by |rJG4IHzWf) (:text |include-file!)
                                  |b $ %{} :Leaf (:at 1749836951535) (:by |rJG4IHzWf) (:text "|\"respo.md")
                      |t $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |search?)
                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |or)
                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"{{search}}")
                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"{{SEARCH}}")
                      |u $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |has-url?)
                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |or)
                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1749665582017) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"http://")
                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"https://")
                      |v $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |sdk-result)
                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!generateContentStream)
                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.-models)
                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |gen-ai)
                                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:model)
                                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |model)
                                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:contents)
                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:role)
                                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"user")
                                                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:parts)
                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-array)
                                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:text)
                                                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |content)
                                      |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:config)
                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749665908383) (:by |rJG4IHzWf) (:text |js/Object.assign)
                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749665899908) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:thinkingConfig)
                                                      |b $ %{} :Expr (:at 1749751178859) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749751178859) (:by |rJG4IHzWf) (:text |js-object)
                                                          |b $ %{} :Expr (:at 1749751178859) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749751178859) (:by |rJG4IHzWf) (:text |:thinkingBudget)
                                                              |b $ %{} :Leaf (:at 1749825159940) (:by |rJG4IHzWf) (:text |400)
                                                          |h $ %{} :Expr (:at 1749751178859) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749751178859) (:by |rJG4IHzWf) (:text |:includeThoughts)
                                                              |b $ %{} :Leaf (:at 1749751197418) (:by |rJG4IHzWf) (:text |true)
                                                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:httpOptions)
                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:baseUrl)
                                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |get-env)
                                                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"gemini-host")
                                                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text "|\"https://ja.chenyong.life")
                                                  |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:tools)
                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |let)
                                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |t)
                                                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |->)
                                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-array)
                                                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |if)
                                                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |search?)
                                                                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:googleSearch)
                                                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |if)
                                                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |has-url?)
                                                                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:urlContext)
                                                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-object)
                                                                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.!filter)
                                                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |fn)
                                                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |x)
                                                                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |&)
                                                                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |_a)
                                                                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |x)
                                                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |if)
                                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |=)
                                                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |0)
                                                                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.-length)
                                                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |t)
                                                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js/undefined)
                                                              |l $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |t)
                                                  |o $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:abortSignal)
                                                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |let)
                                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |abort)
                                                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |new)
                                                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js/AbortController)
                                                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |reset!)
                                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |*abort-control)
                                                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |abort)
                                                          |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |.-signal)
                                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |abort)
                                                  |r $ %{} :Expr (:at 1749750858879) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749750860915) (:by |rJG4IHzWf) (:text |:responseMimeType)
                                                      |b $ %{} :Leaf (:at 1749750865147) (:by |rJG4IHzWf) (:text ||application/json)
                  |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-await)
                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |js-for-await)
                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |sdk-result)
                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |?)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |chunk)
                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |some?)
                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |chunk)
                                  |h $ %{} :Expr (:at 1749751614022) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1749751618587) (:by |rJG4IHzWf) (:text |if-let)
                                      |L $ %{} :Expr (:at 1749751620713) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749751622288) (:by |rJG4IHzWf) (:text |t)
                                          |b $ %{} :Expr (:at 1749751626121) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749751626121) (:by |rJG4IHzWf) (:text |.-text)
                                              |b $ %{} :Leaf (:at 1749751626121) (:by |rJG4IHzWf) (:text |chunk)
                                      |T $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |do)
                                          |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |swap!)
                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |*text)
                                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |str)
                                              |j $ %{} :Leaf (:at 1749751629519) (:by |rJG4IHzWf) (:text |t)
                                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |::)
                                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:states)
                                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |cursor)
                                                  |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |->)
                                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |state)
                                                      |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:answer)
                                                          |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |@*text)
                                                      |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:loading?)
                                                          |h $ %{} :Leaf (:at 1749904698959) (:by |rJG4IHzWf) (:text |true)
                                                      |o $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:done?)
                                                          |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |false)
                                      |b $ %{} :Expr (:at 1749751635959) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749751635727) (:by |rJG4IHzWf) (:text |do)
                                          |b $ %{} :Expr (:at 1749751642540) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749751644873) (:by |rJG4IHzWf) (:text |js/console.log)
                                              |b $ %{} :Leaf (:at 1749751645220) (:by |rJG4IHzWf) (:text |js/chunk.candidates[0].content?.parts?.[0]?.text)
                              |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |::)
                                      |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:states)
                                      |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |->)
                                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |state)
                                          |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:answer)
                                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |@*text)
                                          |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:loading?)
                                              |h $ %{} :Leaf (:at 1749904728997) (:by |rJG4IHzWf) (:text |true)
                                          |o $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:done?)
                                              |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |@*text)
                              |l $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |false)
                              |o $ %{} :Expr (:at 1749664450924) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |:done?)
                                  |h $ %{} :Leaf (:at 1749664450924) (:by |rJG4IHzWf) (:text |true)
                              |q $ %{} :Expr (:at 1749835510050) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749835513014) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1749835517606) (:by |rJG4IHzWf) (:text |:code)
                                  |h $ %{} :Expr (:at 1749835541163) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1749835545018) (:by |rJG4IHzWf) (:text |try)
                                      |T $ %{} :Expr (:at 1749835524185) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749835524185) (:by |rJG4IHzWf) (:text |writeCirruCode)
                                          |b $ %{} :Expr (:at 1749835524185) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749835524185) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1749835524185) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749835524185) (:by |rJG4IHzWf) (:text |js/JSON.parse)
                                                  |b $ %{} :Leaf (:at 1749835530857) (:by |rJG4IHzWf) (:text |@*text)
                                      |b $ %{} :Expr (:at 1749835545687) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749835546076) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1749835546772) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749835552864) (:by |rJG4IHzWf) (:text |err)
                                          |h $ %{} :Expr (:at 1749835553376) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749835561521) (:by |rJG4IHzWf) (:text |js/console.error)
                                              |b $ %{} :Leaf (:at 1749835563028) (:by |rJG4IHzWf) (:text |err)
                                          |l $ %{} :Expr (:at 1749835564634) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1749835565455) (:by |rJG4IHzWf) (:text |str)
                                              |T $ %{} :Leaf (:at 1749835564191) (:by |rJG4IHzWf) (:text |err)
        |comp-gen-code $ %{} :CodeEntry (:doc "|this component can be used to integrate")
          :code $ %{} :Expr (:at 1749664120698) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749664120698) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1749921548128) (:by |rJG4IHzWf) (:text |comp-gen-code)
              |h $ %{} :Expr (:at 1749664120698) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664242899) (:by |rJG4IHzWf) (:text |states)
                  |b $ %{} :Leaf (:at 1749921155780) (:by |rJG4IHzWf) (:text |get-hint-code)
                  |h $ %{} :Leaf (:at 1749921164026) (:by |rJG4IHzWf) (:text |on-submit)
              |l $ %{} :Expr (:at 1749664244258) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1749664244805) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1749664244993) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1749664245159) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664245992) (:by |rJG4IHzWf) (:text |cursor)
                          |b $ %{} :Expr (:at 1749664248022) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664252759) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1749664251396) (:by |rJG4IHzWf) (:text |states)
                      |b $ %{} :Expr (:at 1749664253605) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664254136) (:by |rJG4IHzWf) (:text |state)
                          |b $ %{} :Expr (:at 1749664254367) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664255606) (:by |rJG4IHzWf) (:text |either)
                              |b $ %{} :Expr (:at 1749664256448) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664257160) (:by |rJG4IHzWf) (:text |:data)
                                  |b $ %{} :Leaf (:at 1749664257981) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Expr (:at 1749664262440) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664262854) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1749666231564) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749666478128) (:by |rJG4IHzWf) (:text |:answer)
                                      |b $ %{} :Leaf (:at 1749666238091) (:by |rJG4IHzWf) (:text "|\"")
                                  |h $ %{} :Expr (:at 1749666238568) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749666240992) (:by |rJG4IHzWf) (:text |:loading?)
                                      |b $ %{} :Leaf (:at 1749666243678) (:by |rJG4IHzWf) (:text |false)
                                  |l $ %{} :Expr (:at 1749666244099) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749666246025) (:by |rJG4IHzWf) (:text |:done?)
                                      |b $ %{} :Leaf (:at 1749666249942) (:by |rJG4IHzWf) (:text |false)
                                  |o $ %{} :Expr (:at 1749666281828) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749666282789) (:by |rJG4IHzWf) (:text |:query)
                                      |b $ %{} :Leaf (:at 1749666284300) (:by |rJG4IHzWf) (:text "|\"")
                                  |q $ %{} :Expr (:at 1749831121115) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749831124318) (:by |rJG4IHzWf) (:text |:code)
                                      |b $ %{} :Leaf (:at 1749831125191) (:by |rJG4IHzWf) (:text "|\"")
                      |h $ %{} :Expr (:at 1749905060468) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749905064677) (:by |rJG4IHzWf) (:text |loading?)
                          |b $ %{} :Expr (:at 1749905068221) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749905066489) (:by |rJG4IHzWf) (:text |:loading?)
                              |b $ %{} :Leaf (:at 1749905070144) (:by |rJG4IHzWf) (:text |state)
                  |T $ %{} :Expr (:at 1749664376268) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1749664376939) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1749664377143) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664377471) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1749664402644) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664402644) (:by |rJG4IHzWf) (:text |:style)
                              |b $ %{} :Expr (:at 1749664402644) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664402644) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1749664402644) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664402644) (:by |rJG4IHzWf) (:text |:padding)
                                      |b $ %{} :Leaf (:at 1749664402644) (:by |rJG4IHzWf) (:text |16)
                          |b $ %{} :Expr (:at 1749664378033) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664381102) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1749751513492) (:by |rJG4IHzWf) (:text |css/column)
                      |T $ %{} :Expr (:at 1749664123289) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664123623) (:by |rJG4IHzWf) (:text |div)
                          |b $ %{} :Expr (:at 1749664123958) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664124265) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1749751228765) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749751232095) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1749751249113) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1749751250707) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1749904885814) (:by |rJG4IHzWf) (:text |css/column)
                                      |b $ %{} :Leaf (:at 1749751254232) (:by |rJG4IHzWf) (:text |css/gap8)
                          |e $ %{} :Expr (:at 1749664265503) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664267408) (:by |rJG4IHzWf) (:text |textarea)
                              |b $ %{} :Expr (:at 1749664267793) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664268134) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1749664268388) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664270798) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1749664338878) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1749664342083) (:by |rJG4IHzWf) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1749664273326) (:by |rJG4IHzWf) (:text |css/textarea)
                                          |b $ %{} :Leaf (:at 1749664349002) (:by |rJG4IHzWf) (:text |css/font-code!)
                                  |e $ %{} :Expr (:at 1749664412598) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664414524) (:by |rJG4IHzWf) (:text |:style)
                                      |b $ %{} :Expr (:at 1749664414735) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749664415071) (:by |rJG4IHzWf) (:text |{})
                                          |b $ %{} :Expr (:at 1749664416392) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664417984) (:by |rJG4IHzWf) (:text |:width)
                                              |b $ %{} :Leaf (:at 1749905591690) (:by |rJG4IHzWf) (:text "|\"100%")
                                          |h $ %{} :Expr (:at 1749664423751) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749664425416) (:by |rJG4IHzWf) (:text |:height)
                                              |b $ %{} :Leaf (:at 1749836454346) (:by |rJG4IHzWf) (:text |120)
                                  |h $ %{} :Expr (:at 1749664274874) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664280007) (:by |rJG4IHzWf) (:text |:placeholder)
                                      |b $ %{} :Leaf (:at 1749664286775) (:by |rJG4IHzWf) (:text "|\"inputs")
                                  |l $ %{} :Expr (:at 1749666273419) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749666275320) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1749666276831) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749666277755) (:by |rJG4IHzWf) (:text |:query)
                                          |b $ %{} :Leaf (:at 1749666279785) (:by |rJG4IHzWf) (:text |state)
                                  |o $ %{} :Expr (:at 1749666286801) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749666290251) (:by |rJG4IHzWf) (:text |:on-input)
                                      |b $ %{} :Expr (:at 1749666290487) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749666290719) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1749666290943) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749666291150) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1749666291735) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1749666292320) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749666293841) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1749666299404) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1749666299614) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749666300532) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1749666301176) (:by |rJG4IHzWf) (:text |state)
                                                  |e $ %{} :Leaf (:at 1749666306881) (:by |rJG4IHzWf) (:text |:query)
                                                  |h $ %{} :Expr (:at 1749666302099) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749666302818) (:by |rJG4IHzWf) (:text |:value)
                                                      |b $ %{} :Leaf (:at 1749666303094) (:by |rJG4IHzWf) (:text |e)
                                  |q $ %{} :Expr (:at 1749751286892) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749751289020) (:by |rJG4IHzWf) (:text |:on-keydown)
                                      |b $ %{} :Expr (:at 1749751289312) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749751289583) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1749751289815) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749751290021) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1749751290551) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749751301576) (:by |rJG4IHzWf) (:text |if)
                                              |a $ %{} :Expr (:at 1749751301855) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749751303049) (:by |rJG4IHzWf) (:text |and)
                                                  |X $ %{} :Expr (:at 1749751337668) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749751342684) (:by |rJG4IHzWf) (:text |->)
                                                      |b $ %{} :Leaf (:at 1749751343323) (:by |rJG4IHzWf) (:text |e)
                                                      |h $ %{} :Leaf (:at 1749751344801) (:by |rJG4IHzWf) (:text |:event)
                                                      |l $ %{} :Leaf (:at 1749751350418) (:by |rJG4IHzWf) (:text |.-metaKey)
                                                  |b $ %{} :Expr (:at 1749751334659) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1749751335069) (:by |rJG4IHzWf) (:text |=)
                                                      |L $ %{} :Leaf (:at 1749751335761) (:by |rJG4IHzWf) (:text |13)
                                                      |T $ %{} :Expr (:at 1749751303289) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1749751331239) (:by |rJG4IHzWf) (:text |->)
                                                          |L $ %{} :Leaf (:at 1749751332178) (:by |rJG4IHzWf) (:text |e)
                                                          |P $ %{} :Leaf (:at 1749751333495) (:by |rJG4IHzWf) (:text |:event)
                                                          |T $ %{} :Leaf (:at 1749751326314) (:by |rJG4IHzWf) (:text |.-keyCode)
                                              |h $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |let)
                                                  |b $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |*text)
                                                          |b $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |atom)
                                                              |b $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text "|\"")
                                                  |h $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                                      |b $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text "|\"gemini")
                                                      |h $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |cursor)
                                                      |l $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |state)
                                                      |o $ %{} :Expr (:at 1749751295419) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |:query)
                                                          |b $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |state)
                                                      |q $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |d!)
                                                      |s $ %{} :Leaf (:at 1749751295419) (:by |rJG4IHzWf) (:text |*text)
                          |j $ %{} :Expr (:at 1749904891881) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1749904892538) (:by |rJG4IHzWf) (:text |div)
                              |L $ %{} :Expr (:at 1749904892777) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749904893054) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1749904895323) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749904895008) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1749904900026) (:by |rJG4IHzWf) (:text |css/row-parted)
                              |P $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749921530855) (:by |rJG4IHzWf) (:text |a)
                                  |b $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1749921534251) (:by |rJG4IHzWf) (:text |css/link)
                                      |h $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |:inner-text)
                                          |b $ %{} :Leaf (:at 1749921447499) (:by |rJG4IHzWf) (:text "|\"Take")
                                      |l $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |:on-click)
                                          |b $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |fn)
                                              |b $ %{} :Expr (:at 1749921440999) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |e)
                                                  |b $ %{} :Leaf (:at 1749921440999) (:by |rJG4IHzWf) (:text |d!)
                                              |h $ %{} :Expr (:at 1749921452954) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921455142) (:by |rJG4IHzWf) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1749921458339) (:by |rJG4IHzWf) (:text |cursor)
                                                  |h $ %{} :Expr (:at 1749921458784) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749921463944) (:by |rJG4IHzWf) (:text |update)
                                                      |b $ %{} :Leaf (:at 1749921464559) (:by |rJG4IHzWf) (:text |state)
                                                      |h $ %{} :Leaf (:at 1749921467332) (:by |rJG4IHzWf) (:text |:query)
                                                      |l $ %{} :Expr (:at 1749921469765) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749921470036) (:by |rJG4IHzWf) (:text |fn)
                                                          |b $ %{} :Expr (:at 1749921470277) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749921471058) (:by |rJG4IHzWf) (:text |q)
                                                          |h $ %{} :Expr (:at 1749921472590) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749921473139) (:by |rJG4IHzWf) (:text |str)
                                                              |b $ %{} :Leaf (:at 1749921481755) (:by |rJG4IHzWf) (:text |q)
                                                              |h $ %{} :Leaf (:at 1749921483780) (:by |rJG4IHzWf) (:text |&newline)
                                                              |l $ %{} :Leaf (:at 1749921486698) (:by |rJG4IHzWf) (:text |&newline)
                                                              |o $ %{} :Expr (:at 1749921495366) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749921494663) (:by |rJG4IHzWf) (:text |get-hint-code)
                              |T $ %{} :Expr (:at 1749751245255) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1749751246590) (:by |rJG4IHzWf) (:text |div)
                                  |L $ %{} :Expr (:at 1749751246862) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749751247185) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1749836428631) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749836431262) (:by |rJG4IHzWf) (:text |:class-name)
                                          |b $ %{} :Expr (:at 1749836436266) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1749836438422) (:by |rJG4IHzWf) (:text |str-spaced)
                                              |T $ %{} :Leaf (:at 1749836442122) (:by |rJG4IHzWf) (:text |css/row-middle)
                                              |b $ %{} :Leaf (:at 1749836445555) (:by |rJG4IHzWf) (:text |css/gap8)
                                  |T $ %{} :Expr (:at 1749905073708) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1749905074278) (:by |rJG4IHzWf) (:text |if)
                                      |L $ %{} :Leaf (:at 1749905075138) (:by |rJG4IHzWf) (:text |loading?)
                                      |P $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |button)
                                          |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |:class-name)
                                                  |b $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |css/button-danger)
                                              |h $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |:inner-text)
                                                  |b $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text "|\"Abort")
                                              |l $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |:on-click)
                                                  |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |fn)
                                                      |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |e)
                                                          |b $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |d!)
                                                      |h $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |if-let)
                                                          |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |abort)
                                                              |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |deref)
                                                                  |b $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |*abort-control)
                                                          |h $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |do)
                                                              |b $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |js/console.warn)
                                                                  |b $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                                                              |h $ %{} :Expr (:at 1749905078435) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |.!abort)
                                                                  |b $ %{} :Leaf (:at 1749905078435) (:by |rJG4IHzWf) (:text |abort)
                                      |R $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |button)
                                          |b $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |:class-name)
                                                  |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |css/button)
                                              |h $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |:inner-text)
                                                  |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text "|\"Run")
                                              |l $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |:on-click)
                                                  |b $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |fn)
                                                      |b $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |e)
                                                          |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |d!)
                                                      |h $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |let)
                                                          |b $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |*text)
                                                                  |b $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |atom)
                                                                      |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text "|\"")
                                                          |h $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                                              |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text "|\"gemini")
                                                              |h $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |cursor)
                                                              |l $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |assoc)
                                                                  |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |state)
                                                                  |h $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |:code)
                                                                  |l $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text "|\"")
                                                              |o $ %{} :Expr (:at 1749921308083) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |:query)
                                                                  |b $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |state)
                                                              |q $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |d!)
                                                              |s $ %{} :Leaf (:at 1749921308083) (:by |rJG4IHzWf) (:text |*text)
                          |n $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |div)
                              |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |css/row)
                              |h $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Leaf (:at 1749905082825) (:by |rJG4IHzWf) (:text |loading?)
                                  |h $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |pre)
                                      |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |{})
                                          |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:class-name)
                                              |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |str-spaced)
                                                  |b $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |css/font-code!)
                                                  |h $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |style-codebox)
                                                  |l $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |style-code-secondary)
                                          |h $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:innerText)
                                              |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:answer)
                                                  |b $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |state)
                                  |l $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |if)
                                      |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |not)
                                          |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |blank?)
                                              |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:code)
                                                  |b $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |state)
                                      |h $ %{} :Expr (:at 1749921316786) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1749921318152) (:by |rJG4IHzWf) (:text |div)
                                          |L $ %{} :Expr (:at 1749921318511) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749921319066) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1749921386545) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921388837) (:by |rJG4IHzWf) (:text |:class-name)
                                                  |b $ %{} :Leaf (:at 1749921392393) (:by |rJG4IHzWf) (:text |css/column)
                                          |T $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |comp-cirru-snippet)
                                              |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:code)
                                                  |b $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1749905042265) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |b $ %{} :Leaf (:at 1749905042265) (:by |rJG4IHzWf) (:text |style-codebox)
                                          |X $ %{} :Expr (:at 1749921328613) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1749921329191) (:by |rJG4IHzWf) (:text |=<)
                                              |b $ %{} :Leaf (:at 1749921332463) (:by |rJG4IHzWf) (:text |nil)
                                              |h $ %{} :Leaf (:at 1749921397479) (:by |rJG4IHzWf) (:text |8)
                                          |b $ %{} :Expr (:at 1749921345141) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1749921346356) (:by |rJG4IHzWf) (:text |div)
                                              |L $ %{} :Expr (:at 1749921347697) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921346957) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1749921349536) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749921351476) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |b $ %{} :Leaf (:at 1749921364639) (:by |rJG4IHzWf) (:text |css/row-parted)
                                              |P $ %{} :Expr (:at 1749921356484) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921359260) (:by |rJG4IHzWf) (:text |span)
                                                  |b $ %{} :Leaf (:at 1749921359918) (:by |rJG4IHzWf) (:text |nil)
                                              |T $ %{} :Expr (:at 1749921321342) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1749921322707) (:by |rJG4IHzWf) (:text |div)
                                                  |b $ %{} :Expr (:at 1749921322982) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749921323267) (:by |rJG4IHzWf) (:text |{})
                                                  |h $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |button)
                                                      |b $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |{})
                                                          |b $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |:class-name)
                                                              |b $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |css/button)
                                                          |h $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |:inner-text)
                                                              |b $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text "|\"Accept")
                                                          |l $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |:on-click)
                                                              |b $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |fn)
                                                                  |b $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |e)
                                                                      |b $ %{} :Leaf (:at 1749921324399) (:by |rJG4IHzWf) (:text |d!)
                                                                  |h $ %{} :Expr (:at 1749921324399) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1749921405320) (:by |rJG4IHzWf) (:text |on-submit)
                                                                      |b $ %{} :Expr (:at 1749921407072) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1749921407753) (:by |rJG4IHzWf) (:text |:code)
                                                                          |b $ %{} :Leaf (:at 1749921408697) (:by |rJG4IHzWf) (:text |state)
                                                                      |h $ %{} :Leaf (:at 1749921410473) (:by |rJG4IHzWf) (:text |d!)
        |get-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |get-gemini-key!)
              |h $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |key)
                          |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text "|\"gemini-key")
                  |h $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |if)
                      |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |blank?)
                          |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |key)
                      |h $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |let)
                          |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |v)
                                  |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |js/prompt)
                                      |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text "|\"Required gemini-key in localStorage")
                          |h $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |blank?)
                                  |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |v)
                              |h $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |raise)
                                  |b $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |js/Error)
                                      |h $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text "|\"key is empty")
                          |l $ %{} :Expr (:at 1749664597344) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                              |b $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text "|\"gemini-key")
                              |h $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |v)
                          |o $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |v)
                      |l $ %{} :Leaf (:at 1749664597344) (:by |rJG4IHzWf) (:text |key)
        |include-file! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749827848121) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749827858904) (:by |rJG4IHzWf) (:text |defmacro)
              |b $ %{} :Leaf (:at 1749827848121) (:by |rJG4IHzWf) (:text |include-file!)
              |h $ %{} :Expr (:at 1749827848121) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749827856129) (:by |rJG4IHzWf) (:text |filepath)
              |l $ %{} :Expr (:at 1749827860603) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749827879821) (:by |rJG4IHzWf) (:text |read-file)
                  |b $ %{} :Expr (:at 1749827862806) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749827864134) (:by |rJG4IHzWf) (:text |str)
                      |X $ %{} :Expr (:at 1749924403708) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1749924524954) (:by |rJG4IHzWf) (:text |if)
                          |T $ %{} :Expr (:at 1749924525864) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1749924529001) (:by |rJG4IHzWf) (:text |empty?)
                              |T $ %{} :Leaf (:at 1749924398238) (:by |rJG4IHzWf) (:text |calcit-dirname)
                          |b $ %{} :Leaf (:at 1749924530852) (:by |rJG4IHzWf) (:text "|\".")
                          |h $ %{} :Leaf (:at 1749924533721) (:by |rJG4IHzWf) (:text |calcit-dirname)
                      |b $ %{} :Leaf (:at 1749924401716) (:by |rJG4IHzWf) (:text "|\"/prompts/")
                      |h $ %{} :Leaf (:at 1749827869915) (:by |rJG4IHzWf) (:text |filepath)
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |pick-model)
              |h $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |variant)
              |l $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |case-default)
                  |b $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |variant)
                  |h $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text "|\"gemini-2.5-flash-preview-05-20")
                  |l $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |:gemini-pro)
                      |b $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text "|\"gemini-2.5-pro-preview-06-05")
                  |o $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |:gemini-pro-1.5)
                      |b $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text "|\"gemini-1.5-pro")
                  |q $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |:gemini-flash-lite)
                      |b $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text "|\"gemini-2.0-flash-lite")
                  |s $ %{} :Expr (:at 1749664670577) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text |:gemma)
                      |b $ %{} :Leaf (:at 1749664670577) (:by |rJG4IHzWf) (:text "|\"gemma-3-27b-it")
        |sep $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749832040992) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749832040992) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1749832040992) (:by |rJG4IHzWf) (:text |sep)
              |h $ %{} :Expr (:at 1749832044316) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749832044817) (:by |rJG4IHzWf) (:text |str)
                  |b $ %{} :Leaf (:at 1749832046587) (:by |rJG4IHzWf) (:text |&newline)
                  |h $ %{} :Leaf (:at 1749832047648) (:by |rJG4IHzWf) (:text |&newline)
                  |j $ %{} :Leaf (:at 1749832052994) (:by |rJG4IHzWf) (:text "|\"-----------")
                  |l $ %{} :Leaf (:at 1749832048469) (:by |rJG4IHzWf) (:text |&newline)
                  |o $ %{} :Leaf (:at 1749832049045) (:by |rJG4IHzWf) (:text |&newline)
        |style-code-secondary $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749836330090) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749836331324) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1749836330090) (:by |rJG4IHzWf) (:text |style-code-secondary)
              |h $ %{} :Expr (:at 1749836330090) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749836332373) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1749836332688) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749836333803) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1749836334085) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749836334375) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1749836334620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749836335798) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1749836336411) (:by |rJG4IHzWf) (:text |12)
                          |h $ %{} :Expr (:at 1749836340049) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749836343468) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1749836350510) (:by |rJG4IHzWf) (:text "|\"480px")
                          |l $ %{} :Expr (:at 1749836352364) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749836355191) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1749836370736) (:by |rJG4IHzWf) (:text "|\"16px")
        |style-codebox $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1749751814400) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1749751815925) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1749751814400) (:by |rJG4IHzWf) (:text |style-codebox)
              |h $ %{} :Expr (:at 1749751814400) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1749751818037) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1749751820942) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1749751823517) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1749751823933) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1749751824274) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1749751824634) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749751827092) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1749751827373) (:by |rJG4IHzWf) (:text |0)
                          |h $ %{} :Expr (:at 1749751831077) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749751833398) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1749751836704) (:by |rJG4IHzWf) (:text "|\"20px")
                          |l $ %{} :Expr (:at 1749825243837) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749825245840) (:by |rJG4IHzWf) (:text |:max-height)
                              |b $ %{} :Leaf (:at 1749825350288) (:by |rJG4IHzWf) (:text |600)
                          |o $ %{} :Expr (:at 1749825253420) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749825254857) (:by |rJG4IHzWf) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1749825256582) (:by |rJG4IHzWf) (:text |:auto)
                          |q $ %{} :Expr (:at 1749836388579) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749836389780) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1749836391647) (:by |rJG4IHzWf) (:text "|\"8px")
                          |s $ %{} :Expr (:at 1749836393970) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749836395482) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Expr (:at 1749836395687) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1749836398821) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1749836402195) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1749836403234) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1749836403549) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1749836403860) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1749836404106) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1749836404442) (:by |rJG4IHzWf) (:text |90)
                          |t $ %{} :Expr (:at 1749836407705) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1749836409511) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1749836410983) (:by |rJG4IHzWf) (:text "|\"6px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1749664115710) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1749664115710) (:by |rJG4IHzWf) (:text |ns)
            |b $ %{} :Leaf (:at 1749664115710) (:by |rJG4IHzWf) (:text |gen-code.core)
            |h $ %{} :Expr (:at 1749664125882) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1749664127695) (:by |rJG4IHzWf) (:text |:require)
                |b $ %{} :Expr (:at 1749664145441) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |respo.core)
                    |b $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749664145441) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |defcomp)
                        |b $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |defeffect)
                        |h $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |<>)
                        |l $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |>>)
                        |o $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |div)
                        |q $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |button)
                        |s $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |textarea)
                        |t $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |span)
                        |u $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |input)
                        |v $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |a)
                        |w $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |pre)
                        |x $ %{} :Leaf (:at 1749664145441) (:by |rJG4IHzWf) (:text |img)
                |h $ %{} :Expr (:at 1749664149922) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749664149922) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1749664149922) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749664149922) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749664149922) (:by |rJG4IHzWf) (:text |defstyle)
                |l $ %{} :Expr (:at 1749664155396) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749664155396) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1749664155396) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1749664155396) (:by |rJG4IHzWf) (:text |css)
                |o $ %{} :Expr (:at 1749664160480) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749664160480) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1749664160480) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749664160480) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749664160480) (:by |rJG4IHzWf) (:text |hsl)
                |q $ %{} :Expr (:at 1749664643233) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749664643233) (:by |rJG4IHzWf) (:text "|\"@google/genai")
                    |b $ %{} :Leaf (:at 1749664643233) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749664643233) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749664643233) (:by |rJG4IHzWf) (:text |GoogleGenAI)
                        |b $ %{} :Leaf (:at 1749664643233) (:by |rJG4IHzWf) (:text |Modality)
                        |h $ %{} :Leaf (:at 1749749381736) (:by |rJG4IHzWf) (:text |Type)
                |s $ %{} :Expr (:at 1749831228709) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749831232518) (:by |rJG4IHzWf) (:text "|\"@cirru/writer.ts")
                    |b $ %{} :Leaf (:at 1749831233738) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749831234103) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749831238888) (:by |rJG4IHzWf) (:text |writeCirruCode)
                |t $ %{} :Expr (:at 1749904258520) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749904261582) (:by |rJG4IHzWf) (:text |respo-ui.comp)
                    |b $ %{} :Leaf (:at 1749904262586) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749904263436) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749904262957) (:by |rJG4IHzWf) (:text |comp-cirru-snippet)
                |u $ %{} :Expr (:at 1749921337713) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749921340553) (:by |rJG4IHzWf) (:text |respo.comp.space)
                    |b $ %{} :Leaf (:at 1749921341445) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749921341618) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749921342517) (:by |rJG4IHzWf) (:text |=<)
                |v $ %{} :Expr (:at 1749924371357) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749924380173) (:by |rJG4IHzWf) (:text |gen-code.$meta)
                    |b $ %{} :Leaf (:at 1749924384301) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1749924384572) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1749924390246) (:by |rJG4IHzWf) (:text |calcit-dirname)
    |gen-code.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1749751144088) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1749751145048) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1749751146648) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1692546015701) (:by |rJG4IHzWf) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1636914348413) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636914349962) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636914352112) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yM $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1695833113543) (:by |rJG4IHzWf) (:text ||visibilitychange)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1695833124329) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833125950) (:by |rJG4IHzWf) (:text |if)
                          |L $ %{} :Expr (:at 1695833126511) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695833145858) (:by |rJG4IHzWf) (:text |=)
                              |L $ %{} :Leaf (:at 1695833179425) (:by |rJG4IHzWf) (:text "|\"hidden")
                              |T $ %{} :Leaf (:at 1695833167249) (:by |rJG4IHzWf) (:text |js/document.visibilityState)
                          |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yO $ %{} :Expr (:at 1646150039456) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped)
                  |T $ %{} :Leaf (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Leaf (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000)
                  |h $ %{} :Leaf (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1688397806134) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688397806833) (:by |rJG4IHzWf) (:text |::)
                              |T $ %{} :Leaf (:at 1518157669936) (:by |root) (:text |:hydrate-storage)
                              |b $ %{} :Expr (:at 1688397811073) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |b $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1695659910770) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1646150052705) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1646150152124) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695833186592) (:by |rJG4IHzWf) (:text |println)
                  |b $ %{} :Leaf (:at 1695833194980) (:by |rJG4IHzWf) (:text "|\"Saved at")
                  |e $ %{} :Expr (:at 1695833205162) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695833211484) (:by |rJG4IHzWf) (:text |.!toISOString)
                      |T $ %{} :Expr (:at 1695833196620) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833204629) (:by |rJG4IHzWf) (:text |new)
                          |T $ %{} :Leaf (:at 1695833201386) (:by |rJG4IHzWf) (:text |js/Date)
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626201152815) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1626201163076) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1626201191606) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626201192115) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1626201192626) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1626201164538) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201161775) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1614750747553) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1507461699387) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1507461704162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                          |r $ %{} :Expr (:at 1507461710020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
                      |y $ %{} :Expr (:at 1626777542168) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1679237703306) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1626201203433) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error")
                      |j $ %{} :Leaf (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |gen-code.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |gen-code.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |gen-code.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |gen-code.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |gen-code.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1626201173819) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1749664527598) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1626290808117) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!)
    |gen-code.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |gen-code.schema)
    |gen-code.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688397777636) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397783265) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1688397785768) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1688397786090) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1688397788043) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1688397788324) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397789504) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1688397790936) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1688397780767) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688397781225) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659902074) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |gen-code.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)

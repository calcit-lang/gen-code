# Released strict chain and legacy hydration / 已发布严格依赖链与旧数据恢复

- Align direct dependencies with Respo 0.16.89, respo-ui 0.7.14, and Reel 0.6.11.
- 将直接依赖对齐到 Respo 0.16.89、respo-ui 0.7.14 与 Reel 0.6.11。
- Normalize legacy plain-map localStorage data into nominal StoreData before hydration while preserving already-nominal values.
- 在 hydrate 前将旧 plain-map localStorage 数据规范化为 nominal StoreData，同时保留已是 nominal 的值。
- Add a fixture test for both legacy and nominal hydration paths.
- 为旧格式与 nominal 两条 hydration 路径补充 fixture 测试。
- Avoid repeated `_` bindings in one enum match because Calcit 0.13.75 JS codegen emits duplicate `let _`; tracked in calcit-lang/calcit#594.
- 避免在同一个 enum match 中重复绑定 `_`；Calcit 0.13.75 JS codegen 会生成重复 `let _`，由 calcit-lang/calcit#594 跟踪。
- Replace bare map-constructor fallbacks with an explicit empty map value or nominal `schema/store`; production bundling no longer reports missing `_$M_` exports.
- 将裸 map 构造函数 fallback 改为显式空 map 值或 nominal `schema/store`；production bundling 不再报告缺失 `_$M_` export。
- The remaining unresolved schema Dynamic count drops from 3 to 2; the deserialized input Dynamic is documented as the JS/localStorage FFI boundary.
- 剩余 unresolved schema Dynamic 从 3 降到 2；反序列化输入的 Dynamic 被明确标注为 JS/localStorage FFI 边界。

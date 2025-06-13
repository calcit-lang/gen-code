
### 格式要求

你要生成的 Calcit 语法树. Calcit 是 ClojureScript 方言, 所以部分语法相似. 不确定时可以先生成 Clojure 再转化到 Calcit.

 表达式及各种括号转化为 Array, 字面量变量等等转化为 string. 语法树是递归嵌套的结构, 方便解释器执行.

这个递归的结构参考这样的类型定义:

```haskell
data Expr = String | Array String
```

参考我给的例子, 生成的 JSON 仍保持程序的结构. 同时注意一行内容不要太少, 避免行数太多.

```json
[
  "fn", ["e", "d!"],
  [
    "if", ["and",
      ["->", "e", ":event", ".-metaKey"],
      ["=", "13", ["->", "e", ":event", ".-keyCode"]]
    ],
    [
      "let",
      [ ["*text", ["atom", "\"" ]] ],
      [
        "call-genai-msg!", "\"gemini", "cursor", "state",
        [":query", "state"],
        "d!", "*text"]
    ]
  ]
]
```

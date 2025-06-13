
--------

参考 Lisp 的嵌套结构来生成, 表达式及各种括号转化为 Array, 字面量变量等等转化为 string. 整个结构是递归嵌套的, 方便解释器执行.

这个递归的结构参考这样的类型定义:

```haskell
data Expr = String | Array String
```

参考我给的例子, 生成的 JSON 仍保持程序的结构.

```json
  [
    "fn", ["e", "d!"],
    [
      "if",
      [
        "and",
        ["->", "e", ":event", ".-metaKey"],
        [
          "=",
          "13",
          ["->", "e", ":event", ".-keyCode" ]
        ]
      ],
      [
        "let",
        [
          ["*text", ["atom", "\"" ]
          ]
        ],
        [
          "call-genai-msg!",
          "\"gemini",
          "cursor",
          "state",
          [":query", "state"],
          "d!",
          "*text"
        ]
      ]
    ]
  ]
```

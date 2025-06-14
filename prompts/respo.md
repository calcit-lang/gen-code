
### Web 框架

Respo 是基于 Calcit 的一个前端框架.

可以用这样的方式来描述 DOM 结构:

```json
[
  "div",
  ["{}", [":class-name", ["str-spaced", "css/row-middle", "css/gap8"]]],
  [
    "button",
    [
      "{}",
      [":class-name", "css/button"],
      [":inner-text", "|Run"],
      [
        ":on-click",
        [
          "fn",
          ["e", "d!"],
          ["println", "|clicked"]
        ]
      ]
    ]
  ]
]
```

使用 Respo 风格来定义样式, 其中 `&` 表示指定的元素, `&:hover` 用来标记 `:hover` 状态的伪类:

```json
[
  "{}",
  ["|&",
    [
      "{}",
      [":margin",  "0"],
      [":line-height", "|20px"],
      [":border",
        ["str", "|1px solid ",
          ["hsl", "0", "0", "90"]
        ]
      ],
      [":border-radius", "|6px"]
    ]
  ],
  ["|&:hover",
    ["{}",
      [":background-color", "|red"]
    ]
  ]
]
```

对于动态的列表, 需要用 `list->` 这个宏, 另外用 `map` 或者 `.map` 得到映射后的数据:

```json
[
  "list->",
  [ "{}", ["class-name", "|task-list"], ["style", "style-list"] ],
  [
    "->",
    "tasks",
    ["reverse"],
    [
      "map",
      [
        "fn",
        ["task"],
        [ "[]", ["id", "task"], ["task-component", "task"] ]
      ]
    ]
  ]
]
```

注意这里不能使用 `&doseq`, 因为 `&doseq` 返回的是 `nil`, 不能构成 DOM 的 DSL.

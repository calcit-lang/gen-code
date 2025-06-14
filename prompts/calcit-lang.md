
Calcit 是 ClojureScript 方言, 确实也很多相似之处. 但是注意, 通过语法树描述时, 有一些不同.

以下文档备用, 需要时再参考.

### 字面量

##### String 的写法

字面量也是用前缀来区分的, 比如 `:k` 是一个 Keyword, 内部存储的字符串是 `k`, 比如 `|k` 是一个 String, 内部存储的是字符串 `k`, 或者用 `"k` 也是表示 `k`.

Calcit 中的双引号跟普通的编程语言并不一样, 是为了语法树和前缀的用法调整的. `""` 当中, 第一个双引号表示当前 token 为字符串, 后面才是内容, 所以它表示的是单个双引号字符, 表示空字符串需要用 `|`. 由于双引号在不引起歧义时是省略的, 所以用 `"|"`` 表示也是一样的:

`|a` 表示字符串 `"a"`, `"|a b"` 表示带空格的字符串 `"a b"`. 有双引号包裹时, 可以使用 `\` 进行转义比如 `"|a\tb"`. 对于特殊的字符, 有 `&newline` 和 `&tab`.

```json
["if", "x?", "|some string", "|"]
```

或者在对象中表示空字符串:

```json
["{}", [":k", "|"]]
```

冒号开头是 Keyword, 是一类特殊的字符串, 可能被反复重复然后用来表示 property 名称或者一些枚举值的标记.

### 数据结构

##### Tuple 结构

Calcit 中增加了结构 Tuple, 可以认为是简单的 Tagged Union. 用 `::` 可以构造 Tuple. 然后第一个参数一般是 Keyword, 后面可以加不定个数的参数.

```json
["::", ":none"]
["::", ":value", "1"]
```

### 数据结构

Calcit 使用前缀结构来初始化数据, 比如 List(数组),

```json
["[]", "1", "2"]
```

比如 HashSet

```json
["#{}", "1", "2"]
```

比如 HashMap

```json
["{}", ["k1", "v1"], ["k2", "v2"]]
```

另外 Calcit 有自己的 record 结构, 可以带一个名称:

```json
["%{}", ":record-name", ["k1", "v1"], ["k2", "v2"]]
```

这些数据结构跟 ClojureScript 类似, 都是不可变数据结构.

这些数据结构有自己的方法调用(注意跟 interop 的方法调用语法不同), 常见的比如:

```json
[".map", "a-list", ["fn", ["x"], ["+", "x", "1"]]]
```

### 状态

存储状态可以用 `atom` 定义, 然后配合 `reset!` 和 `swap!` 来更新:

```json
["atom", "1"]
```

一般命名习惯上会在变量前加上 `*` 来表明这是可变引用, 比如 `*my-cache`, 然后用 `@*my-cache` 或者 `deref *my-cache` 取出最新的数据.

### 逻辑控制

`if` `when` 的用法跟 Clojure 类似, 不过有一些其他的逻辑结构的差异.

```json
["case-default", "x",
  "default expression",
  ["1", "result for 1"],
  ["2", "result for 2"]
]
```

对于 Tuple 可以用 `tag-match` 宏来生成较为复杂的判断, 注意开头的 `::` 在匹配时省略掉.

```json
["tag-match", "x",
  [[":a", "value-a"], ["println", "|Kind is A, value is", "value-a"]],
  [[":b", "v1", "v2"], ["println", "|Kind is B, values are", "v1", "v2"]],
  ["_", ["println", "|this is default branch"]]
]
```

还有个针对 List 的简写, 可以分别匹配出空数组, 或者 开头+剩余内容 的解构内容,

```json
[
  "list-match",
  ["[]", "1", "2", "3"],
  [[], ["::", ":empty"]],
  [[ "x0", "xs"], ["::", ":some", "x0", "xs"]
  ]
]
```

### 循环

对于数组副作用的操作的循环可以用 `&doseq` 取出其中的元素,

```json
["&doseq", ["a", "a-list"],
  ["println", "a"]
]
```

不过 `&doseq` 执行结果返回的是 `nil`, 在 Respo 描述 DOM 列表的需要返回值的情况, 还是得用 `.map` 方法.

或者用尾递归的方式, 习惯上写成:

```json
["apply-args",
  ["0", ["[]", "1", "2", "3"]],
  ["fn", ["acc", "xs"],
    ["if", ["empty?", "xs"],
      "acc",
      ["recur", ["+", "acc", ["first", "xs"]], ["rest", "xs"]]]
  ]
]
```

对应 JavaScript 中 Array `list.map(x => x+1)` 这样的场景, 可以使用 `map` 函数或者 `.map` 方法:

```json
["map", "a-list", ["fn", ["x"], ["+", "x", "1"]]]
```

类似也有 `each` 以及 `.each` 这样的写法.

### JavaScript InterOp

Interop 帮助 Calcit 生成 JavaScript 代码,  跟 ClojureScript 有相似之处, `.-method` 表示方法访问, `.!method` 表示方法的调用,

`a.b` 访问属性可以写成:

```json
[".-b", "a"]
```

`a.b(c, d)` 的方法调用可以写成:

```json
[".!b", "a", "c", "d"]
```

异步函数需要用 `hint-fn async` 标记当前函数为异步, 然后用 `js-await` 等待执行, 可以写成:

```json
["fn", "async-f", ["p1", "p2"],
  ["hint-fn", "async"],
  ["let",
    [["a", ["js-await", ["another-function"]]]],
    ["println", "a"]
  ]
]
```

直接插入原始的 JavaScript 代码, 可以用:

```json
["&raw-code", "|console.log('demo')"]
```

或者更精简的 `js/console.log('demo')`, 其中 `js/` 是一个特殊的命名空间, 后面可以跟上较长的代码比如 `js/window.document.querySelector('#id').append(b)`.

Calcit 当中使用 kabab-case, 编译到 JavaScript 对应到 snake_case, 特殊情况可以沿用变量.

### Pipeline Macro

Calcit 当中也可以用 `->` `->>` 简化连续的函数调用,

比如 `(c (b a) d)` 这样的 Lisp 调用, 可以借助 `->` 这个宏把元素放入第一个参数执行, 比如,

```json
["->", "a", ["b"], ["c", "d"]]
```

类似还有 `->>` 把参数放到结尾, 或者 `->%` 把参数插入到 `%` 标记的位置.

使用 pipeline Macro 可以有效简化连续的嵌套函数调用, 前一个执行的结果, 会放到后面执行时座位参数

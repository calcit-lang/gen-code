
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### Usages

Import code:

```cirru
:deps $ {}
  |calcit-lang/gen-code |0.0.1
```

```cirru
:require
  gen-code.core :refer $ comp-gen-code

comp-gen-code (>> states :drafter)
  fn () "\"println |demo"
  fn (code d!)
    println "\"submit code" code
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT

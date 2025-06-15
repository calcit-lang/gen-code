
Gen Code Component for Calcit
----

Demo https://repo.calcit-lang.org/gen-code/ .

### Usages

Import code:

```cirru
:deps $ {}
  |calcit-lang/gen-code |0.0.3
```

```cirru
:require
  gen-code.core :refer $ use-gen-code

let
    plugin $ use-gen-code (>> states :drafter)
      fn () "\"println |demo"
      fn (code d!)
        println "\"submit code" code

  .render plugin

  .reset-state plugin
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT

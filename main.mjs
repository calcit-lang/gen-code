
import { main_$x_ } from "./js-out/gen-code.main.mjs"

import "cirru-color/assets/cirru.css"

main_$x_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/gen-code.main.mjs', (main) => {
    main.reload_$x_()
  })
}

module Example where

import Prelude
import Effect (Effect)
import Effect.Console (log)

hello :: Effect Unit
hello = 
    log "Hello World!"

main :: Effect Unit
main =
    hello

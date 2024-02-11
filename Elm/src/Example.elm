module Example exposing (..)

import Posix.IO as IO exposing (..)
import Posix.IO.Process as Process

hello : IO ()
hello = Process.print "Hello World!"

program : Process -> IO ()
program process = hello

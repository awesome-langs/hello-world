-module(example).
-export([main/0]).

hello() ->
    io:format("Hello World!~n").

main() ->
    hello().
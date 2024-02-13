From SimpleIO Require Import SimpleIO.
From Coq Require Import String.
#[local] Open Scope string_scope.

Definition hello : IO unit :=
    print_endline "Hello World!".

Definition main : IO unit :=
    hello.

RunIO main.
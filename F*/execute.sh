fstar.exe --odir ./out --codegen OCaml src/example.fst && ocamlfind opt -package fstarlib -linkpkg out/Example.ml -o example && ./example
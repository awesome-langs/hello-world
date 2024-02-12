package main

import "core:fmt"

hello :: proc() {
    fmt.println("Hello World!");
}

main :: proc() {
    hello();
}
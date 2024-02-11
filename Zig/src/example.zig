const std = @import("std");

pub fn hello() void {
    std.debug.print("Hello World!\n", .{});
}

pub fn main() void {
    hello();
}

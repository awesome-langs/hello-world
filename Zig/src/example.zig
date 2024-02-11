const std = @import("std");

pub fn hello() void {
    std.debug.print("Hello World!\n", .{});
}

pub fn MyFunction(myList: std.ArrayList(i32)) !std.string.String {
    var result = std.string.Builder.init(std.heap.c_allocator);

    myList.items |x| {
        if (x % 2 == 0) {
            const str = @intToStr(x * 3);
            try result.append(str);
            try result.append(result.toSlice());
        }
    }

    return result.toOwnedString();
}

pub fn main() void {
    hello();
}

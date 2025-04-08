// Hello World program
// For basic tasks like printing output, we typically use Zig's standard library.
const std = @import("std");

// Every Zig program must have a `pub fn main()` as its entry point.
pub fn main() void {
    // std.debug.print is useful for debugging (writes to stderr).
    // It takes a format string and an anonymous tuple of arguments.
    // Format specifiers:
    //   - {s} for strings, {d} for integers, {c} for chars, {any} for any type.
    std.debug.print("Hello {s}!\n", .{"world"});

    // If no arguments are needed, an empty tuple `.{}` is still required.
    std.debug.print("Hello aditya!\n", .{});
}
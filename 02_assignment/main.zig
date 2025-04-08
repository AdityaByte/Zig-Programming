// Zig is a statically typed language—types are checked at compile-time.
const std = @import("std");

// Variables (`var`) are mutable; constants (`const`) are not.
// Syntax:
//   (const|var) name [: type] = value;

// Signed 32-bit integer (holds positive/negative values)
const constant: i32 = -400;

// Type inferred as `[]const u8` (immutable string slice)
var language = "RUST";

// `undefined` means uninitialized (use with caution!)
const nothing: i32 = undefined; // Avoid reading before assigning!

pub fn main() void {
    std.debug.print("Constant: {d}\n", .{constant});
    std.debug.print("Language: {s}\n", .{language});

    // Uncommenting this would be unsafe (undefined behavior):
    // std.debug.print("Nothing: {d}\n", .{nothing});
}
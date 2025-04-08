// Zig Data Types Overview:
// -----------------------
// i8, i16, i32, i64, i128 - Signed integers (can represent positive/negative values).
// u8, u16, u32, u64, u128 - Unsigned integers (only non-negative values).
// usize, isize - Pointer-sized integers (platform-dependent, typically 8 bytes on 64-bit systems).
// f16, f32, f64, f128 - Floating-point numbers (IEEE-754 compliant).
// bool - Boolean type (`true` or `false`).
// void - Represents "no value" (similar to `()` in other languages).
// undefined - Uninitialized memory (use with caution; reading it is unsafe!).

const std = @import("std");

// Example ranges for integer types (maximum values for signed types):
var a: i8 = 127;          // Range: -128 to 127
var b: i16 = 32767;       // Range: -32768 to 32767
var c: i32 = 2147483647;  // Range: -2147483648 to 2147483647
var d: i64 = 9223372036854775807;  // Range: -2^63 to 2^63-1

// Strings in Zig are slices of bytes (`[]const u8`):
// - No dedicated "string" type; strings are UTF-8 encoded byte slices.
// - String literals are immutable (stored in read-only memory).
const str: []const u8 = "AdityaPawar";

pub fn main() void {
    // Print integer values:
    std.debug.print("i8: {d}\ni16: {d}\ni32: {d}\ni64: {d}\n", .{a, b, c, d});

    // Print the string as a normal string:
    std.debug.print("String: {s}\n", .{str});

    // Print as individual characters (`{c}` format specifier):
    // Note: This prints each byte as a character (may not handle Unicode correctly).
    std.debug.print("Characters: {c}\n", .{str});

    // Print raw bytes in binary (`{b}` format specifier):
    // Shows the binary representation of each byte in the string.
    std.debug.print("Binary bytes: {b}\n", .{str});

    // Print decimal (ASCII) values of each byte (`{d}` format specifier):
    // Only meaningful for ASCII strings (e.g., 'A' = 65, 'd' = 100).
    std.debug.print("ASCII values: {d}\n", .{str});

    // Print hexadecimal values of each byte (`{x}` or `{h}` format specifier):
    // `{x}` is preferred over `{h}` (both work, but `{x}` is more common).
    std.debug.print("Hex values: {x}\n", .{str});
}
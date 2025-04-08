// Testing in zig 

// Firstly we need to import expect field 
const expect = @import("std").testing.expect;

// The string literal after the test is the test name
// like right now we are testing for the value of 11
test "Num value is 11" {
    var num: i8 = 10;
    if (num < 11) {
        num += 1;
    } else {
        num += 2;
    }

    try expect(num == 11); // Here the expect function takes a boolean.
}
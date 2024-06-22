const std = @import("std");

fn factorial(num: u32) u64 {
    var fact: u64 = 1;
    for (1..num + 1) |n| {
        fact *= n;
    }
    return fact;
}

pub fn main() anyerror!void {
    const n = 3; // u32 - unsigned (= no negative ; assume positive) 32 bit interger
    std.debug.print("factorial of {d} = {d} \n", .{ n, factorial(n) });
}

const std = @import("std");
// const builtin = @import("builtin");
// @import('std').fs
const fs = std.fs;

pub fn main() anyerror!void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    // std.debug.print("All your {s} ,{s},{s} are belong to us.\n", .{ "codebase", "here", "world" });
    // Annonymous struct === Tuple
    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    // const stdout_file = std.io.getStdOut().writer();
    // try stdout_file.print("we work here \n", .{});

    big_man();
    // var bw = std.io.bufferedWriter(stdout_file);
    // const stdout = bw.writer();

    // try stdout.print("Run `zig build test` to run the tests.\n", .{});

    // try bw.flush(); // don't forget to flush!
}

fn big_man() void {
    std.debug.print("i am learning zig inorder to pay my {s} and then get {s} to a {s} {s}\n ", .{ "bills", "married", "beautiful", "woman" });
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}

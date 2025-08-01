const std = @import("std");

const days = [25]fn () u16{
    @import("days/1.zig").main,
    @import("days/2.zig").main,
    @import("days/3.zig").main,
    @import("days/4.zig").main,
    @import("days/5.zig").main,
    @import("days/6.zig").main,
    @import("days/7.zig").main,
    @import("days/8.zig").main,
    @import("days/9.zig").main,
    @import("days/10.zig").main,
    @import("days/11.zig").main,
    @import("days/12.zig").main,
    @import("days/13.zig").main,
    @import("days/14.zig").main,
    @import("days/15.zig").main,
    @import("days/16.zig").main,
    @import("days/17.zig").main,
    @import("days/18.zig").main,
    @import("days/19.zig").main,
    @import("days/20.zig").main,
    @import("days/21.zig").main,
    @import("days/22.zig").main,
    @import("days/23.zig").main,
    @import("days/24.zig").main,
    @import("days/25.zig").main,
};

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();

    try stdout.writeAll("Day to execute (0<x<=25): ");

    var buffer: [3]u8 = undefined;
    const read = (try stdin.readUntilDelimiterOrEof(&buffer, '\n')) orelse return error.InvalidInput;
    const number = try std.fmt.parseInt(u8, std.mem.trimRight(u8, read, "\r\n"), 10);

    try stdout.print("You entered: {d}\n", .{number});

    const start = try std.time.Instant.now();
    const output = days[number]();
    const end = try std.time.Instant.now();

    try stdout.print("The answer is {d}\n", .{output});

    const elapsed: f64 = @floatFromInt(end.since(start));
    try stdout.print("The operation took: {d:.3}ms\n", .{
        elapsed / std.time.ns_per_ms,
    });
}

const x = main;

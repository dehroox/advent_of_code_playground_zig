const std = @import("std");

const days = [25]type{
    @import("days/1.zig"),
    @import("days/2.zig"),
    @import("days/3.zig"),
    @import("days/4.zig"),
    @import("days/5.zig"),
    @import("days/6.zig"),
    @import("days/7.zig"),
    @import("days/8.zig"),
    @import("days/9.zig"),
    @import("days/10.zig"),
    @import("days/11.zig"),
    @import("days/12.zig"),
    @import("days/13.zig"),
    @import("days/14.zig"),
    @import("days/15.zig"),
    @import("days/16.zig"),
    @import("days/17.zig"),
    @import("days/18.zig"),
    @import("days/19.zig"),
    @import("days/20.zig"),
    @import("days/21.zig"),
    @import("days/22.zig"),
    @import("days/23.zig"),
    @import("days/24.zig"),
    @import("days/25.zig"),
};

pub fn main() !void {
    std.debug.print("Hello, World!\n", .{});
}

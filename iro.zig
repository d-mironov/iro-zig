const std = @import("std");
const print = std.debug.print;
const fmt = std.fmt;

const alloc = std.heap.page_allocator;

/// Color this formatted text with RGB values.
/// 
/// Put the RGB values into the first three places of the arguments section:
/// `iro.color("This will be RGB colored", .{ 255, 30, 120 });
pub fn color(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[38;2;{d};{d};{d}m" ++ str ++ "\x1b[0m", args);
}

/// Color the background of this formatted text with RGB values.
/// 
/// Put the RGB values into the first three places of the arguments section:
/// `iro.color_bg("This background will be RGB colored", .{ 255, 30, 120 });
pub fn color_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[48;2;{d};{d};{d}m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text red
pub fn red(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[31m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text green
pub fn green(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[32m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text yellow
pub fn yellow(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[33m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text blue
pub fn blue(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[34m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text magenta
pub fn magenta(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[35m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text cyan
pub fn cyan(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[36m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text white
pub fn white(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[37m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text black
pub fn black(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[30m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background red
pub fn red_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[41m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background green
pub fn green_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[42m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background yellow
pub fn yellow_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[43m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background blue
pub fn blue_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[44m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background magenta
pub fn magenta_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[45m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background cyan
pub fn cyan_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[46m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background white
pub fn white_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[47m" ++ str ++ "\x1b[0m", args);
}

/// Color this formatted text background black
pub fn black_bg(comptime str: []const u8, args: anytype) ![]u8 {
    return try fmt.allocPrint(alloc, "\x1b[40m" ++ str ++ "\x1b[0m", args);
}

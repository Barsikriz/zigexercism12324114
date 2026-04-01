const std = @import("std");

pub fn convert(buffer: []u8, n: u32) []const u8 {
    var pos: usize = 0;

    if (n % 3 == 0) {
        const word = "Pling";
        @memcpy(buffer[pos..][0..word.len], word);
        pos += word.len;
    }
    if (n % 5 == 0) {
        const word = "Plang";
        @memcpy(buffer[pos..][0..word.len], word);
        pos += word.len;
    }
    if (n % 7 == 0) {
        const word = "Plong";
        @memcpy(buffer[pos..][0..word.len], word);
        pos += word.len;
    }
    if (pos == 0) {
        return std.fmt.bufPrint(buffer, "{d}", .{n}) catch unreachable;
    }
    return buffer[0..pos];
}


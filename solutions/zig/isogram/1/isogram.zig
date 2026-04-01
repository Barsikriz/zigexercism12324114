const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    var counts = [_]usize{0} ** 256;
    for (str) |byte| {
        const lower = switch (byte) {
            'A'...'Z' => byte + 32,
            'a'...'z' => byte,
            else => continue,
        };
        counts[lower] += 1;
        if (counts[lower] > 1) {
            return false;
        }
    }
    return true;
}

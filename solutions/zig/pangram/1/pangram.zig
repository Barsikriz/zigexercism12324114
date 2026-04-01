pub fn isPangram(str: []const u8) bool {
    var counts = [_]usize{0} ** 26;
    for (str) |byte| {
        const lower = switch (byte) {
            'A'...'Z' => byte - 'A',
            'a'...'z' => byte - 'a',
            else => continue,
        };
        counts[lower] += 1;
    }
    for (counts) |value| {
        if (value == 0) {
            return false;
        }
    }
    return true;
}

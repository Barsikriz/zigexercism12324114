pub fn score(s: []const u8) u32 {
    var int_score: u32 = 0;
    for (s) |letter| {
        switch (letter) {
            'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T', 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't' => int_score += 1,
            'D', 'G', 'd', 'g' => int_score += 2,
            'B', 'C', 'M', 'P', 'b', 'c', 'm', 'p' => int_score += 3,
            'F', 'H', 'V', 'W', 'Y', 'f', 'h', 'v', 'w', 'y' => int_score += 4,
            'K', 'k' => int_score += 5,
            'J', 'X', 'j', 'x' => int_score += 8,
            'Q', 'Z', 'q', 'z' => int_score += 10,
            else => unreachable,
        }
    }
    return int_score;
}

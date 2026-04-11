const std = @import("std");
const mem = std.mem;

pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    const rna = try allocator.alloc(u8, dna.len);
    for (dna, 0..) |nucleotide, i| {
        rna[i] = complement(nucleotide);
    }
    return rna;
}

fn complement(c: u8) u8 {
    return switch (c) {
        'G' => 'C',
        'C' => 'G',
        'T' => 'A',
        'A' => 'U',
        else => unreachable,
    };
}

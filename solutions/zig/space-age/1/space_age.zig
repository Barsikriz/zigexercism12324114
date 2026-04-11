pub const Planet = enum {
    mercury,
    earth,
    venus,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,

    pub fn age(self: Planet, seconds: usize) f64 {
        var result: f64 = 0;
        const seconds_per_earth_year = 31557600.0;
        const earth_years = @as(f64, @floatFromInt(seconds)) / seconds_per_earth_year;
        switch (self) {
            .earth => result = earth_years,
            .mercury => result = earth_years / 0.2408467,
            .venus => result = earth_years / 0.61519726,
            .mars => result = earth_years / 1.8808158,
            .jupiter => result = earth_years / 11.862615,
            .saturn => result = earth_years / 29.447498,
            .uranus => result = earth_years / 84.016846,
            .neptune => result = earth_years / 164.79132,
        }
        return result;
    }
};

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.
-- a < b < c

triplets = [(m ^ 2 - n ^ 2, 2 * m * n, m ^ 2 + n ^ 2) | m <- [1..1000], n <- [1..1000], n < m]

neededTriplet = filter (\(x,y,z) -> x + y + z == 1000) triplets

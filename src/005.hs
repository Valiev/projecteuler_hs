-- What is the smallest positive number that is evenly divisible by all of the
-- numbers from 1 to 20?
gcd_iter1 n = take n $ map fst $ iterate (\(a,b)->((div (a*b) (gcd a b)),b+1)) (1,1)

gcd_notiter1 n = foldl (\x y -> (div (x * y) (gcd x y))) 1 [1..n]

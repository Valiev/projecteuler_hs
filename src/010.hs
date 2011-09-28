-- Find the sum of all the primes below two million.

empty :: [a] -> Bool
empty [] = True
empty _ = False

isPrime :: Integer -> Bool
isPrime n = empty [x| x <- [2..fl], rem n x == 0]
        where fl = toInteger $ floor $ sqrt (fromInteger n :: Float)

primes :: [Integer]
primes = filter isPrime (2:[3,5..])

task = sum $ takeWhile (\x -> x < 2000000) primes

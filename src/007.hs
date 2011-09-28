-- What is the 10 001st prime number?

empty :: [a] -> Bool
empty [] = True
empty _ = False

isPrime :: Integer -> Bool
isPrime n = empty [x| x <- [2..fl], rem n x == 0]
        where fl = toInteger $ floor $ sqrt (fromInteger n :: Float)

primes :: [Integer]
primes = filter isPrime (2:[3,5..])

n_prime :: Int -> Integer
n_prime n = primes !! (n - 1)

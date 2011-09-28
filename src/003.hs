-- Largest prime number of 600851475143
toPrimes :: Integer -> [Integer]
toPrimes 1 = []
toPrimes n = divisor : (toPrimes $ div n divisor)
    where divisor = head (filter (\x -> rem n x == 0) (2:[3,5..n]))

main = do
    let num = 600851475143
    let m = foldl max 0 $ toPrimes num
    putStrLn (show m)

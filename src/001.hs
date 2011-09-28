-- Find the sum of all the multiples of 3 or 5 below 1000.
mySum :: Int -> Int
mySum n = sum [x | x <- [1..(n-1)], (rem x 3 == 0) || (rem x 5 == 0)]

main = do
    putStrLn (show $ mySum 1000)

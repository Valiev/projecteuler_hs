-- from the internet
fibs = map fst $ iterate (\(a, b) -> (b, a+b)) (1, 1)

main = do
    let maximum = 4000000
    let res = takeWhile (\x -> x < maximum) [x | x <- fibs, rem x 2 == 0]
    putStrLn (show $ sum res)

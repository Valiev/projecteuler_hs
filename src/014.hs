-- Which starting number, under one million, produces the longest chain?
import Data.List (foldl')
nextCollatz :: Integer -> Integer
nextCollatz n = if rem n 2 == 0
                then div n 2
                else 3 * n + 1

collatzLen :: Integer -> Integer
collatzLen 1 = 1
collatzLen n = 1 + (collatzLen $ nextCollatz n)

cmpByLen :: Integer -> Integer -> Integer
cmpByLen x y = if (collatzLen x) > (collatzLen y)
               then x
               else y


answer = foldl' max (1, 1) $ map (\x -> (collatzLen x, x)) [1..(1000000-1)]

main = do
    putStrLn (show answer)

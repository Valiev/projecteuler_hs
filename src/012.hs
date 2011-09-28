-- What is the value of the first triangle number to have over five hundred divisors?
import qualified Data.Set as Set

below_sqrt_divisors :: Integer -> [Integer]
below_sqrt_divisors n = filter (\x -> rem n x == 0) xs
                where xs = [1..k]
                      k = toInteger $ floor $ sqrt (fromInteger n :: Float)

divisors :: Integer -> [Integer]
divisors n = Set.toList $ Set.union below above
        where below_list = below_sqrt_divisors n
              below = Set.fromList below_list
              above = Set.fromList $ map (\x -> div n x) below_list

div_by_2 :: [Integer] -> [Integer]
div_by_2 xs = Set.toList $ Set.fromList $ map div' xs
            where div' n = if rem n 2 == 0
                           then div n 2
                           else n

triangle :: Integer -> Integer
triangle n = div (n * (n + 1)) 2

divisors_of_triangle :: Integer -> [Integer]
divisors_of_triangle n = div_by_2 $ [x*y | x <- divisors n, y <- divisors (n+1)]

answer = head $ dropWhile (\xs -> length xs <= 500) $ map divisors_of_triangle [1..]

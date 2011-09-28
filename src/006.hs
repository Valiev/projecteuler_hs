-- Find the difference between the sum of the squares of the first one hundred
-- natural numbers and the square of the sum.

sum_squared n = (sum [1..n]) ^ 2
sum_of_sqaures n = sum $ map (^2) [1..n]
diff_sums n = sum_squared n - sum_of_sqaures n

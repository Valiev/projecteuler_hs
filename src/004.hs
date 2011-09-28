-- Find the largest palindrome made from the product of two 3-digit numbers
isPalindrom n = str == reverse str
            where str = show n

palindroms3x3 = filter isPalindrom [x * y | x <- [100..999], y <- [100..999]]

num = foldl max 0 palindroms3x3

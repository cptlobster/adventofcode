module Day01 (answer, answer2, lineByLine, line_by_line2, findDigits, replaceStrings) where

import Data.Char

answer :: String -> Int
answer s = sum $ lineByLine s

answer2 :: String -> Int
answer2 s = sum $ line_by_line2 s

lineByLine :: String -> [Int]
lineByLine i = map findDigits (lines i)

line_by_line2 :: String -> [Int]
line_by_line2 i = map (findDigits . replaceStrings) (lines i)

findDigits :: String -> Int
findDigits str = f '0' '0' str
  where f '0' _ (s:ss) | isDigit s = f s s ss
                       | otherwise = f '0' '0' ss
        f n m (s:ss) | isDigit s = f n s ss
                     | otherwise = f n m ss
        f n m [] = read (n : m : []) :: Int

replaceStrings :: String -> String
replaceStrings s = replaceWords digits s ""
  where digits = zip nwords nums
        nwords = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        nums = map show [1..9]

replaceWords :: [(String, String)] -> String -> String -> String
replaceWords _ [] a = reverse a
replaceWords w e@(s:ss) a = replaceWords w ss (addToken a)
  where addToken = addTokenHelper w
        addTokenHelper [] b = s : b
        addTokenHelper ((u, v) : us) b | hasToken u e = s : (v ++ b)
                                       | otherwise    = addTokenHelper us b


hasToken :: String -> String -> Bool
hasToken [] _ = True
hasToken _ [] = False
hasToken (w:ws) (x:xs) | w == x    = hasToken ws xs
                       | otherwise = False

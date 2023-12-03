module Day02 (answer, is_valid) where

import Data.Text (Text, pack, unpack, split)


answer :: String -> Int
answer s = sum $ line_by_line s

-- answer2 :: String -> Int
-- answer2 s = sum $ line_by_line2 s

line_by_line :: String -> [Int]
line_by_line i = map get_id $ lines . filter_poss i

-- line_by_line2 :: String -> [Int]
-- line_by_line2 i = map (find_digits . replace_strs) (lines i)

{- part 1: Filter the list so we get all the games that are possible -}
filter_poss :: [String] -> [String]
filter_poss = filter (is_valid)

is_valid :: String -> Bool
is_valid s = split_games (strip_gid s)
  where split_games x = unpack . split (== ';') . pack x
        split_items [] ys = reverse ys
        split_items (x:xs) ys = split_items (xs) (strip . split (== ',') x):ys

module Main (main) where

import Day01 (answer2)

main :: IO ()
main = do
  contents <- readFile "input/day01_1.txt"
  print (answer2 contents)
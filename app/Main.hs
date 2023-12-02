module Main (main) where

import Day01 (answer)

main :: Int -> Int -> IO ()
main = do
  contents <- readFile "input/day01_1.txt"
  putStrLn $ str $ answer contents
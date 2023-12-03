{-# LANGUAGE ImplicitParams #-}

module Day01Spec (spec) where

import Test.Hspec
import Test.HUnit
import Test.HUnit.Approx
import Test.QuickCheck
import Control.Exception
import Day01 (findDigits, replaceStrings)

{- 
The Test spec is used to test your function based on the example provided by AoC,
and then to read the input file and test against that.
-}
spec :: Spec
spec = describe "Day01" $ do
  describe "Day01_1" $ do
    it "Works correctly with test parameters" $ do
      {- add function "input data" `shouldBe` result -}
      findDigits "1abc2" `shouldBe` 12
      findDigits "pqr3stu8vwx" `shouldBe` 38
      findDigits "a1b2c3d4e5f" `shouldBe` 15
      findDigits "treb7uchet" `shouldBe` 77

  describe "Day01_2" $ do
    it "Works correctly with test parameters" $ do
      {- add function "input data" `shouldBe` result -}
      findDigits (replaceStrings "two1nine") `shouldBe` 29
      findDigits (replaceStrings "eightwothree") `shouldBe` 83
      findDigits (replaceStrings "abcone2threexyz") `shouldBe` 13
      findDigits (replaceStrings "xtwone3four") `shouldBe` 24
      findDigits (replaceStrings "4nineeightseven2") `shouldBe` 42
      findDigits (replaceStrings "zoneight234") `shouldBe` 14
      findDigits (replaceStrings "7pqrstsixteen") `shouldBe` 76

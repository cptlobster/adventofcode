{-# LANGUAGE ImplicitParams #-}

module Day02Spec (spec) where

import Test.Hspec
import Test.HUnit
import Test.HUnit.Approx
import Test.QuickCheck
import Control.Exception
import Day02 (is_valid)

{- 
The Test spec is used to test your function based on the example provided by AoC,
and then to read the input file and test against that.
-}
spec :: Spec
spec = describe "Day02" $ do
  describe "Day02_1" $ do
    it "Works correctly with test parameters" $ do
      {- add function "input data" `shouldBe` result -}
      is_valid "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green" `shouldBe` True
      is_valid "Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue" `shouldBe` True
      is_valid "Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red" `shouldBe` False
      is_valid "Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red" `shouldBe` False
      is_valid "Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green" `shouldBe` True

  describe "Day02_2" $ do
    it "Works correctly with test parameters" $ do
      {- add function "input data" `shouldBe` result -}
      pendingWith "Add"
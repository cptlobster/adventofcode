module Day01Spec (spec) where

import Test.Hspec
import Test.HUnit
import Test.HUnit.Approx
import Test.QuickCheck
import Control.Exception
import Day01 ()

{- 
The Test spec is used to test your function based on the example provided by AoC,
and then to read the input file and test against that.
-}
spec :: Spec
spec = describe "Day01" $ do
  describe "Day01_1" $ do
    it "Works correctly with test parameters" $ do
      pendingWith "Use the example for this day to test your function!"
    
    it "Works correctly for input file" $ do
      pendingWith "Use the example to read your input file and print it"

describe "Day01_2" $ do
    it "Works correctly with test parameters" $ do
      pendingWith "Use the example for this day to test your function!"
    
    it "Works correctly for input file" $ do
      pendingWith "Use the example to read your input file and print it"
module KickTyresSpec where

import LangFeature.KickTyres
import Test.Hspec
import Test.Hspec.QuickCheck (prop)

spec :: Spec
spec = do
    describe "doubleMe" $ do
        it "doubles numbers" $
            doubleMe 3 `shouldBe` 6

    describe "tripleMe" $ do
        it "triples numbers" $
            tripleMe 4 `shouldBe` 12

        prop "double involution is identity" $ \n ->
            involve (involve n) == n

    describe "recursive functions" $ do
        it "e.g. Ackermann" $
            ack 3 3 `shouldBe` 61

    describe "tricks with numbers and strings" $ do
        it "can take min and max" $ do
            min (2 :: Int) 3 `shouldBe` 2

    describe "tricks with lists" $ do
        it "can cons up a list" $
            3 : [4 :: Int, 5] `shouldBe` [3, 4, 5]
        it "can pick out elements from a list" $
            ["one", "two", "three"] !! 1 `shouldBe` "two"



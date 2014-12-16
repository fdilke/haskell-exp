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

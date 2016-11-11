module NewtonSpec where

import Test.Hspec
import Text.Printf
import Newton

expected :: Fractional a => a
expected = 1.4142

spec :: Spec
spec = do
    describe "mySqrt" $ do
        it "calculates square roots" $
            let root = mySqrt (2 :: Double) in
                printf "%.5f" root `shouldBe` "1.41421"



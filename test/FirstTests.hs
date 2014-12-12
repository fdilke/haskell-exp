module FirstTests (firstTests) where

import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import Data.List (nub)
import Control.Monad (ap, liftM)
import System.IO.Unsafe (unsafePerformIO)
import Foreign.Marshal.Array (withArray)
import GHC.ST (ST(..), runST)
import GHC.Word (Word8(..))
import Test.QuickCheck hiding ((.&.))
import Test.Framework (Test, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)

instance Arbitrary T.Text where
    arbitrary = T.pack `fmap` arbitrary

pText :: T.Text -> T.Text -> Bool
pText a b = if (a == b) then (a == b) else True

firstTests :: [Test]
firstTests =
    [ testProperty "obvious" pText
    , testGroup "text"
      [ testProperty "alsoObvious" pText
      ]
    ]

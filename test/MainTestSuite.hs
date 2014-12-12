module Main (main) where

import FirstTests (firstTests)
import SecondTests (secondTests)
import Test.Framework (defaultMain, testGroup)

main :: IO ()
main = defaultMain [
         testGroup "firstTests" firstTests
       , testGroup "secondTests" secondTests
       ]

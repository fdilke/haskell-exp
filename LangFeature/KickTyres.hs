module LangFeature.KickTyres (doubleMe, tripleMe, involve, ack) where

doubleMe :: Int -> Int
doubleMe n = n + n

tripleMe :: Int -> Int
tripleMe n = n + n + n

involve :: Int -> Int
involve n = 1 - n

ack :: Int -> Int -> Int
ack 0 n = n + 1
ack m 0 = ack (m - 1) 1
ack m n = ack (m - 1) (ack m (n - 1))

module Lesson2 where

--g :: Int -> Int
--g :: Int -> Integer nem müködik
g :: Int -> Integer
g x = (toInteger x) * 10
--g 9223372036854775807 integer overflow = -10
--Integer végtelen
-- :t id' 


-- az 'a' bármi lehet
-- ha a -> a akkor csak 'a' lehet
--id' x = x + 10 forditási hiba
--id' x = undefined exepction
id' :: (Integral a) => a -> a -- legyen a egyész szám, ahol a -> a
id' x = x + 10
-- :t fromIntegral 
h :: Integer -> Int
h x = (fromIntegral x) * 10
-- rem a b maradék
-- quot a b hanyszor van meg az adott szamba
-- Eq egyenlő


xor :: Bool -> Bool -> Bool
{-
True True -> False
True False -> True
False True -> True
False False -> False
-}

{-
xor True True -> False
xor True False -> True
xor False True -> True
xor False False -> False
-}

--egysoros megoldás
--xor a b = (a || b)  && (not (a && b))
xor a b = a /= b --a != b

--fibonaci sorozat
--rekurzió
fib :: (Integral a, Integral b) => a -> b
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)


sum' :: (Num a, Eq a) => a -> a
sum' 0 = 0
sum' n = n + sum'(n-1)


prod' :: (Num a, Eq a) => a -> a
prod' 0 = 0
prod' 1 = 1
prod' n = n * prod' (n-1)


psf :: Int -> Int -> Int
psf 0 a = a
psf n a = n * (psf (n-1) a) + a
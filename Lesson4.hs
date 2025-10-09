module Lesson4 where

list = [ x + 1 | x <- [1..10]]
--[1..10] consolba
len :: [a] -> Int
len []       = 0
len (_ : xs) = 1 + (len xs)

skip :: [a] -> [a]
skip [] = []
skip [a] = [a]
skip (a : _ : xs) = a : skip xs

double :: Num a => [a] -> [a]
double [] = []
double (a : as) = a * 2 : double as

head' :: [a] -> a
head' (a : _) = a

tail' :: [a] -> [a]
tail' (_ : xs) = xs
tail' [] = []

--összeadás
sum' :: Num a => [a] -> a
sum' [] = 0
sum' (a : xs) = a + sum xs

--szorzás
prod' :: Num a => [a] -> a
prod' [] = 1
prod' (x : xs) = x * prod' xs

inc' :: (Eq a ,Integral a) => [a] -> [a]
inc' [] = []
inc' (x : xs)
    | x `mod` 2 == 1 = x + 1 : inc' xs
    | otherwise      = x : inc' xs

onlyEven :: [Int] -> [Int]
onlyEven [] = []
onlyEven (x : xs)
    | x `mod` 2 == 0 = x : onlyEven xs
    | otherwise = onlyEven xs
--onlyEven xs = [x | x <- xs, x `mod` 2 == 0] ez is

(+:+) :: [a] -> [a] -> [a]
[] +:+ bs = bs
as +:+ [] = as
(a : as) +:+  bs = a : as +:+ bs

flatten :: [[a]] -> [a]
flatten []        = []
flatten (as : xs) = as +:+ flatten xs

module Lesson6 where

dropnth :: Int -> [a] -> [a]
dropnth n as = dropnth' n as where
  dropnth' _ [] = []
  dropnth' acc (a : as) 
    | acc <= 1 = dropnth' n as
    | otherwise = a : dropnth' (acc - 1) as

take' :: Int -> [a] -> [a]
take' n []       = []
take' n (a : as) 
 | n > 0 = a : take' (n - 1) as
 | otherwise = []

drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' n l@(a : as)
 | n > 0 = drop' (n-1) as
 | otherwise = l

onlyEven :: (Integral a, Eq a) => [a] -> [a]
onlyEven as = [a | a <-as, a `mod` 2 == 0]

tag :: [a] -> [(Integer, a)]
tag as = tag' 0 as where
    tag' _ []       = []
    tag' n (b : bs) = (n, b) : tag' (n+1) bs
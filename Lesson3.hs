module Lesson3 where

--Nem fordul le
{-
mul :: (Num a) => a -> a -> a
mul _ y | y == 0 = 0
mul x y = x + mul x (y - 1)
-}

fib :: Int -> Int
fib x 
    | x <= 0 = 0 
    | x == 1 = 1
    | True = fib (x -1) + fib (x -2)

--szorzás
mul :: (Num a, Ord a) => a -> a -> a
mul x _ | x == 0 = 0
mul x y | x < 0 = (-1) * mul ((-1) * x) y
mul x y = y + mul (x - 1) y

--kör területe
care :: Double -> Double
care x | x >= 0 = x * x * pi
       | otherwise = 0

--négyzet területe
sqare :: Double -> Double -> Double
sqare x y | x < 0 || y < 0 = 0
          | otherwise = x * y


radius :: Double -> Double
radius area | area < 0 = 0
            | otherwise = sqrt (area / pi)

mod' :: (Integral a, Ord a) => a -> a
mod' a b | b < 0  || a < 0 = 0
mod' a b | a >= b          = mod' (a - b) b
         | otherwise       = a 
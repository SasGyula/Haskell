module Lesson5 where

--rendezett pár
t :: (Int, Bool)
t = (1, True)

double :: a -> (a , a)
double a = (a , a)

orderedn :: (String, Int, Integer, Bool)
orderedn = ("Edward király", 0, 6, False)

addd :: Num a => (a , a) -> a
addd(a , b) = a + b

fst' :: (a, b) -> a
fst' (a, _) = a


snd' :: (a, b) -> b
snd' (_, b) = b

--összefűzni két listát, úgy hogy a rövidebb lista hossza legyen a hossz
zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (a : as) (b : bs) = (a , b) : zip' as bs

--lustaság
dropthird :: [(a , b , c)] -> [(a , b)]
dropthird [] = []
dropthird ((a, b _): xs) = (a , b) : dropthird xs

--fib x | x <= 0 = 0
--fib 1 = 1
--fib n = fib (n-1) + fib (n-2)
module Lesson1 where

myFavNumber :: Int
myFavNumber = inc 5


inc :: Int -> Int
inc x = x + 1

not' :: Bool -> Bool
not' False = True
not' True = False

notA :: Char -> Bool
notA 'A' = False
notA _ = True

notAorB :: Char -> Bool
notAorB 'B' = False
notAorB 'A' = False
notAorB _ = True

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _ = False

or' :: Bool -> Bool -> Bool
{-
or' True _ = False
or' _ _ = True
-}
or' True _ = True
or' _ True = True
or' _ _ = False

imp :: Bool -> Bool -> Bool
{-
False True -> True
False False -> True
True False -> False
True True -> True
-}
{-
imp True False = False
imp x y = (not x) || y
-}


imp False _ = True
imp True y = y
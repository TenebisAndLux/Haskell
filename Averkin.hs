module Averkin where

--Задача 1
task1 :: [a] -> a
task1 [] = error "List is empty!"
task1 (x:[]) = x
task1 (x:xs) = task1 xs

--Задача 2
task2 :: [a] -> [a]
task2 [] = error "The list is empty!"
task2 [x] = []
task2 (x:xs) = x : task2 xs

--Задача 3
task3 :: a -> [a] -> [a]
task3 x [] = [x]
task3 x (y:ys) = y : task3 x ys

--Задача 4
task4 :: [a] -> [a]
task4 xs = helper xs [] where
    helper [] acc = acc
    helper (x:xs) acc = helper xs (x:acc)

--Задача 5
task5 :: (a -> Bool) -> [a] -> [a]
task5 _ [] = []
task5 p (x:xs)
    | p x = x: task5 p xs
    | otherwise = []

--Задача 6
task6' :: (a -> Bool) -> [a] -> [a]
task6' _ [] = []
task6' f (x:xs)
    | f x = task6' f xs
    | otherwise = (x:xs)

--Задача 7
task7 :: (Float -> Float) -> Float -> Float -> Int -> Float
task7 f a b n
    | n < 1 = 0
    | a > b = task7 f b a n
    | a == b = 0
    | otherwise = sum [trapezoidArea f (a + h * fromIntegral i) h | i <- [0 .. n-1]]
    where
        h = (b - a) / fromIntegral n
        trapezoidArea func x h = (func x + func (x + h)) / 2 * h

--Задача 8
task8' :: (Double -> Double) -> Double -> Double -> Double -> Double
task8' f a b n = sum [(f (x) / n) | x <- [a, (a + (b - a) / n) .. b ]]

--Задача 9
task9 :: Int -> Int
task9 n
    | n < 3 = n + 1
    | otherwise = let 
            helper a0 a1 a2 k
                | k == 2 = a2
                | otherwise = helper a1 a2 (2 * a0 + a1 - a2) (k-1)
        in helper 1 (-3) 2 n 

--Задача 10
task10' :: Integer -> Integer
task10' n = helper n (-3) (-2) 1 where
    helper n a b c
        | n < 0 = error "Wrong argument!"
        | n == 0 = a
        | n == 1 = b
        | n == 2 = c
        |otherwise = helper (n - 1) b c (a - 2*b + c)

--Задача 11
task11 :: [Integer] -> [Integer]
task11 [] = error "List is empty!"
task11 x = filter isprime x 

isprime :: Integer -> Bool
isprime p
    | p <= 0 = error "Non-positive digit!"
    | p == 1 = False
    | otherwise = isprime' 2 p where
        isprime' d p
            | d * d > p = True
            | p `mod` d == 0 = False
            | otherwise = isprime' (d+1) p


--Задача 12
task12 :: (Double -> Double) -> Double -> Double -> Double -> Double
task12 f a b eps
  | f a * f b > 0 = error " different signs are needed"
  | otherwise = bisect f a b eps

bisect :: (Double -> Double) -> Double -> Double -> Double -> Double
bisect f a b eps
  | abs (b - a) < eps = (a + b) / 2
  | f m * f a <= 0 = bisect f a m eps
  | otherwise = bisect f m b eps
  where
    m = (a + b) / 2

--Дополнительное задание
index :: [a] -> Int -> a 
index [] _ = error "List is empty"
index lst a = helper 0 lst a where
    helper num (x : xs) a 
        |(a >= length (x:xs) && (num ==0))||(a <0) = error "err"
        |num == a = x 
        |num < a = helper (num +1) (xs) a

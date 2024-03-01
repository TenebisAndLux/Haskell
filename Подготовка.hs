sum_10 :: (Num a) => [a] -> a
sum_10
    a = sum (take 10 a)

nullify :: (Num x) => [x] -> [x]
nullify [] = []
nullify [x] = [0]
nullify (x:y:xs) = 0 : x : nullify xs
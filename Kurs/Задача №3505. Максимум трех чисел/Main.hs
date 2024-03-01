module Main where
main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    if a >= b && a >= c
        then print a
    else if b >= a && b >= c
        then print b
    else
        print c
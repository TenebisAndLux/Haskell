module Main where
moreAdjacent :: [Int] -> Int 
moreAdjacent [] = 0 
moreAdjacent [_] = 0
moreAdjacent  [_, _] = 0
moreAdjacent  (x:y:z:xs)
  | y > x && y > z = 1 + moreAdjacent  (y:z:xs)
  | otherwise = moreAdjacent  (y:z:xs)

main :: IO ()
main = do
  input <- getLine
  let numbers = map (read :: String -> Int) (words input)
  print $ moreAdjacent  numbers

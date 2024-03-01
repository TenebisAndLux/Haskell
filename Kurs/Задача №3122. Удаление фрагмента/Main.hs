module Main where
fragmentDel :: String -> String
fragmentDel str = let
    indices = [i | i <- [0..length str - 1], str !! i == 'h']
    in if length indices >= 2
       then let firstH = head indices
                lastH = last indices
            in take firstH str ++ drop (lastH + 1) str
       else str

main :: IO ()
main = do
    input <- getLine
    putStrLn $ fragmentDel input

module Main where

import Carnivores
import Herbivores
import Animals

makeSoundAndEat :: (Animal a) => a -> String
makeSoundAndEat animal = (sound animal) ++ ". " ++ (eat animal)

main :: IO ()
main = do
  let tiger = Tiger
      wolf = Wolf
      giraffe = Giraffe
  putStrLn "Tiger:"
  putStrLn $ makeSoundAndEat tiger
  putStrLn "Wolf:"
  putStrLn $ makeSoundAndEat wolf
  putStrLn "Giraffe:"
  putStrLn $ makeSoundAndEat giraffe
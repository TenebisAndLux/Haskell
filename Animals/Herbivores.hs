module Herbivores (Elephant(..), Giraffe(..), Deer(..)) where 

import Animals 

-- Тип данных для слона 
data Elephant = Elephant deriving (Show) 

-- Реализация для Elephant 
instance Animal Elephant where 
  eat Elephant = "Eating grass" 
  sound Elephant = "Trumphet" 

-- Тип данных для жирафа 
data Giraffe = Giraffe deriving (Show) 

-- Реализация для Giraffe 
instance Animal Giraffe where 
  eat Giraffe = "Eating leaves" 
  sound Giraffe = "Whistle" 

-- Тип данных для оленя 
data Deer = Deer deriving (Show) 

-- Реализация для Deer 
instance Animal Deer where 
  eat Deer = "Eating grass" 
  sound Deer = "Bellow"

makeSoundAndEat :: (Animal a) => a -> String
makeSoundAndEat animal = (sound animal) ++ ". " ++ (eat animal)
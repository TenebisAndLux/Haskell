module Carnivores (Tiger(..), Wolf(..), Hyena(..)) where 

import Animals

-- Тип данных для тигра 
data Tiger = Tiger deriving (Show) 

-- Реализация для Tiger 
instance Animal Tiger where 
  eat Tiger = "Eating meat" 
  sound Tiger = "Roar" 

-- Тип данных для волка 
data Wolf = Wolf deriving (Show) 

-- Реализация для Wolf 
instance Animal Wolf where 
  eat Wolf = "Eating meat" 
  sound Wolf = "Silence is also music when you are deaf" 

-- Тип данных для гиены 
data Hyena = Hyena deriving (Show) 

-- Реализация для Hyena 
instance Animal Hyena where 
  eat Hyena = "Eating meat" 
  sound Hyena = "Laugh"

makeSoundAndEat :: (Animal a) => a -> String
makeSoundAndEat animal = (sound animal) ++ ". " ++ (eat animal)
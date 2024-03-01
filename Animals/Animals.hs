{-# OPTIONS_GHC -Wno-missing-methods #-}
module Animals (Animal(..), Sound(..), Food(..)) where

-- Тип класса для всех животных
class Animal a where
  eat :: a -> String
  sound :: a -> String

-- Тип данных для звука
data Sound = Roar | Meow | Bark | Hiss deriving (Show)

-- Тип класса для животных, издающих звук
class Soundable a where
  makeSound :: a -> Sound

-- Тип данных для еды
data Food = Grass | Meat | Fish deriving (Show)

-- Тип класса для животных, которые едят
class Eatable a where
  consumeFood :: a -> Food -> String

-- Реализация для Animal
instance Animal Sound where
  sound Roar = "Roar"
  sound Meow = "Meow"
  sound Bark = "Bark"
  sound Hiss = "Hiss"

instance Animal Food where
  eat Grass = "Eating grass"
  eat Meat = "Eating meat"
  eat Fish = "Eating fish"
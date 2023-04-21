{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use guards" #-}
module MyFirstModule where
    
myFirstExpression :: [Char]
myFirstExpression = "Hello World!"

myFirstFunction :: String -> String
myFirstFunction input = "Hello " ++ input ++ "!"

main :: IO ()
main = do
  putStrLn "Running Main!"
  name <- getLine
  let message = myFirstFunction name
  putStrLn message

myIfStatement :: Int -> Int
myIfStatement a = 
  if a <= 2
    then a + 2
  else if a <= 6
    then a
  else 
    a - 2

myGuardStatement :: Int -> Int
myGuardStatement a
  | a <= 2 = a + 2
  | a <= 6 = a
  | otherwise = a - 2

myPatternFunction :: [Int] -> Int
myPatternFunction [] = 0
myPatternFunction [a] = a + 3
myPatternFunction [a,b] = a + b + 1
myPatternFunction (1 : 2 : _) = 3
myPatternFunction (3 : 4 : _) = 7
myPatternFunction xs = length xs

myCaseFunction :: [Int] -> Int
myCaseFunction xs = case xs of
    [a] -> a + 3
    [a,b] -> a + b + 1
    (1:2:_) -> 3
    (3:4:_) -> 7
    _ -> 1

mathFunctionWhere :: Int -> Int -> Int -> Int
mathFunctionWhere a b c = diff1 + diff2 + prod + a
  where
    diff1 = c - a
    diff2 = b - a
    prod = a * b * c

mathFunctionLet :: Int -> Int -> Int -> Int
mathFunctionLet a b c = 
  let 
    diff1 = c - a
    diff2 = b - a
    prod = a * b * c
  in 
    diff1 + diff2 + prod + a
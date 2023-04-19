{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant if" #-}
{-# HLINT ignore "Use guards" #-}

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n*factorial (n-1)

addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors (x1,y1) (x2,y2) = (x1+x2, y1+y2)

stringLength :: (Num b) => [a] -> b
stringLength [] = 0
stringLength (h:t) = 1 + stringLength t


multiplyElements :: (Num a) => [a] -> a
multiplyElements [] = 1
multiplyElements (h:t) = h*multiplyElements t

charPrint :: Char -> Char
charPrint c = c

-- Solving:

-- 1-sumPrimes

-- 2-invertString

stringPrintInverted :: [Char] -> [Char]
stringPrintInverted [] = []
stringPrintInverted (h:t) = stringPrintInverted t ++ [h]


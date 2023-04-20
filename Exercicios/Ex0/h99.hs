-- Problem 1
-- * Find the last element of a list
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
prob1 :: [a] -> a
prob1 [] = error "ERROR! Empty list!"
prob1 [t] = t
prob1 (_:t) = prob1 t

-- Problem 2
-- * Find the last but one element of a list
prob2 :: [a] -> a
prob2 [] = error "ERROR! Empty list!"
prob2 (h:[_]) = h
prob2 (_:t) = prob2 t

-- Problem 3
-- * Find the k'th element of a list (1-based index)
prob3 :: [a] -> Int -> a
prob3 [] k =
    if k == 0
        then error "Empty list!"
    else
        error "Index out of range!"
prob3 (h:_) 1 = h
prob3 (h:t) k = prob3 t (k-1)

-- Problem 4
-- * Find the number of elements of a list
prob4 :: [a] -> Int
prob4 [] = 0
prob4 (h:t) = 1 + prob4 t

-- Problem 5
-- * Reverse a list
prob5 :: [a] -> [a]
prob5 [] = []
prob5 (h:t) = prob5 t ++ [h]

-- Problem 6
-- * Find out whether a list is a palindrome
prob6 :: Eq a => [a] -> Bool
prob6 [] = True
prob6 [_] = True
prob6 xs = prob5 xs == xs

-- Problem 7
-- ** Flatten a nested list structure
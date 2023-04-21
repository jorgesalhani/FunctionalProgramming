-- Problem 1
-- * Find the last element of a list
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
{-# LANGUAGE InstanceSigs #-}

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

-- INTERMISSION
-- ============

-- Interlude: data and type
-- Bridge card game
data Suit = Club | Diamond | Heart | Spade
    deriving (Read, Show, Enum, Eq, Ord)

data CardValue = Two | Three | Four | Five 
                | Six | Seven | Eight | Nine | Ten
                | Jack |  Queen | King | Ace
    deriving (Read, Show, Enum, Eq, Ord)

data Card = Card {value :: CardValue,
                   suit :: Suit}
    deriving (Read, Show, Eq)

instance Ord Card where 
    compare :: Card -> Card -> Ordering
    compare c1 c2 = compare (value c1, suit c1) (value c2, suit c2)

instance Enum Card where
    toEnum :: Int -> Card
    toEnum n = let (v,s) = n`divMod`4 in Card (toEnum v) (toEnum s)

    fromEnum :: Card -> Int
    fromEnum c = fromEnum (value c) * 4 + fromEnum (suit c)

type Deck = [Card]

deck :: Deck
deck = [Card val su | val <- [Two .. Ace], su <- [Club .. Spade]]

-- END OF INTERMISSION
-- ===================

-- Problem 7
-- ** Flatten a nested list structure
data NestedList a = Elem a | List [NestedList a]
prob7 :: NestedList a -> [a] 
prob7 (List []) = []
prob7 (Elem a) = [a] 
prob7 (List(x:xs)) = prob7 x ++ prob7 (List xs)

-- Problem 8
-- ** Eliminate consecutive duplicates of list
prob8 :: Eq a => [a] -> [a]
prob8 [] = []
prob8 [h] = [h]
prob8 (h:t) = 
    if h == head t
        then prob8 t
    else 
        [h] ++ prob8 t

aux8 :: [p] -> p
aux8 [] = error "Empty list!"
aux8 (h:t) = h
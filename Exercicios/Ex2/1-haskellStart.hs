doubleMe :: Num a => a -> a
doubleMe x = x + x

-- doubleUs x y = x*2 + y*2
doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x = 
    if x > 100 then x 
    else x*2


-- =======================


removeNonUpperCase :: [Char] -> [Char]
removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]


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
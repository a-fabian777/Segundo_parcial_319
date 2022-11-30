-- Ejericicio 3 haskell
-- lista subconjunto de otra

subConj :: Eq a => [a] -> [a] -> Bool
subConj [] [] = True
subConj _ [] = False
subConj [] _ = True

subConj (x:xs) (y:ys)
    | x == y = subConj xs ys
    | otherwise = subConj (x:xs) ys

-- Ejericicio 3 haskell
-- ver si una ista en subconjunto de otra


subconj :: Eq a => [a] -> [a] -> Bool
subconj [] [] = True
subconj [] _ = True
subconj _ [] = False

subconj (x:xs) (y:ys) 
    | x == y = subconj xs ys   
    | otherwise = subconj (x:xs) ys


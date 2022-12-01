--Ejercicio 1
--haskell
-- Fibonnaci base 3 Estructural
suma3 :: Integer -> Integer -> Integer -> Integer
suma3 a b c = a + b + c 

fiboEst :: Integer -> Integer -> Integer -> Integer -> IO() 
fiboEst n a b c = do
    if n >= 0
    then do
       let f = suma3 a b c
       putStr $ (show(f)++" ")
       fiboEst (n-1) b c f
    else putStr ""

-- Fibonnaci base 3 recursivo
fiboRec :: Integer -> Integer
fiboRec 0 = 0
fiboRec 1 = 1
fiboRec 2 = 1
fiboRec n = fiboRec(n-1) + fiboRec(n-2) + fiboRec(n-3)

generarFiboRec :: Integer -> IO() 
generarFiboRec n = do
    if n >= 0
    then do
       generarFiboRec (n-1)
       putStr $ (show(fiboRec n)++" ")
    else putStr ""

main :: IO()
main = do
    putStrLn ("Ingrese numero de terminos: ")
    n <- getLine
    putStrLn ("Fibonnaci base 3 forma estructural")
    fiboEst (read n) (-1) 1 0
    putStrLn ("\nFibonnaci base 3 forma recursivo")
    generarFiboRec (read n)

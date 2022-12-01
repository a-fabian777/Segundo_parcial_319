--ejercicio 2
-- resolver el ejericio 1 con funciones temporales
-- fibonnaci base 3 forma recursiva
fiboRec =
    let x 0 = 0
        x 1 = 1
        x 2 = 1
        x n = fiboRec (n-3) + fiboRec (n-2) + fiboRec (n-1)
        fx = map x [0 .. ]
    in \f -> (fx !! f)

-- fibonacci base 3 forma estructurada
fiboEst n = take n . map head $ iterate (\(a:b:c:d) -> b:c:(a+b+c):d) [0,1,1]

main = do 
    putStrLn "Ingrese un numero: "
    n <- getLine
    let num = (read n :: Int)
    putStrLn "fibonacci base 3 forma estructurada: "
    print (fiboEst num)
    putStrLn "fibonacci base 3 forma recursiva "
    print (map fiboRec[0..num-1])
    

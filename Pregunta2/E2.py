# Fibonnaci base 3 con funciones temporales

suma3 = lambda a, b, c: a + b + c
fibo = lambda n: fiboRec(n, -1, 1, 0)

def fiboRec(n, a, b, c):
    if n >= 0:
        f = suma3(a, b, c)
        print(f, end=" ")
        fiboRec(n-1, b, c, f)

n = int(input("Ingrese numero de terminos: "))
print("fibonacci base 3 con funciones temporales")
fibo(n)


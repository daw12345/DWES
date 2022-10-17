from factorial import func_factorial
from factorial2 import func_factorial2


print("Cálculo del factorial de un número")
print("a) Calcular con recursividad")
print("b) Calcular sin recursividad")
opcion = input("Introduce una opción: ")

if opcion.lower() == "a":
    num = int(input("Introduzca un número positivo: "))
    if num < 0:
        print("Ese número es negativo, no es válido.")
    else:
        print("El factorial de ",num," es ",func_factorial(num))
elif opcion.lower() == "b":
    num = int(input("Introduzca un número positivo: "))
    if num < 0:
        print("Ese número es negativo, no es válido.")
    else:
        print("El factorial de ",num," es ",func_factorial2(num))
else:
    print("Opción no válida")
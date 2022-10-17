from factorial import func_factorial
from factorial2 import func_factorial2
import time

print("")
print("Cálculo del factorial de un número")
print("a) Calcular con recursividad")
print("b) Calcular sin recursividad")
opcion = input("Introduce una opción: ")

if opcion.lower() == "a":
    num = int(input("Introduzca un número positivo: "))
    if num < 0:
        print("Ese número es negativo, no es válido.")
    else:
	#cálculo del tiempo que tarda
        start_time = time.time()
        print("El factorial de ",num," es ",func_factorial(num))
        end_time = time.time()
        elapsed_time = end_time - start_time
        print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
elif opcion.lower() == "b":
    num = int(input("Introduzca un número positivo: "))
    if num < 0:
        print("Ese número es negativo, no es válido.")
    else:
        start_time = time.time()
        print("El factorial de ",num," es ",func_factorial2(num))
        end_time = time.time()
        elapsed_time = end_time - start_time
        print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
else:
    print("Opción no válida")
from factorial import func_factorial

num = int(input("Introduce un número: "))
if num < 0:
    print("El número es negativo, introduce uno válido.")
else:
    print("El factorial de ",num," es ",func_factorial(num))
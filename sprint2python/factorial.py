def func_factorial(n):
    if n == 0 or n ==1:
        fact=1
    elif n > 1:
        fact=n*func_factorial(n-1)
    return fact
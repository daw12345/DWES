def func_factorial2(n):
    if n == 0 or n ==1:
        fact=1
    elif n > 1:
        fact=1
        for i in range(1, n+1):
            fact=i*fact
    return fact
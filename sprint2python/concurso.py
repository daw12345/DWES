#importamos el random
import random

#definimos la funcion para escoger la pregunta
def fquestion (num):

# Ponemos la puntuación a 0
    score=0

#establecemos las condiciones que determinan qué pregunta sale
    if num==1:

#mostramos por pantalla la pregunta junto con las opciones posibles
        print ("Cuántos cilindros tiene un motor v8?")
        print ("a)7")
        print ("b)9")
        print ("c)Ninguna de las anteriores")

        print(" ")

# Solicitamos la respsuesta por teclado
        respuesta = input('Introduzca su respuesta: ')



#Establecemos la condición para que en función de la respuesta, se calcule la puntuación
        if respuesta == "Ninguna de las anteriores" or respuesta=="ninguna de las anteriores" or respuesta=="c":
            score = score + 10
        else:
            score = score - 5

        print(" ")

    if num==2:
#mostramos por pantalla la pregunta siguiente
        print ("Cuál es la capital de Zambia?")
        print ("a)Lusaka")
        print ("b)Lagos")
        print ("c)Windhoek")

# Solicitamos la respsuesta por teclado
        respuesta = input('Introduzca su respuesta: ')

#de nuevo calculamos la puntuación 
        if respuesta == "Lusaka" or  respuesta == "a":
            score = score + 10
        else:
            score = score - 5

    if num==3:
#mostramos por pantalla la pregunta siguiente
        print ("Cuál es la edad de Johnny Depp")
        print ("a)45")
        print ("b)49")
        print ("c)59")

        print(" ")

# Solicitamos la respsuesta por teclado
        respuesta = input('Introduzca su respuesta: ')

#de nuevo calculamos la puntuación 
        if respuesta == "59" or respuesta =="c":
            score = score + 10
        else:
            score = score - 5


        print(" ")
        
    return score

num1=random.randint(1,3)
score1=fquestion(num1)
num2=random.randint(1,3)
while num1==num2:
    num2=random.randint(1,3)
score2=fquestion(num2)

print("La puntuación obtenida es: ",(str(score1 + score2)))


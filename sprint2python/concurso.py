#mostramos por pantalla la pregunta junto con las opciones posibles
print ("Cuántos cilindros tiene un motor v8?")
print ("a)7")
print ("b)9")
print ("c)Ninguna de las anteriores")

# Solicitamos la respsuesta por teclado
respuesta = input('Introduzca su respuesta: ')

#Establecemos la condición para que en función de la respuesta, se muestre un resultado u otro
if respuesta == "Ninguna de las anteriores" or "ninguna de las anteriores" or "c":
    print ("Respuesta correcta")
else:
    print("Respuesta incorrecta")
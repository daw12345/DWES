import random

victoriasUsuario = 0
victoriasPc = 0
rondas = 0

while rondas < 5:

    aleatorio = random.randrange(0, 3)
    elijePc = ""
    print("1)Piedra")
    print("2)Papel")
    print("3)Tijera")
    opcion = int(input("Que elijes: "))

    if opcion == 1:
        elijeUsuario = "piedra"
    elif opcion == 2:
        elijeUsuario = "papel"
    elif opcion == 3:
        elijeUsuario = "tijera"
    print("Tu elijes: ", elijeUsuario)

    if aleatorio == 0:
        elijePc = "piedra"
    elif aleatorio == 1:
        elijePc = "papel"
    elif aleatorio == 2:
        elijePc = "tijera"
    print("PC elijio: ", elijePc)
    print("...")
    if elijePc == "piedra" and elijeUsuario == "papel":
        print("Ganaste, papel envuelve piedra")
        victoriasUsuario = victoriasUsuario + 1
        rondas = rondas + 1
    elif elijePc == "papel" and elijeUsuario == "tijera":
        print("Ganaste, Tijera corta papel")
        victoriasUsuario = victoriasUsuario + 1
        rondas = rondas + 1
    elif elijePc == "tijera" and elijeUsuario == "piedra":
        print("Ganaste, Piedra pisa tijera")
        victoriasUsuario = victoriasUsuario + 1
        rondas = rondas + 1
    if elijePc == "papel" and elijeUsuario == "piedra":
        print("perdiste, papel envuelve piedra")
        victoriasPc = victoriasPc + 1
        rondas = rondas + 1
    elif elijePc == "tijera" and elijeUsuario == "papel":
        print("perdiste, Tijera corta papel")
        victoriasPc = victoriasPc + 1
        rondas = rondas + 1
    elif elijePc == "piedra" and elijeUsuario == "tijera":
        print("perdiste, Piedra pisa tijera")
        victoriasPc = victoriasPc + 1
        rondas = rondas + 1
    elif elijePc == elijeUsuario:
        print("empate")

if victoriasPc > victoriasUsuario:
    print("Gana el pc ")
else:
    print("Ganaste")
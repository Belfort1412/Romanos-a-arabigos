# Proceso Convertir un numero Romano a arabigo
# Declaramos variables
Valores = {"I":1, "V":5, "X":10, "L":50,"C":100,"D":500,"M":1000}
Arabigos = 0 
#Pedimos Variables al usaurio
Romano = str(input("Introduzca un numero Romano:"))
# La ejecucion del programa
for i in range(len(Romano)):
    if i > 0 and Valores [Romano[i]] > Valores [Romano[i -1]]:
        Arabigos += Valores [Romano[i]] - 2 * Valores [Romano[i -1]]
    else:
        Arabigos += Valores [Romano[i]]
print ("El numero Romano", (Romano), "es igual a", (Arabigos))

# 9) Crear tupla Historial5
# Montos de atención de Toto. 
def Buscar_Maximo(Montos):
    Maximo = Montos[0]
    for x in Montos:
        if x > Maximo:
            Maximo = x
    return Maximo

Historial5=(8250,9510,7530,3570,1590)
print(Historial5)
print("El valor máximo de atención gastada en Toto es: $", Buscar_Maximo(Historial5))        


# Funcion max()
#Historial5=(8250,9510,7530,3570,1590)
#print(Historial5)
#print("El valor máximo de atención gastada en Toto es: $", max(Historial5))        
  
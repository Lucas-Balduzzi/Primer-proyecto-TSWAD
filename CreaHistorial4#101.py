# 8) Crear tupla Historial4
# Montos de atención de Olivia. 
def Buscar_Minimo(Montos):
    Minimo = Montos[0]
    for x in Montos:
        if x < Minimo:
            Minimo = x
    return Minimo

Historial4=(7510,7960,76180,800,4100)
print(Historial4)
print("El valor mínimo de atención gastada en Olivia es: $", Buscar_Minimo(Historial4))        


# Funcion min()
#Historial4=(7510,7960,76180,800,4100)
#print(Historial4)
#print("El valor mínimo de atención gastada en Olivia es: $", min(Historial4))   
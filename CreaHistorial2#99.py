# 6) Crear tupla Historial2
def Contar(Montos):
    Cant_Superior = 0
    for x in Montos:
        if x > 5000:
            Cant_Superior +=1
    return Cant_Superior

Historial2=(23500,5960,2300,10200,8900)
print(Historial2)
print("La cantidad de gastos superiores a $5000 en la atención de Frida es: ", Contar(Historial2))


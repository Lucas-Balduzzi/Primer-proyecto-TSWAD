# 5) Crear tupla Historial
Historial=(2350,5960,23000,1000,8900)
print(Historial)
MontoTotal = 0
for i in range(0,len(Historial)):
    MontoTotal += Historial[i]
#print(MontoTotal)
if MontoTotal < 30000:
    print("Total de servicios/consultas a Puppy es: $", MontoTotal)
else:
    print("Gastos por encima de lo presupuestado")

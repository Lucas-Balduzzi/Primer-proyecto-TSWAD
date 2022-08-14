# 7) Crear tupla Historial3
# # Montos de atención de Lennon. 
Historial3=(9530,4120,4580,1500,890,7516,426)
print(Historial3)
MontoTotal = 0
for i in range(0,len(Historial3)):
    MontoTotal += Historial3[i]
print(MontoTotal)
Promedio = MontoTotal/len(Historial3)
print("El promedio de montos por servicio/atención a Lennon es: $", round(Promedio,2))
if Promedio > 4500:
    print("Se ha excedido del gasto promedio de su mascota")

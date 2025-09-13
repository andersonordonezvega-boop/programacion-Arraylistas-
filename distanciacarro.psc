Funcion distancia <- PedirDistancia
	Definir distancia Como Real
	Escribir "Ingrese la distancia total del viaje (km): "
	Leer distancia
FinFuncion

Funcion velocidad <- PedirVelocidad
	Definir velocidad Como Real
	Dimension lista[2]
	Para  i <- 1 hasta 1 Con Paso 1 hacer
	Escribir "Ingrese la velocidad promedio del coche (km/h): "
	Leer velocidad
	lista[i] <- velicidad
FinPara

FinFuncion

Funcion tiempo <- CalcularTiempo(distancia, velocidad)
	tiempo <- distancia / velocidad
FinFuncion

Algoritmo viaje_en_coche

	Definir distancia, velocidad, tiempo Como Real
	Definir lista, i Como Real
	Repetir
		Escribir "1. Ingresar datos del viaje"
		Escribir "2. Calcular tiempo del viaje"
		Escribir "3. Salir"
         Escribir "Seleccione una opción: "
		Leer opcion
		
		Segun opcion Hacer
			1:
				distancia <- PedirDistancia
				velocidad <- PedirVelocidad
			2:
				Si velocidad > 0 Entonces
					tiempo <- CalcularTiempo(distancia, velocidad)
					Escribir "Tiempo estimado de viaje: ", tiempo, " horas"
				Sino
					Escribir "?? Debe ingresar primero la distancia y velocidad válidas."
				FinSi
			3:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida, intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 3
FinAlgoritmo

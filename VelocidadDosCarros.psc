Funcion distancia <- PedirDistancia(car)
    Definir distancia Como Real
    Escribir "Ingrese la distancia recorrida por el Carro ", car, " (km): "
    Leer distancia
FinFuncion

Funcion tiempo <- PedirTiempo(car)
    Definir tiempo Como Real
	Dimension  lista[1] 
	Para i <- 1 hasta 1 Con Paso  1 hacer
		Escribir "Ingrese el tiempo recorrido por el Carro ", car, " (horas): "
		Leer tiempo
		lista[i] <- tiempo
	FinPara
	
FinFuncion

Funcion velocidad <- CalcularVelocidad(distancia, tiempo)
    Definir velocidad Como Real
    velocidad <- distancia / tiempo
FinFuncion

SubProceso MostrarResultado(car, velocidad)
	
    Escribir "La velocidad promedio del Carro ", car, " es: ", velocidad, " km/h"
	
FinSubProceso

Algoritmo VelocidadDosCarros
    Definir d1, t1, v1 Como Real
    Definir d2, t2, v2 Como Real
    Definir lista, i Como Real
	
	
	Repetir
        Escribir "     MENU     "
        Escribir "1. Calcular distancia de los carros"
        Escribir "2. Ver registros guardados"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
               
                d1 <- PedirDistancia(1)
                t1 <- PedirTiempo(1)
                v1 <- CalcularVelocidad(d1, t1)
                MostrarResultado(1, v1)
				
               
                d2 <- PedirDistancia(2)
                t2 <- PedirTiempo(2)
                v2 <- CalcularVelocidad(d2, t2)
                MostrarResultado(2, v2)
				
                total <- 2
                Esperar Tecla
				
            2:
                Si total = 0 Entonces
                    Escribir "Aún no hay datos de registros."
                Sino
                    MostrarResultado(1, v1)
                    MostrarResultado(2, v2)
                    Escribir "El total de registros es: ", total
                FinSi
                Esperar Tecla
				
            3:
                Escribir "Saliendo del programa, gracias por confiar en nosotros."
				
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
	
 
    


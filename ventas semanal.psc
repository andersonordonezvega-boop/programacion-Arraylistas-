Funcion suma <- PedirVentas
    Definir i Como Entero
    Definir venta, suma Como Real
    
    suma <- 0
	Dimension lista[7]
	
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese la venta del día ", i, ": "
        Leer venta
		lista[i] <- venta
        suma <- suma + venta
    FinPara
FinFuncion

Funcion total <- CalcularTotal(suma)
    Definir total Como Real
    total <- suma
FinFuncion

SubProceso MostrarResultado(total)
    Escribir "El total de ventas en la semana es: $", total
	
FinSubProceso

Algoritmo VentasSemanales
    Definir suma, total Como Real
	definir lista, i como real
    
	Repetir
		Limpiar Pantalla
		Escribir "     Menu     "
		Escribir "1. ingresar ventas de la semana  "
		Escribir "2. ver ventas de la semana"
		Escribir "3. salir"
		Leer opcion 
		
		segun opcion hacer 
			1 :
				suma <- PedirVentas
				total <- CalcularTotal(suma)
				MostrarResultado(total)
				Escribir " todas las ventas quedarion registradas "
				Esperar Tecla
			2:
				Si total = 0 Entonces
					Escribir "Aún no hay datos de ventas."
				Sino
					MostrarResultado(total)
					Escribir "El total de ventas en la semana es: $", total
				FinSi
				Esperar Tecla
			3: escribir " saliendo del programa, gracias por confiar en nosostros "
				
			De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
	
	
	
	
	
	
    
FinAlgoritmo
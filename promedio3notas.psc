Funcion promedio <- PedirNotas
	Definir  i , lista Como real
	Definir nota, suma Como Real
	Dimension lista[3]
	suma <- 0
	Para  i <-  1 Hasta 3 Con Paso 1 
		Escribir " ingrese la nota por favor "
		Leer nota
		suma <- suma + nota 
		lista[i] <- nota
	FinPara
	promedio <- suma / 3
FinFuncion

Funcion resultado <- CalcularPromedio(promedio)
    Definir resultado Como Real
    resultado <- promedio 
FinFuncion

SubProceso MostrarResultado(resultado)
    
    Escribir "El promedio de las 3 notas es: ", resultado
	
FinSubProceso

Algoritmo PromedioNotas
	Definir  resultado, promedio Como Real
    
	
	Repetir
		
		Escribir "       MENÚ"
		Escribir "1. Ingresar notas y calcular promedio"
		Escribir "2. Mostrar último promedio"
		Escribir "3. Salir"
		Escribir "Elija una opción: "
		Leer opcion
		
		Segun opcion Hacer
			1:
				promedio <- PedirNotas
				resultado <- CalcularPromedio(promedio)
				MostrarResultado(resultado)
			2:
				MostrarResultado(resultado)
			3:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción no válida, intente de nuevo."
		FinSegun
	Hasta Que opcion = 3
    
    promedio <- PedirNotas
    
	
    resultado <- CalcularPromedio(promedio)
    
	
    MostrarResultado(resultado)
FinAlgoritmo
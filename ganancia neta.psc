Funcion ingresos <- PedirIngresos
    Definir ingresos Como Real
    Escribir "Ingrese los ingresos: "
    Leer ingresos
FinFuncion

Funcion gastos <- PedirGastos
    Definir gastos Como Real
	Dimension lista[1] 
	para i <- 1 hasta 1 con paso 1 hacer
    Escribir "Ingrese los gastos: "
    Leer gastos
	lista[1] <- gastos
FinPara

FinFuncion

Funcion ganancia <- CalcularGanancia(ingresos, gastos)
    Definir ganancia Como Real
    ganancia <- ingresos - gastos
FinFuncion

SubProceso MostrarResultado(ganancia)
    
    Escribir "La ganancia neta es: $", ganancia
	
FinSubProceso

Algoritmo GananciaNeta
    Definir ingresos, gastos, ganancia Como Real
    
    Definir  lista , i Como Real
	
	
	
	Repetir
        Escribir "1. Ingresar ingresos"
        Escribir "2. Ingresar gastos"
        Escribir "3. Calcular ganancia neta"
        Escribir "4. Salir"
        Escribir "Elija una opción: "
        Leer opcion
        
		Segun opcion Hacer
			1:
				ingresos <- PedirIngresos
			2:
				gastos <- PedirGastos
			3:
				ganancia <- CalcularGanancia(ingresos, gastos)
				MostrarResultado(ganancia)
			4:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción no válida, intente de nuevo."
		FinSegun
    Hasta Que opcion = 4
FinAlgoritmo
    


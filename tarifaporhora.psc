Funcion horas <- PedirTiempo
    Definir horas Como Real
    Escribir "Ingrese el tiempo trabajado en horas: "
    Leer horas
FinFuncion

Funcion tarifa <- PedirTarifa
    Definir tarifa Como Real
	Dimension lista[2]
	para i <- 1 hasta 1 Con Paso 1 hacer
	Escribir "Ingrese la tarifa por hora: "
    Leer tarifa
	lista[i] <- tarifa
FinPara

FinFuncion

Funcion total <- CalcularCosto(horas, tarifa)
    Definir total Como Real
    total <- horas * tarifa
FinFuncion

SubProceso MostrarResultado(total)
	
    Escribir "El costo total es: $", total
	
FinSubProceso

Algoritmo CostoTrabajo
    Definir horas, tarifa, total Como Real
    Definir lista , i, opcion Como Real
    
    Repetir
        Escribir "1. Ingresar horas trabajadas"
        Escribir "2. Ingresar tarifa por hora"
        Escribir "3. Calcular costo total"
        Escribir "4. Salir"
		Escribir "Elija una opción: "
        Leer opcion
        
        Segun opcion Hacer
            1:
                horas <- PedirTiempo
            2:
                tarifa <- PedirTarifa
            3:
                total <- CalcularCosto(horas, tarifa)
                MostrarResultado(total)
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo

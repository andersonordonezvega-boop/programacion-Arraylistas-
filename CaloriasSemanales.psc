Funcion totalDia <- PedirCaloriasDia(dia)
    Definir comida, i, totalDia Como Real
    totalDia <- 0
    
    Escribir "---- Día ", dia, " ----"
	
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese calorías de la comida ", i, ": "
        Leer comida
        totalDia <- totalDia + comida
    FinPara
	
FinFuncion

Funcion totalSemana <- SumarSemana(lista)
    Definir dia Como Entero
    Definir totalDia, totalSemana Como Real
    totalSemana <- 0
    
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        totalDia <- PedirCaloriasDia(dia)
        lista[dia] <- totalDia
        Escribir "Calorías totales del día ", dia, ": ", totalDia
        totalSemana <- totalSemana + totalDia
    FinPara
	
FinFuncion

SubProceso MostrarResultado(totalSemana, lista)
	
    Escribir "Calorías totales en la semana: ", totalSemana
	
    
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Día ", i, ": ", lista[i], " calorías"
    FinPara
FinSubProceso


Algoritmo CaloriasSemanales
    Definir lista Como Real
    Dimension lista[7]    
    Definir opcion, totalSemana Como Real
	
    Repetir
        Escribir "     MENÚ     "
        Escribir "1. Ingresar calorías de la semana"
        Escribir "2. Mostrar total semanal"
        Escribir "3. Salir"
	    Escribir "Digite una opción: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                totalSemana <- SumarSemana(lista)
            2:
                MostrarResultado(totalSemana, lista)
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
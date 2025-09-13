Funcion totalDia <- PedirCaloriasDia(dia)
    Definir comida, i, totalDia Como Real
    totalDia <- 0
    
    Escribir "---- D�a ", dia, " ----"
	
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese calor�as de la comida ", i, ": "
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
        Escribir "Calor�as totales del d�a ", dia, ": ", totalDia
        totalSemana <- totalSemana + totalDia
    FinPara
	
FinFuncion

SubProceso MostrarResultado(totalSemana, lista)
	
    Escribir "Calor�as totales en la semana: ", totalSemana
	
    
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "D�a ", i, ": ", lista[i], " calor�as"
    FinPara
FinSubProceso


Algoritmo CaloriasSemanales
    Definir lista Como Real
    Dimension lista[7]    
    Definir opcion, totalSemana Como Real
	
    Repetir
        Escribir "     MEN�     "
        Escribir "1. Ingresar calor�as de la semana"
        Escribir "2. Mostrar total semanal"
        Escribir "3. Salir"
	    Escribir "Digite una opci�n: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                totalSemana <- SumarSemana(lista)
            2:
                MostrarResultado(totalSemana, lista)
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opci�n inv�lida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
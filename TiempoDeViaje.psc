Funcion n <- PedirCantidadTramos
    Definir n Como Entero
    Escribir "Ingrese la cantidad de tramos del viaje: "
    Leer n
FinFuncion

Funcion total <- CalcularTiempoTotal(n)
    
    Definir tiempo, total Como Real
	Dimension  lista[2]
	
    total <- 0
	
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese el tiempo del tramo ", i, " (en horas): "
        Leer tiempo
		lista[i] <- tiempo
        total <- total + tiempo
    FinPara
FinFuncion

SubProceso MostrarResultado(total)

    Escribir "El tiempo total del viaje es: ", total, " horas"
   
FinSubProceso

Algoritmo TiempoDeViaje
    Definir n Como Entero
	
    Definir total Como Real
	Definir  lista, i Como Real
	
    Repetir
        Escribir "1. Ingresar cantidad de tramos"
        Escribir "2. Calcular tiempo total del viaje"
        Escribir "3. Mostrar resultado"
        Escribir "4. Salir"
  
        Leer opcion
		
        Segun opcion Hacer
            1:
                n <- PedirCantidadTramos
            2:
                Si n > 0 Entonces
                    total <- CalcularTiempoTotal(n)
                Sino
                    Escribir "?? Primero debe ingresar la cantidad de tramos (opción 1)."
                FinSi
            3:
                Si total > 0 Entonces
                    MostrarResultado(total)
                Sino
                    Escribir " Debe calcular el tiempo total primero (opción 2)."
                FinSi
            4:
                Escribir " Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente nuevamente."
        FinSegun
    Hasta Que opcion = 4
	

    
FinAlgoritmo


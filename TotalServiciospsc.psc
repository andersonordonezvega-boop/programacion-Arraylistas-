Funcion n <- PedirCantidadServicios
    Definir n Como Entero
    Escribir "Ingrese la cantidad de servicios a pagar: "
    Leer n;
FinFuncion

Funcion total <- CalcularTotal(n)
    
    Definir consumo, total Como Real
	Dimension lista[4]
	
    total <- 0
	
    Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Escribir "Ingrese el consumo (costo) del servicio ", i , ": "
        Leer consumo
		lista[i] <- consumo
        total <- total + consumo
    FinPara
FinFuncion

SubProceso MostrarResultado(total)
   
    Escribir "El total a pagar por todos los servicios es: $", total
  
FinSubProceso

Algoritmo TotalServicios
    Definir n Como Entero
    Definir total Como Real
	Definir lista, i Como Real
	
    Repetir
        Escribir "     MENÚ DE SERVICIOS     "
        Escribir " 1. Ingresar cantidad de servicios"
        Escribir " 2. Calcular total a pagar"
        Escribir " 3. Mostrar resultado"
        Escribir " 4. Salir"
     
        Leer opcion
		
        Segun opcion Hacer
            1:
                n <- PedirCantidadServicios
            2:
                Si n > 0 Entonces
                    total <- CalcularTotal(n)
                Sino
                    Escribir "?? Primero debe ingresar la cantidad de servicios (opción 1)."
                FinSi
            3:
                Si total > 0 Entonces
                    MostrarResultado(total)
                Sino
                    Escribir " Debe calcular el total primero (opción 2)."
                FinSi
            4:
                Escribir " Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida, intente nuevamente."
        FinSegun
    Hasta Que opcion = 4
	

FinAlgoritmo



Funcion subtotal <- CalcularSubtotal(unidades, precio)
    Definir subtotal Como Real
    subtotal <- unidades * precio
FinFuncion


Funcion  totalUnidades(calculartotalunidades)
	Definir  total_Unidades Como entero 
	Dimension lista[3]
	para  i <- 1 hasta 1 Con Paso 1 hacer 
		Escribir "ingresar el total Unidades"
		Leer total_Unidades
		lista[i] <- total_Unidades
	FinPara
	
FinFuncion
SubProceso MostrarResultado( total)
	
    Escribir "TOTAL A PAGAR: $", total
	


FinSubProceso

Algoritmo VentasProductos
    Definir u1, u2, u3 Como Entero
    Definir p1, p2, p3 Como Real
    Definir s1, s2, s3, total Como Real
    Definir total_Unidades Como Entero
	Definir lista , i Como Real
	
   
    Repetir
        Escribir "     MENÚ DE VENTAS     "
        Escribir "1. Ingresar datos de productos"
        Escribir "2. Calcular total de unidades y venta"
        Escribir "3. Mostrar resultado"
        Escribir "4. Salir"
       
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Ingrese unidades vendidas del Producto 1: "
                Leer u1
                Escribir "Ingrese precio unitario del Producto 1: "
                Leer p1
				
                Escribir "Ingrese unidades vendidas del Producto 2: "
                Leer u2
                Escribir "Ingrese precio unitario del Producto 2: "
                Leer p2
				
                Escribir "Ingrese unidades vendidas del Producto 3: "
                Leer u3
                Escribir "Ingrese precio unitario del Producto 3: "
                Leer p3
				
            2:
                s1 <- CalcularSubtotal(u1, p1)
                s2 <- CalcularSubtotal(u2, p2)
                s3 <- CalcularSubtotal(u3, p3)
				
                total_Unidades <- u1 + u2 + u3
                total <- s1 + s2 + s3
				
                Escribir "Total de Unidades Vendidas: ", total_Unidades
				
            3:
                MostrarResultado(total)
				
            4:
                Escribir "Saliendo del programa, muchas gracias en confiar en nosostros"
				
            De Otro Modo:
                Escribir "Opción no válida, intenta nuevamente, por favor ingrese una opcion validad"
        FinSegun
    Hasta Que opcion = 4
	
FinAlgoritmo

	
	
		
		
	
			
			
			
			
			
			
			
			
			

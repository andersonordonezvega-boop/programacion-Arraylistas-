Funcion precio <- PedirPrecio
    Definir precio Como Real
    Escribir "Ingrese el precio unitario: "
    Leer precio
FinFuncion

Funcion cantidad <- PedirCantidad
    Definir cantidad Como Entero
	Definir i , lista Como Real
	Dimension lista[1]
	Para i <- 1 hasta 1 Con Paso 1
		Escribir "Ingrese la cantidad: "
		Leer cantidad
		lista[i] <- cantidad
	FinPara
	
FinFuncion


Funcion total <- CalcularTotal(precio, cantidad)
    Definir subtotal, iva, total Como Real
    
    subtotal <- precio * cantidad
    iva <- subtotal * 0.19
    total <- subtotal + iva
    
   
    Escribir "Subtotal: $", subtotal
    Escribir "IVA (19%): $", iva
    Escribir "TOTAL A PAGAR: $", total
    
    
FinFuncion

Algoritmo CalculoVenta
    Definir opcion Como Entero
    Definir precio Como Real
    Definir cantidad Como Entero
    
	Repetir
        Escribir "       MENÚ"
        Escribir "1. Ingresar cantidad del producto"
        Escribir "2. Ingresar precio unitario"
        Escribir "3. Calcular total con IVA"
        Escribir "4. Salir"
        Escribir "Elija una opción: "
        Leer opcion
        
        Segun opcion Hacer
            1:
                cantidad <- PedirCantidad
            2:
                precio <- PedirPrecio
            3:
                total <- CalcularTotal(precio, cantidad)
                Escribir "El total a pagar con IVA es: ", total
            4:
                Escribir "Saliendo del programa, muchas gracias por preferirnos "
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo

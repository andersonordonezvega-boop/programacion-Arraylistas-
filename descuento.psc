Funcion precio <- PedirPrecio
    Definir precio Como Real
    Escribir "Ingrese el precio de la compra: "
    Leer precio
FinFuncion

Funcion descuento <- PedirDescuento
    Definir descuento Como Real
	Dimension lista[1]
	Para  i<- 1 Hasta 1 Con Paso 1
	
    Escribir "Ingrese el porcentaje de descuento (%): "
    Leer descuento
	lista[i] <- descuento
FinPara

FinFuncion

Funcion final <- CalcularFinal(precio, descuento)
    Definir montoDescuento, final Como Real
	montoDescuento <- precio * (descuento / 100)
    final <- precio - montoDescuento
	
	
    Escribir "Precio original: $", precio
    Escribir "Descuento aplicado: $", montoDescuento
    Escribir "Precio final a pagar: $", final
  
FinFuncion

Algoritmo CompraConDescuento
    Definir precio, descuento, final Como Real
    
    Definir  lista , i Como Real 
	

	
	
	
    Repetir
		
		
     
        Escribir "1. Ingresar el precio de la compra"
        Escribir "2. Ingresar el descuento de la compra"
        Escribir "3. Calcular precio final"
        Escribir "4. Salir"
       
        Escribir "Elija una opción: "
        Leer opcion
        
		Segun opcion Hacer 
            1:
                precio <- PedirPrecio
            2:
                descuento <- PedirDescuento
                Si precio = 0 Entonces
                    Escribir "Aún no hay datos de venta."
                FinSi
            3:
                final <- CalcularFinal(precio, descuento)
                Escribir "El precio final con descuento es: ", final
            4:
                Escribir "Saliendo del programa, muchas gracias por preferirnos."
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo

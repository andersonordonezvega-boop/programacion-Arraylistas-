Funcion base <- PedirBase
    Definir base Como Real
    Escribir "Ingrese la base del rect�ngulo: "
    Leer base
FinFuncion

Funcion altura <- PedirAltura
    Definir altura Como Real
	Dimension  lista[1]
	para i <- 1 hasta  1 Con Paso 1 Hacer
	Escribir "Ingrese la altura del rect�ngulo: "
    Leer altura
	lista[i] <- altura
FinPara


FinFuncion

Funcion area <- CalcularArea(base, altura)
    Definir area Como Real
    area <- base * altura
    Escribir "El �rea del rect�ngulo es: ", area
   
FinFuncion

Algoritmo AreaRectangulo
    Definir base, altura, area Como Real
    
	Definir lista, i Como Real
	
	
	Repetir
        
        Escribir "1. Ingresar base y altura"
        Escribir "2. Calcular �rea"
        Escribir "3. Ver datos registrados"
        Escribir "4. Salir"
      
        Escribir "Elija una opci�n: "
        Leer opcion
        
        Segun opcion Hacer 
            1:
                base <- PedirBase
                altura <- PedirAltura
                Escribir "Datos ingresados correctamente."
            2:
                area <- CalcularArea(base, altura)
            3:
                Escribir "Base: ", base
                Escribir "Altura: ", altura
                Escribir "�rea (�ltimo c�lculo): ", area
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opci�n no v�lida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo
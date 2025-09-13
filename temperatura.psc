Funcion celsius <- PedirTemperatura
    Definir celsius Como Real
	
FinFuncion

Funcion fahrenheit <- ConvertirAFahrenheit(celsius)
    Definir fahrenheit Como Real
	Dimension lista[2]
	para i <- 1 hasta 1 Con Paso  1
		Escribir "Ingrese la temperatura en Celsius: "
		Leer celsius
	FinPara
    fahrenheit <- (celsius * 9/5) + 32
FinFuncion

SubProceso MostrarResultado(celsius, fahrenheit)
	
    Escribir celsius, " °C equivalen a ", fahrenheit, " °F"
	
FinSubProceso

Algoritmo Temperatura
    Definir celsius, fahrenheit Como Real
	Definir lista , i Como Real
	Dimension lista[1]
	Repetir
        Escribir "       MENÚ"
        Escribir "1. ingrese la temperatura en celsius a  fahrenheit"
		Escribir "2. ver el regristro de converciones "
        Escribir "3. salir"
		Escribir "Elija una opción: "
        Leer opcion
	
		Segun opcion Hacer
            1:
                celsius <- PedirTemperatura
                fahrenheit <- ConvertirAFahrenheit(celsius)
                MostrarResultado(celsius, fahrenheit)
                hay_registro <- Verdadero
            2:
                Si hay_registro = Falso Entonces
                    Escribir "No hay registros de temperatura registrados"
                SiNo
                    MostrarResultado(celsius, fahrenheit)
                FinSi
            3:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
	
	

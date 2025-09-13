Funcion peso <- PedirPeso(persona)
    Definir peso Como Real
    Escribir "Ingrese el peso (kg) de la Persona ", persona, ": "
    Leer peso
FinFuncion

Funcion altura <- PedirAltura(persona)
    Definir altura Como Real
	Dimension lista[2]
	para i <- 1 hasta 1 Con Paso 1 hacer
    Escribir "Ingrese la altura (m) de la Persona ", persona, ": "
    Leer altura
	lista[i] <- altura
FinPara

FinFuncion

Funcion imc <- CalcularIMC(peso, altura)
    Definir imc Como Real
    imc <- peso / (altura * altura)
FinFuncion

SubProceso MostrarIMC(persona, imc)
	
    Escribir "El IMC de la Persona ", persona, " es: ", imc
	
FinSubProceso

Algoritmo IMCDosPersonas
    Definir peso1, altura1, imc1 Como Real
    Definir peso2, altura2, imc2 Como Real
    Definir lista, i Como Real
	
	
	
	Repetir
		Escribir  "1. ingresar el peso de la primera persona "
		Escribir  "2. ingresar el peso de la segunda persona "
		Escribir  "3. calcular el IMC de las 2 personas segun su peso"
		Escribir  " 4. salir "
		Leer opcion 
		
		Segun opcion Hacer
            1: 
                peso1 <- PedirPeso(1)
                altura1 <- PedirAltura(1)
            2: 
                peso2 <- PedirPeso(2)
                altura2 <- PedirAltura(2)
            3:
                imc1 <- CalcularIMC(peso1, altura1)
                MostrarIMC(1, imc1)
                imc2 <- CalcularIMC(peso2, altura2)
                MostrarIMC(2, imc2)
            4:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        FinSegun
    Hasta Que opcion = 4

	
   
FinAlgoritmo
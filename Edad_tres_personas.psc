Funcion edad <- Calcular_edad(año_nac, mes_nac, dia_nac, año_act, mes_act, dia_act)
    Definir edad Como Entero;
    edad <- año_act - año_nac;
    Si (mes_act < mes_nac) O (mes_act = mes_nac Y dia_act < dia_nac) Entonces
        edad <- edad - 1;
    FinSi;
FinFuncion

SubProceso Fecha_actual(año_act Por Referencia, mes_act Por Referencia, dia_act Por Referencia)
    Escribir "Ingrese la fecha actual:";
    Escribir "Año: "; Leer año_act;
    Escribir "Mes: "; Leer mes_act;
    Escribir "Día: "; Leer dia_act;
FinSubProceso

Funcion edad_p <- Persona(año_act, mes_act, dia_act)
    Definir año_nac, mes_nac, dia_nac Como Entero;
    Escribir "Año de nacimiento: "; Leer año_nac;
    Escribir "Mes de nacimiento: "; Leer mes_nac;
    Escribir "Día de nacimiento: "; Leer dia_nac;
    edad_p <- Calcular_edad(año_nac, mes_nac, dia_nac, año_act, mes_act, dia_act);
FinFuncion

SubProceso Mostrar_resultado(lista, n)
    Escribir "--------------------------------";
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Edad de la Persona ", i, ": ", lista[i], " años";
    FinPara
    Escribir "--------------------------------";
FinSubProceso

Algoritmo Edad_tres_personas
    Definir año_act, mes_act, dia_act, opcion, n, i, edadTemp Como Entero;
    Dimension lista[3]               
    
    año_act <- 0
    mes_act <- 0
    dia_act <- 0

    
    Repetir
        Escribir "===== MENÚ PRINCIPAL =====";
        Escribir "1. Ingresar fecha actual";
        Escribir "2. Ingresar nueva persona y calcular edad";
        Escribir "3. Mostrar todas las edades";
        Escribir "4. Salir";
        Escribir "Seleccione una opción:"; Leer opcion;
        
        Segun opcion Hacer
            1:
                Fecha_actual(año_act, mes_act, dia_act);
            2:
                Si año_act = 0 Entonces
                    Escribir "? Primero ingrese la fecha actual (opción 1).";
                SiNo
                    Si n < 3 Entonces
                        n <- n + 1;
                        Escribir "---- Persona ", n, " ----";
                        edadTemp <- Persona(año_act, mes_act, dia_act);  // primero el retorno en temp
                        lista[n] <- edadTemp                              // luego lo guardas en el arreglo
                    SiNo
                        Escribir " Ya se registraron 3 personas máximo.";
                    FinSi
                FinSi
            3:
                Si n = 0 Entonces
                    Escribir " No hay personas registradas aún.";
                SiNo
                    Mostrar_resultado(lista, n);
                FinSi
            4:
                Escribir " Saliendo del programa...";
            De Otro Modo:
                Escribir " Opción inválida.";
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo


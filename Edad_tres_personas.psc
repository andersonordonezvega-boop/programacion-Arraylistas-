Funcion edad <- Calcular_edad(a�o_nac, mes_nac, dia_nac, a�o_act, mes_act, dia_act)
    Definir edad Como Entero;
    edad <- a�o_act - a�o_nac;
    Si (mes_act < mes_nac) O (mes_act = mes_nac Y dia_act < dia_nac) Entonces
        edad <- edad - 1;
    FinSi;
FinFuncion

SubProceso Fecha_actual(a�o_act Por Referencia, mes_act Por Referencia, dia_act Por Referencia)
    Escribir "Ingrese la fecha actual:";
    Escribir "A�o: "; Leer a�o_act;
    Escribir "Mes: "; Leer mes_act;
    Escribir "D�a: "; Leer dia_act;
FinSubProceso

Funcion edad_p <- Persona(a�o_act, mes_act, dia_act)
    Definir a�o_nac, mes_nac, dia_nac Como Entero;
    Escribir "A�o de nacimiento: "; Leer a�o_nac;
    Escribir "Mes de nacimiento: "; Leer mes_nac;
    Escribir "D�a de nacimiento: "; Leer dia_nac;
    edad_p <- Calcular_edad(a�o_nac, mes_nac, dia_nac, a�o_act, mes_act, dia_act);
FinFuncion

SubProceso Mostrar_resultado(lista, n)
    Escribir "--------------------------------";
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Edad de la Persona ", i, ": ", lista[i], " a�os";
    FinPara
    Escribir "--------------------------------";
FinSubProceso

Algoritmo Edad_tres_personas
    Definir a�o_act, mes_act, dia_act, opcion, n, i, edadTemp Como Entero;
    Dimension lista[3]               
    
    a�o_act <- 0
    mes_act <- 0
    dia_act <- 0

    
    Repetir
        Escribir "===== MEN� PRINCIPAL =====";
        Escribir "1. Ingresar fecha actual";
        Escribir "2. Ingresar nueva persona y calcular edad";
        Escribir "3. Mostrar todas las edades";
        Escribir "4. Salir";
        Escribir "Seleccione una opci�n:"; Leer opcion;
        
        Segun opcion Hacer
            1:
                Fecha_actual(a�o_act, mes_act, dia_act);
            2:
                Si a�o_act = 0 Entonces
                    Escribir "? Primero ingrese la fecha actual (opci�n 1).";
                SiNo
                    Si n < 3 Entonces
                        n <- n + 1;
                        Escribir "---- Persona ", n, " ----";
                        edadTemp <- Persona(a�o_act, mes_act, dia_act);  // primero el retorno en temp
                        lista[n] <- edadTemp                              // luego lo guardas en el arreglo
                    SiNo
                        Escribir " Ya se registraron 3 personas m�ximo.";
                    FinSi
                FinSi
            3:
                Si n = 0 Entonces
                    Escribir " No hay personas registradas a�n.";
                SiNo
                    Mostrar_resultado(lista, n);
                FinSi
            4:
                Escribir " Saliendo del programa...";
            De Otro Modo:
                Escribir " Opci�n inv�lida.";
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo


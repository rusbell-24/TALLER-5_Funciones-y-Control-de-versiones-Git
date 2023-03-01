SubProceso opcion <- menuPrincipal()
	Definir opcion Como Entero;
	Escribir "";
	Escribir "_____________TABLA DE MULTIPLICAR__________";
	Escribir "OPCIONES:..................................";
	Escribir "";
	Escribir "      1. Calcular multiplicacion";
	Escribir "      2. Salir multiplicacion";
	Escribir "------------------------------------------";
	Escribir Sin Saltar " Ingrese su opcion: ";
	Leer opcion;
FinSubProceso


// Llena la matriz de referencia como tabla de multiplicación
SubProceso llenarMatriz(matriz)
	
	Definir fila, columna Como Entero;
	Definir filaTxt, columnaTxt, primeraUnion, segundaUnion Como Caracter;
	
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			filaTxt <- ConvertirATexto(fila + 1);
			columnaTxt <- ConvertirATexto(columna + 1);
			primeraUnion <- Concatenar(columnaTxt," x ");
			segundaUnion <- Concatenar(primeraUnion,filaTxt);
			matriz[fila, columna] <- segundaUnion;
		FinPara
	FinPara
	
FinSubProceso


// lleno la matriz de resultados, con los resultados de cada multiplicacion indicada en la matriz de referencia
SubProceso llenarMatrizResultados(matrizResultado)
	
	Definir fila, columna Como Entero;
	
	para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			matrizResultado[fila, columna] <- ((columna+1) * (fila + 1));
		FinPara
	FinPara
	
FinSubProceso


// Imprime la matriz de referencia
SubProceso imprimirMatriz(matriz)
	
	Definir fila, columna Como Entero;
	
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Escribir Sin Saltar "-> Fila ",fila, ":    "; 
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			si(fila > 8) Entonces
				Escribir Sin Saltar matriz[fila, columna], "   ";
			SiNo
				Escribir Sin Saltar matriz[fila, columna], "    ";
			FinSi
		FinPara
		Escribir "";
	FinPara
	
FinSubProceso



Proceso Taller5_Funciones_Arreglos_ejercicio5
	
	Definir opcion, filaUsuario, columnaUsuario Como Entero;
	Definir matriz Como Caracter;
	Definir matrizResultado Como Entero;
	Dimension matriz[10,10];
	Dimension matrizResultado[10,10];
	
	llenarMatriz(matriz);
	
	llenarMatrizResultados(matrizResultado);
	
	Repetir
		Limpiar Pantalla;
		Escribir "MATRIZ DE REFERENCIA:_____________________________________________________________________________________";
		Escribir "";
		Escribir "              Col 0:   Col 1:   Col 2:   Col 3:   Col 4:   Col 5:   Col 6:   Col 7:   Col 8:   Col 9:    ";
		Escribir "";
		imprimirMatriz(matriz);
		Escribir "___________________________________________________________________________________________________________";
		Escribir "";
		
		opcion <- menuPrincipal();
		
		Segun opcion Hacer
			1:
				Escribir Sin Saltar "Ingrese el valor de la fila: ";
				Leer filaUsuario;
				si(filaUsuario >= 0 & filaUsuario  <= 9) Entonces
					Escribir Sin Saltar "Ingrese el valor de la columna: ";
					Leer columnaUsuario;
					si(columnaUsuario >= 0 & columnaUsuario  <= 9) Entonces
						Escribir "";
						Escribir "Resultado de:  ", (columnaUsuario+1), " x ", (filaUsuario+1), " = ", matrizResultado[filaUsuario,columnaUsuario];
					SiNo
						Limpiar Pantalla;
						Escribir "El valor ingresado esta fuera de rango";	
					FinSi
				SiNo
					Limpiar Pantalla;
					Escribir "El valor ingresado esta fuera de rango";
				FinSi
				
			2:
				Limpiar Pantalla;
				Escribir "Hasta pronto...........";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "La opcion ingresado no es correcta...........";
				
		FinSegun
		si(opcion <> 2) Entonces
			Escribir "";
			Escribir "presione una tecla para continuar..........";
			Esperar Tecla;
			Limpiar Pantalla;
		FinSi
		
	Hasta Que (opcion = 2)
	
FinProceso

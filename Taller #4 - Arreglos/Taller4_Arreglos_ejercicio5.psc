Proceso Taller4_Arreglos_ejercicio5
	
	Definir fila, columna, opcion, filaUsuario, columnaUsuario Como Entero;
	Definir matriz, filaTxt,columnaTxt, primeraUnion, segundaUnion Como Caracter;
	Definir matrizResultado Como Entero;
	Dimension matriz[10,10];
	Dimension matrizResultado[10,10];
	
	
	// Lleno la matriz de referencia
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			filaTxt <- ConvertirATexto(fila + 1);
			columnaTxt <- ConvertirATexto(columna + 1);
			primeraUnion <- Concatenar(columnaTxt," x ");
			segundaUnion <- Concatenar(primeraUnion,filaTxt);
			matriz[fila, columna] <- segundaUnion;
		FinPara
	FinPara
	
	// lleno la matriz de resultados, con los resultados de cada multiplicacion indicada en la matriz de referencia
	para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			matrizResultado[fila, columna] <- ((columna+1) * (fila + 1));
		FinPara
	FinPara
	
	Repetir
		Limpiar Pantalla;
		Escribir "MATRIZ DE REFERENCIA:________________________________________";
		Escribir "";
		Escribir "              Col 0:   Col 1:   Col 2:   Col 3:   Col 4:   Col 5:   Col 6:   Col 7:   Col 8:   Col 9:    ";
		Escribir "";
		// Imprimo la matriz de referencia
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
		
		Escribir "";
		Escribir "_____________TABLA DE MULTIPLICAR__________";
		Escribir "OPCIONES:..................................";
		Escribir "";
		Escribir "      1. Calcular multiplicacion";
		Escribir "      2. Salir del sistema";
		Escribir "------------------------------------------";
		Escribir Sin Saltar " Ingrese su opcion: ";
		Leer opcion;
		
		si(opcion = 1) Entonces
			Escribir Sin Saltar "Ingrese el valor de la fila: ";
			Leer filaUsuario;
			si(filaUsuario >= 0 & filaUsuario  <= 9) Entonces
				Escribir Sin Saltar "Ingrese el valor de la columna: ";
				Leer columnaUsuario;
				si(columnaUsuario >= 0 & columnaUsuario  <= 9) Entonces
					Escribir "";
					Escribir "Resultado de:  ", (columnaUsuario+1), " x ", (filaUsuario+1), " = ", matrizResultado[filaUsuario,columnaUsuario];
					Escribir "";
					Escribir "presione una tecla para continuar..........";
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Limpiar Pantalla;
					Escribir "El valor ingresado esta fuera de rango";	
					Escribir "";
					Escribir "presione una tecla para continuar..........";
					Esperar Tecla;
				FinSi
			SiNo
				Limpiar Pantalla;
				Escribir "El valor ingresado esta fuera de rango";
				Escribir "";
				Escribir "presione una tecla para continuar..........";
				Esperar Tecla;
			FinSi
		FinSi
		
	Hasta Que (opcion = 2)
	Limpiar Pantalla;
	Escribir "Hasta pronto...........";
	
FinProceso

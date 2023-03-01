Proceso Taller4_Arreglos_ejercicio4
	
	Definir fila, columna, inicio, final, pasos, contador Como Entero;
	Definir matriz Como Entero;
	Dimension matriz[4,5];
	
	contador <- 1;
	
	// llena la matriz con numeros enteros de forma ascendente
	para fila <- 0 Hasta 3 Con Paso 1 Hacer
		para columna <- 0 hasta 4 Con Paso 1 Hacer
			matriz[fila, columna] <- contador;
			contador <- contador + 1;
		FinPara
	FinPara
	
	Escribir "Matriz normal: ";
	Escribir "";
	
	//imprime la matriz con los numeros enteros que tiene guardados
	para fila <- 0 Hasta 3 Con Paso 1 Hacer
		para columna <- 0 hasta 4 Con Paso 1 Hacer
			si(matriz[fila, columna] < 10) Entonces
				Escribir "0", matriz[fila, columna], " " Sin Saltar;
			SiNo
				Escribir matriz[fila, columna], " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
	
	Escribir "";
	Escribir "Matriz intercalada: ";
	Escribir "";
	
	// imprime la matriz de forma ascendente en las filas pares y de forma descendente en las filas impares
	para fila <- 0 Hasta 3 Con Paso 1 Hacer
		si(fila % 2 = 0) Entonces
			inicio <- 0;
			final <- 4;
			pasos <- 1;
		SiNo
			inicio <- 4;
			final <- 0;
			pasos <- -1;
		FinSi
		Para columna <- inicio Hasta final Con Paso pasos Hacer
			si(matriz[fila, columna] < 10) Entonces
				Escribir "0", matriz[fila, columna], " " Sin Saltar;
			SiNo
				Escribir matriz[fila, columna], " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
	
FinProceso

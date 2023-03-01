// permite llenar la matriz con numeros enteros de forma ascendente
SubProceso llenarMatriz(matriz)
	
	Definir fila, columna, contador Como Entero;
	contador <- 1;
	
	para fila <- 0 Hasta 3 Con Paso 1 Hacer
		para columna <- 0 hasta 4 Con Paso 1 Hacer
			matriz[fila, columna] <- contador;
			contador <- contador + 1;
		FinPara
	FinPara
	
FinSubProceso


// imprime la matriz con los numeros enteros que tiene guardados
SubProceso imprimirMatriz(matriz)
	
	Definir fila, columna Como Entero;
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
	
FinSubProceso


// imprime la matriz de forma ascendente en las filas pares y de forma descendente en las filas impares
SubProceso imprimirMatrizIntercalada(matriz)
	
	Definir fila, columna, inicio, final, pasos Como Entero;
	
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
FinSubProceso



Proceso Taller5_Funciones_Arreglos_ejercicio4
	
	Definir matriz Como Entero;
	Dimension matriz[4,5];
	
	llenarMatriz(matriz);
	
	Escribir "Matriz normal: ";
	Escribir "";
	
	imprimirMatriz(matriz);
	
	Escribir "";
	Escribir "Matriz Intercalada: ";
	Escribir "";
	
	imprimirMatrizIntercalada(matriz);
	
FinProceso

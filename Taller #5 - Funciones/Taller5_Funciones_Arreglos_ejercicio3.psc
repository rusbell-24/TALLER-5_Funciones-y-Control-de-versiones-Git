// encuentra los numeros primos del 1 al 1000 y los guarda en el vector llamado vectorPrimos
SubProceso primos <- guardarPrimos(vectorPrimos)
	
	Definir fila, columna, contador, primos, indice Como Entero;
	indice <-0;
	contador <- 0;
	primos <- 0;
	
	Para  fila<- 2 Hasta 1000 Con Paso 1 Hacer
		Para  columna<- 1 Hasta fila Con Paso 1 Hacer
			si((fila % columna) = 0) Entonces
				contador <- contador + 1;
			FinSi
			si(contador > 2) Entonces
				columna <- 1000;
			FinSi
		FinPara
		si(contador <= 2)Entonces
			primos <- primos+1;
			vectorPrimos[indice] <- fila;
			indice <- indice+1;
		FinSi
		contador <- 0;
	FinPara
	
FinSubProceso


// imprime los numeros primos que han sido almacenados en el vector llamado vectorPrimos
SubProceso imprimirPrimos(vectorPrimos, cantidadPrimos)
	
	Definir indice Como Entero;
	
	para indice <- 0 hasta (cantidadPrimos -1) Con Paso 1 Hacer
		Escribir Sin Saltar vectorPrimos[indice];
		si(indice < (cantidadPrimos -1) ) Entonces
			Escribir ", " Sin Saltar;
		FinSi
	FinPara
	
FinSubProceso


Proceso Taller5_Funciones_Arreglos_ejercicio3
	
	Definir cantidadPrimos Como Entero;
	Definir vectorPrimos Como Entero;
	Dimension vectorPrimos[168];
	
	cantidadPrimos <- guardarPrimos(vectorPrimos);
	Escribir "La cantidad de numeros primos del 1 al 1000 es: ", cantidadPrimos;
	Escribir "";
	Escribir "Y son los siguientes: ";
	Escribir "";
	Escribir Sin Saltar "Números primos: ";
	imprimirPrimos(vectorPrimos, cantidadPrimos);
	
FinProceso

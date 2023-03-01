Proceso Taller4_Arreglos_ejercicio3
	Definir fila, columna, contador, primos, indice Como Entero;
	Definir vectorPrimos Como Entero;
	Dimension vectorPrimos[168];
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
	Escribir "La cantidad de numeros primos del 1 al 1000 es: ", primos;
	Escribir "";
	Escribir "Y son los siguientes: ";
	Escribir "";
	Escribir Sin Saltar "Números primos: ";
	para indice <- 0 hasta (primos -1) Con Paso 1 Hacer
		Escribir Sin Saltar vectorPrimos[indice];
		si(indice < (primos -1) ) Entonces
			Escribir ", " Sin Saltar;
		FinSi
	FinPara
	
FinProceso

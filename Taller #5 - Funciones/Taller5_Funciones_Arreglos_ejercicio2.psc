// llena el vector de 20 posiciones con numeros enteros entre 1 y 100
SubProceso llenarVector(vectorNumeros)
	
	Definir indice Como Entero;
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		vectorNumeros[indice] <- Aleatorio(1,100);
	FinPara
	
FinSubProceso


// imprime el vector de 20 posiciones con los numeros que se almacenaron
SubProceso mostrarVector(vectorNumeros)
	
	Definir indice Como Entero;
	
	Escribir "Los numeros generados fueron: "; 
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		Escribir vectorNumeros[indice] Sin Saltar;
		si(indice < 19 ) Entonces
			Escribir ", " Sin Saltar;
		FinSi
	FinPara
	
FinSubProceso


// encuentra e imprime los numeros pares que esten almecenados en el vector de 20 posiciones
SubProceso imprimirPares(vectorNumeros)
	
	Definir indice, pares Como Entero;
	indice <- 0;
	pares <- 0;
	
	Mientras indice < 20 Hacer
		si((vectorNumeros[indice] % 2) = 0)Entonces
			pares <- pares+1;
			si (indice >0 & pares > 1) Entonces
				Escribir Sin Saltar ", ";
			FinSi
			Escribir Sin Saltar vectorNumeros[indice];
		FinSi
		indice <- indice + 1;
	FinMientras
	Escribir "";
	Escribir "Total números pares: ", pares;
	
FinSubProceso


// encuentra e imprime los numeros impares que esten almecenados en el vector de 20 posiciones
SubProceso imprimirImpares(vectorNumeros)
	
	Definir indice, impares Como Entero; 
	indice <- 0;
	impares <- 0;
	
	Mientras indice < 20 Hacer
		si((vectorNumeros[indice] % 2) <> 0)Entonces
			impares <- impares+1;
			si (indice >0 & impares > 1) Entonces
				Escribir Sin Saltar ", ";
			FinSi
			
			Escribir Sin Saltar vectorNumeros[indice];
		FinSi
		indice <- indice + 1;
	FinMientras
	Escribir "";
	Escribir "Total números impares: ", impares;
	
FinSubProceso



Proceso Taller5_Funciones_Arreglos_ejercicio2
	
	Definir vectorNumeros Como Entero;
	Dimension vectorNumeros[20];
	
	llenarVector(vectorNumeros);
	mostrarVector(vectorNumeros);
	Escribir "";
	Escribir "";
	Escribir Sin Saltar"Números pares: ";
	imprimirPares(vectorNumeros);
	Escribir "";
	Escribir Sin Saltar"Números impares: ";
	imprimirImpares(vectorNumeros);
	
FinProceso

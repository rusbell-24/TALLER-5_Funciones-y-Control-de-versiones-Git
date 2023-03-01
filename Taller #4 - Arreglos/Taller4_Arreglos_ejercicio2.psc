Proceso Taller4_Arreglos_ejercicio2
	
	Definir indice, pares, impares  Como Entero;
	Definir vectorNumeros Como Entero;
	Dimension vectorNumeros[20];
	
	pares  <- 0;
	impares <- 0;
	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		vectorNumeros[indice] <- Aleatorio(1,100);
	FinPara
	
	Escribir "Los numeros generados fueron: "; 
	
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		Escribir vectorNumeros[indice] Sin Saltar;
		si(indice < 19 ) Entonces
			Escribir ", " Sin Saltar;
		FinSi
	FinPara
	
	Escribir "";
	Escribir "";
	
	Escribir Sin Saltar"Números pares: ";
	indice <- 0;
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
	
	
	Escribir "";
	Escribir Sin Saltar"Números impares: ";
	indice <- 0;
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
	
FinProceso

Proceso Taller3_Ciclos_ejercicio2
	definir limite Como Entero;
	Definir contador Como Entero;
	Definir contador2 Como Entero;
	Definir asterisco Como Caracter;
	
	limite <- 10;
	contador <- 1;
	asterisco <- "*";
	
	Mientras (contador <= limite) Hacer
		contador2 <- 1;
		Mientras (contador2 <= (limite - contador)) Hacer
			Escribir Sin Saltar " ";
			contador2 <- contador2 + 1;
		FinMientras
		Mientras (contador2 <= limite) Hacer
			Escribir Sin Saltar asterisco;
			contador2 <- contador2 + 1;
		FinMientras
		Escribir "";
		contador <- contador + 1;
	FinMientras
	
FinProceso

Proceso Taller3_Ciclos_ejercicio3
	
	definir limite, limite2,limite3, total Como Entero;
	Definir contador Como Entero;
	Definir contador2 Como Entero;
	Definir asterisco Como Caracter;
	Definir vuelta Como Entero;
	Definir  bandera Como Logico;
	
	limite <- 11;
	limite2<-limite;
	limite3 <- limite2;
	total <- (limite * 2) - 1;
	contador <- 1;
	asterisco <- "*";
	vuelta <- 1;
	
	Repetir
		contador2 <- 0;
		Repetir
			Escribir Sin Saltar " ";
			contador2 <- contador2 + 1;
		Hasta Que (contador2 >= ((limite+1) - contador))
		
		Repetir
			Escribir Sin Saltar asterisco;
			contador2 <- contador2 + 1;
		Hasta Que (contador2 >= (limite+1));
		
		si contador > 1 Entonces
			contador2 <-2;
			Repetir
				Escribir Sin Saltar asterisco;
				contador2 <- contador2 + 1;
			Hasta Que (contador2 > contador)
		FinSi
		
		si (vuelta = 1 & contador == limite2) Entonces
			contador <- 1;
			limite2 <- 2;
			vuelta <- vuelta + 1;
		FinSi
		
		si (vuelta = 2 & contador == limite2 ) Entonces
			contador <- 1;
			limite2 <- 4;
			vuelta <- vuelta + 1;
			
		FinSi
		
		
		Escribir "";
		contador <- contador + 1;
	Hasta Que (contador > limite2)
	
FinProceso

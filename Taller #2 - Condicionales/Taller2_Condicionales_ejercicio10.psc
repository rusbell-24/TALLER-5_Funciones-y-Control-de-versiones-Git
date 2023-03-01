Proceso Taller2_Condicionales_ejercicio10
	
	// El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios;
	// por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. Para cada cliente las cuentas permitirán realizar ingresos,
	// retiros o consultas de valor. En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que
	// tiene en la cuenta.
	
	Definir opcion Como Entero;
	Definir titular, titular1, titular2, titular3 Como Caracter;
	Definir cantidad, cantidad1, cantidad2, cantidad3 como entero;
	
	titular1 <- "user1";
	titular2 <- "user2";
	titular3 <- "user3";
	
	cantidad1 <- 2000000;
	cantidad2 <- 4500000;
	cantidad3 <- 10005000;
	
	Escribir ".......BIENVENIDO A SU BANCO FIEL.......";
	Escribir "";
	Escribir "OPCIONES DEL SYSTEMA____________________";
	Escribir "    1. Consultar saldo ";
	Escribir "    2. Consignar  ";
	Escribir "    3. Retirar";
	Escribir "    4. Salir";
	Escribir "----------------------------------------";
	Escribir "Ingrese su opcion: ";
	Leer opcion;
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Ingrese su usuario: ";
			Leer titular;
			
			si(titular = titular1) Entonces
				Escribir "Su saldo actual es: $", cantidad1;
			FinSi
			si(titular = titular2) Entonces
				Escribir "Su saldo actual es: $", cantidad2;
			FinSi
			si(titular = titular3) Entonces
				Escribir "Su saldo actual es: $", cantidad3;
			FinSi
			si (titular <> titular1 & titular <> titular2 & titular <> titular3) Entonces
				Escribir "El usuario ingresado no tiene productos nuestros";
			FinSi
			
		2: 
			Escribir "Ingrese su usuario: ";
			Leer titular;
			Limpiar Pantalla;
			
			Escribir titular;
			si(titular = titular1) Entonces
				Escribir "Saldo actual : $", cantidad1;
				Escribir "Ingrese valor a consignar: ";
				Leer cantidad;
				Limpiar Pantalla;
				
				si (cantidad > 0) Entonces
					cantidad1 <- cantidad1 + cantidad;
					Escribir titular;
					Escribir "Su nuevo saldo es: $", cantidad1;
					Escribir "Hasta pronto.................";
				SiNo
					Escribir "Lo sentimos, no se aceptan valores negativos";
				FinSi
				
			FinSi
			
			si(titular = titular2) Entonces
				Escribir "Saldo actual : $", cantidad2;
				Escribir "Ingrese valor a consignar: ";
				Leer cantidad;
				Limpiar Pantalla;
				
				si (cantidad > 0) Entonces
					cantidad2 <- cantidad2 + cantidad;
					Escribir titular;
					Escribir "Su nuevo saldo es: $", cantidad2;
					Escribir "Hasta pronto.................";
				SiNo
					Escribir "Lo sentimos, no se aceptan valores negativos";
				FinSi
			FinSi
			
			si(titular = titular3) Entonces
				Escribir "Saldo actual : $", cantidad3;
				Escribir "Ingrese valor a consignar: ";
				Leer cantidad;
				Limpiar Pantalla;
				
				si (cantidad > 0) Entonces
					cantidad3 <- cantidad3 + cantidad;
					Escribir titular;
					Escribir "Su nuevo saldo es: $", cantidad3;
					Escribir "Hasta pronto.................";
				SiNo
					Escribir "Lo sentimos, no se aceptan valores negativos";
				FinSi
			FinSi
			
		3:
			Escribir "Ingrese su usuario: ";
			Leer titular;
			Limpiar Pantalla;
			
			Escribir titular;
			si(titular = titular1) Entonces
				Escribir "Saldo actual : $", cantidad1;
				Escribir "Ingrese valor a retirar: ";
				Leer cantidad;
				Limpiar Pantalla;
				
				si (cantidad <= cantidad1) Entonces
					cantidad1 <- cantidad1 - cantidad;
					Escribir titular;
					Escribir "Usted acaba de retirar: $", cantidad;
					Escribir "Su nuevo saldo es: $", cantidad1;
					Escribir "Hasta pronto.................";
				SiNo
					Escribir "Lo sentimos, no tiene fondos suficientes para el retiro";
				FinSi
				
			FinSi
			
			si(titular = titular2) Entonces
				Escribir "Saldo actual : $", cantidad2;
				Escribir "Ingrese valor a retirar: ";
				Leer cantidad;
				Limpiar Pantalla;
				
				si (cantidad <= cantidad2) Entonces
					cantidad2 <- cantidad2 - cantidad;
					Escribir titular;
					Escribir "Usted acaba de retirar: $", cantidad;
					Escribir "Su nuevo saldo es: $", cantidad2;
					Escribir "Hasta pronto.................";
				SiNo
					Escribir "Lo sentimos, no tiene fondos suficientes para el retiro";
				FinSi
				
			FinSi
			
			si(titular = titular3) Entonces
				Escribir "Saldo actual : $", cantidad3;
				Escribir "Ingrese valor a retirar: ";
				Leer cantidad;
				Limpiar Pantalla;
				
				si (cantidad <= cantidad3) Entonces
					cantidad3 <- cantidad3 - cantidad;
					Escribir titular;
					Escribir "Usted acaba de retirar: $", cantidad;
					Escribir "Su nuevo saldo es: $", cantidad3;
					Escribir "Hasta pronto.................";
				SiNo
					Escribir "Lo sentimos, no tiene fondos suficientes para el retiro";
				FinSi
				
			FinSi
			
		4:
			Escribir "HASTA PRONTO...............";
			
	FinSegun
	
	
FinProceso

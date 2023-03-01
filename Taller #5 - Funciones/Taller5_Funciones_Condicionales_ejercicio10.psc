// El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios;
// por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. Para cada cliente las cuentas permitirán realizar ingresos,
// retiros o consultas de valor. En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que
// tiene en la cuenta.


// Imprime el menu principal del sistema
SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
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
	
FinSubProceso



// Solicita el valor que se desea consignar o retirar
subproceso cantidad <- solicitarValor(operacion, cantidadActual)
	
	Definir cantidad Como Entero;
	Escribir "Saldo actual : $", cantidadActual;
	Escribir "Ingrese valor a ", operacion, ": ";
	Leer cantidad;
	Limpiar Pantalla;
	
FinSubProceso



// valida y realiza el proceso de consinacion
SubProceso cantidad <- consignaciones(titular, cantidad, cantidadConsignar)
	
	si (cantidadConsignar > 0) Entonces
		cantidad <- cantidad + cantidadConsignar;
		Escribir titular;
		Escribir "Usted acaba de consignar: $", cantidadConsignar;
		Escribir "Su nuevo saldo es: $", cantidad;
		Escribir "Hasta pronto.................";
	SiNo
		Escribir "Lo sentimos, no se aceptan valores negativos";
	FinSi
	
FinSubProceso

// valida y realiza el proceso de retiro
subproceso cantidad <- retiros(titular, cantidad, cantidadRetirar)
	
	si (cantidadRetirar <= cantidad) Entonces
		cantidad <- cantidad - cantidadRetirar;
		Escribir titular;
		Escribir "Usted acaba de retirar: $", cantidadRetirar;
		Escribir "Su nuevo saldo es: $", cantidad;
		Escribir "Hasta pronto.................";
	SiNo
		Escribir "Lo sentimos, no tiene fondos suficientes para el retiro";
	FinSi
	
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio9
	
	Definir opcion Como Entero;
	Definir titular, titular1, titular2, titular3 Como Caracter;
	Definir cantidad, cantidad1, cantidad2, cantidad3 como entero;
	
	titular1 <- "user1";
	titular2 <- "user2";
	titular3 <- "user3";
	
	cantidad1 <- 2000000;
	cantidad2 <- 4500000;
	cantidad3 <- 10005000;
	
	
	opcion <- menuPrincipal();
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
				cantidad <- solicitarValor("consignar", cantidad1);
				cantidad1 <- consignaciones(titular1, cantidad1, cantidad);
			FinSi
			
			si(titular = titular2) Entonces
				cantidad <- solicitarValor("consignar", cantidad2);
				cantidad2 <- consignaciones(titular2, cantidad2, cantidad);
			FinSi
			
			si(titular = titular3) Entonces
				cantidad <- solicitarValor("consignar", cantidad3);
				cantidad3 <- consignaciones(titular3, cantidad3, cantidad);
			FinSi
			
		3:
			Escribir "Ingrese su usuario: ";
			Leer titular;
			Limpiar Pantalla;
			
			Escribir titular;
			si(titular = titular1) Entonces
				cantidad <- solicitarValor("retirar", cantidad1);
				cantidad1 <- retiros(titular1, cantidad1, cantidad);
			FinSi
			
			si(titular = titular2) Entonces
				cantidad <- solicitarValor("retirar", cantidad2);
				cantidad1 <- retiros(titular2, cantidad2, cantidad);
			FinSi
			
			si(titular = titular3) Entonces
				cantidad <- solicitarValor("retirar", cantidad3);
				cantidad1 <- retiros(titular3, cantidad3, cantidad);
			FinSi
			
		4:
			Escribir "HASTA PRONTO...............";
			
	FinSegun
	
FinProceso

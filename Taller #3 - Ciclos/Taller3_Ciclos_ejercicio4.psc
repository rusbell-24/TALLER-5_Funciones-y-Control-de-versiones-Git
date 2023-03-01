Proceso Taller3_Ciclos_ejercicio4
	
	Definir numeroUsuario, control, resultado Como Entero;
	
	Escribir "_____________TABLA DE MULTIPLICAR____________";
	Escribir "";
	Escribir Sin Saltar "Ingrese el numero de la tabla que desea crear: ";
	Leer numeroUsuario;
	
	Limpiar Pantalla;
	
	Escribir "RESULTADO___Tabla del: ", numeroUsuario;
	Escribir "";
	
	Para control <- 1 Hasta 10 Con Paso 1 Hacer
		resultado <- control * numeroUsuario;
		Escribir control , " x ", numeroUsuario, " = ", resultado;
	FinPara
	
FinProceso

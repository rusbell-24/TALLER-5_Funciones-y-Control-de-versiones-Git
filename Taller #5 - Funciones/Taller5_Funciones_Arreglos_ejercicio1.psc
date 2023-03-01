// se encarga de guardar los numeros en vectorNumeros
SubProceso almacenado <- guardarNumero(numeroUsuario, indice, vectorNumeros)
	
	Definir almacenado Como Logico;
	si (numeroUsuario >= 0 & numeroUsuario <= 100) Entonces
		vectorNumeros[indice] <- numeroUsuario;
		Escribir "";
		Escribir "El numero ", numeroUsuario, " se guardo de forma correcta";
		Esperar 2 Segundos;
		almacenado <- Verdadero;
	SiNo
		Limpiar Pantalla;
		Escribir "El dato ingresado no es correcto";
		Escribir "";
		Escribir "Presione una tecla para continuar............";
		Esperar Tecla;
		almacenado <- Falso;
	FinSi
	
FinSubProceso


// imprime los numero almacenados en el vector
SubProceso imprimirNumeros(vectorNumeros)
	
	Definir indice Como Entero;
	Limpiar Pantalla;
	Escribir "Los numeros guardados son: ";
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",indice,"] = ", vectorNumeros[indice];
	FinPara
	
FinSubProceso


Proceso Taller5_Funciones_Arreglos_ejercicio1
	
	Definir almacenado Como Logico;
	Definir indice, numeroUsuario Como Entero;
	Definir vectorNumeros Como Entero;
	Dimension vectorNumeros[5];
	
	Escribir "BIENVENIDO AL SISTEMA PARA ALMACENAR 5 NUMEROS ENTEROS";
	Escribir "";
	Escribir "Presione una tecla para continuar...........";
	Esperar Tecla;
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Limpiar Pantalla;
		Escribir Sin Saltar"Por favor ingrese el ", (indice+1), " numero entre 0 y 100";
		Leer numeroUsuario;
		
		almacenado <- guardarNumero(numeroUsuario, indice, vectorNumeros);
		
		si(NO almacenado) Entonces
			indice <- indice - 1;
		FinSi
		
	FinPara
	
	imprimirNumeros(vectorNumeros);
	
FinProceso

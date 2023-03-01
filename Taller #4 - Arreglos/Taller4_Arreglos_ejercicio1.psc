Proceso Taller4_Arreglos_ejercicio1
	
	Definir indice, numeroUsuario Como Entero;
	Definir vectorNumeros Como Entero;
	Dimension vectorNumeros[5];
	
	Escribir "BIENVENIDO AL SISTEMA PARA ALMACENAR 5 NUMEROS ENTEROS";
	Escribir "";
	Escribir "Presione una tecla para continuar...........";
	Esperar Tecla;
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Limpiar Pantalla;
		Escribir Sin Saltar"Por favor ingrese el ", (indice+1), " valor, entre 0 y 100";
		Leer numeroUsuario;
		
		si (numeroUsuario >= 0 & numeroUsuario <= 100) Entonces
			vectorNumeros[indice] <- numeroUsuario;
			Escribir "";
			Escribir "El numero ", numeroUsuario, " se guardo de forma correcta";
			Esperar 2 Segundos;
		SiNo
			Limpiar Pantalla;
			Escribir "El dato ingresado no es correcto";
			indice <- indice - 1;
			Escribir "";
			Escribir "Presione una tecla para continuar............";
			Esperar Tecla;
		FinSi
		
	FinPara
	Limpiar Pantalla;
	Escribir "Los numeros guardados son: ";
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[",indice,"] = ", vectorNumeros[indice];
	FinPara
	
FinProceso

SubProceso esMenor <- verificarEdad(edad)
	
	Definir esMenor Como Logico;;
	
	si (edad < 18) Entonces
		esMenor <- Verdadero;
	SiNo
		esMenor <- Falso;
	FinSi
	
FinSubProceso

SubProceso imprimirEsMenor(validarEsMenor)
	
	si(validarEsMenor) Entonces
		Escribir "Usted aún es un niño(a).";
	FinSi
	
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio2
	
	Definir edad Como Entero;
	Definir validarEsMenor Como Logico;
	
	Escribir "Ingrese su edad: ";
	Leer edad;
	
	si(edad > 0) Entonces
		validarEsMenor <- verificarEdad(edad);
		imprimirEsMenor(validarEsMenor);
	SiNo
		Escribir "No existen edades inferiores o iguales a cero.";
	FinSi
	
FinProceso

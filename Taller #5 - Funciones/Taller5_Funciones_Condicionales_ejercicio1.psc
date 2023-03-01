SubProceso esMayor <- verificarEdad(edad)
	
	Definir esMayor Como Logico;;
	
	si (edad >= 18) Entonces
		esMayor <- Verdadero;
	SiNo
		esMayor <- Falso;
	FinSi
	
FinSubProceso

SubProceso imprimir(validarEsMayor)
	
	si(validarEsMayor) Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Escribir "Usted NO es mayor de edad";
	FinSi
	
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio1
	
	Definir edad Como Entero;
	Definir validarEsMayor Como Logico;
	
	Escribir "Ingrese su edad: ";
	Leer edad;
	
	si(edad > 0) Entonces
		validarEsMayor <- verificarEdad(edad);
		imprimir(validarEsMayor);
	SiNo
		Escribir "No existen edades inferiores o iguales a cero.";
	FinSi
	
FinProceso

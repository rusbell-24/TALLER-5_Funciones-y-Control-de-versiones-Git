Proceso Taller_de_variable_e_impresion_ejercicio3
	
	// Realizar un programa el cual solicite su nombre y apellidos, también debe capturar nombre y apellidos de su padre y madre.
	// Al finalizar debe imprimir en pantalla el siguiente mensaje "Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].
	
	Definir nombre Como Caracter;
	Definir primerApellido Como Caracter;
	Definir segundoApellido Como Caracter;
	Definir nombrePadre Como Caracter;
	Definir primerApellidoPadre Como Caracter;
	Definir segundoApellidoPadre Como Caracter;
	Definir nombreMadre Como Caracter;
	Definir primerApellidoMadre Como Caracter;
	Definir segundoApellidoMadre Como Caracter;
	
	Escribir "Ingrese su nombre";
	Leer nombre;
	
	Escribir "Ingrese su primer apellido";
	Leer primerApellido;
	
	Escribir "Ingrese su segundo apellido";
	Leer segundoApellido;
	
	Escribir "Ingrese el nombre de su padre";
	Leer nombrePadre;
	
	Escribir "Ingrese el primer apellido de su padre";
	Leer primerApellidoPadre;
	
	Escribir "Ingrese el segundo apellido de su padre";
	Leer segundoApellidoPadre;
	
	Escribir "Ingrese el nombre de su madre";
	Leer nombreMadre;
	
	Escribir "Ingrese el primer apellido de su madre";
	Leer primerApellidoMadre;
	
	Escribir "Ingrese el segundo apellido de su madre";
	Leer segundoApellidoMadre;
	
	Limpiar Pantalla;
	
	Escribir Sin Saltar "Yo ", nombre, " ", primerApellido," ", segundoApellido, " soy hijo de ", nombreMadre, " ";
	Escribir Sin Saltar primerApellidoMadre," ", segundoApellidoMadre," y ", nombrePadre, " ", primerApellidoPadre," ";
	Escribir Sin Saltar segundoApellidoPadre;
	
	
FinProceso

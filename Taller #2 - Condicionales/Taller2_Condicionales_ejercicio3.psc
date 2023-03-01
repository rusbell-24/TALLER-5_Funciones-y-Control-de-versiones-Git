Proceso Taller2_Condicionales_ejercicio3
	
	// Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona.
	// Si la persona es mayor o igual a 18 años, entonce se deberá imprimir en pantalla [Nombre completo] usted es mayor de edad,
	// por lo tanto puede entrar a la fiesta. Si la edad de la persona es menor que 18 años, entonces, deberá imprimirse el siguiente mensaje:
	// [Nombre completo] usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.
	
	Definir nombre Como Caracter;
	Definir primerApellido Como Caracter;
	Definir segundoApellido Como Caracter;
	Definir edad Como Entero;
	
	Escribir "Por favor ingrese su nombre: ";
	Leer nombre;
	
	Escribir "Ingrese su primer apellido: ";
	Leer primerApellido;
	
	Escribir "Ingrese su segundo apellido: ";
	Leer segundoApellido;
	
	Escribir "Finalmente, ingrese su edad: ";
	Leer edad;
	
	si edad >= 18 Entonces
		Escribir nombre, " ", primerApellido, " ", segundoApellido, " usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir Sin Saltar nombre, " ", primerApellido, " ", segundoApellido;
		Escribir Sin Saltar " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
	
FinProceso

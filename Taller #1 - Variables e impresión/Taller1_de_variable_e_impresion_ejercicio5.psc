Proceso Taller_de_variable_e_impresion_ejercicio5
	
	// Realizar un programa el cual solicite el nombre de su mascota, edad de la mascota, el tipo de mascota y su nombre completo.
	// Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje: 
	// [Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] a�os de edad y [Nombre Completo] es actualmente su due�o(a).
	
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombrePropietario Como Caracter;
	
	Escribir "Por favor ingrese su nombre completo: ";
	Leer nombrePropietario;
	
	Escribir "Ingrese el nombre de su mascota: ";
	Leer nombreMascota;
	
	Escribir "Ingrese la edad de ", nombreMascota;
	Leer edadMascota;
	
	Escribir "Que tipo de mascota es ", nombreMascota;
	Leer tipoMascota;
	
	Limpiar Pantalla;
	
	Escribir nombreMascota, " es un(a) ", tipoMascota, " el cual, tiene ", edadMascota, " a�os de edad y ", nombrePropietario, " es actualmente su due�o(a) ";

	
FinProceso

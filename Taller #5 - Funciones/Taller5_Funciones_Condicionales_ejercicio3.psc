SubProceso comprobante <- verificarEdad(edad)
	Definir comprobante Como logico;
	si (edad >= 18) Entonces
		comprobante <- Verdadero;
	SiNo
		comprobante <- Falso;
	FinSi
FinSubProceso

SubProceso imprimir(comprobante, nombre, primerApellido, segundoApellido)
	Limpiar Pantalla;
	Escribir "";

	si(comprobante) Entonces
		Escribir nombre, " ", primerApellido," ", segundoApellido, " usted es mayor de edad, por lo tanto, puede entrar a la fiesta";
	SiNo
		Escribir nombre, " ", primerApellido," ", segundoApellido, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta por favor devuélvase a su casa";
	FinSi
	
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio3
	
	Definir nombre Como Caracter;
	Definir primerApellido Como Caracter;
	Definir segundoApellido Como Caracter;
	Definir edad Como Entero;
	Definir resultadoComprobante Como Logico;
	
	Escribir "Ingrese su nombre";
	Leer nombre;
	Escribir "Ingrese su primer apellido";
	Leer primerApellido;
	Escribir "Ingrese su segundo apellido";
	Leer segundoApellido;
	Escribir "Ingrese su edad";
	Leer edad;
	
	
	si(nombre <> "" & primerApellido <> "" & segundoApellido <> "" & edad > 0 ) Entonces
		
		resultadoComprobante <- verificarEdad(edad);
		imprimir(resultadoComprobante, nombre, primerApellido, segundoApellido);
		
	SiNo
		Escribir nombre, " ", primerApellido," ", segundoApellido, " los datos ingresados no  son correctos";
	FinSi
	
	
FinProceso


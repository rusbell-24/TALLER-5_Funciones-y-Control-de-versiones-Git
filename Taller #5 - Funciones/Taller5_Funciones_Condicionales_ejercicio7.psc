//  La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular el IMC (Índice de masa corporal) y requiere los datos peso en
// kilogramos y estatura en metros Para cada persona encuestada adicional a los datos suministrados, debe mostrar el resultado para cada uno y establecer
// en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).



// permite dar una valoracion de IMC apartir de peso y la estatura
SubProceso rangoPeso(peso, estatura)
	Definir imc Como Real;
	
	imc <- peso / (estatura)^2;
	
	Limpiar Pantalla;
	Escribir "------------------------------------";
	Escribir "Su peso es: ", peso, " Kg";
	Escribir "Su estatura es: ", estatura, " Mts";
	Escribir "Por ende, su IMC es: ", imc;
	Escribir "";
	
	Escribir "------------------------------------";
	si(imc < 18.5) Entonces
		Escribir "Rango de peso: BAJO DE PESO";
	FinSi
	si(imc >= 18.5 & imc < 25.0) Entonces
		Escribir "Rango de peso: PESO NORMAL";
	FinSi
	si(imc >= 25.0 & imc < 30.0) Entonces
		Escribir "Rango de peso: SOBREPESO";
	FinSi
	si(imc >= 30.0) Entonces
		Escribir "Rango de peso: OBESO";
	FinSi
	Escribir "------------------------------------";
	
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio7
	
	Definir valoracion Como Entero;
	Definir peso Como Real;
	Definir estatura Como Real;
	
	Escribir "........Calculador de IMC..........";
	Escribir "Ingrese su peso en kilogramos ";
	Leer peso;
	Escribir "Ingrese su estatura en metros";
	Leer estatura;	
	
	rangoPeso(peso, estatura);
	
	
	
FinProceso

Proceso Taller2_Condicionales_ejercicio9
	
	// El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de diferentes figuras geom�tricas,
	// para ello requiere una aplicaci�n que le facilite el ejercicio solicit�ndole los valores al estudiante. La aplicaci�n debe permitir que
	// el estudiante seleccione si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio. No olvide solicitar los datos necesarios para realizar cada
	// c�lculo y mostrar su respectivo resultado.
	
	Definir opcionFigura Como Entero;
	Definir  base, baseMayor, altura, area Como Real;
	
	Escribir "CALCULAR AREA PARA: ___________";
	Escribir "";
	Escribir "     1. Rectangulo ";
	Escribir "     2. Triangulo ";
	Escribir "     3. Trapecio ";
	Escribir "     4. Salir ";
	Escribir "-------------------------------";
	Escribir "Ingrese su opcion: ";
	Leer opcionFigura;
	
	Limpiar Pantalla;
	
	Segun opcionFigura Hacer
		1: 
			Escribir "Ingrese la base del rectangulo(en metros): ";
			Leer base;
			Escribir "Ingrese la altura de rectangulo(en metros): ";
			Leer altura;
			Limpiar Pantalla;
			si (altura > 0 & base > 0) Entonces
				area <- base * altura;
				Escribir "Para rectangulo con base ", base, " y altura ", altura;
				Escribir "";
				Escribir "Su area es: ", area, " m^2";
			SiNo
				Escribir "Error, Los datos ingresados no son correctos";
			FinSi
		2:
			Escribir "Ingrese la base del triangulo(en metros): ";
			Leer base;
			Escribir "Ingrese la altura de triangulo(en metros): ";
			Leer altura;
			Limpiar Pantalla;
			si (altura > 0 & base > 0) Entonces
				area <- (base * altura)/2;
				Escribir "Para un triangulo con base ", base, " y altura ", altura;
				Escribir "";
				Escribir "Su area es: ", area, " m^2";
			SiNo
				Escribir "Error, Los datos ingresados no son correctos";
			FinSi
		3:
			Escribir "Ingrese la base menor del trapecio(en metros): ";
			Leer base;
			Escribir "Ingrese la base mayor del trapecio(en metros): ";
			Leer baseMayor;
			Escribir "Ingrese la altura: ";
			Leer altura;
			Limpiar Pantalla;
			si (altura > 0 & base > 0) Entonces
				area <- ((base + baseMayor) * altura)/2;
				Escribir "Para un trapecio con base menor ", base, " base mayor ",baseMayor, " y altura ", altura;
				Escribir "";
				Escribir "Su area es: ", area, " m^2";
			SiNo
				Escribir "Error, Los datos ingresados no son correctos";
			FinSi
		4:
			Escribir "HASTA PRONTO";
			
	FinSegun
	
FinProceso

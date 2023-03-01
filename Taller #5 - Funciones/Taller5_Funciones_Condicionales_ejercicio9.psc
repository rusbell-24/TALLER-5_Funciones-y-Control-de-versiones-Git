// El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de diferentes figuras geométricas,
// para ello requiere una aplicación que le facilite el ejercicio solicitándole los valores al estudiante. La aplicación debe permitir que
// el estudiante seleccione si desea calcular el área de un rectángulo, triángulo o trapecio. No olvide solicitar los datos necesarios para realizar cada
// cálculo y mostrar su respectivo resultado.



// Imprime el menu principal del sistema
SubProceso opcion <- menuPrincipal()
	
	Definir  opcion Como Entero;
	Escribir "CALCULAR AREA PARA: ___________";
	Escribir "";
	Escribir "     1. Rectangulo ";
	Escribir "     2. Triangulo ";
	Escribir "     3. Trapecio ";
	Escribir "     4. Salir ";
	Escribir "-------------------------------";
	Escribir "Ingrese su opcion: ";
	Leer opcion;
	Limpiar Pantalla;
	
FinSubProceso


// solicita Datos comunes para el calculo del area de las figuras
SubProceso pedirDatosFigura(base Por Referencia, altura Por Referencia)
	
	Escribir "Ingrese la base: ";
	Leer base;
	Escribir "Ingrese la altura: ";
	Leer altura;
	Limpiar Pantalla;
	
FinSubProceso



// calcula el area dependiendo de la figura.
// para el caso del triangulo y el trapecio utiliza la misma formula dada su similitud
SubProceso area <- calcularArea(opcion, base, baseMayor, altura)
	
	Definir area Como Real;
	Segun opcion Hacer
		1:
			si (altura >= 0 & base >= 0) Entonces
				area <- base * altura;
			SiNo
				area <- -1;
			FinSi
		2:
			si (altura > 0 & base > 0 & baseMayor >= 0) Entonces
				area <- ((base + baseMayor) * altura)/2;
			SiNo
				area <- -1;
			FinSi
	FinSegun
	
FinSubProceso



SubProceso imprimirArea(opcion, figura, area, base, baseMayor, altura)
	si(area >= 0) Entonces
		Segun  opcion Hacer
			1:
				Escribir "Para ",figura," con base ", base, " y altura ", altura;
				Escribir "";
				Escribir "Su area es: ", area, " m^2";
			2:
				Escribir "Para un ",figura," con base menor ", base, ", base mayor ",baseMayor, " y altura ", altura;
				Escribir "";
				Escribir "Su area es: ", area, " m^2";
		FinSegun
	SiNo
		Escribir "No se reciven valores negativos";
	FinSi
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio9
	
	Definir opcionFigura Como Entero;
	Definir  base, baseMayor, altura, area Como Real;
	
	opcionFigura <- menuPrincipal();
	
	Segun opcionFigura Hacer
		1: 
			pedirDatosFigura(base, altura);
			area <- calcularArea(1, base, 0, altura);
			imprimirArea(1, "rectangulo", area, base, 0, altura);
			
		2:
			pedirDatosFigura(base, altura);
			area <- calcularArea(2, base, 0, altura);
			imprimirArea(1, "triangulo", area, base, 0, altura);
		3:
			Escribir "Ingrese la base mayor: ";
			Leer baseMayor;
			pedirDatosFigura(base, altura);
			area <- calcularArea(2, base, baseMayor, altura);
			imprimirArea(2, "trapecio", area, base, baseMayor, altura);
		4:
			Escribir "HASTA PRONTO";
			
	FinSegun
	
FinProceso

Proceso Taller3_Ciclos_ejercicio5
	
	Definir nombreUsuario Como Caracter;
	Definir opcion Como Entero;
	
	nombreUsuario <- "";
	
	Repetir
		
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "_________MENÚ DE USUARIO_______";
		Escribir "";
		Escribir "      1. Capturar nombre";
		Escribir "      2. Saludar persona";
		Escribir "      3. Salir del sistema";
		Escribir "------------------------------";
		Escribir Sin Saltar" Ingrese su opcion: ";
		Leer opcion;
		
		Limpiar Pantalla;
		Escribir "";
		
		Segun opcion Hacer
			1:
				
				Escribir "Por favor ingrese el nombre: ";
				Leer nombreUsuario;
				Limpiar Pantalla;
				Escribir "El nombre: ", nombreUsuario, " se ha guardado con exito";
				Escribir "";
				Escribir "Pulse una tecla para continuar............";
				Esperar Tecla;
				
			2:
				si (nombreUsuario <> "") Entonces
					Escribir "Hola ", nombreUsuario, ", ten un lindo dia";
					Escribir "";
					Escribir "Pulse una tecla para continuar............";
					Esperar Tecla;
				SiNo
					Escribir "Aun no has ingresado un nombre para saludar.";
					Escribir "";
					Escribir "Pulse una tecla para continuar...........";
					Esperar Tecla;
				FinSi
		FinSegun
	Hasta Que (opcion = 3)
	
FinProceso

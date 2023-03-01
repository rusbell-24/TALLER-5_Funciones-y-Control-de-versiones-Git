Proceso Taller2_Condicionales_ejercicio4
	
	// La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir,
	// requiere de una aplicación que permita registrar el alquiler de las películas que adquieren sus usuarios.
	// Para cada usuario se debe permitir la opción de alquilar película, consultar películas disponibles y 
	// recibir película en la video tienda con la opción de realizar anotaciones sobre estas si se llegan a presentar daños u otra novedad sobre la película.
	
	Definir opcion1 Como Entero;
	Definir categoria Como Entero;
	Definir opcionAlquilar Como Entero;
	Definir nombre Como Caracter;
	Definir cedula Como Entero;
	Definir telefono Como Entero;
	Definir anotacion como caracter;
	Definir peliculaAlquilada Como Caracter;
	
	Definir peliculaAccion1 Como Caracter;
	Definir peliculaAccion2 Como Caracter;
	Definir peliculaAccion3 Como Caracter;
	Definir peliculaCienciaFiccion1 Como Caracter;
	Definir peliculaCienciaFiccion2 Como Caracter;
	Definir peliculaCienciaFiccion3 Como Caracter;
	Definir peliculaTerror1 Como Caracter;
	Definir peliculaTerror2 Como Caracter;
	Definir peliculaTerror3 Como Caracter;
	
	peliculaAccion1 <- "El Asesino Perfecto";
	peliculaAccion2 <- "La Toma del Poder";
	peliculaAccion3 <- "El Transportador";
	
	peliculaCienciaFiccion1 <- "Pantera Negra: Wakanda";
	peliculaCienciaFiccion2 <- "Guardianes de la Galaxia";
	peliculaCienciaFiccion3 <- "Black Adam";
	
	peliculaTerror1 <- "Llaman a la Puerta";
	peliculaTerror2 <- "La Huérfana";
	peliculaTerror3 <- "La Huésped Maldita";
	
	peliculaAlquilada <- "";
	
	Escribir " ---------MENU: TIENDA DE PELICULAS---------";
	Escribir "|                                           |";
	Escribir "|         1. Consultar peliculas            |";
	Escribir "|         2. Alquilar pelicula              |";
	Escribir "|         3. Dejar Anotación                |";
	Escribir "|___________________________________________|";
	Escribir "|  Ingrese su opcion:                       |";
	Escribir " -------------------------------------------";
	Leer opcion1;
	
	Limpiar Pantalla;
	
	Segun opcion1 Hacer
		1:
			Escribir " ----------SECCION DE CONSULTA---------";
			Escribir "|                                      |";
			Escribir "|           1.Acción                   |";
			Escribir "|           2.Ciencia ficción          |";
			Escribir "|           3.Terror                   |";
			Escribir "|--------------------------------------|";
			Escribir "|  Ingrese su opcion:                  |";
			Escribir "|______________________________________|";
			Leer categoria;
			
			Limpiar Pantalla;
			
			Segun categoria Hacer
				1:
					Escribir "1. ", peliculaAccion1;
					Escribir "2. ", peliculaAccion2;
					Escribir "3. ", peliculaAccion3;
				2:
					Escribir "1. ", peliculaCienciaFiccion1;
					Escribir "2. ", peliculaCienciaFiccion2;
					Escribir "3. ", peliculaCienciaFiccion3;
				3:
					Escribir "1. ", peliculaTerror1;
					Escribir "2. ", peliculaTerror2;
					Escribir "3. ", peliculaTerror3;
			FinSegun
		2:
			Escribir " ----------SECCION DE ALQUILER---------";
			Escribir "|           1.Acción                   |";
			Escribir "|           2.Ciencia ficción          |";
			Escribir "|           3.Terror                   |";
			Escribir "|--------------------------------------|";
			Escribir "|  Ingrese su opcion:                  |";
			Escribir "|______________________________________|";
			Leer categoria;
			
			Limpiar Pantalla;
			
			Segun categoria Hacer
				1:	
					Escribir "-----PELICULAS DE ACCION--------";
					Escribir "";
					Escribir "    1. ", peliculaAccion1;
					Escribir "    2. ", peliculaAccion2;
					Escribir "    3. ", peliculaAccion3;
					Leer opcionAlquilar;
					
					Limpiar Pantalla;
					
					Segun opcionAlquilar hacer
						1:
							peliculaAlquilada <- peliculaAccion1;
						2:
							peliculaAlquilada <- peliculaAccion2;
						3:
							peliculaAlquilada <- peliculaAccion3;
						De Otro Modo:
							Escribir "La pelicula seleccionada no esta en nuestra biblioteca";
							
					FinSegun
					
				2:
					Escribir "-----PELICULAS DE CIENCIA FICCION-----";
					Escribir "";
					Escribir "      1. ", peliculaCienciaFiccion1;
					Escribir "      2. ", peliculaCienciaFiccion2;
					Escribir "      3. ", peliculaCienciaFiccion3;
					Leer opcionAlquilar;
					
					Limpiar Pantalla;
					
					Segun opcionAlquilar hacer
						1:
							peliculaAlquilada <- peliculaCienciaFiccion1;
						2:
							peliculaAlquilada <- peliculaCienciaFiccion2;
						3:
							peliculaAlquilada <- peliculaCienciaFiccion3;
						De Otro Modo:
							Escribir "la pelicula seleccionada no esta en nuestra biblioteca";
							
					FinSegun
				3:
					Escribir "------PELICULAS DE TERROR-------";
					Escribir "";
					Escribir "       1. ", peliculaTerror1;
					Escribir "       2. ", peliculaTerror2;
					Escribir "       3. ", peliculaTerror3;
					Leer opcionAlquilar;
					
					Limpiar Pantalla;
					
					Segun opcionAlquilar hacer
						1:
							peliculaAlquilada <- peliculaTerror1;
						2:
							peliculaAlquilada <- peliculaTerror2;
						3:
							peliculaAlquilada <- peliculaTerror3;
						De Otro Modo:
							Escribir "la pelicula seleccionada no esta en nuestra biblioteca";
							
					FinSegun
			FinSegun
			
			si (peliculaAlquilada <> "") Entonces
				Escribir "Ingrese su nombre completo";
				leer nombre;
				Escribir "Ingrese su numero de cedula";
				Leer cedula;
				Escribir "Ingrese su numero de celular";
				Leer telefono;
				
				Limpiar Pantalla;
				
				Escribir "--------ALQUILER EXITOSO--------";
				Escribir "Datos de alquiler";
				
				Escribir "Nombre de pelicula:   ", peliculaAlquilada;
				Escribir "nombre del cliente:   ", nombre;
				Escribir "cedula del cliente:   ", cedula;
				Escribir "telefono del cliente: ", telefono;
				
			FinSi
			
		3:
			Escribir "--------SECCION DE ANOTACIONES-----------";
			Escribir "";
			Escribir "Ingrese su nombre completo: ";
			Leer nombre;
			Escribir "Ingrese su cedula: ";
			Leer  cedula;
			Escribir "Ingrese su telefono: ";
			Leer telefono;
			Escribir "Describa su anotación: ";
			Leer anotacion;
			
			Limpiar Pantalla;
			
			Escribir "El usuario ", nombre, " con cedula de ciudadania ", cedula, " y telefono ", telefono, " describe que: ";
			Escribir anotacion;
			
	FinSegun
	
FinProceso

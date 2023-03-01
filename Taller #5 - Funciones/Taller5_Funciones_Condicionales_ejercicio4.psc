// Imprime por consola el menu principal
SubProceso opcion <- menuPrincipal()
	Definir opcion Como Entero;
	Escribir " -------MENU DE LA TIENDA DE PELICULAS------";
	Escribir "|                                           |";
	Escribir "|         1. Consultar peliculas            |";
	Escribir "|         2. Alquilar pelicula              |";
	Escribir "|         3. Dejar Anotación                |";
	Escribir "|___________________________________________|";
	Escribir Sin Saltar"|  Ingrese su opcion:";
	Leer opcion;
FinSubProceso

//Imprime por consola el menu para la opcion de consulta de peliculas
SubProceso opcion <- menuConsulta(palabra)
	Definir opcion Como Entero;
	Escribir " ----------SECCION DE ",palabra, " ---------";
	Escribir "|                                      |";
	Escribir "|           1.Acción                   |";
	Escribir "|           2.Ciencia ficción          |";
	Escribir "|           3.Terror                   |";
	Escribir "|--------------------------------------|";
	Escribir Sin Saltar"|  Ingrese su opcion:";
	Leer opcion;
FinSubProceso

// Imprime por pantalla el comprobante de que el alquiler fue exitoso
SubProceso comprobanteAlquiler(peliculaAlquilada, nombre, cedula, telefono)
	Escribir "--------ALQUILER EXITOSO--------------";
	Escribir "Datos de alquiler";
	Escribir "";
	Escribir "Nombre de pelicula:   ", peliculaAlquilada;
	Escribir "nombre del cliente:   ", nombre;
	Escribir "cedula del cliente:   ", cedula;
	Escribir "telefono del cliente: ", telefono;
	Escribir "--------------------------------------";
FinSubProceso

// Muestra las peliculas de la categoria x que se quieran consultar
SubProceso mostrarConsulta(pelicula1,pelicula2,pelicula3)
	Escribir "1. ", pelicula1;
	Escribir "2. ", pelicula2;
	Escribir "3. ", pelicula3;
FinSubProceso

// Muestra las peliculas de la categoria x que se quiera alquilar, y captura la opcion de la pelicula elegida
SubProceso opcion <- capturarOpcionPelicula(pelicula1,pelicula2,pelicula3)
	Definir opcion Como Entero;
	Escribir "";
	mostrarconsulta(pelicula1,pelicula2,pelicula3);
	Escribir "--------------------------------------";
	Escribir Sin Saltar" Ingrese su opcion: ";
	Leer opcion;
FinSubProceso

// Devuelve el nombre de la pelicula que se desee alquilar de la categoria x
SubProceso peliculaAlquilada <- peliculaAlquilar(pelicula1,pelicula2,pelicula3, genero)
	Definir opcion Como Entero;
	Definir peliculaAlquilada Como Caracter;;
	
	Escribir "-----PELICULAS DE ", genero, "--------";
	opcion <- capturarOpcionPelicula(pelicula1, pelicula2, pelicula3);
	Limpiar Pantalla;
	
	Segun opcion hacer
		1:
			peliculaAlquilada <- pelicula1;
		2:
			peliculaAlquilada <- pelicula2;
		3:
			peliculaAlquilada <- pelicula3;
		De Otro Modo:
			peliculaAlquilada <- "";
			Escribir "la pelicula seleccionada no esta en nuestra biblioteca";
	FinSegun
FinSubProceso

// Permite al usuario dejar una anotacion
SubProceso dejarAnotacion()
	Definir nombre, anotacion Como Caracter;
	Definir cedula, telefono Como Entero;
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
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio4
	
	Definir opcion1 Como Entero;
	Definir opcion2 Como Entero;
	Definir opcion3 Como Entero;
	Definir nombre Como Caracter;
	Definir cedula Como Entero;
	Definir telefono Como Entero;
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
	
	opcion1 <- menuPrincipal();
	Limpiar Pantalla;
	
	Segun opcion1 Hacer
		1:
			opcion2 <- menuConsulta("CONSULTA");
			Limpiar Pantalla;
			
			Segun opcion2 Hacer
				1:
					mostrarConsulta(peliculaAccion1,peliculaAccion2, peliculaAccion3);
				2:
					mostrarConsulta(peliculaCienciaFiccion1,peliculaCienciaFiccion2, peliculaCienciaFiccion3);
				3:
					mostrarConsulta(peliculaTerror1,peliculaTerror2, peliculaTerror3);
			FinSegun
			
		2:
			opcion2 <- menuConsulta("ALQUILER");
			Limpiar Pantalla;
			
			Segun opcion2 Hacer
				1:	
					peliculaAlquilada <- peliculaAlquilar(peliculaAccion1,peliculaAccion2,peliculaAccion3, "ACCION");
				2:
					peliculaAlquilada <- peliculaAlquilar(peliculaCienciaFiccion1,peliculaCienciaFiccion2,peliculaCienciaFiccion3, "CIENCIA FICCION");
				3:
					peliculaAlquilada <- peliculaAlquilar(peliculaTerror1,peliculaTerror2,peliculaTerror3, "TERROR");
			FinSegun
			
			si (peliculaAlquilada <> "") Entonces
				Escribir "Ingrese su nombre completo";
				leer nombre;
				Escribir "Ingrese su numero de documento";
				Leer cedula;
				Escribir "Ingrese su numero de celular";
				Leer telefono;
				
				Limpiar Pantalla;
				si(nombre<>"" & cedula > 0 & telefono > 0)Entonces
					comprobanteAlquiler(peliculaAlquilada, nombre, cedula, telefono);
				siNo
					Escribir "Error, faltaron campos por llenar";
				FinSi
			FinSi
			
		3:
			dejarAnotacion();
			
	FinSegun
	
FinProceso

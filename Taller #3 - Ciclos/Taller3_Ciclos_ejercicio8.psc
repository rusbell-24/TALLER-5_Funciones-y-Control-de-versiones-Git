Proceso Taller3_Ciclos_ejercicio8
	
	// La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza automovilística y 
	// establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción. Para cada usuario se debe permitir registrar su
	// ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no).
	// Recuerde que el sistema debe terminar cuando el usuario así lo indique. Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en
	// su totalidad.
	
	Definir opcion, numeroUsuariosExistentes Como Entero;
	
	Definir nombre, nombre1, nombre2, nombre3, nombre4, nombre5, nombre6, nombre7, nombre8 Como Caracter;
	Definir numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento7, numeroDocumento8 Como Entero;
	Definir nota1, nota2, nota3, nota4, nota5, nota6, nota7, nota8 Como Entero;
	Definir estadoCurso1, estadoCurso2, estadoCurso3, estadoCurso4, estadoCurso5, estadoCurso6, estadoCurso7, estadoCurso8 Como Logico;
	Definir usuario1, usuario2, usuario3, usuario4, usuario5, usuario6, usuario7, usuario8 Como Logico;
	Definir registrado, usuariosExistentes, ExamenPresentado, encontrado Como Logico;
	
	numeroUsuariosExistentes <- 0;
	usuariosExistentes <- Falso;
	ExamenPresentado <- Falso;
	encontrado <- Falso;
	usuario1 <- Falso;
	usuario2 <- Falso;
	usuario3 <- Falso;
	usuario4 <- Falso;
	usuario5 <- Falso;
	usuario6 <- Falso;
	usuario7 <- Falso;
	usuario8 <- Falso;
	
	
	nombre1 <- "";
	numeroDocumento1 <- 0;
	estadoCurso1 <- Falso;
	nota1 <- -1;
	
	nombre2 <- "";
	numeroDocumento2 <- 0;
	estadoCurso2 <- Falso;
	nota2 <- -1;
	
	nombre3 <- "";
	numeroDocumento3 <- 0;
	estadoCurso3 <- Falso;
	nota3 <- -1;
	
	nombre4 <- "";
	numeroDocumento4 <- 0;
	estadoCurso4 <- Falso;
	nota4 <- -1;
	
	nombre5 <- "";
	numeroDocumento5 <- 0;
	estadoCurso5 <- Falso;
	nota5 <- -1;
	
	nombre6 <- "";
	numeroDocumento6 <- 0;
	estadoCurso6 <- Falso;
	nota6 <- -1;
	
	nombre7 <- "";
	numeroDocumento7 <- 0;
	estadoCurso7 <- Falso;
	nota7 <- -1;
	
	nombre8 <- "";
	numeroDocumento8 <- 0;
	estadoCurso8 <- Falso;
	nota8 <- -1;
	
	Repetir
		
		usuariosExistentes <- Falso;
		ExamenPresentado <- Falso;
		registrado <- Falso;
		numeroUsuariosExistentes <- 0;
		
		Limpiar Pantalla;
		
		Escribir "____________ESCUELA AUTOMOVILISTICA EL MAESTRO_____________";
		Escribir "";
		Escribir "OPCIONES...................................................";
		Escribir "";
		Escribir "      1. Registrarme en el curso ";
		Escribir "      2. Presentar prueba ";
		Escribir "      3. Consultar usuarios que terminarón el curso";
		Escribir "      4. Resultados de la prueba del curso";
		Escribir "      5. Listar todos los usuarios";
		Escribir "      6. Salir del sistema";
		Escribir "-----------------------------------------------------------";
		Escribir Sin Saltar "	Ingrese su opcion: ";
		Leer opcion;
		
		si (opcion = 1 | opcion = 2 | opcion = 3 | opcion = 4 | opcion = 5) Entonces
			si ( nombre1 <> "" & numeroDocumento1 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario1 <- Verdadero;
			FinSi
			si ( nombre2 <> "" & numeroDocumento2 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario2 <- Verdadero;
			FinSi
			si ( nombre3 <> "" & numeroDocumento3 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario3 <- Verdadero;
			FinSi
			si ( nombre4 <> "" & numeroDocumento4 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario4 <- Verdadero;
			FinSi
			si ( nombre5 <> "" & numeroDocumento5 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario5 <- Verdadero;
			FinSi
			si ( nombre6 <> "" & numeroDocumento6 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario6 <- Verdadero;
			FinSi
			si ( nombre7 <> "" & numeroDocumento7 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario7 <- Verdadero;
			FinSi
			si ( nombre8 <> "" & numeroDocumento8 > 0 ) Entonces
				numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
				usuariosExistentes <- Verdadero;
				usuario8 <- Verdadero;
			FinSi
			
		FinSi
		
		Segun opcion Hacer
			1:
				si (numeroUsuariosExistentes < 8) Entonces
					
					Limpiar Pantalla;
					
					Escribir Sin Saltar "Por favor ingrese su nombre : ";
					Leer nombre;
					Escribir Sin Saltar "Por favor ingrese su numero de documento: ";
					Leer numeroDocumento;
					
					si(NO usuario1 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento2 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento8) Entonces
								nombre1 <- nombre;
								numeroDocumento1 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre1, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario registrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					si(NO usuario2 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento8) Entonces
								nombre2 <- nombre;
								numeroDocumento2 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre2, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
					si(NO usuario3 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento2 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento8) Entonces
								nombre3 <- nombre;
								numeroDocumento3 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre3, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
					si(NO usuario4 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento2 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento8) Entonces
								nombre4 <- nombre;
								numeroDocumento4 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre4, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
					si(NO usuario5 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento2 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento8) Entonces
								nombre5 <- nombre;
								numeroDocumento5 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre5, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
					si(NO usuario6 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento2 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento8) Entonces
								nombre6 <- nombre;
								numeroDocumento6 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre6, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
					si(NO usuario7 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento2 & numeroDocumento <> numeroDocumento8) Entonces
								nombre7 <- nombre;
								numeroDocumento7 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre7, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
					si(NO usuario8 & NO registrado) Entonces
						si ( nombre <> "" & numeroDocumento > 0 ) Entonces
							si(numeroDocumento <> numeroDocumento1 & numeroDocumento <> numeroDocumento3 & numeroDocumento <> numeroDocumento4 & numeroDocumento <> numeroDocumento5 & numeroDocumento <> numeroDocumento6 & numeroDocumento <> numeroDocumento7 & numeroDocumento <> numeroDocumento2) Entonces
								nombre8 <- nombre;
								numeroDocumento8 <- numeroDocumento;
								Limpiar Pantalla;
								Escribir "El usuario ", nombre8, " se registro de forma exitosa ";
								registrado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								Escribir "Ya existe un usuario regsitrado con este numero de documento ";
								registrado <- Verdadero;
							FinSi
						SiNo
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
					FinSi
					
				SiNo
					Limpiar Pantalla;
					Escribir "La academia ya no cuenta con cupos disponibles. ";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar..........";
				Esperar Tecla;
				
			2:
				si(usuariosExistentes) Entonces
					Limpiar Pantalla;
					Escribir Sin Saltar "por favor ingrese su numero de documento: ";
					Leer numeroDocumento;
					si(usuario1)Entonces
						si (numeroDocumento = numeroDocumento1 & NO ExamenPresentado) Entonces
							si(nota1 = -1) Entonces
								nota1 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre1;
								Escribir "Tu nota en la prueba es: ", nota1;
								si(nota1 >= 6) Entonces
									estadoCurso1 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
							
						FinSi
					FinSi
					si(usuario2 )Entonces
						si (numeroDocumento = numeroDocumento2 & NO ExamenPresentado) Entonces
							si(nota2 = -1) Entonces
								nota2 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre2;
								Escribir "Tu nota en la prueba es: ", nota2;
								si(nota2 >= 6) Entonces
									estadoCurso2 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(usuario3 )Entonces
						si (numeroDocumento = numeroDocumento3 & NO ExamenPresentado) Entonces
							si(nota3 = -1) Entonces
								nota3 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre3;
								Escribir "Tu nota en la prueba es: ", nota3;
								si(nota3 >= 6) Entonces
									estadoCurso3 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(usuario4)Entonces
						si (numeroDocumento = numeroDocumento4 & NO ExamenPresentado) Entonces
							si(nota4 = -1) Entonces
								nota4 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre4;
								Escribir "Tu nota en la prueba es: ", nota4;
								si(nota4 >= 6) Entonces
									estadoCurso4 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(usuario5 )Entonces
						si (numeroDocumento = numeroDocumento5 & NO ExamenPresentado) Entonces
							si(nota5 = -1) Entonces
								nota5 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre5;
								Escribir "Tu nota en la prueba es: ", nota5;
								si(nota5 >= 6) Entonces
									estadoCurso5 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(usuario6 )Entonces
						si (numeroDocumento = numeroDocumento6 & NO ExamenPresentado) Entonces
							si(nota6 = -1) Entonces
								nota6 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre6;
								Escribir "Tu nota en la prueba es: ", nota6;
								si(nota6 >= 6) Entonces
									estadoCurso6 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(usuario7 )Entonces
						si (numeroDocumento = numeroDocumento7 & NO ExamenPresentado) Entonces
							si(nota7 = -1) Entonces
								nota7 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre7;
								Escribir "Tu nota en la prueba es: ", nota7;
								si(nota7 >= 6) Entonces
									estadoCurso7 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(usuario8 )Entonces
						si (numeroDocumento = numeroDocumento8 & NO ExamenPresentado) Entonces
							si(nota8 = -1) Entonces
								nota8 <- Azar(11);
								ExamenPresentado <- Verdadero;
								Limpiar Pantalla;
								Escribir "Hola ", nombre8;
								Escribir "Tu nota en la prueba es: ", nota8;
								si(nota8 >= 6) Entonces
									estadoCurso8 <- Verdadero;
								FinSi
							SiNo
								Limpiar Pantalla;
								ExamenPresentado <- Verdadero;
								Escribir "Tu ya presentaste el examen anteriormente";
							FinSi
						FinSi
					FinSi
					si(NO ExamenPresentado) Entonces
						Limpiar Pantalla;
						Escribir "El numero de documento ingresado no coincide con nuestra base de datos";
					FinSi
				SiNo
					Limpiar Pantalla;
					Escribir "No existen usuarios para presentar prueba";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar.........";
				Esperar Tecla;
			3:
				si(usuariosExistentes) Entonces
					Limpiar Pantalla;
					si (estadoCurso1 o estadoCurso2 o estadoCurso3 o estadoCurso4 o estadoCurso5 o estadoCurso6 o estadoCurso7 o estadoCurso8) Entonces
						Escribir "______LISTADO DE USUARIOS QUE APROBARON EL CURSO__________";
						Escribir "";
						si (estadoCurso1) Entonces
							Escribir "-> Nombre: ", nombre1, "   Cedula: ", numeroDocumento1, "   Nota: ", nota1;
						FinSi
						si (estadoCurso2) Entonces
							Escribir "-> Nombre: ", nombre2, "   Cedula: ", numeroDocumento2, "   Nota: ", nota2;
						FinSi
						si (estadoCurso3) Entonces
							Escribir "-> Nombre: ", nombre3, "   Cedula: ", numeroDocumento3, "   Nota: ", nota3;
						FinSi
						si (estadoCurso4) Entonces
							Escribir "-> Nombre: ", nombre4, "   Cedula: ", numeroDocumento4, "   Nota: ", nota4;
						FinSi
						si (estadoCurso5) Entonces
							Escribir "-> Nombre: ", nombre5, "   Cedula: ", numeroDocumento5, "   Nota: ", nota5;
						FinSi
						si (estadoCurso6) Entonces
							Escribir "-> Nombre: ", nombre6, "   Cedula: ", numeroDocumento6, "   Nota: ", nota6;
						FinSi
						si (estadoCurso7) Entonces
							Escribir "-> Nombre: ", nombre7, "   Cedula: ", numeroDocumento7, "   Nota: ", nota7;
						FinSi
						si (estadoCurso8) Entonces
							Escribir "-> Nombre: ", nombre8, "   Cedula: ", numeroDocumento8, "   Nota: ", nota8;
						FinSi
					SiNo
						Escribir "Ningun estudiante a terminado el curso hasta el momento...";
					FinSi
					
				SiNo
					Limpiar Pantalla;
					Escribir "No se han ragistrado usuarios aun";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar.........";
				Esperar Tecla;
				
			4:
				si(usuariosExistentes) Entonces
					Limpiar Pantalla;
					Escribir Sin Saltar "por favor ingrese su numero de documento: ";
					Leer numeroDocumento;
					si(usuario1)Entonces
						si (numeroDocumento = numeroDocumento1) Entonces
							Limpiar Pantalla;
							si(nota1 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre1;
								Escribir "Documento: ", numeroDocumento1;
								Escribir "Nota:      ", nota1;
								si(estadoCurso1) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario2)Entonces
						si (numeroDocumento = numeroDocumento2) Entonces
							Limpiar Pantalla;
							si(nota2 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre2;
								Escribir "Documento: ", numeroDocumento2;
								Escribir "Nota:      ", nota2;
								si(estadoCurso2) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario3)Entonces
						si (numeroDocumento = numeroDocumento3) Entonces
							Limpiar Pantalla;
							si(nota3 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre3;
								Escribir "Documento: ", numeroDocumento3;
								Escribir "Nota:      ", nota3;
								si(estadoCurso3) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario4)Entonces
						si (numeroDocumento = numeroDocumento4) Entonces
							Limpiar Pantalla;
							si(nota4 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre4;
								Escribir "Documento: ", numeroDocumento4;
								Escribir "Nota:      ", nota4;
								si(estadoCurso4) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario5)Entonces
						si (numeroDocumento = numeroDocumento5) Entonces
							Limpiar Pantalla;
							si(nota5 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre5;
								Escribir "Documento: ", numeroDocumento5;
								Escribir "Nota:      ", nota5;
								si(estadoCurso5) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario6)Entonces
						si (numeroDocumento = numeroDocumento6) Entonces
							Limpiar Pantalla;
							si(nota6 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre6;
								Escribir "Documento: ", numeroDocumento6;
								Escribir "Nota:      ", nota6;
								si(estadoCurso6) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario7)Entonces
						si (numeroDocumento = numeroDocumento7) Entonces
							Limpiar Pantalla;
							si(nota7 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre7;
								Escribir "Documento: ", numeroDocumento7;
								Escribir "Nota:      ", nota7;
								si(estadoCurso7) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
					si(usuario8)Entonces
						si (numeroDocumento = numeroDocumento8) Entonces
							Limpiar Pantalla;
							si(nota8 <> -1) Entonces
								encontrado <- Verdadero;
								Escribir "RESULTADOS____________________________";
								Escribir "";
								Escribir "Nombre:    ", nombre8;
								Escribir "Documento: ", numeroDocumento8;
								Escribir "Nota:      ", nota8;
								si(estadoCurso8) Entonces
									Escribir "Estado:    Aprobado";
								SiNo
									Escribir "Estado:    Reprobado";
								FinSi
							SiNo
								Escribir "Aun no has presentado el examen";
							FinSi
						FinSi
					FinSi
				SiNo
					Limpiar Pantalla;
					Escribir "No existen usuarios para consultar";
					
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar.........";
				Esperar Tecla;
			5:
				si(usuariosExistentes) Entonces
					Limpiar Pantalla;
					si (usuario1) Entonces
						Escribir "";
						Escribir "Usuario #1:";
						Escribir "-> Nombre:   ", nombre1;
						Escribir "-> Documento:   ", numeroDocumento1;
					FinSi
					
					si (usuario2) Entonces
						Escribir "";
						Escribir "Usuario #2:";
						Escribir "-> Nombre:   ", nombre2;
						Escribir "-> Documento:   ", numeroDocumento2;
					FinSi
					
					si (usuario3) Entonces
						Escribir "";
						Escribir "Usuario #3:";
						Escribir "-> Nombre:   ", nombre3;
						Escribir "-> Documento:   ", numeroDocumento3;
					FinSi
					
					si (usuario4) Entonces
						Escribir "";
						Escribir "Usuario #4:";
						Escribir "-> Nombre:   ", nombre4;
						Escribir "-> Documento:   ", numeroDocumento4;
					FinSi
					
					si (usuario5) Entonces
						Escribir "";
						Escribir "Usuario #5:";
						Escribir "-> Nombre:   ", nombre5;
						Escribir "-> Documento:   ", numeroDocumento5;
					FinSi
					
					si (usuario6) Entonces
						Escribir "";
						Escribir "Usuario #6:";
						Escribir "-> Nombre:   ", nombre6;
						Escribir "-> Documento:   ", numeroDocumento6;
					FinSi
					
					si (usuario7) Entonces
						Escribir "";
						Escribir "Usuario #7:";
						Escribir "-> Nombre:   ", nombre7;
						Escribir "-> Documento:   ", numeroDocumento7;
					FinSi
					
					si (usuario8) Entonces
						Escribir "";
						Escribir "Usuario #8:";
						Escribir "-> Nombre:   ", nombre8;
						Escribir "-> Documento:   ", numeroDocumento8;
					FinSi
					
				siNo
					Limpiar Pantalla;
					Escribir "No se han ragistrado usuarios";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar..........";
				Esperar Tecla;
				
		FinSegun
		
		
	Hasta Que (opcion = 6)
	Limpiar Pantalla;
	Escribir "HASTA PRONTO......";
	
FinProceso

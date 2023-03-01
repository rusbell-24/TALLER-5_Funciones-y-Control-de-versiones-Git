// La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus
// clientes en los cursos de enseñanza automovilística y establecer quienes lo han aprobado para
// continuar con el trámite de adquirir la licencia de conducción. Para cada usuario se debe permitir
// registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la
// prueba del curso (si fueron aprobados o no). Recuerde que el sistema debe terminar cuando el
// usuario así lo indique. Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.



SubProceso inicializarValores(nombre Por Referencia, numeroDocumento Por Referencia, estadoCurso Por Referencia, nota Por Referencia)
	
	nombre <- "";
	numeroDocumento <- 0;
	estadoCurso <- Falso;
	nota <- -1;
	
FinSubProceso


SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
	Limpiar Pantalla;
	Escribir "____________Escuela automovilistica EL MAESTRO_____________";
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
	
FinSubProceso


SubProceso permisos(numeroUsuariosExistentes Por Referencia,usuariosExistentes Por Referencia, usuario Por Referencia)
	
	numeroUsuariosExistentes <- numeroUsuariosExistentes + 1;
	usuariosExistentes <- Verdadero;
	usuario <- Verdadero;
	
FinSubProceso


SubProceso registro(nombre Por Referencia, numeroDocumento Por Referencia, registrado Por Referencia, nombreARegistrar, numeroDocumentoARegistrar, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento7)
	
	si ( nombreARegistrar <> "" & numeroDocumentoARegistrar > 0 ) Entonces
		si(numeroDocumentoARegistrar <> numeroDocumento1 & numeroDocumentoARegistrar <> numeroDocumento2 & numeroDocumentoARegistrar <> numeroDocumento3 & numeroDocumentoARegistrar <> numeroDocumento4 & numeroDocumentoARegistrar <> numeroDocumento5 & numeroDocumentoARegistrar <> numeroDocumento6 & numeroDocumentoARegistrar <> numeroDocumento7) Entonces
			nombre <- nombreARegistrar;
			numeroDocumento <- numeroDocumentoARegistrar;
			Limpiar Pantalla;
			Escribir "El usuario ", nombre, " se registro de forma exitosa ";
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
	
FinSubProceso


SubProceso presentarPrueba(numeroDocumentoIngresado, numeroDocumento, nombre,nota Por Referencia, ExamenPresentado Por Referencia, estadoCurso Por Referencia)
	
	si (numeroDocumentoIngresado = numeroDocumento) Entonces
		si(nota = -1) Entonces
			nota <- Azar(11);
			ExamenPresentado <- Verdadero;
			Limpiar Pantalla;
			Escribir "Hola ", nombre;
			Escribir "Tu nota en la prueba es: ", nota;
			si(nota >= 6) Entonces
				estadoCurso <- Verdadero;
			FinSi
		SiNo
			Limpiar Pantalla;
			ExamenPresentado <- Verdadero;
			Escribir "Tu ya presentaste el examen anteriormente";
		FinSi
	FinSi
	
FinSubProceso


SubProceso mostrarAprobados(nombre, numeroDocumento, nota)
	
	Escribir "-> Nombre: ", nombre, "   Cedula: ", numeroDocumento, "   Nota: ", nota;
	
FinSubProceso


SubProceso consultarTuResultado(numeroDocumentoConsultar, numeroDocumento, nota, nombre, estadoCurso, encontrado Por Referencia )
	
	si (numeroDocumentoConsultar = numeroDocumento) Entonces
		Limpiar Pantalla;
		si(nota <> -1) Entonces
			encontrado <- Verdadero;
			Escribir "RESULTADOS____________________________";
			Escribir "";
			Escribir "Nombre:    ", nombre;
			Escribir "Documento: ", numeroDocumento;
			Escribir "Nota:      ", nota;
			si(estadoCurso) Entonces
				Escribir "Estado:    Aprobado";
			SiNo
				Escribir "Estado:    Reprobado";
			FinSi
		SiNo
			Escribir "Aun no has presentado el examen";
		FinSi
	FinSi
	
FinSubProceso


SubProceso listarEstudiantes(indice, nombre, numeroDocumento)
	
	Escribir "";
	Escribir "Usuario #",indice,":";
	Escribir "-> Nombre:   ", nombre;
	Escribir "-> Documento:   ", numeroDocumento;
	
FinSubProceso



Proceso Taller5_Funciones_Ciclos_ejercicio8
	
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
	
	
	inicializarValores(nombre1, numeroDocumento1, estadoCurso1, nota1);
	
	inicializarValores(nombre2, numeroDocumento2, estadoCurso2, nota2);
	
	inicializarValores(nombre3, numeroDocumento3, estadoCurso3, nota3);
	
	inicializarValores(nombre4, numeroDocumento4, estadoCurso4, nota4);
	
	inicializarValores(nombre5, numeroDocumento5, estadoCurso5, nota5);
	
	inicializarValores(nombre6, numeroDocumento6, estadoCurso6, nota6);
	
	inicializarValores(nombre7, numeroDocumento7, estadoCurso7, nota7);
	
	inicializarValores(nombre8, numeroDocumento8, estadoCurso8, nota8);
	
	Repetir
		
		usuariosExistentes <- Falso;
		ExamenPresentado <- Falso;
		registrado <- Falso;
		numeroUsuariosExistentes <- 0;
		
		opcion <- menuPrincipal();
		
		si (opcion = 1 | opcion = 2 | opcion = 3 | opcion = 4 | opcion = 5) Entonces
			
			si ( nombre1 <> "" & numeroDocumento1 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario1);
			FinSi
			si ( nombre2 <> "" & numeroDocumento2 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario2);
			FinSi
			si ( nombre3 <> "" & numeroDocumento3 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario3);
			FinSi
			si ( nombre4 <> "" & numeroDocumento4 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario4);
			FinSi
			si ( nombre5 <> "" & numeroDocumento5 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario5);
			FinSi
			si ( nombre6 <> "" & numeroDocumento6 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario6);
			FinSi
			si ( nombre7 <> "" & numeroDocumento7 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario7);
			FinSi
			si ( nombre8 <> "" & numeroDocumento8 > 0 ) Entonces
				permisos(numeroUsuariosExistentes, usuariosExistentes, usuario8);
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
						registro(nombre1, numeroDocumento1, registrado, nombre, numeroDocumento, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento7, numeroDocumento8);
					FinSi
					
					si(NO usuario2 & NO registrado) Entonces
						registro(nombre2, numeroDocumento2, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento7, numeroDocumento8);
					FinSi
					
					si(NO usuario3 & NO registrado) Entonces
						registro(nombre3, numeroDocumento3, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento7, numeroDocumento8);
					FinSi
					
					si(NO usuario4 & NO registrado) Entonces
						registro(nombre4, numeroDocumento4, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento5, numeroDocumento6, numeroDocumento7, numeroDocumento8);
					FinSi
					
					si(NO usuario5 & NO registrado) Entonces
						registro(nombre5, numeroDocumento5, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento6, numeroDocumento7, numeroDocumento8);
					FinSi
					
					si(NO usuario6 & NO registrado) Entonces
						registro(nombre6, numeroDocumento6, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento7, numeroDocumento8);
					FinSi
					
					si(NO usuario7 & NO registrado) Entonces
						registro(nombre7, numeroDocumento7, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento8);
					FinSi
					
					si(NO usuario8 & NO registrado) Entonces
						registro(nombre8, numeroDocumento8, registrado, nombre,numeroDocumento, numeroDocumento1, numeroDocumento2, numeroDocumento3, numeroDocumento4, numeroDocumento5, numeroDocumento6, numeroDocumento7);
					FinSi
					
				SiNo
					Limpiar Pantalla;
					Escribir "La academia ya no cuenta con cupos disponibles. ";
				FinSi
				
			2:
				si(usuariosExistentes) Entonces
					
					Limpiar Pantalla;
					Escribir Sin Saltar "por favor ingrese su numero de documento: ";
					Leer numeroDocumento;
					
					si(usuario1 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento1, nombre1, nota1, ExamenPresentado, estadoCurso1);
					FinSi
					
					si(usuario2 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento2, nombre2, nota2, ExamenPresentado, estadoCurso2);
					FinSi
					si(usuario3 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento3, nombre3, nota3, ExamenPresentado, estadoCurso3);
					FinSi
					si(usuario4 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento4, nombre4, nota4, ExamenPresentado, estadoCurso4);
					FinSi
					si(usuario5 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento5, nombre5, nota5, ExamenPresentado, estadoCurso5);
					FinSi
					si(usuario6 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento6, nombre6, nota6, ExamenPresentado, estadoCurso6);
					FinSi
					si(usuario7 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento7, nombre7, nota7, ExamenPresentado, estadoCurso7);
					FinSi
					si(usuario8 & NO ExamenPresentado)Entonces
						presentarPrueba(numeroDocumento, numeroDocumento8, nombre8, nota8, ExamenPresentado, estadoCurso8);
					FinSi
					si(NO ExamenPresentado) Entonces
						Limpiar Pantalla;
						Escribir "El numero de documento ingresado no coincide con nuestra base de datos";
					FinSi
				SiNo
					Limpiar Pantalla;
					Escribir "No existen usuarios para presentar prueba";
				FinSi
				
			3:
				si(usuariosExistentes) Entonces
					
					Limpiar Pantalla;
					
					si (estadoCurso1 o estadoCurso2 o estadoCurso3 o estadoCurso4 o estadoCurso5 o estadoCurso6 o estadoCurso7 o estadoCurso8) Entonces
						
						Escribir "______LISTADO DE USUARIOS QUE APROBARON EL CURSO__________";
						Escribir "";
						
						si (estadoCurso1) Entonces
							mostrarAprobados(nombre1, numeroDocumento1, nota1);
						FinSi
						si (estadoCurso2) Entonces
							mostrarAprobados(nombre2, numeroDocumento2, nota2);
						FinSi
						si (estadoCurso3) Entonces
							mostrarAprobados(nombre3, numeroDocumento3, nota3);
						FinSi
						si (estadoCurso4) Entonces
							mostrarAprobados(nombre4, numeroDocumento4, nota4);
						FinSi
						si (estadoCurso5) Entonces
							mostrarAprobados(nombre5, numeroDocumento5, nota5);
						FinSi
						si (estadoCurso6) Entonces
							mostrarAprobados(nombre6, numeroDocumento6, nota6);
						FinSi
						si (estadoCurso7) Entonces
							mostrarAprobados(nombre7, numeroDocumento7, nota7);
						FinSi
						si (estadoCurso8) Entonces
							mostrarAprobados(nombre8, numeroDocumento8, nota8);
						FinSi
						
					SiNo
						Escribir "Ningun estudiante a terminado el curso hasta el momento...";
					FinSi
				SiNo
					Limpiar Pantalla;
					Escribir "No se han ragistrado usuarios aun";
				FinSi
				
			4:
				si(usuariosExistentes) Entonces
					
					Limpiar Pantalla;
					Escribir Sin Saltar "por favor ingrese su numero de documento: ";
					Leer numeroDocumento;
					
					si(usuario1)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento1, nota1, nombre1, estadoCurso1, encontrado);
					FinSi
					si(usuario2)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento2, nota2, nombre2, estadoCurso2, encontrado);
					FinSi
					si(usuario3)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento3, nota3, nombre3, estadoCurso3, encontrado);
					FinSi
					si(usuario4)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento4, nota4, nombre4, estadoCurso4, encontrado);
					FinSi
					si(usuario5)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento5, nota5, nombre5, estadoCurso5, encontrado);
					FinSi
					si(usuario6)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento6, nota6, nombre6, estadoCurso6, encontrado);
					FinSi
					si(usuario7)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento7, nota7, nombre7, estadoCurso7, encontrado);
					FinSi
					si(usuario8)Entonces
						consultarTuResultado(numeroDocumento, numeroDocumento8, nota8, nombre8, estadoCurso8, encontrado);
					FinSi
				SiNo
					Limpiar Pantalla;
					Escribir "No existen usuarios para consultar";
					
				FinSi
				
			5:
				si(usuariosExistentes) Entonces
					
					Limpiar Pantalla;
					
					si (usuario1) Entonces
						listarEstudiantes(1, nombre1, numeroDocumento1);
					FinSi
					
					si (usuario2) Entonces
						listarEstudiantes(2, nombre2, numeroDocumento2);
					FinSi
					
					si (usuario3) Entonces
						listarEstudiantes(3, nombre3, numeroDocumento3);
					FinSi
					
					si (usuario4) Entonces
						listarEstudiantes(4, nombre4, numeroDocumento4);
					FinSi
					
					si (usuario5) Entonces
						listarEstudiantes(5, nombre5, numeroDocumento5);
					FinSi
					
					si (usuario6) Entonces
						listarEstudiantes(6, nombre6, numeroDocumento6);
					FinSi
					
					si (usuario7) Entonces
						listarEstudiantes(7, nombre7, numeroDocumento7);
					FinSi
					
					si (usuario8) Entonces
						listarEstudiantes(8, nombre8, numeroDocumento8);
					FinSi
					
				siNo
					Limpiar Pantalla;
					Escribir "No se han ragistrado usuarios";
				FinSi
			6:
				Limpiar Pantalla;
				Escribir "HASTA PRONTO......";
				
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "La opcion ingresada es incorrecta....";
		FinSegun
		si(opcion <> 6) Entonces
			Escribir "";
			Escribir "Presione una tecla para continuar..........";
			Esperar Tecla;
		FinSi
		
	Hasta Que (opcion = 6)
	
FinProceso

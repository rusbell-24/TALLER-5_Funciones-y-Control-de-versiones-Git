// Se está creando una aplicación que va a estar conectada con un prototipo que permita
// almacenar contactos telefónicos en el dispositivo. Para ello cada contacto debe contener nombre
// completo, teléfono y organización. Se requiere que la aplicación permita añadir 3 contactos
// verificando que el número no esté almacenado, buscar contactos almacenados y eliminar
// contactos si el usuario lo requiere. Recuerde que el sistema debe terminar cuando el usuario así lo indique.


// Imprime en pantalla el menu principal de la aplicacion
SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
	Limpiar Pantalla;
	Escribir "______DIRECTORIO TELEFONICO__________";
	Escribir "OPCIONES del directorio______________";
	Escribir "";
	Escribir "       1. Buscar contactos";
	Escribir "       2. Añadir contacto";
	Escribir "       3. Eliminar contacto";
	Escribir "       4. Salir del sistema";
	Escribir "-------------------------------------";
	Escribir Sin Saltar "Ingrese su opcion: ";
	Leer opcion;
	
FinSubProceso

SubProceso mostrarContactos(numeroContacto, nombreContacto, telefonoContacto, organizacionContacto)
	Escribir "";
	Escribir "CONTACTO #",numeroContacto,":";
	Escribir "-> Nombre:       ", nombreContacto;
	Escribir "-> Telefono:     ", telefonoContacto;
	Escribir "-> Organizacion: ", organizacionContacto;
FinSubProceso

SubProceso reiniciarValores(nombreContacto Por Referencia, telefonoContacto Por Referencia, organizacionContacto Por Referencia)
	nombreContacto <- "";
	telefonoContacto <- 0;
	organizacionContacto <- "";
FinSubProceso

SubProceso solicitarDatosUsuario(nombreContacto Por Referencia, telefonoContacto Por Referencia, organizacionContacto Por Referencia)
	Escribir Sin Saltar "Ingrese nombre completo del contacto: ";
	Leer nombreContacto;
	Escribir Sin Saltar "Ingrese telefono del contacto: ";
	Leer telefonoContacto;
	Escribir Sin Saltar "Ingrese organizacion del contacto: ";
	Leer organizacionContacto;
FinSubProceso

SubProceso agregarContacto(nombreContacto Por Referencia, telefonoContacto Por Referencia, organizacionContacto Por Referencia, agregado Por Referencia, contacto Por Referencia telefonoContacto1, telefonoContacto2)
	Limpiar Pantalla;
	si (nombreContacto <> "" & telefonoContacto > 0 & organizacionContacto <> "") Entonces
		si (telefonoContacto <> telefonoContacto1 & telefonoContacto <> telefonoContacto2) Entonces
			Escribir "El contacto ", nombreContacto, " se guardo exitosamente";
			agregado <- Verdadero;
		SiNo
			reiniciarValores(nombreContacto, telefonoContacto, organizacionContacto);
			agregado <- Verdadero;
			Escribir "El numero de contacto ya existe en la biblioteca....";
		FinSi
		
	SiNo
		reiniciarValores(nombreContacto, telefonoContacto, organizacionContacto);
		agregado <- Verdadero;
		Escribir "Error, faltaron campos por llenar";
	FinSi
FinSubProceso


SubProceso actualizarEstadoContactos(contactosExistentes Por Referencia, numeroContactosExistentes Por Referencia, contacto Por Referencia)
	contactosExistentes <- Verdadero;
	numeroContactosExistentes <- numeroContactosExistentes + 1;
	contacto <- Verdadero;
FinSubProceso


Proceso Taller5_Funciones_Ciclos_ejercicio6
	
	Definir opcion, numeroContactosExistentes, numeroEliminar Como Entero;
	Definir contactosExistentes, contacto1,contacto2,contacto3, agregado, encontrado Como Logico;
	Definir nombreBuscar Como Caracter;
	
	Definir nombreContacto1 Como Caracter;
	Definir telefonoContacto1 Como Entero;
	Definir organizacionContacto1 Como Caracter;
	
	Definir nombreContacto2 Como Caracter;
	Definir telefonoContacto2 Como Entero;
	Definir organizacionContacto2 Como Caracter;
	
	Definir nombreContacto3 Como Caracter;
	Definir telefonoContacto3 Como Entero;
	Definir organizacionContacto3 Como Caracter;
	
	contacto1 <- Falso;
	contacto2 <- Falso;
	contacto3 <- Falso;
	agregado <- Falso;
	encontrado <- Falso;
	
	
	nombreContacto1 <- "";
	telefonoContacto1 <- 0;
	organizacionContacto1 <- "";
	
	nombreContacto2 <- "";
	telefonoContacto2 <- 0;
	organizacionContacto2 <- "";
	
	nombreContacto3 <- "";
	telefonoContacto3 <- 0;
	organizacionContacto3 <- "";
	
	Repetir
		
		contactosExistentes <- Falso;
		numeroContactosExistentes <- 0;
		
		opcion <- menuPrincipal();
		
		si (opcion = 1 | opcion = 2 | opcion = 3) Entonces
			si (nombreContacto1 <> "" & telefonoContacto1 > 0 & organizacionContacto1 <> "") Entonces
				actualizarEstadoContactos(contactosExistentes, numeroContactosExistentes, contacto1);
			FinSi
			si (nombreContacto2 <> "" & telefonoContacto2 > 0 & organizacionContacto2 <> "") Entonces
				actualizarEstadoContactos(contactosExistentes, numeroContactosExistentes, contacto2);
			FinSi
			si (nombreContacto3 <> "" & telefonoContacto3 > 0 & organizacionContacto3 <> "") Entonces
				actualizarEstadoContactos(contactosExistentes, numeroContactosExistentes, contacto3);
			FinSi
		FinSi
		
		Segun opcion Hacer
			1:
				encontrado <- Falso;
				si(contactosExistentes = Verdadero) Entonces
					Limpiar Pantalla;
					Escribir "Ingrese nombre del contacto  a buscar: ";
					leer nombreBuscar;
					
					si(NombreBuscar <> "") Entonces
						Limpiar Pantalla;
						si (contacto1 = Verdadero) Entonces
							si(nombreBuscar = nombreContacto1) Entonces
								mostrarContactos(1, nombreContacto1, telefonoContacto1, organizacionContacto1);
								encontrado <- Verdadero;
							FinSi
						FinSi
						si (contacto2) Entonces
							si(nombreBuscar = nombreContacto2) Entonces
								mostrarContactos(2, nombreContacto2, telefonoContacto2, organizacionContacto2);
								encontrado <- Verdadero;	
							FinSi
						FinSi
						si (contacto3) Entonces
							si(nombreBuscar = nombreContacto2) Entonces
								mostrarContactos(3, nombreContacto3, telefonoContacto3, organizacionContacto3);
								encontrado <- Verdadero;	
							FinSi
						FinSi
						si(!encontrado) Entonces
							Escribir "El nombre de contacto no fue encontrado en el directorio...";
						FinSi
					SiNo
						Escribir "No ingresaste ningun nombre...";
					FinSi
					
				siNo
					Limpiar Pantalla;
					Escribir "EL DIRECTORIO SE ENCUENTRA VACIO ";
				FinSi
				Escribir "";
				Escribir "Presione una tecla para continuar..........";
				Esperar Tecla;
			2:
				Limpiar Pantalla;
				si (numeroContactosExistentes < 3) Entonces
					agregado <- Falso;
					Limpiar Pantalla;
					si (NO contacto1 & NO agregado) Entonces
						
						solicitarDatosUsuario(nombreContacto1, telefonoContacto1, organizacionContacto1);
						agregarContacto(nombreContacto1, telefonoContacto1, organizacionContacto1, agregado, contacto1, telefonoContacto2, telefonoContacto3);
						
					FinSi
					
					si (NO contacto2 & NO agregado) Entonces
						
						solicitarDatosUsuario(nombreContacto2, telefonoContacto2, organizacionContacto2);
						agregarContacto(nombreContacto2, telefonoContacto2, organizacionContacto2, agregado, contacto2, telefonoContacto1, telefonoContacto3);
						
					FinSi
					
					si (NO contacto3 & NO agregado) Entonces
						
						solicitarDatosUsuario(nombreContacto3, telefonoContacto3, organizacionContacto3);
						agregarContacto(nombreContacto3, telefonoContacto3, organizacionContacto3, agregado,contacto3, telefonoContacto1, telefonoContacto2);
						
					FinSi
				SiNo
					Escribir "El DIRECTORIO SE ENCUENTRA LLENO ";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar.....";
				Esperar Tecla;
				
			3:
				si(contactosExistentes = Verdadero) Entonces
					Limpiar Pantalla;
					si (contacto1 = Verdadero) Entonces
						mostrarContactos(1, nombreContacto1, telefonoContacto1, organizacionContacto1);
					FinSi
					si (contacto2) Entonces
						mostrarContactos(2, nombreContacto2, telefonoContacto2, organizacionContacto2);
					FinSi
					si (contacto3) Entonces
						mostrarContactos(3, nombreContacto3, telefonoContacto3, organizacionContacto3);
					FinSi
					Escribir "";
					Escribir Sin Saltar "Ingrese el numero(#) del contacto a eliminar: ";
					Leer numeroEliminar;
					Limpiar Pantalla;
					
					Segun numeroEliminar Hacer
						1:
							reiniciarValores(nombreContacto1, telefonoContacto1, organizacionContacto1);
							contacto1 <- Falso;
							Escribir "Eliminacion de contacto EXITOSA";
						2:
							reiniciarValores(nombreContacto2, telefonoContacto2, organizacionContacto2);
							contacto2 <- Falso;
							Escribir "Eliminacion de contacto EXITOSA";
						3:
							reiniciarValores(nombreContacto3, telefonoContacto3, organizacionContacto3);
							contacto3 <- Falso;
							Escribir "Eliminacion de contacto EXITOSA";
						De Otro Modo:
							Escribir "El contacto seleccionado no existe en el directorio";
					FinSegun
				siNo
					Limpiar Pantalla;
					Escribir "EL DIRECTORIO YA SE ENCUENTRA VACIO ";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar..........";
				Esperar Tecla;
				
		FinSegun
		
	Hasta Que (opcion = 4)
	Limpiar Pantalla;
	Escribir "HASTA PRONTO........";
	
FinProceso

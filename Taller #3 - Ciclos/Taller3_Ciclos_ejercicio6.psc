Proceso Taller3_Ciclos_ejercicio6
	
	// Se está creando una aplicación que va a estar conectada con un prototipo que permita almacenar contactos telefónicos en el dispositivo.
	// Para ello cada contacto debe contener nombre completo, teléfono y organización. Se requiere que la aplicación permita añadir 3 contactos verificando
	// que el número no esté almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
	// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
	
	Definir opcion, numeroContactosExistentes, numeroEliminar Como Entero;
	Definir contactosExistentes, contacto1,contacto2,contacto3, agregado Como Logico;
	
	Definir nombreContacto1 Como Caracter;
	Definir telefonoContacto1 Como Entero;
	Definir organizacionContacto1 Como Caracter;
	
	Definir nombreContacto2 Como Caracter;
	Definir telefonoContacto2 Como Entero;
	Definir organizacionContacto2 Como Caracter;
	
	Definir nombreContacto3 Como Caracter;
	Definir telefonoContacto3 Como Entero;
	Definir organizacionContacto3 Como Caracter;
	
	contactosExistentes <- Falso;
	contacto1 <- Falso;
	contacto2 <- Falso;
	contacto3 <- Falso;
	agregado <- falso;
	
	
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
		
		Limpiar Pantalla;
		
		si (opcion = 1 | opcion = 2 | opcion = 3) Entonces
			si (nombreContacto1 <> "" & telefonoContacto1 > 0 & organizacionContacto1 <> "") Entonces
				contactosExistentes <- Verdadero;
				contacto1 <- verdadero;
				numeroContactosExistentes <- numeroContactosExistentes + 1;
			FinSi
			si (nombreContacto2 <> "" & telefonoContacto2 > 0 & organizacionContacto2 <> "") Entonces
				contactosExistentes <- Verdadero;
				contacto2 <- verdadero;
				numeroContactosExistentes <- numeroContactosExistentes + 1;
			FinSi
			si (nombreContacto3 <> "" & telefonoContacto3 > 0 & organizacionContacto3 <> "") Entonces
				contactosExistentes <- Verdadero;
				contacto3 <- verdadero;
				numeroContactosExistentes <- numeroContactosExistentes + 1;
			FinSi
		FinSi
		
		Segun opcion Hacer
			1:
				si(contactosExistentes = Verdadero) Entonces
					Limpiar Pantalla;
					si (contacto1 = Verdadero) Entonces
						Escribir "";
						Escribir "CONTACTO #1:";
						Escribir "-> Nombre:       ", nombreContacto1;
						Escribir "-> Telefono:     ", telefonoContacto1;
						Escribir "-> Organizacion: ", organizacionContacto1;
						
					FinSi
					si (contacto2) Entonces
						Escribir "";
						Escribir "CONTACTO #2:";
						Escribir "-> Nombre:       ", nombreContacto2;
						Escribir "-> Telefono:     ", telefonoContacto2;
						Escribir "-> Organizacion: ", organizacionContacto2;
					FinSi
					si (contacto3) Entonces
						Escribir "";
						Escribir "CONTACTO #3:";
						Escribir "-> Nombre:       ", nombreContacto3;
						Escribir "-> Telefono:     ", telefonoContacto3;
						Escribir "-> Organizacion: ", organizacionContacto3;
					FinSi
					
					Escribir "";
					Escribir "Presione una tecla para continuar..........";
					Esperar Tecla;
					
				siNo
					Limpiar Pantalla;
					Escribir "EL DIRECTORIO SE ENCUENTRA VACIO ";
					Escribir "";
					Escribir "Presione una tecla para continuar..........";
					Esperar Tecla;
				FinSi
			2:
				si (numeroContactosExistentes < 3) Entonces
					agregado <- Falso;
					Limpiar Pantalla;
					si (NO contacto1 & NO agregado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del contacto: ";
						Leer nombreContacto1;
						Escribir Sin Saltar "Ingrese telefono del contacto: ";
						Leer telefonoContacto1;
						Escribir Sin Saltar "Ingrese organizacion del contacto: ";
						Leer organizacionContacto1;
						si (nombreContacto1 <> "" & telefonoContacto1 > 0 & organizacionContacto1 <> "") Entonces
							si (telefonoContacto1 <> telefonoContacto2 & telefonoContacto1 <> telefonoContacto3) Entonces
								Limpiar Pantalla;
								Escribir "El contacto ", nombreContacto1, " se guardo exitosamente";
								Escribir "";
								Escribir "Presione una tecla para continuar..........";
								Esperar Tecla;
								agregado <- Verdadero;
							SiNo
								nombreContacto1 <- "";
								telefonoContacto1 <- 0;
								organizacionContacto1 <- "";
								Limpiar Pantalla;
								Escribir "El numero de contacto ya existe en la biblioteca....";
								Escribir "";
								Escribir "Presione una tecla para continuar..........";
								Esperar Tecla;
								agregado <- Verdadero;
							FinSi
							
						SiNo
							nombreContacto1 <- "";
							telefonoContacto1 <- 0;
							organizacionContacto1 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
							Escribir "";
							Escribir "Presione una tecla para continuar..........";
							Esperar Tecla;
						FinSi
						
					FinSi
					
					si (NO contacto2 & NO agregado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del contacto: ";
						Leer nombreContacto2;
						Escribir Sin Saltar "Ingrese telefono del contacto: ";
						Leer telefonoContacto2;
						Escribir Sin Saltar "Ingrese organizacion del contacto: ";
						Leer organizacionContacto2;
						si (nombreContacto2 <> "" & telefonoContacto2 > 0 & organizacionContacto2 <> "") Entonces
							si (telefonoContacto2 <> telefonoContacto1 & telefonoContacto2 <> telefonoContacto3) Entonces
								Limpiar Pantalla;
								Escribir "El contacto ", nombreContacto2, " se guardo exitosamente";
								Escribir "";
								Escribir "Presione una tecla para continuar..........";
								Esperar Tecla;
								agregado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								nombreContacto2 <- "";
								telefonoContacto2 <- 0;
								organizacionContacto2 <- "";
								Escribir "El numero de contacto ya existe en la biblioteca....";
								Escribir "";
								Escribir "Presione una tecla para continuar..........";
								Esperar Tecla;
								agregado <- Verdadero;
							FinSi
						SiNo
							nombreContacto2 <- "";
							telefonoContacto2 <- 0;
							organizacionContacto2 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
							Escribir "";
							Escribir "Presione una tecla para continuar..........";
							Esperar Tecla;
						FinSi
						
					FinSi
					
					si (NO contacto3 & NO agregado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del contacto: ";
						Leer nombreContacto3;
						Escribir Sin Saltar "Ingrese telefono del contacto: ";
						Leer telefonoContacto3;
						Escribir Sin Saltar "Ingrese organizacion del contacto: ";
						Leer organizacionContacto3;
						si (nombreContacto3 <> "" & telefonoContacto3 > 0 & organizacionContacto3 <> "") Entonces
							si (telefonoContacto3 <> telefonoContacto1 & telefonoContacto3 <> telefonoContacto2) Entonces
								Limpiar Pantalla;
								Escribir "El contacto ", nombreContacto3, " se guardo exitosamente";
								Escribir "";
								Escribir "Presione una tecla para continuar..........";
								Esperar Tecla;
								agregado <- Verdadero;
							SiNo
								Limpiar Pantalla;
								nombreContacto3 <- "";
								telefonoContacto3 <- 0;
								organizacionContacto3 <- "";
								Escribir "El numero de contacto ya existe en la biblioteca....";
								Escribir "";
								Escribir "Presione una tecla para continuar..........";
								Esperar Tecla;
								agregado <- Verdadero;
							FinSi
							
						SiNo
							nombreContacto3 <- "";
							telefonoContacto3 <- 0;
							organizacionContacto3 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
							Escribir "";
							Escribir "Presione una tecla para continuar..........";
							Esperar Tecla;
						FinSi
						
					FinSi
				SiNo
					Escribir "El DIRECTORIO SE ENCUENTRA LLENO ";
					Escribir "";
					Escribir "Presione una tecla para continuar.....";
					Esperar Tecla;
				FinSi
				
			3:
				si(contactosExistentes = Verdadero) Entonces
					Limpiar Pantalla;
					si (contacto1 = Verdadero) Entonces
						Escribir "";
						Escribir "CONTACTO #1:";
						Escribir "-> Nombre:       ", nombreContacto1;
						Escribir "-> Telefono:     ", telefonoContacto1;
						Escribir "-> Organizacion: ", organizacionContacto1;
						
					FinSi
					si (contacto2) Entonces
						Escribir "";
						Escribir "CONTACTO #2:";
						Escribir "-> Nombre:       ", nombreContacto2;
						Escribir "-> Telefono:     ", telefonoContacto2;
						Escribir "-> Organizacion: ", organizacionContacto2;
						
					FinSi
					si (contacto3) Entonces
						Escribir "";
						Escribir "CONTACTO #3:";
						Escribir "-> Nombre:       ", nombreContacto3;
						Escribir "-> Telefono:     ", telefonoContacto3;
						Escribir "-> Organizacion: ", organizacionContacto3;
						
					FinSi
					Escribir "";
					Escribir Sin Saltar "Ingrese el numero(#) del contacto a eliminar: ";
					Leer numeroEliminar;
					Limpiar Pantalla;
					
					Segun numeroEliminar Hacer
						1:
							nombreContacto1 <- "";
							telefonoContacto1 <- 0;
							organizacionContacto1 <- "";
							contacto1 <- Falso;
							Escribir "Eliminacion de contacto EXITOSA";
						2:
							nombreContacto2 <- "";
							telefonoContacto2 <- 0;
							organizacionContacto2 <- "";
							contacto2 <- Falso;
							Escribir "Eliminacion de contacto EXITOSA";
						3:
							nombreContacto3 <- "";
							telefonoContacto3 <- 0;
							organizacionContacto3 <- "";
							contacto3 <- Falso;
							Escribir "Eliminacion de contacto EXITOSA";
						De Otro Modo:
							Escribir "El contacto seleccionado no existe en el directorio";
							Escribir "";
							Escribir "Presione una tecla para continuar..........";
							
					FinSegun
					
					Escribir "";
					Escribir "Presione una tecla para continuar..........";
					Esperar Tecla;
					
				siNo
					Limpiar Pantalla;
					Escribir "EL DIRECTORIO YA SE ENCUENTRA VACIO ";
					Escribir "";
					Escribir "Presione una tecla para continuar..........";
					Esperar Tecla;
				FinSi
				
				
		FinSegun
		
	Hasta Que (opcion = 4)
	Escribir "HASTA PRONTO........";
	
FinProceso

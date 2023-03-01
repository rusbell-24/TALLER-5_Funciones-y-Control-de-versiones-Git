Proceso Taller3_Ciclos_ejercicio7
	
	// El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que permita registrar los
	// vehículos que se cuidan en estas instalaciones. Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y marca, y los datos del
	// cliente como son nombre completo y número de teléfono. Para cada vehículo se debe permitir la opción de ingresar al parqueadero, retirar del parqueadero y
	// consultar si un vehículo se encuentra en el parqueadero. Recuerde que el sistema debe terminar cuando el usuario así lo indique. Tenga en presente que el
	// parqueadero solo puede almacenar máximo 5 vehículos.
	
	Definir opcion, numeroVehiculosExistentes Como Entero;
	Definir vehiculosExistentes,  vehiculo1, vehiculo2, vehiculo3, vehiculo4, vehiculo5, ingresado, retirado, encontrado Como Logico;
	Definir placa, nombreCompleto Como Caracter;
	
	Definir marca1 Como Caracter;
	Definir placa1 Como Caracter;
	Definir nombreCompleto1 Como Caracter;
	Definir numeroTelefono1 Como Entero;
	
	Definir marca2 Como Caracter;
	Definir placa2 Como Caracter;
	Definir nombreCompleto2 Como Caracter;
	Definir numeroTelefono2 Como Entero;
	
	Definir marca3 Como Caracter;
	Definir placa3 Como Caracter;
	Definir nombreCompleto3 Como Caracter;
	Definir numeroTelefono3 Como Entero;
	
	Definir marca4 Como Caracter;
	Definir placa4 Como Caracter;
	Definir nombreCompleto4 Como Caracter;
	Definir numeroTelefono4 Como Entero;
	
	Definir marca5 Como Caracter;
	Definir placa5 Como Caracter;
	Definir nombreCompleto5 Como Caracter;
	Definir numeroTelefono5 Como Entero;
	
	vehiculosExistentes <- Falso;
	vehiculo1 <- Falso;
	vehiculo2 <- Falso;
	vehiculo3 <- Falso;
	vehiculo4 <- Falso;
	vehiculo5 <- Falso;
	
	
	marca1 <- "";
	placa1 <- "";
	nombreCompleto1 <- "";
	numeroTelefono1 <- 0;
	
	marca2 <- "";
	placa2 <- "";
	nombreCompleto2 <- "";
	numeroTelefono2 <- 0;
	
	marca3 <- "";
	placa3 <- "";
	nombreCompleto3 <- "";
	numeroTelefono3 <- 0;
	
	marca4 <- "";
	placa4 <- "";
	nombreCompleto4 <- "";
	numeroTelefono4 <- 0;
	
	marca5 <- "";
	placa5 <- "";
	nombreCompleto5 <- "";
	numeroTelefono5 <- 0;
	
	Repetir
		vehiculosExistentes <- Falso;
		ingresado <- Falso;
		encontrado <- Falso;
		retirado <- Falso;
		numeroVehiculosExistentes <- 0;
		
		Limpiar Pantalla;
		
		Escribir "____________PARQUEADERO  EL GUARDIAN_________";
		Escribir "|                                            |";
		Escribir "||   Opciones del parqueadero:              ||";
		Escribir "||                                          ||";
		Escribir "||   1. Ingresar al parqueadero             ||";
		Escribir "||   2. Retirar del parqueadero             ||";
		Escribir "||   3. Consultar vehiculo                  ||";
		Escribir "||   4. Listar todo los vehiculos           ||";
		Escribir "|    5. Salir                                |";
		Escribir " --------------------------------------------";
		Escribir Sin Saltar" Ingrese su opcion: ";
		Leer opcion;
		Limpiar Pantalla;
		
		si (opcion = 1 | opcion = 2 | opcion = 3 | opcion = 4) Entonces
			si ( marca1 <> "" & placa1 <> "" & nombreCompleto1 <> "" & numeroTelefono1 > 0 ) Entonces
				vehiculosExistentes <- Verdadero;
				vehiculo1 <- verdadero;
				numeroVehiculosExistentes <- numeroVehiculosExistentes + 1;
			FinSi
			
			si ( marca2 <> "" & placa2 <> "" & nombreCompleto2 <> "" & numeroTelefono2 > 0 ) Entonces
				vehiculosExistentes <- Verdadero;
				vehiculo2 <- verdadero;
				numeroVehiculosExistentes <- numeroVehiculosExistentes + 1;
			FinSi
			
			si ( marca3 <> "" & placa3 <> "" & nombreCompleto3 <> "" & numeroTelefono3 > 0 ) Entonces
				vehiculosExistentes <- Verdadero;
				vehiculo3 <- verdadero;
				numeroVehiculosExistentes <- numeroVehiculosExistentes + 1;
			FinSi
			
			si ( marca4 <> "" & placa4 <> "" & nombreCompleto4 <> "" & numeroTelefono4 > 0 ) Entonces
				vehiculosExistentes <- Verdadero;
				vehiculo4 <- verdadero;
				numeroVehiculosExistentes <- numeroVehiculosExistentes + 1;
			FinSi
			
			si ( marca5 <> "" & placa5 <> "" & nombreCompleto5 <> "" & numeroTelefono5 > 0 ) Entonces
				vehiculosExistentes <- Verdadero;
				vehiculo5 <- verdadero;
				numeroVehiculosExistentes <- numeroVehiculosExistentes + 1;
			FinSi
		FinSi
		
		Segun opcion Hacer
			1:
				si (numeroVehiculosExistentes < 5) Entonces
					
					ingresado <- Falso;
					
					Limpiar Pantalla;
					
					si (NO vehiculo1 & NO ingresado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del propietario: ";
						Leer nombreCompleto1;
						Escribir Sin Saltar "Ingrese telefono del propieatario: ";
						Leer numeroTelefono1;
						Escribir Sin Saltar "Ingrese la marca del vehiculo: ";
						Leer marca1;
						Escribir Sin Saltar "Ingrese la placa del vehiculo: ";
						Leer placa1;
						si (nombreCompleto1 <> "" & numeroTelefono1 > 0 & marca1 <> "" & placa1 <> "") Entonces
							si (placa1 <> placa2 & placa1 <> placa3 & placa1 <> placa4 & placa1 <> placa5) Entonces
								
								Limpiar Pantalla;
								
								Escribir "-> El vehiculo de marca ", marca1, " y placa ", placa1, " se guardo exitosamente";
								Escribir "-> A nombre de: ", nombreCompleto1;
								Escribir "-< Con numero de contacto: ", numeroTelefono1;
								
								ingresado <- Verdadero;
							SiNo
								nombreCompleto1 <- "";
								numeroTelefono1 <- 0;
								marca1 <- "";
								placa1  <- "";
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							nombreCompleto1 <- "";
							numeroTelefono1 <- 0;
							marca1 <- "";
							placa1 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo2 & NO ingresado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del propietario: ";
						Leer nombreCompleto2;
						Escribir Sin Saltar "Ingrese telefono del propieatario: ";
						Leer numeroTelefono2;
						Escribir Sin Saltar "Ingrese la marca del vehiculo: ";
						Leer marca2;
						Escribir Sin Saltar "Ingrese la placa del vehiculo: ";
						Leer placa2;
						si (nombreCompleto2 <> "" & numeroTelefono2 > 0 & marca2 <> "" & placa2 <> "") Entonces
							si (placa2 <> placa1 & placa2 <> placa3 & placa2 <> placa4 & placa2 <> placa5) Entonces
								Limpiar Pantalla;
								Escribir "-> El vehiculo de marca ", marca2, " y placa ", placa2, " se guardo exitosamente";
								Escribir "-> A nombre de: ", nombreCompleto2;
								Escribir "-< Con numero de contacto: ", numeroTelefono2;
								ingresado <- Verdadero;
							SiNo
								nombreCompleto2 <- "";
								numeroTelefono2 <- 0;
								marca2 <- "";
								placa2  <- "";
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							nombreCompleto2 <- "";
							numeroTelefono2 <- 0;
							marca2 <- "";
							placa2 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo3 & NO ingresado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del propietario: ";
						Leer nombreCompleto3;
						Escribir Sin Saltar "Ingrese telefono del propieatario: ";
						Leer numeroTelefono3;
						Escribir Sin Saltar "Ingrese la marca del vehiculo: ";
						Leer marca3;
						Escribir Sin Saltar "Ingrese la placa del vehiculo: ";
						Leer placa3;
						si (nombreCompleto3 <> "" & numeroTelefono3 > 0 & marca3 <> "" & placa3 <> "") Entonces
							si (placa3 <> placa1 & placa3 <> placa2 & placa3 <> placa4 & placa3 <> placa5) Entonces
								Limpiar Pantalla;
								Escribir "-> El vehiculo de marca ", marca3, " y placa ", placa3, " se guardo exitosamente";
								Escribir "-> A nombre de: ", nombreCompleto3;
								Escribir "-< Con numero de contacto: ", numeroTelefono3;
								ingresado <- Verdadero;
							SiNo
								nombreCompleto3 <- "";
								numeroTelefono3 <- 0;
								marca3 <- "";
								placa3  <- "";
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							nombreCompleto3 <- "";
							numeroTelefono3 <- 0;
							marca3 <- "";
							placa3 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo4 & NO ingresado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del propietario: ";
						Leer nombreCompleto4;
						Escribir Sin Saltar "Ingrese telefono del propieatario: ";
						Leer numeroTelefono4;
						Escribir Sin Saltar "Ingrese la marca del vehiculo: ";
						Leer marca4;
						Escribir Sin Saltar "Ingrese la placa del vehiculo: ";
						Leer placa4;
						si (nombreCompleto4 <> "" & numeroTelefono4 > 0 & marca4 <> "" & placa4 <> "") Entonces
							si (placa4 <> placa1 & placa4 <> placa2 & placa4 <> placa3 & placa4 <> placa5) Entonces
								Limpiar Pantalla;
								Escribir "-> El vehiculo de marca ", marca4, " y placa ", placa4, " se guardo exitosamente";
								Escribir "-> A nombre de: ", nombreCompleto4;
								Escribir "-< Con numero de contacto: ", numeroTelefono4;
								ingresado <- Verdadero;
							SiNo
								nombreCompleto4 <- "";
								numeroTelefono4 <- 0;
								marca4 <- "";
								placa4  <- "";
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							nombreCompleto4 <- "";
							numeroTelefono4 <- 0;
							marca4 <- "";
							placa4 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo5 & NO ingresado) Entonces
						Escribir Sin Saltar "Ingrese nombre completo del propietario: ";
						Leer nombreCompleto5;
						Escribir Sin Saltar "Ingrese telefono del propieatario: ";
						Leer numeroTelefono5;
						Escribir Sin Saltar "Ingrese la marca del vehiculo: ";
						Leer marca5;
						Escribir Sin Saltar "Ingrese la placa del vehiculo: ";
						Leer placa5;
						si (nombreCompleto5 <> "" & numeroTelefono5 > 0 & marca5 <> "" & placa5 <> "") Entonces
							si (placa5 <> placa1 & placa5 <> placa2 & placa5 <> placa3 & placa5 <> placa4) Entonces
								Limpiar Pantalla;
								Escribir "-> El vehiculo de marca ", marca5, " y placa ", placa5, " se guardo exitosamente";
								Escribir "-> A nombre de: ", nombreCompleto5;
								Escribir "-< Con numero de contacto: ", numeroTelefono5;
								ingresado <- Verdadero;
							SiNo
								nombreCompleto5 <- "";
								numeroTelefono5 <- 0;
								marca5 <- "";
								placa5  <- "";
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							nombreCompleto5 <- "";
							numeroTelefono5 <- 0;
							marca5 <- "";
							placa5 <- "";
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
				SiNo
					Limpiar Pantalla;
					Escribir "El PARQUEADERO SE ENCUENTRA LLENO ";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar..........";
				Esperar Tecla;
			2:
				si(vehiculosExistentes) Entonces
					Escribir "Ingrese la placa del vehiculo a retirar: ";
					Leer placa;
					Escribir "Ingrese su nombre: ";
					Leer nombreCompleto;
					
					si(placa = placa1 & nombreCompleto = nombreCompleto1 & NO retirado) Entonces
						marca1 <- "";
						placa1 <- "";
						nombreCompleto1 <- "";
						numeroTelefono1 <- 0;
						vehiculo1 <- Falso;
						retirado <- Verdadero;
					FinSi
					
					si(placa = placa2 & nombreCompleto = nombreCompleto2 & NO retirado) Entonces
						marca2 <- "";
						placa2 <- "";
						nombreCompleto2 <- "";
						numeroTelefono2 <- 0;
						vehiculo2 <- Falso;
						retirado <- Verdadero;
					FinSi
					
					si(placa = placa3 & nombreCompleto = nombreCompleto3 & NO retirado) Entonces
						marca3 <- "";
						placa3 <- "";
						nombreCompleto3 <- "";
						numeroTelefono3 <- 0;
						vehiculo3 <- Falso;
						retirado <- Verdadero;
					FinSi
					
					si(placa = placa4 & nombreCompleto = nombreCompleto4 & NO retirado) Entonces
						marca4 <- "";
						placa4 <- "";
						nombreCompleto4 <- "";
						numeroTelefono4 <- 0;
						vehiculo4 <- Falso;
						retirado <- Verdadero;
					FinSi
					
					si(placa = placa5 & nombreCompleto = nombreCompleto5 & NO retirado) Entonces
						marca5 <- "";
						placa5 <- "";
						nombreCompleto5 <- "";
						numeroTelefono5 <- 0;
						vehiculo5 <- Falso;
						retirado <- Verdadero;
					FinSi
					
					si (retirado) Entonces
						Limpiar Pantalla;
						Escribir "RETIRO EXITOSO";
					SiNo
						Limpiar Pantalla;
						Escribir "RETIRO RECHAZADO, Los datos ingresados no coinciden";
					FinSi
					
				SiNo
					Escribir "No hay vehiculos en el parqueadero por retirar ";
				FinSi
				
				Escribir "";
				Escribir "Presione una tecla para continuar.....";
				Esperar Tecla;
			3:
				si(vehiculosExistentes) Entonces
					encontrado <- falso;
					Escribir "Ingrese la placa del vehiculo a consultar: ";
					Leer placa;
					
					si(placa <> "") Entonces
						si(placa = placa1) Entonces
							Escribir "El vehiculo marca ", marca1, " y placa ", placa1, " se encuentra en el parqueadero";
							Escribir "A nombre de: ", nombreCompleto1;
							encontrado <- Verdadero;
						FinSi
						si(placa = placa2) Entonces
							Escribir "El vehiculo marca ", marca2, " y placa ", placa2, " se encuentra en el parqueadero";
							Escribir "A nombre de: ", nombreCompleto2;
							encontrado <- Verdadero;
						FinSi
						si(placa = placa3) Entonces
							Escribir "El vehiculo marca ", marca3, " y placa ", placa3, " se encuentra en el parqueadero";
							Escribir "A nombre de: ", nombreCompleto3;
							encontrado <- Verdadero;
						FinSi
						si(placa = placa4) Entonces
							Escribir "El vehiculo marca ", marca4, " y placa ", placa4, " se encuentra en el parqueadero";
							Escribir "A nombre de: ", nombreCompleto4;
							encontrado <- Verdadero;
						FinSi
						si(placa = placa5) Entonces
							Escribir "El vehiculo marca ", marca5, " y placa ", placa5, " se encuentra en el parqueadero";
							Escribir "A nombre de: ", nombreCompleto5;
							encontrado <- Verdadero;
							
						FinSi
						si(NO encontrado) Entonces
							Limpiar Pantalla;
							Escribir "El vehiculo que busca no se encuentra en este parqueadero";
						FinSi
					SiNo
						Escribir "Debes ingresar la placa del vehiculo ";
					FinSi
					
					
					
				SiNo
					Limpiar Pantalla;
					Escribir "No hay vehiculos en el parqueadero por retirar ";
				FinSi
				Escribir "";
				Escribir "Presione una tecla para continuar.....";
				Esperar Tecla;
			4:
				si(vehiculosExistentes) Entonces
					Limpiar Pantalla;
					si (vehiculo1) Entonces
						Escribir "";
						Escribir "vehiculo #1:";
						Escribir "-> Nombre:   ", nombreCompleto1;
						Escribir "-> Telefono: ", numeroTelefono1;
						Escribir "-> Marca:    ", marca1;
						Escribir "-> Placa:    ", placa1;
					FinSi
					si (vehiculo2) Entonces
						Escribir "";
						Escribir "vehiculo #2:";
						Escribir "-> Nombre:   ", nombreCompleto2;
						Escribir "-> Telefono: ", numeroTelefono2;
						Escribir "-> Marca:    ", marca2;
						Escribir "-> Placa:    ", placa2;
					FinSi
					si (vehiculo3) Entonces
						Escribir "";
						Escribir "vehiculo #3:";
						Escribir "-> Nombre:   ", nombreCompleto3;
						Escribir "-> Telefono: ", numeroTelefono3;
						Escribir "-> Marca:    ", marca3;
						Escribir "-> Placa:    ", placa3;
					FinSi
					si (vehiculo4) Entonces
						Escribir "";
						Escribir "vehiculo #4:";
						Escribir "-> Nombre:   ", nombreCompleto4;
						Escribir "-> Telefono: ", numeroTelefono4;
						Escribir "-> Marca:    ", marca4;
						Escribir "-> Placa:    ", placa4;
					FinSi
					si (vehiculo5) Entonces
						Escribir "";
						Escribir "vehiculo #5:";
						Escribir "-> Nombre:   ", nombreCompleto5;
						Escribir "-> Telefono: ", numeroTelefono5;
						Escribir "-> Marca:    ", marca5;
						Escribir "-> Placa:    ", placa5;
					FinSi
					
				siNo
					Limpiar Pantalla;
					Escribir "EL PARQUEADERO SE ENCUENTRA VACIO ";
				FinSi
				Escribir "";
				Escribir "Presione una tecla para continuar..........";
				Esperar Tecla;
				
		FinSegun
	Hasta Que (opcion = 5)
	Escribir "HASTA PRONTO";
	
FinProceso

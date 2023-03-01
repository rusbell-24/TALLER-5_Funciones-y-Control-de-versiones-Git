// El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del
// barrio y requiere una aplicación que permita registrar los vehículos que se cuidan en estas
// instalaciones. Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y
// marca, y los datos del cliente como son nombre completo y número de teléfono. Para cada
// vehículo se debe permitir la opción de ingresar al parqueadero, retirar del parqueadero y
// consultar si un vehículo se encuentra en el parqueadero. Recuerde que el sistema debe terminar
// cuando el usuario así lo indique. Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.



SubProceso inicializarValores(marca Por Referencia, placa Por Referencia, nombreCompleto Por Referencia, numeroTelefono Por Referencia)
	
	marca <- "";
	placa <- "";
	nombreCompleto <- "";
	numeroTelefono <- 0;
	
FinSubProceso



SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
	Limpiar Pantalla;
	Escribir "____________PARQUEADERO  EL GUARDIAN_________";
	Escribir "";
	Escribir "Opciones del parqueadero:";
	Escribir "";
	Escribir "1. Ingresar al parqueadero";
	Escribir "2. Retirar del parqueadero";
	Escribir "3. Consultar vehiculo";
	Escribir "4. Listar todo los vehiculos";
	Escribir "5. Salir";
	Escribir "--------------------------------------------";
	Escribir Sin Saltar" Ingrese su opcion: ";
	Leer opcion;
	
FinSubProceso



SubProceso permisos(vehiculosExistentes Por Referencia, vehiculo Por Referencia, numeroVehiculosExistentes Por Referencia)
	
	vehiculosExistentes <- Verdadero;
	vehiculo <- verdadero;
	numeroVehiculosExistentes <- numeroVehiculosExistentes + 1;
	
FinSubProceso



SubProceso solicitarDatosUsuario(nombreCompleto Por Referencia, numeroTelefono Por Referencia, marca Por Referencia, placa Por Referencia)
	
	Escribir Sin Saltar "Ingrese nombre completo del propietario: ";
	Leer nombreCompleto;
	Escribir Sin Saltar "Ingrese telefono del propieatario: ";
	Leer numeroTelefono;
	Escribir Sin Saltar "Ingrese la marca del vehiculo: ";
	Leer marca;
	Escribir Sin Saltar "Ingrese la placa del vehiculo: ";
	Leer placa;
	
FinSubProceso



SubProceso consultarVehiculo(marca, placa, nombreCompleto, encontrado Por Referencia)
	
	Escribir "El vehiculo marca ", marca, " y placa ", placa, " se encuentra en el parqueadero";
	Escribir "A nombre de: ", nombreCompleto;
	encontrado <- Verdadero;
	
FinSubProceso



subproceso confirmacionIngreso(marca, placa, nombreCompleto, numeroTelefono)
	
	Limpiar Pantalla;
	Escribir "-> El vehiculo de marca ", marca, " y placa ", placa, " se guardo exitosamente";
	Escribir "-> A nombre de: ", nombreCompleto;
	Escribir "-< Con numero de contacto: ", numeroTelefono;
	
FinSubProceso



subproceso mostrarVehiculos(numeroVehiculo, nombreCompleto, numeroTelefono, marca, placa)
	
	Escribir "";
	Escribir "vehiculo #",numeroVehiculo,":";
	Escribir "-> Nombre:   ", nombreCompleto;
	Escribir "-> Telefono: ", numeroTelefono;
	Escribir "-> Marca:    ", marca;
	Escribir "-> Placa:    ", placa;
	
FinSubProceso



Proceso Taller5_Funciones_Ciclos_ejercicio7
	
	Definir opcion, numeroVehiculosExistentes Como Entero;
	Definir vehiculosExistentes,  vehiculo1, vehiculo2, vehiculo3, vehiculo4, vehiculo5, ingresado, retirado, encontrado Como Logico;
	
	Definir marca1, marca2, marca3, marca4, marca5 Como Caracter;
	Definir placa, placa1, placa2, placa3, placa4, placa5 Como Caracter;
	Definir nombreCompleto, nombreCompleto1, nombreCompleto2, nombreCompleto3, nombreCompleto4, nombreCompleto5 Como Caracter;
	Definir numeroTelefono1, numeroTelefono2, numeroTelefono3, numeroTelefono4, numeroTelefono5 Como Entero;
	
	
	vehiculosExistentes <- Falso;
	vehiculo1 <- Falso;
	vehiculo2 <- Falso;
	vehiculo3 <- Falso;
	vehiculo4 <- Falso;
	vehiculo5 <- Falso;
	
	
	inicializarValores(marca1, placa1, nombreCompleto1, numeroTelefono1);
	
	inicializarValores(marca2, placa2, nombreCompleto2, numeroTelefono2);
	
	inicializarValores(marca3, placa3, nombreCompleto3, numeroTelefono3);
	
	inicializarValores(marca4, placa4, nombreCompleto4, numeroTelefono4);
	
	inicializarValores(marca5, placa5, nombreCompleto5, numeroTelefono5);
	
	
	Repetir
		vehiculosExistentes <- Falso;
		ingresado <- Falso;
		encontrado <- Falso;
		retirado <- Falso;
		numeroVehiculosExistentes <- 0;
		
		opcion <- menuPrincipal();
		Limpiar Pantalla;
		
		si (opcion = 1 | opcion = 2 | opcion = 3 | opcion = 4) Entonces
			
			si ( marca1 <> "" & placa1 <> "" & nombreCompleto1 <> "" & numeroTelefono1 > 0 ) Entonces
				permisos(vehiculosExistentes, vehiculo1, numeroVehiculosExistentes);
			FinSi
			
			si ( marca2 <> "" & placa2 <> "" & nombreCompleto2 <> "" & numeroTelefono2 > 0 ) Entonces
				permisos(vehiculosExistentes, vehiculo2, numeroVehiculosExistentes);
			FinSi
			
			si ( marca3 <> "" & placa3 <> "" & nombreCompleto3 <> "" & numeroTelefono3 > 0 ) Entonces
				permisos(vehiculosExistentes, vehiculo3, numeroVehiculosExistentes);
			FinSi
			
			si ( marca4 <> "" & placa4 <> "" & nombreCompleto4 <> "" & numeroTelefono4 > 0 ) Entonces
				permisos(vehiculosExistentes, vehiculo4, numeroVehiculosExistentes);
			FinSi
			
			si ( marca5 <> "" & placa5 <> "" & nombreCompleto5 <> "" & numeroTelefono5 > 0 ) Entonces
				permisos(vehiculosExistentes, vehiculo5, numeroVehiculosExistentes);
			FinSi
			
		FinSi
		
		
		Segun opcion Hacer
			1:
				si (numeroVehiculosExistentes < 5) Entonces
					
					ingresado <- Falso;
					Limpiar Pantalla;
					
					si (NO vehiculo1 & NO ingresado) Entonces
						
						solicitarDatosUsuario(nombreCompleto1, numeroTelefono1, marca1, placa1);
						
						si (nombreCompleto1 <> "" & numeroTelefono1 > 0 & marca1 <> "" & placa1 <> "") Entonces
							
							si (placa1 <> placa2 & placa1 <> placa3 & placa1 <> placa4 & placa1 <> placa5) Entonces
								confirmacionIngreso(marca1, placa1, nombreCompleto1, numeroTelefono1);
								ingresado <- Verdadero;
								
							SiNo
								inicializarValores(marca1, placa1, nombreCompleto1, numeroTelefono1);
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							inicializarValores(marca1, placa1, nombreCompleto1, numeroTelefono1);
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo2 & NO ingresado) Entonces
						
						solicitarDatosUsuario(nombreCompleto2, numeroTelefono2, marca2, placa2);
						
						si (nombreCompleto2 <> "" & numeroTelefono2 > 0 & marca2 <> "" & placa2 <> "") Entonces
							
							si (placa2 <> placa1 & placa2 <> placa3 & placa2 <> placa4 & placa2 <> placa5) Entonces
								confirmacionIngreso(marca2, placa2, nombreCompleto2, numeroTelefono2);
								ingresado <- Verdadero;
								
							SiNo
								inicializarValores(marca2, placa2, nombreCompleto2, numeroTelefono2);
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							inicializarValores(marca2, placa2, nombreCompleto2, numeroTelefono2);
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo3 & NO ingresado) Entonces
						
						solicitarDatosUsuario(nombreCompleto3, numeroTelefono3, marca3, placa3);
						
						si (nombreCompleto3 <> "" & numeroTelefono3 > 0 & marca3 <> "" & placa3 <> "") Entonces
							
							si (placa3 <> placa1 & placa3 <> placa2 & placa3 <> placa4 & placa3 <> placa5) Entonces
								confirmacionIngreso(marca3, placa3, nombreCompleto3, numeroTelefono3);
								ingresado <- Verdadero;
								
							SiNo
								inicializarValores(marca3, placa3, nombreCompleto3, numeroTelefono3);
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							inicializarValores(marca3, placa3, nombreCompleto3, numeroTelefono3);
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo4 & NO ingresado) Entonces
						
						solicitarDatosUsuario(nombreCompleto4, numeroTelefono4, marca4, placa4);
						
						si (nombreCompleto4 <> "" & numeroTelefono4 > 0 & marca4 <> "" & placa4 <> "") Entonces
							
							si (placa4 <> placa1 & placa4 <> placa2 & placa4 <> placa3 & placa4 <> placa5) Entonces
								confirmacionIngreso(marca4, placa4, nombreCompleto4, numeroTelefono4);
								ingresado <- Verdadero;
								
							SiNo
								inicializarValores(marca4, placa4, nombreCompleto4, numeroTelefono4);
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							inicializarValores(marca4, placa4, nombreCompleto4, numeroTelefono4);
							Limpiar Pantalla;
							Escribir "Error, faltaron campos por llenar";
						FinSi
						
					FinSi
					
					si (NO vehiculo5 & NO ingresado) Entonces
						
						solicitarDatosUsuario(nombreCompleto5, numeroTelefono5, marca5, placa5);
						
						si (nombreCompleto5 <> "" & numeroTelefono5 > 0 & marca5 <> "" & placa5 <> "") Entonces
							
							si (placa5 <> placa1 & placa5 <> placa2 & placa5 <> placa3 & placa5 <> placa4) Entonces
								confirmacionIngreso(marca5, placa5, nombreCompleto5, numeroTelefono5);
								ingresado <- Verdadero;
								
							SiNo
								inicializarValores(marc5, placa5, nombreCompleto5, numeroTelefono5);
								Limpiar Pantalla;
								Escribir "Ya se ingreso un vehiculo con las mismas placas....";
								ingresado <- Verdadero;
							FinSi
							
						SiNo
							inicializarValores(marca5, placa5, nombreCompleto5, numeroTelefono5);
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
						
						inicializarValores(marca1, placa1, nombreCompleto1, numeroTelefono1);
						vehiculo1 <- Falso;
						retirado <- Verdadero;
						
					FinSi
					
					si(placa = placa2 & nombreCompleto = nombreCompleto2 & NO retirado) Entonces
						
						inicializarValores(marca2, placa2, nombreCompleto2, numeroTelefono2);
						vehiculo2 <- Falso;
						retirado <- Verdadero;
						
					FinSi
					
					si(placa = placa3 & nombreCompleto = nombreCompleto3 & NO retirado) Entonces
						
						inicializarValores(marca3, placa3, nombreCompleto3, numeroTelefono3);
						vehiculo3 <- Falso;
						retirado <- Verdadero;
						
					FinSi
					
					si(placa = placa4 & nombreCompleto = nombreCompleto4 & NO retirado) Entonces
						
						inicializarValores(marca4, placa4, nombreCompleto4, numeroTelefono4);
						vehiculo4 <- Falso;
						retirado <- Verdadero;
						
					FinSi
					
					si(placa = placa5 & nombreCompleto = nombreCompleto5 & NO retirado) Entonces
						
						inicializarValores(marca5, placa5, nombreCompleto5, numeroTelefono5);
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
					
					Escribir "Ingrese la placa del vehiculo a consultar: ";
					Leer placa;
					
					si(placa = placa1) Entonces
						consultarVehiculo(marca1, placa1, nombreCompleto1, encontrado);
					FinSi
					si(placa = placa2) Entonces
						consultarVehiculo(marca2, placa2, nombreCompleto2, encontrado);
					FinSi
					si(placa = placa3) Entonces
						consultarVehiculo(marca3, placa3, nombreCompleto3, encontrado);
					FinSi
					si(placa = placa4) Entonces
						consultarVehiculo(marc4, placa4, nombreCompleto4, encontrado);
					FinSi
					si(placa = placa5) Entonces
						consultarVehiculo(marca5, placa5, nombreCompleto5, encontrado);
					FinSi
					
					si(NO encontrado) Entonces
						Limpiar Pantalla;
						Escribir "El vehiculo que busca no se encuentra en este parqueadero";
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
						
						mostrarVehiculos(1, nombreCompleto1, numeroTelefono1, marca1, placa1);
						
					FinSi
					si (vehiculo2) Entonces
						mostrarVehiculos(2, nombreCompleto2, numeroTelefono2, marca2, placa2);
					FinSi
					si (vehiculo3) Entonces
						mostrarVehiculos(3, nombreCompleto3, numeroTelefono3, marca3, placa3);
					FinSi
					si (vehiculo4) Entonces
						mostrarVehiculos(4, nombreCompleto4, numeroTelefono4, marca4, placa4);
					FinSi
					si (vehiculo5) Entonces
						mostrarVehiculos(5, nombreCompleto5, numeroTelefono5, marca5, placa5);
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
	Limpiar Pantalla;
	Escribir "HASTA PRONTO";
	
FinProceso

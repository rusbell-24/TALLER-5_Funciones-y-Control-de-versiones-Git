// El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita registrar los pedidos de los clientes en
// cuanto a las tortas que realiza. Cada torta tiene unas características propias como sabor, cantidad (porciones) y decoraciones).
// Se requiere que la aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren diariamente.
	

// Imprime el menu principal del sistema
SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
	Escribir "..........PASTELERIA DON CARLOS.........";
	Escribir "";
	Escribir "       1. Tortas disponibles ";
	Escribir "       2. Registrar venta ";
	Escribir "       3. Salir";
	Escribir "........................................";
	Escribir Sin Saltar "Ingrese su opcion:  ";
	Leer opcion;
	
FinSubProceso



// imprime el portafolio de tortas que maja la pasteleria
SubProceso opcion <- menuTortas(torta1, torta2, torta3, torta4, torta5)
	
	Definir opcion Como Entero;
	Escribir "Tortas disponobles_______________";
	Escribir "";
	Escribir "   1. ", torta1;
	Escribir "   2. ", torta2;
	Escribir "   3. ", torta3;
	Escribir "   4. ", torta4;
	Escribir "   5. ", torta5;
	Escribir "   6. Salir";
	Escribir "---------------------------------";
	Escribir Sin Saltar " Ingrese su opcion: ";
	leer opcion;
	
FinSubProceso



// imprime la torta seleccionada con sus caracteristicas, ademas de imprimir las opciones de realizar pedido o salir del sistema
SubProceso opcion <- opcionesTortas(torta, porciones, decoracion1, decoracion2)
	
	Definir opcion Como Entero;
	Escribir torta;
	Escribir "----------------------------------";
	Escribir "Numero de porciones: ", porciones;
	Escribir "----------------------------------";
	Escribir "Decoraciones: ";
	Escribir "   ", decoracion1;
	Escribir "   ", decoracion2;
	Escribir "_________________________________";
	Escribir "---------------------------------";
	Escribir "OPCIONES:........................";
	Escribir "    1. Realizar pedido ";
	Escribir "    2. Salir";
	Escribir "---------------------------------";
	Escribir "Ingrese su opcion:";
	Leer opcion;
	
FinSubProceso



// Imprime las opciones de decoracion segun la torta seleccionada
subproceso opcion <- opcionesDecoracion(decoracion1 , decoracion2 )
	
	Definir opcion Como Entero;
	Escribir "sleccione la decoracion escogida";
	Escribir "";
	Escribir "1. ", decoracion1;
	Escribir "2. ", decoracion2;
	Escribir "--------------------------------";
	Escribir "Ingrese opcion: ";
	Leer opcion;
	Limpiar Pantalla;
	
FinSubProceso



// permite establecer la decoracion escogida por el usuario
SubProceso decoracionActual <- seleccionDecoracion(opcion, decoracion1, decoracion2)
	
	Definir  decoracionActual Como Caracter;
	Segun opcion Hacer
		1: 
			decoracionActual <- decoracion1;
		2: 
			decoracionActual <- decoracion2;
	FinSegun
	
FinSubProceso



//Imprime un mensaje de pedido exitoso
SubProceso imprimirPedido(nombre, numeroTortas, direccion, porcionesActual, decoracionActual)
	
	si (nombre <> "" & numeroTortas > 0 & direccion <> "") Entonces
		Escribir "------------PEDIDO EXITOSO------------";
		Escribir "Ficha de pedido_______________________";
		Escribir "";
		Escribir "Cliente: ", nombre;
		Escribir "Direccion: ", direccion;
		Escribir "Numero de tortas pedidas: ", numeroTortas;
		Escribir "Porciones por torta: ", porcionesActual;
		Escribir "Decoracion: ", decoracionActual;
	SiNo
		Escribir"Error, campos si llenar";
	FinSi
	
FinSubProceso



//imprime informacion de fin de registro
SubProceso finalizarRegistro(nombre, tortaActual, decoracionActual, numeroTortas)
	
	si (nombre <> "" & tortaActual <> "" & decoracionActual <> "" & numeroTortas > 0) Entonces
		Escribir "............FIN DE REGISTRO........";
		Escribir "Ficha de registros de venta________";
		Escribir "";
		Escribir "Nombre de cliente: ", nombre;
		Escribir "Torta vendida: ", tortaActual;
		Escribir "Decoracion: ", decoracionActual;
		Escribir "Numero de tortas vendidas: ", numeroTortas;
	SiNo
		Escribir"Error, campos si llenar";
	FinSi
	
FinSubProceso



Proceso Taller5_Funciones_Condicionales_ejercicio8
	
	Definir opcion1, opcion2, opcion3 Como Entero;
	Definir nombre, direccion Como Caracter;
	Definir tortaActual, torta1, torta2, torta3, torta4, torta5 Como Caracter;
	Definir numeroTortas, porcionesActual, porciones1, porciones2, porciones3, porciones4, porciones5 Como Entero;
	Definir pedido Como Logico;
	
	Definir decoracion1_1, decoracion1_2 Como Caracter;
	Definir decoracion2_1, decoracion2_2 Como Caracter;
	Definir decoracion3_1, decoracion3_2 Como Caracter;
	Definir decoracion4_1, decoracion4_2 Como Caracter;
	Definir decoracion5_1, decoracion5_2 Como Caracter;
	Definir decoracionActual Como Caracter;
	
	pedido <- Falso;
	nombre <- "";
	tortaActual <-"";
	decoracionActual <- "";
	direccion <- "";
	porcionesActual <- 0;
	
	torta1 <- "Tres leches";
	porciones1 <- 20;
	decoracion1_1 <- "Para cumpleaños";
	decoracion1_2 <- "Para graduación";
	
	torta2 <- "Jenovesa";
	porciones2 <- 30;
	decoracion2_1 <- "Para matrimonios";
	decoracion2_2 <- "Para graduación";
	
	torta3 <- "Tiramisu";
	porciones3 <- 30;
	decoracion3_1 <- "Para eventos familiares";
	decoracion3_2 <- "Para cumpleaños";
	
	torta4 <- "Alfajores";
	porciones4 <- 35;
	decoracion4_1 <- "Para eventos empresariales";
	decoracion4_2 <- "Para graduacion";
	
	torta5 <- "Pavlova";
	porciones5 <- 40;
	decoracion5_1 <- "Para eventos empresariales";
	decoracion5_2 <- "Para aniversarios";
	
	opcion1 <- menuPrincipal();
	Limpiar Pantalla;
	
	Segun opcion1 Hacer
		1:
			opcion2 <- menuTortas(torta1, torta2, torta3, torta4, torta5);
			Limpiar Pantalla;
			
			Segun opcion2 Hacer
				1:
					opcion3 <- opcionesTortas(torta1, porciones1, decoracion1_1, decoracion1_2);
					Limpiar Pantalla;
					
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta1;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				2:
					opcion3 <- opcionesTortas(torta2, porciones2, decoracion2_1, decoracion2_2);
					Limpiar Pantalla;
					
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta2;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				3:
					opcion3 <- opcionesTortas(torta3, porciones3, decoracion3_1, decoracion3_2);
					Limpiar Pantalla;
					
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta3;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				4:
					opcion3 <- opcionesTortas(torta4, porciones4, decoracion4_1, decoracion4_2);
					Limpiar Pantalla;
					
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta4;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				5:
					opcion3 <- opcionesTortas(torta5, porciones5, decoracion5_1, decoracion5_2);
					Limpiar Pantalla;
					
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta5;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				6:
					Escribir "HASTA PRONTO";
					
			FinSegun
			
			si (pedido) Entonces
				si(tortaActual = torta1) Entonces
					porcionesActual <- porciones1;
					opcion3 <- opcionesDecoracion(decoracion1_1 , decoracion1_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion1_1, decoracion1_2);
				FinSi
				
				si(tortaActual = torta2) Entonces
					porcionesActual <- porciones2;
					opcion3 <- opcionesDecoracion(decoracion2_1 , decoracion2_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion2_1, decoracion2_2);
				FinSi
				
				si(tortaActual = torta3) Entonces
					porcionesActual <- porciones3;
					opcion3 <- opcionesDecoracion(decoracion3_1 , decoracion3_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion3_1, decoracion3_2);
				FinSi
				
				si(tortaActual = torta4) Entonces
					porcionesActual <- porciones4;
					opcion3 <- opcionesDecoracion(decoracion4_1 , decoracion4_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion4_1, decoracion4_2);
				FinSi
				
				si(tortaActual = torta5) Entonces
					porcionesActual <- porciones5;
					opcion3 <- opcionesDecoracion(decoracion5_1 , decoracion5_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion5_1, decoracion5_2);
				FinSi
				
				Escribir "Ingrese su nombre: ";
				Leer nombre;
				Escribir "Ingrese el numero de tortas: ";
				Leer numeroTortas;
				Escribir "Ingrese la direccion de envío ";
				Leer direccion;
				Limpiar Pantalla;
				
				imprimirPedido(nombre, numeroTortas, direccion, porcionesActual, decoracionActual);
				
			FinSi
			
		2:
			Escribir "............REGISTRO DE VENTA.............";
			Escribir "Ingrese nombre de cliente: ";
			leer nombre;
			
			opcion2 <- menuTortas(torta1, torta2, torta3, torta4, torta5);
			Limpiar Pantalla;
			
			Segun opcion2 Hacer
				1: 
					tortaActual <- torta1;
					opcion3 <- opcionesDecoracion(decoracion1_1 , decoracion1_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion1_1, decoracion1_2);
				2: 
					tortaActual <- torta2;
					opcion3 <- opcionesDecoracion(decoracion2_1 , decoracion2_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion2_1, decoracion2_2);
				3: 
					tortaActual <- torta3;
					opcion3 <- opcionesDecoracion(decoracion3_1 , decoracion3_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion3_1, decoracion3_2);
				4: 
					tortaActual <- torta4;
					opcion3 <- opcionesDecoracion(decoracion4_1 , decoracion4_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion4_1, decoracion4_2);
				5: 
					tortaActual <- torta5;
					opcion3 <- opcionesDecoracion(decoracion5_1 , decoracion5_2 );
					decoracionActual <- seleccionDecoracion(opcion3, decoracion5_1, decoracion5_2);
				6:
					Escribir "HASTA PRONTO";
			FinSegun
			Escribir "Ingrese la cantidad de tortas vendidas: ";
			Leer numeroTortas;
			Limpiar Pantalla;
			
			finalizarRegistro(nombre, tortaActual, decoracionActual, numeroTortas);
			
		3:
			Escribir "HASTA PRONTO";
			
	FinSegun
	
FinProceso

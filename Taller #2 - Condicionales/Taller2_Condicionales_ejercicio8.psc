Proceso Taller2_Condicionales_ejercicio8
	
	// El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita registrar los pedidos de los clientes en
	// cuanto a las tortas que realiza. Cada torta tiene unas características propias como sabor, cantidad (porciones) y decoraciones).
	// Se requiere que la aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren diariamente.
	
	Definir opcion1, opcion2, opcion3 Como Entero;
	Definir tortaActual Como Caracter;
	Definir pedido Como Logico;
	
	Definir nombre, direccion Como Caracter;
	Definir numeroTortas, porcionesActual Como Entero;
	
	Definir torta1, torta2, torta3, torta4, torta5 Como Caracter;
	
	Definir porciones1, porciones2, porciones3, porciones4, porciones5 Como Entero;
	
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
	
	Escribir ".......PASTELERIA DON CARLOS.........";
	Escribir "       1. Tortas disponibles ";
	Escribir "       2. Registrar venta ";
	Escribir "       3. Salir";
	Escribir "........................................";
	Escribir "Ingrese su opcion:  ";
	Leer opcion1;
	Limpiar Pantalla;
	
	Segun opcion1 Hacer
		1:
			Escribir "Tortas disponobles_______________";
			Escribir "";
			Escribir "   1. ", torta1;
			Escribir "   2. ", torta2;
			Escribir "   3. ", torta3;
			Escribir "   4. ", torta4;
			Escribir "   5. ", torta5;
			Escribir "   6. Salir";
			Escribir "---------------------------------";
			Escribir " Ingrese su opcion: ";
			leer opcion2;
			Limpiar Pantalla;
			
			Segun opcion2 Hacer
				1:
					Escribir torta1;
					Escribir "Numero de porciones: ", porciones1;
					Escribir "Decoraciones: ";
					Escribir "   ", decoracion1_1;
					Escribir "   ", decoracion1_2;
					Escribir "---------------------------------";
					Escribir "OPCIONES:........................";
					Escribir "    1. Realizar pedido ";
					Escribir "    2. Salir";
					Escribir "---------------------------------";
					Escribir "Ingrese su opcion:";
					Leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta1;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				2:
					Escribir torta2;
					Escribir "Numero de porciones: ", porciones2;
					Escribir "Decoraciones: ";
					Escribir "   ", decoracion2_1;
					Escribir "   ", decoracion2_2;
					Escribir "---------------------------------";
					Escribir "OPCIONES:........................";
					Escribir "    1. Realizar pedido ";
					Escribir "    2. Salir";
					Escribir "---------------------------------";
					Escribir "Ingrese su opcion:";
					Leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta2;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				3:
					Escribir torta3;
					Escribir "Numero de porciones: ", porciones3;
					Escribir "Decoraciones: ";
					Escribir "   ", decoracion3_1;
					Escribir "   ", decoracion3_2;
					Escribir "---------------------------------";
					Escribir "OPCIONES:........................";
					Escribir "    1. Realizar pedido ";
					Escribir "    2. Salir";
					Escribir "---------------------------------";
					Escribir "Ingrese su opcion:";
					Leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta3;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				4:
					Escribir torta4;
					Escribir "Numero de porciones: ", porciones4;
					Escribir "Decoraciones: ";
					Escribir "   ", decoracion4_1;
					Escribir "   ", decoracion4_2;
					Escribir "---------------------------------";
					Escribir "OPCIONES:........................";
					Escribir "    1. Realizar pedido ";
					Escribir "    2. Salir";
					Escribir "---------------------------------";
					Escribir "Ingrese su opcion:";
					Leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1:
							pedido <- Verdadero;
							tortaActual <- torta4;
						2: 
							Escribir "HASTA PRONTO";
					FinSegun
				5:
					Escribir torta5;
					Escribir "Numero de porciones: ", porciones5;
					Escribir "Decoraciones: ";
					Escribir "   ", decoracion5_1;
					Escribir "   ", decoracion5_2;
					Escribir "---------------------------------";
					Escribir "OPCIONES:........................";
					Escribir "    1. Realizar pedido ";
					Escribir "    2. Salir";
					Escribir "---------------------------------";
					Escribir "Ingrese su opcion:";
					Leer opcion3;
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
				Escribir "seleccione la decoracion:";
				si(tortaActual = torta1) Entonces
					porcionesActual <- porciones1;
					Escribir "1. ", decoracion1_1;
					Escribir "2. ", decoracion1_2;
					Escribir "------------------------";
					Escribir "Ingrese su opcion";
					Leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1: 
							decoracionActual <- decoracion1_1;
						2: 
							decoracionActual <- decoracion1_2;
					FinSegun
				FinSi
				si(tortaActual = torta2) Entonces
					porcionesActual <- porciones2;
					Escribir "1. ", decoracion2_1;
					Escribir "2. ", decoracion2_2;
					Escribir "------------------------";
					Escribir "Ingrese su opcion";
					leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1: 
							decoracionActual <- decoracion2_1;
						2: 
							decoracionActual <- decoracion2_2;
					FinSegun
				FinSi
				si(tortaActual = torta3) Entonces
					porcionesActual <- porciones3;
					Escribir "1. ", decoracion3_1;
					Escribir "2. ", decoracion3_2;
					Escribir "------------------------";
					Escribir "Ingrese su opcion";
					leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1: 
							decoracionActual <- decoracion3_1;
						2: 
							decoracionActual <- decoracion3_2;
					FinSegun
				FinSi
				si(tortaActual = torta4) Entonces
					porcionesActual <- porciones4;
					Escribir "1. ", decoracion4_1;
					Escribir "2. ", decoracion4_2;
					Escribir "------------------------";
					Escribir "Ingrese su opcion";
					leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1: 
							decoracionActual <- decoracion4_1;
						2: 
							decoracionActual <- decoracion4_2;
					FinSegun
				FinSi
				si(tortaActual = torta5) Entonces
					porcionesActual <- porciones5;
					Escribir "1. ", decoracion5_1;
					Escribir "2. ", decoracion5_2;
					Escribir "------------------------";
					Escribir "Ingrese su opcion";
					leer opcion3;
					Limpiar Pantalla;
					Segun opcion3 Hacer
						1: 
							decoracionActual <- decoracion5_1;
						2: 
							decoracionActual <- decoracion5_2;
					FinSegun
				FinSi
				
				Escribir "Ingrese su nombre: ";
				Leer nombre;
				Escribir "Ingrese el numero de tortas: ";
				Leer numeroTortas;
				Escribir "Ingrese la direccion de envío ";
				Leer direccion;
				Limpiar Pantalla;
				
				si (nombre <> "" & numeroTortas > 0 & direccion <> "") Entonces
					Escribir "-------PEDIDO EXITOSO";
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
				
			FinSi
			
		2:
			Escribir "............REGISTRO DE VENTA.............";
			Escribir "Ingrese nombre de cliente: ";
			leer nombre;
			Escribir "Seleccione la torta vendida";
			Escribir "   1. ", torta1;
			Escribir "   2. ", torta2;
			Escribir "   3. ", torta3;
			Escribir "   4. ", torta4;
			Escribir "   5. ", torta5;
			Escribir "---------------------------";
			Escribir "Ingrese opcion: ";
			Leer opcion2;
			Limpiar Pantalla;
			Segun opcion2 Hacer
				1: 
					tortaActual <- torta1;
					Escribir "sleccione la decoracion escogida";
					Escribir "1. ", decoracion1_1;
					Escribir "2. ", decoracion1_2;
					Escribir "--------------------------------";
					Escribir "Ingrese opcion: ";
					Leer opcion3;
					Segun opcion3 Hacer
						1: decoracionActual <- decoracion1_1;
						2: decoracionActual <- decoracion1_2;
					FinSegun
				2: 
					tortaActual <- torta2;
					Escribir "sleccione la decoracion escogida";
					Escribir "1. ", decoracion2_1;
					Escribir "2. ", decoracion2_2;
					Escribir "--------------------------------";
					Escribir "Ingrese opcion: ";
					Leer opcion3;
					Segun opcion3 Hacer
						1: decoracionActual <- decoracion2_1;
						2: decoracionActual <- decoracion2_2;
					FinSegun
				3: 
					tortaActual <- torta3;
					Escribir "sleccione la decoracion escogida";
					Escribir "1. ", decoracion3_1;
					Escribir "2. ", decoracion3_2;
					Escribir "--------------------------------";
					Escribir "Ingrese opcion: ";
					Leer opcion3;
					Segun opcion3 Hacer
						1: decoracionActual <- decoracion3_1;
						2: decoracionActual <- decoracion3_2;
					FinSegun
				4: 
					tortaActual <- torta4;
					Escribir "sleccione la decoracion escogida";
					Escribir "1. ",decoracion4_1;
					Escribir "2. ", decoracion4_2;
					Escribir "--------------------------------";
					Escribir "Ingrese opcion: ";
					Leer opcion3;
					Segun opcion3 Hacer
						1: decoracionActual <- decoracion4_1;
						2: decoracionActual <- decoracion4_2;
					FinSegun
				5: 
					tortaActual <- torta5;
					Escribir "sleccione la decoracion escogida";
					Escribir "1. ",decoracion5_1;
					Escribir "2. ", decoracion5_2;
					Escribir "--------------------------------";
					Escribir "Ingrese opcion: ";
					Leer opcion3;
					Segun opcion3 Hacer
						1: decoracionActual <- decoracion5_1;
						2: decoracionActual <- decoracion5_2;
					FinSegun
			FinSegun
			Escribir "Ingrese la cantidad de tortas vendidas: ";
			Leer numeroTortas;
			
			Limpiar Pantalla;
			
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
			
			
		3:
			Escribir "HASTA PRONTO";
			
	FinSegun
	
FinProceso

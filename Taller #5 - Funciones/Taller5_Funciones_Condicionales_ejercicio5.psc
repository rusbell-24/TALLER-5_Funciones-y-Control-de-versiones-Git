// La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para
// poder facturar los productos que vende a sus clientes y para ello, los productos tienen unas
// características que deben indicársele al cliente para que pueda escoger el producto a
// comprar. Para cada cliente, se tienen las opciones de compra de producto, consulta de precios
// por producto y devoluciones en caso de que se presenten.


// Imprime por consola el menu principal del sisema
SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
	Limpiar Pantalla;
	Escribir "..........DROGUERIA MI SALUD............";
	Escribir "|                                       |";
	Escribir "| *** Catalogo de productos:            |";
	Escribir "|                                       |";
	Escribir "|        1. Analgesicos                 |";
	Escribir "|        2. Vitaminas                   |";
	Escribir "|        3. Laxantes                    |";
	Escribir "|---------------------------------------|";
	Escribir Sin Saltar"|  	Ingrese su opcion: ";
	Leer opcion;
	
FinSubProceso



SubProceso opcion <- opcionesMedicamentos(producto1, producto2, producto3, tipo)
	
	Definir opcion Como Entero;;
	Limpiar Pantalla;
	Escribir " -----------", tipo,"-----------";
	Escribir "                                 ";
	Escribir "    1. ", producto1;
	Escribir "    2. ", producto2;
	Escribir "    3. ", producto3;
	Escribir "-----------------------------------";
	Escribir Sin Saltar"   Ingrese su opcion: ";
	Leer opcion;
	Limpiar Pantalla;
	
FinSubProceso




// Imprime por pantalla las opciones del producto
SubProceso opcion <- opcionesPorProducto(productoActual, descripcionActual)
	
	Definir opcion Como Entero;;
	Limpiar Pantalla;
	Escribir productoActual;
	Escribir "-------------------------------------------------------";
	Escribir descripcionActual;
	Escribir "-------------------------------------------------------";
	Escribir "OPCIONES-----------------------------------------------";
	Escribir "  1. Ver precio";
	Escribir "  2. Comprar";
	Escribir "  3. Devolución";
	Escribir "  4. Salir";
	Escribir "-------------------------------------------------------";
	Escribir Sin Saltar "   Ingrese su opcion: ";
	Leer opcion;
	Limpiar Pantalla;
	
FinSubProceso



//Imprime un mensaje de compra exitosa
SubProceso imprimirCompra (nombre, cedula, telefono, productoComprado, cantidad, precioActual)
	Definir precioFinal Como Entero;
	
	si(nombre <> "" & cedula > 0 & telefono > 0 & cantidad > 0) Entonces
		precioFinal <- precioActual * cantidad;
		Limpiar Pantalla;
		Escribir "--------COMPRA EXITOSA--------";
		Escribir "Datos de compra";
		Escribir "";
		Escribir "Nombre de producto:   ", productoComprado;
		Escribir "Cantidad de producto: ", cantidad, " unds";
		Escribir "Total a pagar:        ",precioFinal;
		Escribir "Nombre del cliente:   ", nombre;
		Escribir "Cedula del cliente:   ", cedula;
		Escribir "Telefono del cliente: ", telefono;
	SiNo
		Limpiar Pantalla;
		Escribir " Error, Faltaron campos por llenar";
	FinSi
	
FinSubProceso



// Imprime un mensaje de devolucion exitosa
SubProceso imprimirDevolucion(nombre, cedula, telefono, descripcionActual, cantidad, productoDevolucion)
	
	si(nombre <> "" & cedula > 0 & telefono > 0 & descripcionActual <> "" & cantidad > 0) Entonces
		Limpiar Pantalla;
		Escribir "--------DEVOLUCION EXITOSA--------";
		Escribir "Datos de Devolucion";
		Escribir "";
		Escribir "Nombre de producto devuelto:   ", productoDevolucion;
		Escribir "Nombre del cliente:   ", nombre;
		Escribir "Cedula del cliente:   ", cedula;
		Escribir "Telefono del cliente: ", telefono;
		Escribir "Descripción de devolucion: ", descripcionActual;
		Escribir "Cantidad de unidades devueltas: ", cantidad;
	SiNo
		Limpiar Pantalla;
		Escribir " Error, Faltaron campos por llenar";
	FinSi
	
FinSubProceso
	


Proceso Taller5_Funciones_Condicionales_ejercicio5
	
	Definir opcion1,opcion2,opcion3,a Como Entero;
	
	Definir nombre Como Caracter;
	Definir cedula,telefono Como Entero;;
	Definir productoComprado, productoDevolucion, productoActual, descripcionActual Como Caracter;
	Definir precioActual, cantidad Como Entero;;
	
	Definir analgesico1, analgesico2, analgesico3 Como Caracter;
	Definir precioA1, precioA2, precioA3 Como Entero;
	Definir descripcionA1, descripcionA2, descripcionA3 Como Caracter;
	
	Definir vitamina1, vitamina2, vitamina3 Como Caracter;
	Definir precioV1, precioV2, precioV3 Como Entero;
	Definir descripcionV1, descripcionV2, descripcionV3 Como Caracter;
	
	
	Definir laxante1, laxante2, laxante3 Como Caracter;
	Definir precioL1, precioL2, precioL3 Como Entero;
	Definir descripcionL1, descripcionL2, descripcionL3 Como Caracter;
	
	
	productoActual <- "";
	productoComprado <- "";
	productoDevolucion <-  "";
	nombre <- "";
	cedula <- 0;
	telefono <- 0;
	
	analgesico1 <- "Acetaminofen";
	precioA1 <- 2000;
	descripcionA1 <- "Caja x 10 unidades";
	
	analgesico2 <- "Dolex";
	precioA2 <- 5000;
	descripcionA2 <- "Caja x 4 unidades";
	
	analgesico3 <- "Advil";
	precioA3 <- 4500;
	descripcionA3 <- "Caja x 6 unidades";
	
	vitamina1 <- "Vitacerebrina";
	precioV1 <- 15000;
	descripcionV1 <- "Tarro x 1/2 litro";
	
	vitamina2 <- "VitaminaC";
	precioV2 <- 6000;
	descripcionV2 <- "Caja x 30 unidades";
	
	vitamina3 <- "Tarrito rojo";
	precioV3 <- 14000;
	descripcionV3 <- "Tarro x 500 gramos";
	
	laxante1 <- "Dulcolax";
	precioL1 <- 30000;
	descripcionL1 <- "Caja x 6 unidades";
	
	laxante2 <- "Pedia-Lax";
	precioL2 <- 25000;
	descripcionL2 <- "Caja x 8 unidades";
	
	laxante3 <- "MiraLax";
	precioL3 <- 20000;
	descripcionL3 <- "Caja x 4 unidades";
	
	opcion1 <- menuPrincipal();
	
	segun opcion1 Hacer
		1:
			opcion2 <- opcionesMedicamentos(analgesico1, analgesico2, analgesico3, "ANALGESICOS");
			
			Segun opcion2 Hacer
				1: 
					productoActual <- analgesico1;
					precioActual <- precioA1;
					descripcionActual <- descripcionA1;
				2:
					productoActual <- analgesico2;
					precioActual <- precioA2;
					descripcionActual <- descripcionA2;
				3:
					productoActual <- analgesico3;
					precioActual <- precioA3;
					descripcionActual <- descripcionA3;
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "El producto seleccionado no existe en nuestro catalogo";
					
			FinSegun
			
		2:
			opcion2 <- opcionesMedicamentos(vitamina1, vitamina2, vitamina3, "VITAMINAS");
			
			Segun opcion2 Hacer
				1: 
					productoActual <- vitamina1;
					precioActual <- precioV1;
					descripcionActual <- descripcionV1;
				2:
					productoActual <- vitamina2;
					precioActual <- precioV2;
					descripcionActual <- descripcionV2;
				3:
					productoActual <- vitamina3;
					precioActual <- precioV3;
					descripcionActual <- descripcionV3;
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "El producto seleccionado no existe en nuestro catalogo";
					
			FinSegun
		3:
			opcion2 <- opcionesMedicamentos(laxante1, laxante2, laxante3, "LAXANTES");
			
			Segun opcion2 Hacer
				1: 
					productoActual <- laxante1;
					precioActual <- precioL1;
					descripcionActual <- descripcionL1;
				2:
					productoActual <- laxante2;
					precioActual <- precioL2;
					descripcionActual <- descripcionL2;
				3:
					productoActual <- laxante3;
					precioActual <- precioL3;
					descripcionActual <- descripcionL3;
					
				De Otro Modo:
					Limpiar Pantalla;
					Escribir "El producto seleccionado no existe en nuestro catalogo";
					
			FinSegun
		De Otro Modo:
			Limpiar Pantalla;
			Escribir "El producto seleccionado no existe en nuestro catalogo";	
	FinSegun
	
	
	si (productoActual <> "") Entonces
		opcion3 <- opcionesPorProducto(productoActual, descripcionActual);
		
		Segun opcion3 Hacer
			1:
				Escribir "El precio del ", productoActual, " es ", precioActual;
			2:
				productoComprado <- productoActual;
			3:
				productoDevolucion <- productoActual;
			4:
				Escribir "Hasta pronto";
		FinSegun
	FinSi
	
	
	si (productoComprado <> "") Entonces
		Limpiar Pantalla;
		Escribir Sin Saltar "Indique la cantidad que desea llevar(en unidades)";
		Leer cantidad;
		Escribir Sin Saltar "Ingrese su nombre completo: ";
		leer nombre;
		Escribir Sin Saltar"Ingrese su numero de cedula: ";
		Leer cedula;
		Escribir Sin Saltar"Ingrese su numero de celular: ";
		Leer telefono;
		
		imprimirCompra(nombre, cedula, telefono,productoComprado, cantidad, precioActual);
		
	FinSi
	
	si (productoDevolucion <> "") Entonces
		Limpiar Pantalla;
		Escribir "Proceso de devolucion de: ", productoDevolucion;
		Escribir "";
		Escribir Sin Saltar"Ingrese su nombre completo: ";
		leer nombre;
		Escribir Sin Saltar"Ingrese su numero de cedula: ";
		Leer cedula;
		Escribir Sin Saltar"Ingrese su numero de celular: ";
		Leer telefono;
		Escribir Sin Saltar"Describa el por que devuelve el producto: ";
		Leer descripcionActual;
		Escribir Sin Saltar"Ingrese la cantidad de unidades a devolver: ";
		leer cantidad;
		
		imprimirDevolucion(nombre, cedula, telefono, descripcionActual, cantidad, productoDevolucion);
		
	FinSi
FinProceso


// El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas revisiones y requiere una aplicación que
// le permita registrar los servicios generados a sus clientes. Para cada motocicleta se debe tener registro del ingreso al
// taller y las observaciones por parte del cliente. También debe existir registro de salida del taller con las novedades y otra de arreglos hechos por
// el mecánico en caso de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.
	


// Imprime por pantalla el menu principal del sistema
SubProceso opcion <- menuPrincipal()
	
	Definir opcion Como Entero;
	Escribir "-------Systema de registros de motocicletas-------";
	Escribir "--------------------------------------------------";
	escribir "				1. Registros de Ingreso";
	Escribir "				2. Registro de salida";
	Escribir "				3. salir";
	Escribir "--------------------------------------------------";
	Leer opcion;
	Limpiar Pantalla;
	
FinSubProceso


// Captura algunos datos similares de la moto
SubProceso dato <- capturarDatosMoto(nombreDato)
	
	Definir dato como caracter;
	Escribir "Ingrese ", nombreDato, " de la moto";
	Leer dato;
	
FinSubProceso



// Confirma el o no exito del registro de ingreso de la moto
SubProceso confirmacionIngreso(marca, modelo, placa, observacionesDeIngreso, fechaIngreso)
	
	Limpiar Pantalla;
	si (marca <> "" & modelo <> "" & placa <> "" & observacionesDeIngreso <> "" & fechaIngreso <> "") Entonces
		Escribir "-----------REGISTRO DE INGRESO EXITOSO--------------";
		Escribir "* La moto de marca ", marca, " modelo ", modelo, " con placas ", placa, " Ingresa con las siguientes observaciones: ";
		Escribir "    ",observacionesDeIngreso;
		Escribir "";
		Escribir "* Fecha De Ingreso: ", fechaIngreso;
	SiNo
		Escribir "Error, Formulario de Ingreso incompleto";
	FinSi
	
FinSubProceso



// Confirma el o no exito del registro de salida de la moto
SubProceso confirmacionSalida(marca, modelo, placa, novedadesDeSalida, arreglos, fechaSalida)
	
	Limpiar Pantalla;
	si (marca <> "" & modelo <> "" & placa <> "" & novedadesDeSalida <> "" & arreglos <> "" & fechaSalida <> "") Entonces
		Escribir ".........REGISTRO DE SALIDA EXITOSO..........";
		Escribir "Ficha de salida__________";
		Escribir "";
		Escribir "Marca: ", marca;
		Escribir "Modelo: ", modelo;
		Escribir "Placa: ", placa;
		Escribir "Novedades de salida: ", novedadesDeSalida;
		Escribir "Arreglos realizados: ", arreglos;
		Escribir "Fecha de salida: ", fechaSalida;
	SiNo
		Escribir "Error, Formulario de salida incompleto";
	FinSi
	
FinSubProceso


Proceso Taller5_Funciones_Condicionales_ejercicio6
	
	Definir opcion1 Como Entero;
	Definir marca Como Caracter;
	Definir modelo Como Caracter;
	Definir placa Como Caracter;
	Definir observacionesDeIngreso Como Caracter;
	Definir fechaIngreso Como Caracter;
	Definir novedadesDeSalida Como Caracter;
	Definir arreglos Como Caracter;
	Definir fechaSalida Como Caracter;
	
	opcion1 <- menuPrincipal();
	
	Segun opcion1 Hacer
		1:
			Escribir "______Systema de registros de ingresos______";
			Escribir "";
			marca <- capturarDatosMoto("marca");
			modelo <- capturarDatosMoto("modelo");
			placa <- capturarDatosMoto("placa");
			Escribir "Ingrese sus observaciones respecto a la moto";
			Leer observacionesDeIngreso;
			Escribir "Digite fecha de ingreso (dd/mm/aaaa)";
			leer fechaIngreso;
			
			confirmacionIngreso(marca, modelo, placa, observacionesDeIngreso, fechaIngreso);
			
		2:
			Escribir "__________Systema de registros de Salidas_________";
			Escribir "";
			marca <- capturarDatosMoto("marca");
			modelo <- capturarDatosMoto("modelo");
			placa <- capturarDatosMoto("placa");
			Escribir "Ingrese las novedades de salida";
			Leer novedadesDeSalida;
			Escribir "Decsriba los arreglos realizados a la moto";
			Leer arreglos;
			Escribir "Digite fecha de salida (dd/mm/aaaa)";
			leer fechaSalida;
			
			confirmacionSalida(marca, modelo, placa, novedadesDeSalida, arreglos, fechaSalida);
			
		3:
			Escribir "Hasta pronto";
		De Otro Modo:
			Escribir "Error, Opcion incorrecta";
			
	FinSegun
FinProceso

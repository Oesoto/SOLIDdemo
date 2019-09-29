package classes{
	import flash.display.MovieClip;
	
	
	public class Main extends MovieClip{
		
		var programaOro:ProgramaOro;
		var programaPlata:ProgramaPlata;
		var programaBronce:ProgramaBronce;
		var viajero1:ViajeroFrecuente;
		var viajero2:ViajeroFrecuente;
		var viajero3:ViajeroFrecuente;
		
		
		public function Main() {
			
			programaOro = new ProgramaOro(3); //Programa oro triplica puntos
			programaPlata = new ProgramaPlata(2); //Programa plata duplica puntos
			programaBronce = new ProgramaBronce(1); //Programa bronce no aumenta puntaje

			// viajero = new ViajeroTodoTerreno("Oscar", 2000, 101112, programaOro);
			viajero1 = new ViajeroTodoTerreno("Oscar", 2000, 101112, programaOro);
			viajero2 = new ViajeroEjecutivo("Juan", 3000, 101113, programaPlata);
			viajero3 = new ViajeroTodoTerreno("Camilo", 1000, 101111, programaBronce);

			/* CASO VIAJERO 1 
			//Inicia con 2000 puntos
			//Tiene un programa oro donde sus millas se triplican
			//Es todo terreno. Obtiene 100 millas bono por terrestre y 200 bono por aereo
			//Va a acumular 500 millas
			//Debe quedar con 2000 + 500*3 + 100 + 200 = 3800
			*/
			trace("Viajero Oscar inicia con: " + viajero1.millasTotales);
			viajero1.acumularMillas(500);
			trace("Viajero Oscar ahora tiene: " + viajero1.millasTotales);

			/* CASO VIAJERO 2
			//Inicia con 3000 puntos
			//Tiene un programa plata donde sus millas se duplican
			//Es ejecutivo. Obtiene 50 millas bono por aereo
			//Va a acumular 500 millas
			//Debe quedar con 3000 + 500*2 + 50 = 4050
			*/
			trace("Viajero Juan inicia con: " + viajero2.millasTotales);
			viajero2.acumularMillas(500);
			trace("Viajero Juan ahora tiene: " + viajero2.millasTotales);

			/* CASO VIAJERO 3
			//Inicia con 1000 puntos
			//Tiene un programa bronce donde sus millas no se multiplican
			//Es todo terreno. Obtiene 100 millas bono por terrestre y 200 bono por aereo
			//Va a acumular 500 millas
			//Debe quedar con 1000 + 500*1 + 100 + 200 = 1800
			*/
			trace("Viajero Camilo inicia con: " + viajero3.millasTotales);
			viajero3.acumularMillas(500);
			trace("Viajero Camilo ahora tiene: " + viajero3.millasTotales);
			
			
		
		}
	}
	
}

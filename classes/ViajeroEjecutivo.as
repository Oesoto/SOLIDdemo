/*
El viajero ejecutivo es un viajero frecuente que obtiene una bonificación por viajar por aire.
*/

package classes{
	
	public class ViajeroEjecutivo extends ViajeroFrecuente implements IViajeroAereo {
		

		private var bonificacionAerea:Number;

		public function ViajeroEjecutivo(nombre:String, millas:int, codigo:Number, programa:ProgramaViajero) {
			super(nombre, millas, codigo, programa)
			determinarBonificacionAerea();
		}

		public function determinarBonificacionAerea():void
		{
			bonificacionAerea = 50;
			agregarBonificacion(bonificacionAerea);
		}

	}	
}
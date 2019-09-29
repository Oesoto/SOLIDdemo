package classes{
	
	public class ViajeroTodoTerreno extends ViajeroFrecuente implements IViajeroTerrestre, IViajeroAereo {

		private var bonificacionAerea:Number;
		private var bonificacionTerrestre:Number;

		public function ViajeroTodoTerreno(nombre:String, millas:int, codigo:Number, programa:ProgramaViajero) {
			super(nombre, millas, codigo, programa)
			determinarBonificacionAerea();
			determinarBonificacionGasolina();
		}

		public function determinarBonificacionGasolina():void{
			bonificacionTerrestre = 100;
			agregarBonificacion(bonificacionTerrestre);
		}

		public function determinarBonificacionAerea():void
		{
			bonificacionAerea = 200;
			agregarBonificacion(bonificacionAerea);
		}

	}
	
}

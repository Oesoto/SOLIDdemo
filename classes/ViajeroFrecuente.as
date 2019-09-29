package classes{
	
	public class ViajeroFrecuente{
		
		private var nombre:String;
		private var millasAcumuladas:int;
		private var codigo:Number;
		private var tipoPrograma:ProgramaViajero;
		private var bonificacion:int = 0;

		public function ViajeroFrecuente(nombre:String, millas:int, codigo:Number, programa:ProgramaViajero) {
			this.nombre = nombre;
			this.millasAcumuladas = millas;
			this.codigo = codigo;
			this.tipoPrograma = programa;
		}
		
		public function get millasTotales():int{
			return millasAcumuladas;
		}
		
		
		//Acumula millas dado un valor de millas acumular
		public function acumularMillas(millasParaAcumular:int):void{
			millasAcumuladas = millasAcumuladas + int(tipoPrograma.calcularMillas(millasParaAcumular)) + bonificacion;
		}

		//Sumar bonificaciones
		public function agregarBonificacion(bono:int):void{
			bonificacion += bono;
		}

	}
	
}

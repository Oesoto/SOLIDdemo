package classes{
	
	public class ProgramaBronce extends ProgramaViajero {


		public function ProgramaBronce(factorCalculo:Number) {
			super(factorCalculo);
		}
		
		override public function calcularMillas(valorBase:Number):Number{ 
			return valorBase*factorCalculo;
		} 

	}
	
}

package classes{
	
	public class ProgramaOro extends ProgramaViajero {


		public function ProgramaOro(factorCalculo:Number) {
			super(factorCalculo);
		}
		
		override public function calcularMillas(valorBase:Number):Number{ 
			return valorBase * factorCalculo;
		} 

	}
	
}

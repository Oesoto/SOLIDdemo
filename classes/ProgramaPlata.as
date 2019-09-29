package classes{
	
	public class ProgramaPlata extends ProgramaViajero {


		public function ProgramaPlata(factorCalculo:Number) {
			super(factorCalculo);
		}
		
		override public function calcularMillas(valorBase:Number):Number{ 
			return valorBase * factorCalculo;
		} 

	}
	
}

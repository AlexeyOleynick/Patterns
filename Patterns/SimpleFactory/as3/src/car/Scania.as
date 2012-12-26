package car
{
	public class Scania implements ICar
	{
		
		public function getName():String
		{
			return 'Scania';
		}
		
		public function ride():void{
			trace('Slow and heavy.');
		}
		
	}
}
package car
{
	public class Citroen implements ICar
	{
		
		public function getName():String
		{
			return 'Citroen';
		}
		
		public function ride():void{
			trace('Safe ride with an average speed.');
		}
	}
}
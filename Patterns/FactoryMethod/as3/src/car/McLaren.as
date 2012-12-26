package car
{
	public class McLaren implements ICar
	{
		
		public function getName():String
		{
			return 'McLaren';
		}
		
		public function ride():void{
			trace('Fast and furious.');
		}
	}
}
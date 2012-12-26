package component
{
	public class Pizza implements IProduct
	{
		
		public function getDescription():String
		{
			return 'Standart pizza';
		}
		
		public function getPrice():Number
		{
			return 10;
		}
		
	}
}
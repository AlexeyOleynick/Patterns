package
{
	import flash.display.Sprite;
	import factory.ConcreteDriver;
	
	public class FactoryMethod extends Sprite
	{
		public function FactoryMethod()
		{
			new ConcreteDriver('truck');	
		}
	}
}
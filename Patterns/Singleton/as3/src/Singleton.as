package
{
	import flash.display.Sprite;
	
	import singleton.SingletonClass;
	
	public class Singleton extends Sprite
	{
		public function Singleton()
		{
			var instance:SingletonClass;
			
			//Will Throw an error
			//instance = new SingletonClass;
			
			instance = SingletonClass.getInstance();
			instance.testVar = 'Test var is changed';
			
			trace(SingletonClass.getInstance().testVar);
		}
	}
}
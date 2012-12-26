package
{
	import flash.display.Sprite;
	
	import car.ICar;
	import factory.CarFactory;
	
	public class SimpleFactory extends Sprite
	{
		public function SimpleFactory()
		{
			var factory:CarFactory = new CarFactory;
			var lorry:ICar = factory.getCar('truck');
			var familyCar:ICar = factory.getCar('family');
			var racingCar:ICar = factory.getCar('race');
			
			trace(racingCar.getName());
			
			lorry.ride();
			familyCar.ride();
			racingCar.ride();
		}
	}
}
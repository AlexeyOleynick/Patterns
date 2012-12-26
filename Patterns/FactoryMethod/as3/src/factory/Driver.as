package factory
{
	import car.Citroen;
	import car.ICar;
	import car.McLaren;
	import car.Scania;
	
	import flash.errors.IllegalOperationError;

	public class Driver implements IDriver
	{

		
		public function Driver(type:String)
		{
			var currentCar:ICar = getCar(type); 
			trace('I\'m driving ' + currentCar.getName());
			currentCar.ride();
		}
		
		public function getCar(type:String):ICar{
			throw new IllegalOperationError('Method getCar() have to be implemented in subclass');
			return null;
		}
	}
}
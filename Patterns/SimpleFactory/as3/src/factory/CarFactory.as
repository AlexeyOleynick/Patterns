package factory
{
	import car.Citroen;
	import car.ICar;
	import car.McLaren;
	import car.Scania;

	public class CarFactory
	{
		public function getCar(type:String):ICar{
			
			switch(type){
				case 'truck':
					return new Scania;
					break;
				case 'family':
					return new Citroen;
					break;
				case 'race':
					return new McLaren;
					break;
				default:
					return new McLaren;
			}
			
		}
	}
}
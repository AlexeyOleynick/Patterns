package
{
	import factory.FamilyCarFactory;
	import factory.FuckingShitCarFactory;
	import factory.ICarPartsFactory;
	import factory.SportCarFactory;
	import factory.TruckCarFactory;
	
	import flash.display.Sprite;
	
	public class AbstractFactory extends Sprite
	{
		public function AbstractFactory()
		{
			trace ('Riding sport car');
			var sportPartsFactory:ICarPartsFactory = new SportCarFactory;
			var sportCar:Car = new Car(sportPartsFactory);
			sportCar.ride();
			trace('\n');
			
			
			trace ('Riding family car');
			var familyPartsFactory:ICarPartsFactory = new FamilyCarFactory;
			var familyCar:Car = new Car(familyPartsFactory);
			familyCar.ride();
			trace('\n');
			
			trace ('Riding heavy truck');
			var truckPartsFactory:ICarPartsFactory = new TruckCarFactory;
			var truck:Car = new Car(truckPartsFactory);
			truck.ride();
			trace('\n');
			
			trace ('Riding %^(&^????111');
			var fuckingShitCarFactory:ICarPartsFactory = new FuckingShitCarFactory;
			var fuckingShitCar:Car = new Car(fuckingShitCarFactory);
			fuckingShitCar.ride();
			trace('\n');
		}
	}
}
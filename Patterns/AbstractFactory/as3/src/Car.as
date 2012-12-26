package
{
	import factory.ICarPartsFactory;
	
	import parts.door.IDoors;
	import parts.engine.IEngine;
	import parts.wheel.IWheels;

	public class Car
	{
		
		private var engine:IEngine;
		private var doors:IDoors;
		private var wheels:IWheels;
		
		public function Car(carPartsFactory:ICarPartsFactory)
		{
			engine = carPartsFactory.getEngine();
			doors = carPartsFactory.getDoors();
			wheels = carPartsFactory.getWheels();
		}
		
		public function ride():void{
			engine.start();
			doors.open();
			wheels.spin();
		}
	}
}
package factory
{
	import parts.door.IDoors;
	import parts.door.LamboDoors;
	import parts.door.RegularDoors;
	import parts.engine.HeavyEngine;
	import parts.engine.IEngine;
	import parts.engine.V6TurboEngine;
	import parts.wheel.IWheels;
	import parts.wheel.R19SportWheels;
	import parts.wheel.RegularWheels;
	
	public class FuckingShitCarFactory implements ICarPartsFactory
	{
		public function FuckingShitCarFactory()
		{
		}
		
		public function getEngine():IEngine
		{
			return new HeavyEngine;
		}
		
		public function getDoors():IDoors
		{
			return new LamboDoors;
		}
		
		public function getWheels():IWheels
		{
			return new RegularWheels;
		}
	}
}
package factory
{
	import parts.door.IDoors;
	import parts.door.LamboDoors;
	import parts.engine.IEngine;
	import parts.engine.V6TurboEngine;
	import parts.wheel.IWheels;
	import parts.wheel.R19SportWheels;
	
	public class SportCarFactory implements ICarPartsFactory
	{
		public function SportCarFactory()
		{
		}
		
		public function getEngine():IEngine
		{
			return new V6TurboEngine;
		}
		
		public function getDoors():IDoors
		{
			return new LamboDoors;
		}
		
		public function getWheels():IWheels
		{
			return new R19SportWheels;
		}
	}
}
package factory
{
	import parts.door.IDoors;
	import parts.door.LamboDoors;
	import parts.door.SideDoors;
	import parts.engine.HeavyEngine;
	import parts.engine.IEngine;
	import parts.engine.V6TurboEngine;
	import parts.wheel.BigWheels;
	import parts.wheel.IWheels;
	import parts.wheel.R19SportWheels;
	
	public class TruckCarFactory implements ICarPartsFactory
	{
		public function TruckCarFactory()
		{
		}
		
		public function getEngine():IEngine
		{
			return new HeavyEngine;
		}
		
		public function getDoors():IDoors
		{
			return new SideDoors;
		}
		
		public function getWheels():IWheels
		{
			return new BigWheels;
		}
	}
}
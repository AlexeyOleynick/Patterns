package factory
{

	import parts.door.IDoors;
	import parts.door.RegularDoors;
	import parts.engine.IEngine;
	import parts.engine.V4RegularEngine;
	import parts.wheel.IWheels;
	import parts.wheel.RegularWheels;
	
	public class FamilyCarFactory implements ICarPartsFactory
	{
		public function FamilyCarFactory()
		{
		}
		
		public function getEngine():IEngine
		{
			return new V4RegularEngine;
		}
		
		public function getDoors():IDoors
		{
			return new RegularDoors;
		}
		
		public function getWheels():IWheels
		{
			return new RegularWheels;
		}
	}
}
package factory
{
	import parts.door.IDoors;
	import parts.engine.IEngine;
	import parts.wheel.IWheels;

	public interface ICarPartsFactory
	{
		function getEngine():IEngine;
		function getDoors():IDoors;
		function getWheels():IWheels;
	}
}
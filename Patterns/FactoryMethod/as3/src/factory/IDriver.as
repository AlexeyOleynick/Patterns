package factory
{
	import car.ICar;

	public interface IDriver
	{
		function getCar(type:String):ICar;
	}
}
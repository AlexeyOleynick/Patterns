package observer
{
	import subject.WeatherVO;

	public interface IObserver
	{
		function update(weatherData:WeatherVO):void;
	}
}
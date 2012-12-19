package observer
{
	import subject.WeatherProvider;
	import subject.WeatherVO;
	
	public class StatisticsDisplay implements IObserver
	{
		private var measurementsCount:int;
		private var statisticWeatherVO:WeatherVO
		public function StatisticsDisplay(weatherData:WeatherProvider)
		{
			weatherData.registerObserver(this);
		}
		
		public function display():void
		{
			trace('Statistics: ' + 'Times measured: ' + measurementsCount.toString());
		}
		
		public function update(weatherData:WeatherVO):void
		{
			measurementsCount++;
			display();
		}
	}
}
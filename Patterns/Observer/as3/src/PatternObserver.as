package
{
	import flash.display.Sprite;
	
	import observer.CurrentCondishionsDisplay;
	import observer.ForecastDisplay;
	import observer.StatisticsDisplay;
	
	import subject.WeatherProvider;
	
	public class PatternObserver extends Sprite
	{
		public function PatternObserver()
		{
			var wd:WeatherProvider = new WeatherProvider;
			var ccd:CurrentCondishionsDisplay = new CurrentCondishionsDisplay(wd);
			var fd:ForecastDisplay = new ForecastDisplay(wd);
			var sd:StatisticsDisplay = new StatisticsDisplay(wd);
			
			wd.setWeatherData(24, 76, 0.998);
			wd.setWeatherData(22, 74, 0.948);
			wd.setWeatherData(24, 71, 0.999);
			wd.setWeatherData(21, 74, 1);
			wd.setWeatherData(25, 76, 1.001);
			wd.setWeatherData(26, 77, 0.997);
			wd.setWeatherData(24, 72, 0.991);
			wd.setWeatherData(22, 74, 0.934);
		}
	}
}
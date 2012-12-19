package {
	import flash.display.Sprite;

	import observer.CurrentCondishionsDisplay;
	import observer.ForecastDisplay;
	import observer.StatisticsDisplay;

	import subject.WeatherProvider;

	/**
	 *
	 * Main app class
	 */
	public class PatternObserver extends Sprite {

		public function PatternObserver() {
			//Create subject, that will inform observers
			var weatherInformer:WeatherProvider = new WeatherProvider;

			//Create observers
			var currentConditionsDisplay:CurrentCondishionsDisplay = new CurrentCondishionsDisplay(weatherInformer);
			var forecastDisplay:ForecastDisplay = new ForecastDisplay(weatherInformer);
			var statisticsDisplay:StatisticsDisplay = new StatisticsDisplay(weatherInformer);

			//Update subjuct, it will notify all observers
			weatherInformer.setWeatherData(24, 76, 0.998);
			weatherInformer.setWeatherData(22, 74, 0.948);
			weatherInformer.setWeatherData(24, 71, 0.999);
			
			//currentCondishionsDisplay will not recieve notifications
			weatherInformer.removeObserver(currentConditionsDisplay);
			weatherInformer.setWeatherData(21, 74, 1);
			weatherInformer.setWeatherData(25, 76, 1.001);
			weatherInformer.setWeatherData(26, 77, 0.997);
			weatherInformer.setWeatherData(24, 72, 0.991);
			weatherInformer.setWeatherData(22, 74, 0.934);
		}
	}
}

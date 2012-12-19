package observer {
	import subject.WeatherProvider;
	import subject.WeatherVO;

	public class ForecastDisplay implements IObserver {
		private var forecasts:Vector.<String>;

		/**
		 *
		 * Concrete observer element
		 */
		public function ForecastDisplay(weatherData:WeatherProvider) {
			weatherData.registerObserver(this);

			forecasts = new Vector.<String>;

			forecasts.push('Mostly falling');
			forecasts.push('Freeze-thaw conditions');
			forecasts.push('Winds decreasing');
			forecasts.push('Fresh winds from the SE');
			forecasts.push('Light rain');
			forecasts.push('Mostly dry');
			forecasts.push('Dusting of snow');
		}

		public function display():void {
			var randomForecast:int = Math.floor(Math.random() * forecasts.length);
			trace('Weather Forecast: ' + forecasts[randomForecast]);
		}

		public function update(weatherData:WeatherVO):void {
			display();
		}
	}
}

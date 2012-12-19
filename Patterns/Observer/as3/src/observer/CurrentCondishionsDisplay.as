package observer {
	import subject.WeatherProvider;
	import subject.WeatherVO;

	/**
	 *
	 * Concrete observer element
	 */
	public class CurrentCondishionsDisplay implements IObserver {

		private var weatherInfo:WeatherVO;

		public function CurrentCondishionsDisplay(weatherData:WeatherProvider) {
			weatherData.registerObserver(this);
		}

		public function update(weatherVO:WeatherVO):void {
			weatherInfo = weatherVO;
			display();
		}

		public function display():void {
			trace('Current temp: ' + weatherInfo.temperature + 'C\n' + 'Current humidity: ' + weatherInfo.humidity + '%\n' + 'Current preassure: ' +
				  weatherInfo.pressure + 'Pa');
		}
	}
}

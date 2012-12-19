package subject {
	import observer.IObserver;

	/**
	 *
	 * Subject, that will send notifications
	 */
	public class WeatherProvider implements ISubject {

		public var weatherVO:WeatherVO;

		private var observers:Array;

		public function WeatherProvider() {
			weatherVO = new WeatherVO;
			observers = new Array;
		}

		public function registerObserver(observer:IObserver):void {
			//If observer is not already added
			if(!hasObserver(observer)) {
				observers.push(observer);
			}
		}

		public function hasObserver(observerToFind:IObserver):Boolean {
			for each(var currentObserver:IObserver in observers) {
				if(currentObserver == observerToFind) {
					return true;
				}
			}
			return false;
		}

		public function removeObserver(observer:IObserver):void {
			for(var observerIndex:int = 0; observerIndex < observers.length; observerIndex++) {
				if(observers[observerIndex] == observer) {
					observers.splice(observerIndex, 1);
				}
			}
		}

		public function notifyObservers():void {
			for each(var currentObserver:IObserver in observers) {
				currentObserver.update(weatherVO);
			}
		}

		/**
		 * Update info and notify every observer
		 */
		public function setWeatherData(temperature:Number, humidity:Number, pressure:Number):void {
			weatherVO.temperature = temperature;
			weatherVO.humidity = humidity;
			weatherVO.pressure = pressure;

			notifyObservers();
		}
	}
}

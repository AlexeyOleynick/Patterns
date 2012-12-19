package observer {
	import subject.WeatherVO;

	/**
	 *
	 * Observer interface
	 */
	public interface IObserver {
		/**
		 * This method will executed when subjuct will notify all observervers
		 */
		function update(weatherData:WeatherVO):void;
	}
}

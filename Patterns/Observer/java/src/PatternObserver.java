import observer.CurrentConditionsDisplay;
import subject.WeatherProvider;


public class PatternObserver {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WeatherProvider wp = new WeatherProvider();
		CurrentConditionsDisplay ccd = new CurrentConditionsDisplay();
		
		wp.registerObserver(ccd);
		wp.setWeatherData(24.3f, 73f, 0.998f);
		wp.removeObserver(ccd);
		wp.setWeatherData(22.3f, 71f, 0.993f);
		wp.setWeatherData(21.3f, 75f, 0.999f);
	}

}

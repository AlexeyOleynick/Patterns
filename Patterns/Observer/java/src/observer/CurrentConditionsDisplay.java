package observer;

import subject.WeatherVO;

public class CurrentConditionsDisplay implements IObserver {
	
	private WeatherVO weatherInfo;
	
	@Override
	public void update(WeatherVO weatherVO) {
		// TODO Auto-generated method stub
		weatherInfo = weatherVO;
		display();
	}

	private void display() {
		System.out.println(
			"Current temp: " + weatherInfo.temperature + "C\n" +
			"Current humidity: " + weatherInfo.humidity + "%\n" +
			"Current preassure: " + weatherInfo.pressure + "Pa"	
		);
		
	}
	
	
	
	

}

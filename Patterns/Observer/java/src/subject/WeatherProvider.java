package subject;

import java.util.ArrayList;

import observer.IObserver;

public class WeatherProvider implements ISubject {
	private ArrayList<IObserver> observers = new ArrayList<IObserver>();
	private WeatherVO weatherVO = new WeatherVO();
	
	
	
	public WeatherProvider() {
		
	}

	@Override
	public void registerObserver(IObserver observer) {
		if(!observers.contains(observer)){
			observers.add(observer);
		}
	}

	@Override
	public void removeObserver(IObserver observer) {
		if(observers.contains(observer)){
			observers.remove(observer);
		}
	}

	@Override
	public void notifyObservers() {
		for (IObserver observer : observers) {
			observer.update(weatherVO);
		}

	}
	
	public void setWeatherData(float temperature, float humidity, float pressure){
		weatherVO.temperature = temperature;
		weatherVO.humidity = humidity;
		weatherVO.pressure = pressure;
		notifyObservers();
	}

}

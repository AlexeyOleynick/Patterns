package observer;

import subject.WeatherVO;

public interface IObserver {
	void update(WeatherVO weatherVO);
}

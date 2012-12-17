<?php
		
	require_once 'subject/WeatherProvider.php';
	require_once 'observer/CurrentConditionsDisplay.php';
	require_once 'observer/ForecastDisplay.php';
	require_once 'observer/StatisticsDisplay.php';	

	class PatternObserver{
		
		public function __construct(){
		
			$wp = new WeatherProvider;
			
			$ccd = new CurrentConditionsDisplay;
			$sd = new StatisticsDisplay;
			$fd = new ForecastDisplay;
			
			$wp->registerObserver($ccd);
			$wp->registerObserver($sd);
			$wp->registerObserver($fd);
			
			$wp->setWeatherData(24.3, 75.2, 0.998);
			$wp->setWeatherData(22.1, 75.2, 0.998);
			
			$wp->removeObserver(new CurrentConditionsDisplay);
			
			$wp->setWeatherData(21.6, 75.2, 0.998);
			$wp->setWeatherData(28.9, 75.2, 0.998);
		}
		
	}

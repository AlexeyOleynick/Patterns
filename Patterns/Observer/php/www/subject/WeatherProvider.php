<?php
	require_once 'ISubject.php';
	require_once 'WeatherVO.php';
	
	class WeatherProvider implements ISubject{
		
		private $observers = array();
		private $weatherVO;
		
		public function __construct(){
			$this->weatherVO = new WeatherVO;
		}
		
		public function registerObserver(IObserver $observer){
			
			foreach ($this->observers as $observerIndex => $registeredObserver) {
				if($observer === $registeredObserver)
					return;
			}
			
			array_push($this->observers, $observer);
				
		}
		
		public function removeObserver(IObserver $observer){
			foreach ($this->observers as $observerIndex => $registeredObserver) {
				if($observer == $registeredObserver)
					unset($this->observers[$observerIndex]);
					break;
			}
		}
		
		public function notifyObservers(){
			foreach ($this->observers as $observerIndex => $registeredObserver) {
				$registeredObserver->update($this->weatherVO);
			}
		}
		
		public function setWeatherData($temperature, $humidity, $pressure){
			$this->weatherVO->temperature = $temperature;
			$this->weatherVO->humidity = $humidity;
			$this->weatherVO->pressure = $pressure;
			$this->notifyObservers();
		}
		
	}

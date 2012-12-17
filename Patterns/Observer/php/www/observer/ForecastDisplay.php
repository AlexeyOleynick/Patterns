<?php
	require_once '/../subject/WeatherVO.php';

	class ForecastDisplay implements IObserver{
		
		public function update($message){
			$this->display();
		}
		
		private function display(){
			echo 'No Forecast availible<br />';
		}
		
	}
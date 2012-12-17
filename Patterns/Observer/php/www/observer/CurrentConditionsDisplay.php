<?php
	require_once '/../subject/WeatherVO.php';

	class CurrentConditionsDisplay implements IObserver{
		
		private $weatherVO;
		
		public function update($message){
			$this->weatherVO = $message;
			$this->display();
		}
		
		private function display(){
			echo 'Temperature: ' . $this->weatherVO->temperature . '<br />';
		}
		
	}
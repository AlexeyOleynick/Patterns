<?php
	require_once '/../subject/WeatherVO.php';

	class StatisticsDisplay implements IObserver{
		
		private $timesMeasured = 0;
		
		public function update($message){
			$this->timesMeasured++;
			$this->display();
		}
		
		private function display(){
			echo "Times measured:{$this->timesMeasured}<br />";
		}
		
	}
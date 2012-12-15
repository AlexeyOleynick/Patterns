<?php
	require_once 'weapons/interfaces/IWeaponBehavior.php';
	class Hero{
		
		public $currentWeapon;
		public $name;
		
		public function attack(){
			
			echo $this->name . " attacked with: ";
			$this->currentWeapon->performAttack();			
		}
		
		public function setWeapon(IWeaponBehavior $weapon){
			$this->currentWeapon = $weapon;
		}
		
		
	}
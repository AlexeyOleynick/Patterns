<?php
	require_once 'Hero.php';
	require_once '/../weapons/BowWeaponBehavior.php';
	class Hawkeye extends Hero{
		public function __construct(){
			$this->name = 'Hawkeye';
			$this->currentWeapon = new BowWeaponBehavior;
		}
	}

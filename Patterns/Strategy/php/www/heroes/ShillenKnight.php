<?php
	require_once 'Hero.php';
	require_once '/../weapons/SwordWeaponBehavior.php';
	class ShillenKnight extends Hero{
		
		public function __construct(){
			$this->name = 'Shillen Knight';
			$this->currentWeapon = new SwordWeaponBehavior;
		}
		
	}

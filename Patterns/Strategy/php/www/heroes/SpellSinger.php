<?php
	require_once 'Hero.php';
	require_once '/../weapons/HydroblastMagicBehavior.php';
	class SpellSinger extends Hero{
		public function __construct(){
			$this->name = 'SpellSinger';
			$this->currentWeapon = new HydroblastMagicBehavior;
		}
	}
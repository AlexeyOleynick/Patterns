<?php
	require_once 'heroes/ShillenKnight.php';
	require_once 'heroes/Hawkeye.php';
	require_once 'heroes/SpellSinger.php';
	
	require_once 'weapons/BowWeaponBehavior.php';
	require_once 'weapons/HydroblastMagicBehavior.php';
	require_once 'weapons/SwordWeaponBehavior.php';
	
	class PatternStrategy{
		public function __construct(){
			$magican = new SpellSinger;
			$archer = new Hawkeye;
			$tank = new ShillenKnight;
			
			$tank->attack();
			$tank->setWeapon(new BowWeaponBehavior);
			$tank->attack();

			$archer->attack();
			$magican->attack();
		}
	}

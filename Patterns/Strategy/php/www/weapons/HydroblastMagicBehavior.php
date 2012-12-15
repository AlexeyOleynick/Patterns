<?php
	require_once 'interfaces/IWeaponBehavior.php';
	class HydroblastMagicBehavior implements IWeaponBehavior{
		
		public function performAttack(){
			echo 'Water Attack! <br />';
		}
		
	}

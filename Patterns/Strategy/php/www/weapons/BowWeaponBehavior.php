<?php
	require_once 'interfaces/IWeaponBehavior.php';
	class BowWeaponBehavior implements IWeaponBehavior{
		
		public function performAttack(){
			echo 'Arrow! Attack! Critical! <br />';
		}
		
	}

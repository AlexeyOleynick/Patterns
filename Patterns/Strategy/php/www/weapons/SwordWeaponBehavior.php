<?php
	require_once 'interfaces/IWeaponBehavior.php';
	class SwordWeaponBehavior implements IWeaponBehavior{
		
		public function performAttack(){
			echo 'Slice Attack! <br />';
		}
		
	}

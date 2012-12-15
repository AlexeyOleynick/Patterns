package heroes;

import weapons.SwordWeaponBehavior;

public class ShillenKnight extends Hero {
	public ShillenKnight(){
		name = "Shillen Knight";
		currentWeapon = new SwordWeaponBehavior();
	}
}

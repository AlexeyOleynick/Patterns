package heroes;

import weapons.BowWeaponBehavior;

public class Hawkeye extends Hero {
	public Hawkeye() {
		name = "Hawkey";
		currentWeapon = new BowWeaponBehavior();
	}
}

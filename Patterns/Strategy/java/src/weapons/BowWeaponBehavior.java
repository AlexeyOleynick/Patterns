package weapons;

import weapons.interfaces.IWeaponBehavior;

public class BowWeaponBehavior implements IWeaponBehavior {

	@Override
	public void performAttack() {
		System.out.println("Bow. Arrow! Shoot! Critical!"+"\n");
	}

}

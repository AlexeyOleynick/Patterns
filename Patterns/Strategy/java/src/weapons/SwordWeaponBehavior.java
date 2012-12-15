package weapons;

import weapons.interfaces.IWeaponBehavior;

public class SwordWeaponBehavior implements IWeaponBehavior {

	@Override
	public void performAttack() {
		System.out.println("Sword. Slice attack!"+"\n");
	}

}

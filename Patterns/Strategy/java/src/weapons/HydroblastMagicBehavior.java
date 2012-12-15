package weapons;

import weapons.interfaces.IWeaponBehavior;

public class HydroblastMagicBehavior implements IWeaponBehavior {

	@Override
	public void performAttack() {
		System.out.println("Hydroblast. Water Attack!"+"\n");
	}

}

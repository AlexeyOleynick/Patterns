package heroes;

import weapons.HydroblastMagicBehavior;

public class SpellSinger extends Hero {
	public SpellSinger(){
		name = "Spell Singer";
		currentWeapon = new HydroblastMagicBehavior();
	}
}

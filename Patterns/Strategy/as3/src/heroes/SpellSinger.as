package heroes {
	import weapons.HydroblastMagicBehavior;

	/**
	 *
	 * Concrete hero class
	 */
	public class SpellSinger extends Hero {
		public function SpellSinger() {
			name = 'Spell Singer';
			this.currentWeapon = new HydroblastMagicBehavior;
		}
	}
}

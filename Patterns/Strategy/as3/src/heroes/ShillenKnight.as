package heroes {
	import weapons.SwordWeaponBehavior;

	/**
	 *
	 * Concrete hero class
	 */
	public class ShillenKnight extends Hero {
		public function ShillenKnight() {
			name = 'Shillen Knight';
			this.currentWeapon = new SwordWeaponBehavior;
		}
	}
}

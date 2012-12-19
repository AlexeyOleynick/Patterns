package heroes {
	import weapons.BowWeaponBehavior;

	/**
	 *
	 * Concrete hero class
	 */
	public class Hawkeye extends Hero {
		public function Hawkeye() {
			name = 'Hawkeye';
			currentWeapon = new BowWeaponBehavior;
		}
	}
}

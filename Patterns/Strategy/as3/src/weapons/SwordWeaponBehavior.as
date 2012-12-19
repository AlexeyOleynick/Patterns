package weapons {
	import weapons.interfaces.IWeaponBehavior;

	/**
	 *
	 * Concrete weapon
	 */
	public class SwordWeaponBehavior implements IWeaponBehavior {

		public function perfomAttack():void {
			trace('Sword. Slice attack!' + '\n');
		}
	}
}

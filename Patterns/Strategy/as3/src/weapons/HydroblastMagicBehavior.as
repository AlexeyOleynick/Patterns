package weapons {
	import weapons.interfaces.IWeaponBehavior;

	/**
	 *
	 * Concrete weapon
	 */
	public class HydroblastMagicBehavior implements IWeaponBehavior {
		public function perfomAttack():void {
			trace('Hydroblast. Water attack!' + '\n');
		}
	}
}

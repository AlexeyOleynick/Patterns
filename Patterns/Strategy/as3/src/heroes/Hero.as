package heroes {
	import weapons.interfaces.IWeaponBehavior;

	/**
	 *
	 * Abstract Hero class
	 */
	public class Hero {
		/**
		 *
		 * @default Abstract weapon that is used in attacks
		 */
		protected var currentWeapon:IWeaponBehavior

		/**
		 *
		 * @default Character name
		 */
		protected var name:String = 'NoName';

		/**
		 * Attack using abstract weapon
		 */
		public function attack():void {
			trace(name + ' attacked with: ');
			currentWeapon.perfomAttack();
		}

		/**
		 * Setting concrete current weapon
		 * @param weapon
		 */
		public function setWeapon(weapon:IWeaponBehavior):void {
			currentWeapon = weapon;
		}

	}
}

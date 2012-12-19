package {
	import heroes.Hero;
	import heroes.Hawkeye;
	import heroes.ShillenKnight;
	import heroes.SpellSinger;

	import flash.display.Sprite;

	import weapons.BowWeaponBehavior;

	/**
	 *
	 * Main app class
	 */
	public class PatternStrategy extends Sprite {

		public function PatternStrategy() {
			//Create concrete heroes with Parent interface. Polymorphism is in action!
			var magican:Hero = new SpellSinger;
			var archer:Hero = new Hawkeye;
			var tank:Hero = new ShillenKnight;

			//Hawkeye will attack with his default weapon
			tank.attack();
			//Change it to bow and attack again, this is the main principle of this pattern
			tank.setWeapon(new BowWeaponBehavior);
			tank.attack();

			archer.attack();
			magican.attack();
		}
	}
}

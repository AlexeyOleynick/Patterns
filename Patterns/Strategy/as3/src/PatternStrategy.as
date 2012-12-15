package
{
	import heroes.Hero;
	import heroes.Hawkeye;
	import heroes.ShillenKnight;
	import heroes.SpellSinger;
	
	import flash.display.Sprite;
	
	import weapons.BowWeaponBehavior;
	
	public class PatternStrategy extends Sprite
	{
		public function PatternStrategy()
		{
			var magican:Hero = new SpellSinger;
			var archer:Hero = new Hawkeye;
			var tank:Hero = new ShillenKnight;
			
			tank.attack();
			tank.setWeapon(new BowWeaponBehavior);
			tank.attack();
			
			archer.attack();
			magican.attack();
		}
	}
}
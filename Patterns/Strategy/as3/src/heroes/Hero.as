package heroes
{
	import weapons.interfaces.IWeaponBehavior;

	public class Hero
	{
		protected var currentWeapon:IWeaponBehavior
		protected var name:String = 'NoName';
		
		public function attack():void{
			trace (name + ' attacked with: ');
			currentWeapon.perfomAttack();
		}
		
		public function setWeapon(weapon:IWeaponBehavior):void{
			currentWeapon = weapon;
		}
		
	}
}
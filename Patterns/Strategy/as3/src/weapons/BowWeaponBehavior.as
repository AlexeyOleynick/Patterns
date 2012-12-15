package weapons
{
	import weapons.interfaces.IWeaponBehavior;

	public class BowWeaponBehavior implements IWeaponBehavior
	{
		public function perfomAttack():void{
			trace('Bow. Arrow! Shoot! Critical!'+'\n');
		}
	}
}
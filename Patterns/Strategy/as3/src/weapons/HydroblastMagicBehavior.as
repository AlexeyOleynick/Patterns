package weapons
{
	import weapons.interfaces.IWeaponBehavior;

	public class HydroblastMagicBehavior implements IWeaponBehavior
	{
		public function perfomAttack():void{
			trace('Hydroblast. Water attack!'+'\n');
		}
	}
}
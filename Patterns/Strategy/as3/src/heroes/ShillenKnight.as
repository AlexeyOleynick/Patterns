package heroes
{
	import weapons.SwordWeaponBehavior;

	public class ShillenKnight extends Hero
	{
		public function ShillenKnight()
		{
			name = 'Shillen Knight';
			this.currentWeapon = new SwordWeaponBehavior;
		}
	}
}
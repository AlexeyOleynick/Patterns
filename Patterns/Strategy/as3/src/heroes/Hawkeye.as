package heroes
{
	import weapons.BowWeaponBehavior;

	public class Hawkeye extends Hero
	{
		public function Hawkeye()
		{
			name = 'Hawkeye';
			currentWeapon = new BowWeaponBehavior;
		}
	}
}
package heroes
{
	import weapons.HydroblastMagicBehavior;

	public class SpellSinger extends Hero
	{
		public function SpellSinger()
		{
			name = 'Spell Singer';
			this.currentWeapon = new HydroblastMagicBehavior;
		}
	}
}
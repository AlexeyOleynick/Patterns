package parts.door
{
	import parts.door.IDoors;
	
	public class RegularDoors implements IDoors
	{
		
		public function open():void
		{
			trace('RegularDoors: Door is opened. Welcome!');
		}
	}
}
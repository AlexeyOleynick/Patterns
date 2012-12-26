package parts.door
{
	import parts.door.IDoors;
	
	public class SideDoors implements IDoors
	{
		public function open():void
		{
			trace('SideDoors: Doors are sliding to the left. A lot of space is opened.');
		}
	}
}
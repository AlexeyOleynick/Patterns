package parts.door
{
	import parts.door.IDoors;
	
	public class LamboDoors implements IDoors
	{
		public function open():void
		{
			trace('LamboDoors: Doors are sliding up! Awesome!');
		}
	}
}
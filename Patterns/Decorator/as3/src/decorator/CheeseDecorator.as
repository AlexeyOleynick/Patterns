package decorator
{
	import component.IProduct;
	
	public class CheeseDecorator extends AbstractDecorator implements IProduct
	{
		
		public function CheeseDecorator(product:IProduct){
			super(product);
		}
		
		override public function getDescription():String
		{
			var description:String = product.getDescription();
			return description + ', Cheese';
		}
		
		override public function getPrice():Number
		{
			var price:Number = product.getPrice();
			return price + 0.5;
		}
	}
}
package decorator
{
	import component.IProduct;
	
	public class TomatoDecorator extends AbstractDecorator implements IProduct
	{
		
		public function TomatoDecorator(product:IProduct){
			super(product);
		}
		
		override public function getDescription():String
		{
			var description:String = product.getDescription();
			return description + ', Tomato';
		}
		
		override public function getPrice():Number
		{
			var price:Number = product.getPrice();
			return price + 0.4;
		}
	}
}
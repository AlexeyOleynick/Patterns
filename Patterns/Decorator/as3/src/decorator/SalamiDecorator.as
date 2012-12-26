package decorator
{
	import component.IProduct;
	
	public class SalamiDecorator extends AbstractDecorator implements IProduct
	{
		
		public function SalamiDecorator(product:IProduct){
			super(product);
		}
		
		override public function getDescription():String
		{
			var description:String = product.getDescription();
			return description + ', Salami';
		}
		
		override public function getPrice():Number
		{
			var price:Number = product.getPrice();
			return price + 0.9;
		}
	}
}
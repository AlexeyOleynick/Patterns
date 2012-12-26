package decorator
{
	import component.IProduct;
	import component.Pizza;

	public class AbstractDecorator extends Pizza{
		
		protected var product:IProduct;
		
		public function AbstractDecorator(product:IProduct)
		{
			this.product = product;
		}
	}
}
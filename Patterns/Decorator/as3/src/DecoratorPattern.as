package
{
	import component.IProduct;
	import component.Pizza;
	
	import decorator.AbstractDecorator;
	import decorator.CheeseDecorator;
	import decorator.SalamiDecorator;
	import decorator.TomatoDecorator;
	
	import flash.display.Sprite;
	
	public class DecoratorPattern extends Sprite
	{
		public function DecoratorPattern()
		{
			var pizza:IProduct = new Pizza;
			
			pizza = new CheeseDecorator(pizza);
			pizza = new CheeseDecorator(pizza);
			pizza = new SalamiDecorator(pizza);
			pizza = new TomatoDecorator(pizza);
			
			trace(pizza.getDescription());
			trace(pizza.getPrice());
		}
	}
}
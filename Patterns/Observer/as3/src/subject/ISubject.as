package subject
{
	import observer.IObserver;

	public interface ISubject
	{
		
		
		function registerObserver(observer:IObserver):void;
		function removeObserver(observer:IObserver):void;
		function notifyObservers():void;
		function hasObserver(observer:IObserver):Boolean;
	}
}
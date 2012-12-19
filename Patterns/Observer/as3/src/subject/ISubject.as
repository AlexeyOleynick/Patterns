package subject {
	import observer.IObserver;

	/**
	 *
	 * Interface for Observable element
	 */
	public interface ISubject {
		/**
		 * Add observer to list
		 */
		function registerObserver(observer:IObserver):void;
		/**
		 * Remove observer to list
		 */
		function removeObserver(observer:IObserver):void;
		/**
		 * Notify all observers in list
		 */
		function notifyObservers():void;

	}
}

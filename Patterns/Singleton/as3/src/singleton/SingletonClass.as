package singleton
{
	import flash.errors.IllegalOperationError;

	public class SingletonClass
	{
		private static var creationAlowwed:Boolean = false;
		private static var _singleton:SingletonClass;
		
		public var testVar:String = '';
		
		public function SingletonClass()
		{
			if(!creationAlowwed)
				throw new IllegalOperationError('You can\'t create instance of singleton class');
		}
		
		public static function getInstance():SingletonClass{
			if(_singleton == null){
				creationAlowwed = true;
				_singleton = new SingletonClass;
				creationAlowwed = false;
			}

			return _singleton;
		}
		
	}
}
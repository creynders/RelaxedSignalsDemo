package be.creynders.relaxedsignalsdemo.vos
{
	public class ConfigDataVO
	{
		public function ConfigDataVO()
		{
		}
		
		private var _appName : String;

		public function get appName():String{
			return _appName;
		}

		public function set appName(value:String):void{
			_appName = value;
		}

		private var _appVersion : String;

		public function get appVersion():String{
			return _appVersion;
		}

		public function set appVersion(value:String):void{
			_appVersion = value;
		}

		
	}
}
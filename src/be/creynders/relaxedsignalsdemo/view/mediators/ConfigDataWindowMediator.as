package be.creynders.relaxedsignalsdemo.view.mediators
{
	import be.creynders.framework.debug.logger.ILogger;
	import be.creynders.relaxedsignalsdemo.service.signals.ConfigDataRetrievedSignal;
	import be.creynders.relaxedsignalsdemo.view.components.ConfigDataWindow;
	import be.creynders.relaxedsignalsdemo.service.vos.ConfigDataVO;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ConfigDataWindowMediator extends Mediator
	{
		public function ConfigDataWindowMediator()
		{
			super();
		}
		
		[Inject]
		public var logger : ILogger;
		
		[Inject]
		public var configDataRetrievedSignal : ConfigDataRetrievedSignal;
		
		[Inject]
		public var view : ConfigDataWindow;
		
		override public function onRegister():void
		{
			logger.system( this, 'onRegister' );
			configDataRetrievedSignal.addOnce( this._onConfigDataRetrievedSignal );	
		}
		
		private function _onConfigDataRetrievedSignal( configData : ConfigDataVO ):void
		{
			logger.debug( this, '_onConfigDataRetrievedSignal' );
			view.appName = configData.appName;
			view.appVersion = configData.appVersion;
		}
		
		override public function onRemove():void
		{
			logger.system( this, 'onRemove' );
		}
		
		
	}
}
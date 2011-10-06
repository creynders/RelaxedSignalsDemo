package be.creynders.relaxedsignalsdemo.service.signals
{
	import be.creynders.relaxedsignalsdemo.service.vos.ConfigDataVO;
	
	import org.osflash.signals.relaxed.RelaxedSignal;
	
	public class ConfigDataRetrievedSignal extends RelaxedSignal
	{
		public function ConfigDataRetrievedSignal()
		{
			super( ConfigDataVO );
		}
		
		public function dispatchConfigData( configData : ConfigDataVO ) : void{
			this.dispatch( configData );
		}
	}
}
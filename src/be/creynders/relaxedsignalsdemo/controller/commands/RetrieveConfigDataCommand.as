package be.creynders.relaxedsignalsdemo.controller.commands
{
	import be.creynders.framework.debug.logger.ILogger;
	import be.creynders.relaxedsignalsdemo.service.actors.IConfigDataRetrieverService;
	import be.creynders.relaxedsignalsdemo.service.signals.ConfigDataRetrievedSignal;
	import be.creynders.relaxedsignalsdemo.service.vos.ConfigDataVO;
	
	import org.robotlegs.mvcs.Command;
	
	public class RetrieveConfigDataCommand extends Command
	{
		[Inject]
		public var logger : ILogger;
		
		[Inject]
		public var configDataRetrieverService : IConfigDataRetrieverService;
		
		override public function execute():void{
			logger.system( this, 'execute' );
			
			configDataRetrieverService.retrieveConfigData();
		}
	}
}
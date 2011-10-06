package be.creynders.relaxedsignalsdemo.controller.commands
{
	import be.creynders.framework.debug.logger.ILogger;
	import be.creynders.relaxedsignalsdemo.service.actors.EmbeddedConfigDataRetrieverService;
	import be.creynders.relaxedsignalsdemo.service.actors.IConfigDataRetrieverService;
	import be.creynders.relaxedsignalsdemo.service.parsers.IConfigDataParser;
	import be.creynders.relaxedsignalsdemo.service.parsers.XMLConfigDataParser;
	import be.creynders.relaxedsignalsdemo.service.signals.ConfigDataRetrievedSignal;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapServiceCommand extends Command
	{
		[Inject]
		public var logger : ILogger;
		override public function execute():void{
			logger.system( this, 'execute' );
			
			this.injector.mapSingletonOf( IConfigDataParser, XMLConfigDataParser );
			
			this.injector.mapSingleton( ConfigDataRetrievedSignal );
			
			this.injector.mapSingletonOf( IConfigDataRetrieverService, EmbeddedConfigDataRetrieverService );
			
		}
	}
}
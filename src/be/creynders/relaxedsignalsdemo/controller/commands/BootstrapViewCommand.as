package be.creynders.relaxedsignalsdemo.controller.commands
{
	import be.creynders.framework.debug.logger.ILogger;
	import be.creynders.relaxedsignalsdemo.view.components.ConfigDataWindow;
	import be.creynders.relaxedsignalsdemo.view.mediators.ConfigDataWindowMediator;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapViewCommand extends Command
	{
		
		[Inject]
		public var logger : ILogger;
		
		override public function execute():void{
			logger.system( this, 'execute' );
			
			this.mediatorMap.mapView( ConfigDataWindow, ConfigDataWindowMediator );
		}
	}
}
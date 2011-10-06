package be.creynders.relaxedsignalsdemo.controller.commands
{
	import be.creynders.framework.debug.logger.ILogger;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartupCommand extends Command
	{
		
		[Inject]
		public var logger : ILogger
		
		override public function execute():void
		{
			logger.system( this, 'execute' );
			
			/**
			 * this is ugly
			 * you should use https://github.com/Aaronius/robotlegs-utilities-Macrobot
			 * or some other command sequencer
			 * but for sake of simplicity we're doing it like this
			 */
			this.commandMap.execute( BootstrapServiceCommand );
			this.commandMap.execute( BootstrapViewCommand );
			this.commandMap.execute( RetrieveConfigDataCommand );
		}
		
	}
}
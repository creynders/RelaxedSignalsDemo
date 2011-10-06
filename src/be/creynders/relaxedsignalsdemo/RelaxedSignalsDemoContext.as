package be.creynders.relaxedsignalsdemo
{
	import be.creynders.framework.debug.logger.ILogger;
	import be.creynders.framework.debug.logger.OutputPanelLogger;
	import be.creynders.relaxedsignalsdemo.controller.commands.StartupCommand;
	import be.creynders.relaxedsignalsdemo.controller.signals.StartupSignal;
	
	import flash.display.DisplayObjectContainer;
	
	import org.osflash.signals.ISignal;
	import org.robotlegs.mvcs.SignalContext;
	
	public class RelaxedSignalsDemoContext extends SignalContext
	{
		public function RelaxedSignalsDemoContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		
		
		override public function startup():void
		{
			var logger : ILogger = new OutputPanelLogger();
			logger.system( this, 'startup' );
			
			this.injector.mapValue( ILogger, logger );
			
			var startupSignal : ISignal = new StartupSignal();
			this.signalCommandMap.mapSignal( startupSignal, StartupCommand, true );
			
			startupSignal.dispatch();
						
		}
		
		
	}
}
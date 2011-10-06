package be.creynders.relaxedsignalsdemo.service.actors
{
	import be.creynders.relaxedsignalsdemo.model.constants.ConfigConstants;
	import be.creynders.relaxedsignalsdemo.service.parsers.IConfigDataParser;
	import be.creynders.relaxedsignalsdemo.service.signals.ConfigDataRetrievedSignal;
	import be.creynders.relaxedsignalsdemo.service.vos.ConfigDataVO;
	
	public class EmbeddedConfigDataRetrieverService implements IConfigDataRetrieverService
	{
		public function EmbeddedConfigDataRetrieverService()
		{
		}
		
		[Inject]
		public var configDataParser : IConfigDataParser;
		
		[Inject]
		public var successSignal : ConfigDataRetrievedSignal
		
		public function retrieveConfigData():ConfigDataRetrievedSignal
		{
			var rawData : String = ConfigConstants.DEFAULT_CONFIG_DATA;
			var vo : ConfigDataVO = configDataParser.parseRawConfigData( rawData );
			successSignal.dispatch( vo );
			return successSignal;
		}
	}
}
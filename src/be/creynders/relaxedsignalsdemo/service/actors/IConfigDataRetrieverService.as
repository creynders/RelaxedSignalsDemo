package be.creynders.relaxedsignalsdemo.service.actors
{
	import be.creynders.relaxedsignalsdemo.service.signals.ConfigDataRetrievedSignal;

	public interface IConfigDataRetrieverService
	{
		function retrieveConfigData() : ConfigDataRetrievedSignal;
	}
}
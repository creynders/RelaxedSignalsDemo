package be.creynders.relaxedsignalsdemo.service.parsers
{
	import be.creynders.relaxedsignalsdemo.service.vos.ConfigDataVO;

	public interface IConfigDataParser
	{
		function parseRawConfigData( rawData : String ) : ConfigDataVO;
	}
}
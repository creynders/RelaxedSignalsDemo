package be.creynders.relaxedsignalsdemo.service.parsers
{
	import be.creynders.framework.utils.XMLUtil;
	import be.creynders.relaxedsignalsdemo.vos.ConfigDataVO;
	
	public class XMLConfigDataParser implements IConfigDataParser
	{
		public function XMLConfigDataParser()
		{
		}
		
		public function parseRawConfigData(rawData:String):ConfigDataVO
		{
			var xmlData : XML = new XML( rawData );
			var output : ConfigDataVO = new ConfigDataVO();
			output.appName = xmlData.appName.text();
			output.appVersion = xmlData.appVersion.text();
			return output;
		}
	}
}
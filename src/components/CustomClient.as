package components
{
	import mx.core.FlexGlobals;
	public class CustomClient
	{
		public function CustomClient()
		{
		}
		 
		public function onMetaData(info:Object):void {		
			  trace("metadata: duration=" + info.duration + " width=" + info.width + " height=" + info.height + " framerate=" + info.framerate);
			  FlexGlobals.topLevelApplication.framerate=info.framerate;
		//	trace("onMetaData");
		}
		public function onCuePoint(info:Object):void {
			//trace("cuepoint: time=" + info.time + " name=" + info.name + " type=" + info.type);
			trace("onCuePoint");
		} 
		public function onPlayStatus(info:Object):void {
			//trace("onPlayStatus: time=" + info.time + " name=" + info.name + " type=" + info.type);
			trace("onPlayStatus");
		}
		public function onBWDone(... rest):void{
			var p_bw:Number;
			if (rest.length > 0) p_bw = rest[0];
			trace("onBWDone " );
		}
		public function onXMPData(...rest):void {
			trace("onXMPData");
		}
		public function onImageData(imageData:Object):void {
			trace("onImageData");
		 }
		 public function onTextData(textData:Object):void {
			trace("onTextData");
		}
	 
	}
}
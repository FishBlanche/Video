package components
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.Socket;

	public class CustomSocket
	{
		private var _socket:Socket;
		 

		public function CustomSocket()
		{
			socket=new Socket();
			
			socket.addEventListener(Event.CLOSE, closeHandler,false,0,true);
			socket.addEventListener(Event.CONNECT, connectHandler,false,0,true);
			socket.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler,false,0,true);
			socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler,false,0,true);
			socket.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler,false,0,true);
		}

		public function get socket():Socket
		{
			return _socket;
		}

		public function set socket(value:Socket):void
		{
			_socket = value;
		}

		private function closeHandler(event:Event):void {
			//trace("closeHandler: " + event);
		 }
		
		private function connectHandler(event:Event):void {
			 
		}
		public function sendRequest(command:String):void {
		    socket.writeUTFBytes(command);
			socket.flush();
		}
		private function ioErrorHandler(event:IOErrorEvent):void {
	//		trace("ioErrorHandler: " + event);
		}
		
		private function securityErrorHandler(event:SecurityErrorEvent):void {
		//	trace("securityErrorHandler: " + event);
		}
		private function socketDataHandler(event:ProgressEvent):void {
		//	trace("socketDataHandler: " + event);
			readResponse();
		}
		private function readResponse():void {
			
			var str:String =socket.readUTFBytes(socket.bytesAvailable);
	 
			//trace("response"+str);
		}

		
	}
}
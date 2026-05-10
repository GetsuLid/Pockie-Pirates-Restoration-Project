package Loader
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   
   public class ByteLoader extends EventDispatcher
   {
      
      private var stream:URLStream;
      
      public var data:ByteArray;
      
      public var url:String;
      
      public function ByteLoader(param1:String = "")
      {
         super();
         if(param1 != "")
         {
            load(param1);
         }
      }
      
      public function load(param1:String) : void
      {
         url = param1;
         data = new ByteArray();
         stream = new URLStream();
         stream.load(new URLRequest(url));
         stream.addEventListener(Event.COMPLETE,completeHandler);
         stream.addEventListener(ProgressEvent.PROGRESS,progressHandler);
      }
      
      public function update() : void
      {
         if(isLoad)
         {
            stream.readBytes(data,data.length);
         }
      }
      
      public function get isLoad() : Boolean
      {
         if(stream == null)
         {
            return false;
         }
         return stream.connected;
      }
      
      private function completeHandler(param1:Event) : void
      {
         stream.removeEventListener(Event.COMPLETE,completeHandler);
         stream.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
         update();
         if(isLoad)
         {
            stream.close();
         }
         dispatchEvent(param1);
      }
      
      public function close() : void
      {
         if(isLoad)
         {
            stream.close();
         }
         stream = null;
         data = null;
      }
      
      private function progressHandler(param1:ProgressEvent) : void
      {
         if(stream.bytesAvailable == 0)
         {
            return;
         }
         update();
         dispatchEvent(param1);
      }
   }
}


package events
{
   import flash.events.Event;
   
   public class SendDataEvent extends Event
   {
      
      public var data:Object;
      
      public function SendDataEvent(type:String, data:Object, bubbles:Boolean = true, cancelable:Boolean = false)
      {
         this.data = data;
         super(type,bubbles,cancelable);
      }
   }
}


package events
{
   import flash.events.Event;
   
   public class GuideEvent extends Event
   {
      
      public var id:String;
      
      public var isHide:Boolean;
      
      public function GuideEvent(id:String, isHide:Boolean = true, bubbles:Boolean = true, cancelable:Boolean = false)
      {
         super("GuideEvent",bubbles,cancelable);
         this.id = id;
         this.isHide = isHide;
      }
   }
}


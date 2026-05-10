package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class DropdownEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const CLOSE:String = "close";
      
      public static const OPEN:String = "open";
      
      public var triggerEvent:Event;
      
      public function DropdownEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, triggerEvent:Event = null)
      {
         super(type,bubbles,cancelable);
         this.triggerEvent = triggerEvent;
      }
      
      override public function clone() : Event
      {
         return new DropdownEvent(type,bubbles,cancelable,triggerEvent);
      }
   }
}


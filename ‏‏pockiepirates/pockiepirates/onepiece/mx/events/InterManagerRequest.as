package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class InterManagerRequest extends Event
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const CURSOR_MANAGER_REQUEST:String = "cursorManagerRequest";
      
      public static const DRAG_MANAGER_REQUEST:String = "dragManagerRequest";
      
      public static const INIT_MANAGER_REQUEST:String = "initManagerRequest";
      
      public static const SYSTEM_MANAGER_REQUEST:String = "systemManagerRequest";
      
      public static const TOOLTIP_MANAGER_REQUEST:String = "tooltipManagerRequest";
      
      public var value:Object;
      
      public var name:String;
      
      public function InterManagerRequest(type:String, bubbles:Boolean = false, cancelable:Boolean = false, name:String = null, value:Object = null)
      {
         super(type,bubbles,cancelable);
         this.name = name;
         this.value = value;
      }
      
      override public function clone() : Event
      {
         return new InterManagerRequest(type,bubbles,cancelable,name,value);
      }
   }
}


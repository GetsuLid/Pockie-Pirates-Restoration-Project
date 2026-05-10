package events
{
   import flash.events.Event;
   
   public class NavigationEvent extends Event
   {
      
      public static var CHANGEVIEW:String = "changeview_event";
      
      public static var OPENWINDOW:String = "openwindow_event";
      
      public static var OPENMAINWINDOW:String = "open_main_window";
      
      public static var CLOSEALLMAINWINDOW:String = "close_all_main_window";
      
      public static var SHOWEFFECT:String = "show_effect";
      
      public var index:int;
      
      public var data:Object;
      
      public var module:String = "";
      
      public var url:String;
      
      public function NavigationEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}


package events
{
   import flash.events.Event;
   
   public class TopUIEvent extends Event
   {
      
      public var posi:int;
      
      public var action:String;
      
      public var actionTarget:String;
      
      public var args:Array;
      
      public var url:String;
      
      public function TopUIEvent()
      {
         super("top_ui_action",true,false);
      }
   }
}


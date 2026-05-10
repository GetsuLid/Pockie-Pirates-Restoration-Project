package mx.managers.systemClasses
{
   import flash.display.Stage;
   import flash.events.Event;
   
   public class StageEventProxy
   {
      
      private var listener:Function;
      
      public function StageEventProxy(listener:Function)
      {
         super();
         this.listener = listener;
      }
      
      public function stageListener(event:Event) : void
      {
         if(event.target is Stage)
         {
            listener(event);
         }
      }
   }
}


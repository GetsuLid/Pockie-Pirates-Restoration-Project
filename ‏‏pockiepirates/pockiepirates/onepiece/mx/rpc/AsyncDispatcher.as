package mx.rpc
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class AsyncDispatcher
   {
      
      private var _method:Function;
      
      private var _timer:Timer;
      
      private var _args:Array;
      
      public function AsyncDispatcher(method:Function, args:Array, delay:Number)
      {
         super();
         _method = method;
         _args = args;
         _timer = new Timer(delay);
         _timer.addEventListener(TimerEvent.TIMER,timerEventHandler);
         _timer.start();
      }
      
      private function timerEventHandler(event:TimerEvent) : void
      {
         _timer.stop();
         _timer.removeEventListener(TimerEvent.TIMER,timerEventHandler);
         _method.apply(null,_args);
      }
   }
}


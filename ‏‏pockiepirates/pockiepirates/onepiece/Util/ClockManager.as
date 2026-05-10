package Util
{
   import Util.Data.ClockData;
   import Util.Data.TimerData;
   import flash.utils.Dictionary;
   
   public class ClockManager
   {
      
      private static var _inst:ClockManager;
      
      private var timerDictionary:Dictionary;
      
      public function ClockManager()
      {
         super();
         timerDictionary = new Dictionary();
      }
      
      public static function get inst() : ClockManager
      {
         if(!_inst)
         {
            _inst = new ClockManager();
         }
         return _inst;
      }
      
      public function removeClock(clock:ClockData, delay:int) : void
      {
         var timer:TimerData = timerDictionary[delay];
         if(timer)
         {
            timer.removeClock(clock);
         }
      }
      
      public function addClock(clock:ClockData, delay:int) : void
      {
         var timer:TimerData = timerDictionary[delay];
         if(!timer)
         {
            timer = new TimerData(delay);
            timerDictionary[delay] = timer;
         }
         timer.addClock(clock);
      }
   }
}


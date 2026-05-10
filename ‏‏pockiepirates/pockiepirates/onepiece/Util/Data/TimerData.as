package Util.Data
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class TimerData
   {
      
      private var lastTime:int;
      
      private var timer:Timer;
      
      private var clockDatas:Array;
      
      private var timerDelay:int;
      
      public function TimerData(delay:int)
      {
         super();
         timerDelay = delay;
         timer = new Timer(delay);
         clockDatas = new Array();
         timer.addEventListener(TimerEvent.TIMER,countTime);
      }
      
      public function removeClock(clock:ClockData) : void
      {
         if(clockDatas.length == 0)
         {
            timer.stop();
         }
         var temp:int = clockDatas.indexOf(clock);
         if(temp != -1)
         {
            clockDatas.splice(temp,1);
         }
      }
      
      public function addClock(clock:ClockData) : void
      {
         if(clockDatas.length == 0)
         {
            timer.start();
            lastTime = new Date().getTime();
         }
         var temp:int = clockDatas.indexOf(clock);
         if(temp == -1)
         {
            clockDatas.push(clock);
         }
      }
      
      private function countTime(e:TimerEvent) : void
      {
         var clock:ClockData = null;
         var now:Number = new Date().getTime();
         var delay:int = now - lastTime;
         lastTime = now;
         if(delay < timerDelay * 0.8 || delay > timerDelay * 1.2)
         {
            delay = timerDelay;
         }
         for each(clock in clockDatas)
         {
            clock.time += delay * clock.addKind;
         }
      }
   }
}


package ExtendComp
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ChangeLabel extends GlowLabel
   {
      
      private var isChange:Boolean = false;
      
      private var timer:Timer = new Timer(100,10);
      
      public var is0:Boolean;
      
      private var _value:String;
      
      public var changeColor:uint = 16711680;
      
      private var ownColor:uint;
      
      public function ChangeLabel()
      {
         super();
      }
      
      override public function set text(value:String) : void
      {
         if(text == "" || is0 && text == "0")
         {
            super.text = value;
         }
         else if(text != value)
         {
            _value = value;
            if(!timer.running)
            {
               timer.addEventListener(TimerEvent.TIMER,showChange);
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,changeComplete);
               timer.reset();
               timer.start();
               ownColor = getStyle("color");
            }
         }
         else if(timer.running)
         {
            _value = value;
            stopChange();
         }
      }
      
      private function changeComplete(e:TimerEvent) : void
      {
         stopChange();
      }
      
      private function stopChange() : void
      {
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,showChange);
         timer.removeEventListener(TimerEvent.TIMER_COMPLETE,changeComplete);
         setStyle("color",ownColor);
         super.text = _value;
      }
      
      private function showChange(e:TimerEvent) : void
      {
         if(isChange)
         {
            isChange = false;
            setStyle("color",ownColor);
         }
         else
         {
            isChange = true;
            setStyle("color",changeColor);
         }
      }
   }
}


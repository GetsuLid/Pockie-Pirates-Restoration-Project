package ExtendComp
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.containers.Canvas;
   
   public class ResultLabel extends Canvas
   {
      
      private var timer:Timer;
      
      private var _label:GlowLabel;
      
      private var time:int = 0;
      
      public function ResultLabel()
      {
         super();
         _label = new GlowLabel();
         _label.setStyle("fontSize",14);
         _label.setStyle("verticalCenter",0);
         _label.setStyle("horizontalCenter",0);
         this.setStyle("styleName","Border220");
         _label.blur = 2;
         addChild(_label);
         timer = new Timer(100);
         timer.addEventListener(TimerEvent.TIMER,hide);
         mouseEnabled = false;
         mouseChildren = false;
         height = 34;
      }
      
      public function showResult(msg:String, color:uint, glowColor:uint) : void
      {
         _label.text = msg;
         _label.setStyle("color",color);
         _label.glowColor = glowColor;
         timer.start();
         main.inst.addChild(this);
      }
      
      private function hide(event:TimerEvent) : void
      {
         ++time;
         if(time >= 10)
         {
            this.y -= 10;
            this.alpha -= 0.1;
         }
         if(time >= 20)
         {
            if(parent)
            {
               parent.removeChild(this);
            }
            timer.stop();
         }
      }
      
      override protected function createBorder() : void
      {
         width = _label.width + 35;
         super.createBorder();
      }
   }
}


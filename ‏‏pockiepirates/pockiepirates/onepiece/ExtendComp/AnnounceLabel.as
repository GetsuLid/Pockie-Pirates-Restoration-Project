package ExtendComp
{
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import server.HttpServerManager;
   
   public class AnnounceLabel extends Canvas
   {
      
      private var timer:Timer;
      
      private var time:int = 0;
      
      private var _bt:Button;
      
      private var _label:GlowLabel;
      
      private var _canvas:Canvas;
      
      public function AnnounceLabel()
      {
         super();
         _label = new GlowLabel();
         _label.setStyle("fontSize",14);
         _label.x = 300;
         _label.setStyle("fontWeight","bold");
         _label.selectable = true;
         _label.blur = 3;
         _canvas = new Canvas();
         _canvas.width = 300;
         _canvas.height = 26;
         _canvas.x = 40;
         _canvas.y = 25;
         _canvas.horizontalScrollPolicy = "off";
         _canvas.verticalScrollPolicy = "off";
         this.setStyle("styleName","Border1108");
         _canvas.addChild(_label);
         _bt = new Button();
         _bt.setStyle("styleName","Button114");
         _bt.setStyle("right",20);
         _bt.setStyle("bottom",3);
         _bt.addEventListener(MouseEvent.CLICK,doEnd);
         addChild(_canvas);
         addChild(_bt);
         timer = new Timer(100);
         timer.addEventListener(TimerEvent.TIMER,hide);
         mouseEnabled = false;
         height = 51;
         width = 365;
      }
      
      private function hide(event:TimerEvent) : void
      {
         if(_label.x + _label.width <= 0)
         {
            doEnd();
         }
         else
         {
            _label.x -= 4;
         }
      }
      
      override protected function createBorder() : void
      {
         super.createBorder();
      }
      
      public function showResult(msg:String, color:uint, glowColor:uint) : void
      {
         _label.htmlText = msg;
         _label.setStyle("color",color);
         _label.glowColor = glowColor;
         timer.start();
         main.inst.addChild(this);
      }
      
      private function doEnd(e:MouseEvent = null) : void
      {
         HttpServerManager.getInstance().isAnnounceEnd = true;
         if(parent)
         {
            parent.removeChild(this);
         }
         timer.stop();
      }
      
      private function link(event:TextEvent) : void
      {
         navigateToURL(new URLRequest(event.text));
      }
   }
}


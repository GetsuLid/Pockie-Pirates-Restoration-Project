package ExtendComp
{
   import mx.containers.Canvas;
   import mx.core.Container;
   import mx.events.FlexEvent;
   
   public class UIContainer extends Canvas
   {
      
      private var initFinish:Boolean = false;
      
      public var positionByHand:Boolean = false;
      
      public var needAutoRemove:Boolean = true;
      
      public var inMiddle:Boolean = true;
      
      public function UIContainer()
      {
         super();
         addEventListener(FlexEvent.CREATION_COMPLETE,completeInit);
         addEventListener(FlexEvent.ADD,add);
      }
      
      public function add(event:FlexEvent) : void
      {
         if(initFinish)
         {
            show();
         }
      }
      
      public function hide() : void
      {
         if(Boolean(parent) && parent.contains(this))
         {
            parent.removeChild(this);
         }
      }
      
      protected function completeInit(event:FlexEvent) : void
      {
         show();
         initFinish = true;
      }
      
      public function setPosition() : void
      {
         if(!positionByHand)
         {
            if(inMiddle)
            {
               x = (1000 - width) / 2;
               y = Math.max((500 - height) / 2,0);
            }
            else if(x + width > 1000)
            {
               x = 1000 - width;
            }
         }
      }
      
      public function changeView(con:Container) : void
      {
         if(con.contains(this))
         {
            if(needAutoRemove)
            {
               hide();
            }
         }
         else
         {
            con.addChild(this);
         }
      }
      
      public function front() : void
      {
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function show() : void
      {
         if(parent)
         {
            setPosition();
            front();
         }
      }
   }
}


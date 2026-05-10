package Draw.Data
{
   import Draw.BitmapDataManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BaseFrame extends BaseBitmapData
   {
      
      public var currentY:int;
      
      public var direction:int = 0;
      
      public var offsetYs:Array = new Array();
      
      private var count:int = 0;
      
      public var rates:Array = new Array();
      
      public var currentframe:int = 1;
      
      public var store:BitmapDataStore;
      
      public var moffsetXs:Array = new Array();
      
      public var totalframes:int;
      
      public var frames:Array = new Array();
      
      public var offsetXs:Array = new Array();
      
      public var actionState:int = 0;
      
      public var currentX:int;
      
      public function BaseFrame()
      {
         super();
      }
      
      public function changeState(state:int, dir:int = -1, later:int = 0) : void
      {
         if(dir == -1)
         {
            dir = direction;
         }
         if(state != actionState || dir != direction)
         {
            direction = dir;
            actionState = state;
            setActionStart();
            count = -later;
         }
      }
      
      override public function drawDataToBack(back:BitmapData) : void
      {
         if(store)
         {
            bitMapData = store.getBitmapdata(currentframe);
         }
         offsetX = offsetXs[actionState] * (1 - direction) + moffsetXs[actionState] * direction;
         offsetY = offsetYs[actionState];
         super.drawDataToBack(back);
      }
      
      public function setActionStart() : void
      {
         if(actionState != 0)
         {
            currentframe = frames[actionState - 1] + 1;
         }
         else
         {
            currentframe = 1;
         }
         currentframe += totalframes * direction;
      }
      
      public function getActionEnd() : int
      {
         return frames[actionState] + totalframes * direction;
      }
      
      public function get loadFinish() : Boolean
      {
         return store.loadFinish;
      }
      
      public function hitTest(test:Point) : Boolean
      {
         if(store)
         {
            return store.getBitmapdata(currentframe).hitTest(new Point(0,0),0,new Point(test.x + offsetX,test.y + offsetY));
         }
         return false;
      }
      
      public function addFrame() : void
      {
         var temp:int = int(rates[actionState]);
         ++count;
         if(count >= temp)
         {
            count = 0;
            ++currentframe;
         }
      }
      
      public function get height() : int
      {
         var bitmap:BitmapData = null;
         if(Boolean(store) && store.loadFinish)
         {
            bitmap = store.getBitmapdata(currentframe);
            return bitmap.height;
         }
         return 0;
      }
      
      public function loopFrame() : void
      {
         if(currentframe > getActionEnd())
         {
            setActionStart();
         }
      }
      
      public function setFrame(frame:int) : void
      {
         currentframe = frame;
      }
      
      public function remainLoop() : void
      {
         if(currentframe > getActionEnd())
         {
            currentframe = getActionEnd();
         }
      }
      
      public function setInfo(url:String, info:Array, isSpecial:Boolean = false, size:Array = null) : void
      {
         while(info.length >= 5)
         {
            frames.push(info.shift());
            rates.push(info.shift());
            offsetXs.push(info.shift());
            offsetYs.push(info.shift());
            moffsetXs.push(info.shift());
         }
         totalframes = frames[frames.length - 1];
         store = BitmapDataManager.getInstance().getStoreDataByUrl(url,isSpecial,size);
      }
      
      public function checkLoop() : Boolean
      {
         if(currentframe > getActionEnd())
         {
            return true;
         }
         return false;
      }
   }
}


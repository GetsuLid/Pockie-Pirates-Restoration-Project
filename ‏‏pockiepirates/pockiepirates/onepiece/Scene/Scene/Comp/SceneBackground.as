package Scene.Comp
{
   import Scene.Config.SceneConfig;
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.effects.Move;
   import mx.events.PropertyChangeEvent;
   
   public class SceneBackground implements IEventDispatcher
   {
      
      public var swfList:Array = new Array();
      
      public var container:Canvas = new Canvas();
      
      public var width:int;
      
      private var move:Move;
      
      private var viewWidth:int = 1000;
      
      public var height:int;
      
      private var viewHeight:int = 600;
      
      private var _x:int;
      
      private var _y:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function SceneBackground()
      {
         super();
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function createBackground(floorInfo:Array) : void
      {
         var info:Array = null;
         var swf:SWFLoader = null;
         var tempX:int = 0;
         var tempY:int = 0;
         var url:String = null;
         var imageInfo:Array = null;
         var index:int = 0;
         var i:int = 0;
         var j:int = 0;
         while(container.getChildren().length)
         {
            swf = container.removeChildAt(0) as SWFLoader;
            swf.source = "";
            swfList.push(swf);
         }
         for each(info in floorInfo)
         {
            tempX = info.shift();
            tempY = info.shift();
            url = info.shift();
            imageInfo = SceneConfig.getSceneImageInfo(url);
            index = 1;
            addImage(url,0,tempX,tempY,imageInfo[0] * 200,imageInfo[1] * 200);
            for(i = 0; i < imageInfo[0]; i++)
            {
               for(j = 0; j < imageInfo[1]; j++)
               {
                  addImage(url,index,tempX + i * 200,tempY + j * 200,200,200);
                  index++;
               }
            }
         }
         changeView();
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      private function set _120x(value:Number) : void
      {
         if(_x == value)
         {
            return;
         }
         _x = value;
         changeView();
      }
      
      private function addImage(url:String, index:int, x:int, y:int, width:int = 0, height:int = 0) : void
      {
         var image:SWFLoader = null;
         if(swfList.length)
         {
            image = swfList.shift();
         }
         else
         {
            image = new SWFLoader();
         }
         image.source = Global.resourceServer + "../assets/images/Scene/" + url + "/" + index + ".swf";
         image.x = x;
         image.y = y;
         if(width)
         {
            image.width = width;
         }
         if(height)
         {
            image.height = height;
         }
         container.addChild(image);
      }
      
      [Bindable(event="propertyChange")]
      public function set y(value:Number) : void
      {
         var oldValue:Object = this.y;
         if(oldValue !== value)
         {
            this._121y = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"y",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      private function set _121y(value:Number) : void
      {
         if(_y == value)
         {
            return;
         }
         _y = value;
         changeView();
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function set x(value:Number) : void
      {
         var oldValue:Object = this.x;
         if(oldValue !== value)
         {
            this._120x = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"x",oldValue,value));
         }
      }
      
      private function changeView() : void
      {
         var rect:Rectangle = new Rectangle(-_x,-_y,viewWidth,viewHeight);
         container.scrollRect = rect;
      }
      
      public function get x() : Number
      {
         return _x;
      }
   }
}


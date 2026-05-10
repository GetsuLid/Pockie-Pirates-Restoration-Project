package Scene.Data
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class NPCDialogSelectData implements IEventDispatcher
   {
      
      private var _1306084975effect:int;
      
      public var sid:int;
      
      private var _951530617content:String;
      
      private var _113126854width:int;
      
      private var _116079url:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function NPCDialogSelectData(info:Object)
      {
         super();
         content = info.option_content;
         effect = info.option_effect;
         sid = info.option_task;
         url = "../assets/images/TalkIcon/" + effect + ".swf";
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : String
      {
         return this._951530617content;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set width(value:int) : void
      {
         var oldValue:Object = this._113126854width;
         if(oldValue !== value)
         {
            this._113126854width = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"width",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get effect() : int
      {
         return this._1306084975effect;
      }
      
      [Bindable(event="propertyChange")]
      public function get width() : int
      {
         return this._113126854width;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      public function set effect(value:int) : void
      {
         var oldValue:Object = this._1306084975effect;
         if(oldValue !== value)
         {
            this._1306084975effect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effect",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set content(value:String) : void
      {
         var oldValue:Object = this._951530617content;
         if(oldValue !== value)
         {
            this._951530617content = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
   }
}


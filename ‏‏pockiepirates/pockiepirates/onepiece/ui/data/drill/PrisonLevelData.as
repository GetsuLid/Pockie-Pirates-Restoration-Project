package data.drill
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class PrisonLevelData implements IEventDispatcher
   {
      
      private var _1770474081buttonStyle:String;
      
      private var _2130941331nowArmy:int;
      
      private var _1180237164isOpen:Boolean;
      
      private var _843553057maxArmy:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _398301669isSelected:Boolean;
      
      private var _104125idx:int;
      
      public function PrisonLevelData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set idx(value:int) : void
      {
         var oldValue:Object = this._104125idx;
         if(oldValue !== value)
         {
            this._104125idx = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idx",oldValue,value));
         }
      }
      
      public function set maxArmy(value:int) : void
      {
         var oldValue:Object = this._843553057maxArmy;
         if(oldValue !== value)
         {
            this._843553057maxArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxArmy",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idx() : int
      {
         return this._104125idx;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set isSelected(value:Boolean) : void
      {
         var oldValue:Object = this._398301669isSelected;
         if(oldValue !== value)
         {
            this._398301669isSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelected",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get nowArmy() : int
      {
         return this._2130941331nowArmy;
      }
      
      [Bindable(event="propertyChange")]
      public function get isOpen() : Boolean
      {
         return this._1180237164isOpen;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonStyle() : String
      {
         return this._1770474081buttonStyle;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxArmy() : int
      {
         return this._843553057maxArmy;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      public function set nowArmy(value:int) : void
      {
         var oldValue:Object = this._2130941331nowArmy;
         if(oldValue !== value)
         {
            this._2130941331nowArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowArmy",oldValue,value));
         }
      }
      
      public function dealInfo(_floor:int, isPrisonIng:Boolean) : void
      {
         if(!isPrisonIng)
         {
            isOpen = false;
            isSelected = false;
         }
         else if(idx < _floor)
         {
            isOpen = true;
            isSelected = false;
         }
         else if(idx == _floor)
         {
            isOpen = true;
            isSelected = true;
         }
         else
         {
            isOpen = false;
            isSelected = false;
         }
      }
      
      public function set isOpen(value:Boolean) : void
      {
         var oldValue:Object = this._1180237164isOpen;
         if(oldValue !== value)
         {
            this._1180237164isOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOpen",oldValue,value));
         }
      }
      
      public function set index(_index:int) : void
      {
         idx = _index;
         switch(_index)
         {
            case 1:
               buttonStyle = "Button1079";
               break;
            case 2:
               buttonStyle = "Button1080";
               break;
            case 3:
               buttonStyle = "Button1081";
               break;
            case 4:
               buttonStyle = "Button1082";
               break;
            case 5:
               buttonStyle = "Button1083";
               break;
            case 6:
               buttonStyle = "Button1084";
               break;
            case 7:
               buttonStyle = "Button1202";
               break;
            case 8:
               buttonStyle = "Button1203";
               break;
            case 9:
               buttonStyle = "Button1204";
               break;
            case 10:
               buttonStyle = "Button1205";
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set buttonStyle(value:String) : void
      {
         var oldValue:Object = this._1770474081buttonStyle;
         if(oldValue !== value)
         {
            this._1770474081buttonStyle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonStyle",oldValue,value));
         }
      }
   }
}


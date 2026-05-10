package data.vip
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class SecretaryRewardData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _9789665canReward:Boolean;
      
      private var _1105703241haveReward:Boolean;
      
      private var _100525951item2:ItemBase;
      
      private var _100346066index:int;
      
      private var _3079825desc:String;
      
      private var _100525950item1:ItemBase;
      
      private var _100525952item3:ItemBase;
      
      private var _102865796level:int;
      
      public function SecretaryRewardData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemBase
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemBase
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get haveReward() : Boolean
      {
         return this._1105703241haveReward;
      }
      
      public function set item3(value:ItemBase) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      public function set canReward(value:Boolean) : void
      {
         var oldValue:Object = this._9789665canReward;
         if(oldValue !== value)
         {
            this._9789665canReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canReward",oldValue,value));
         }
      }
      
      public function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      [Bindable(event="propertyChange")]
      public function get canReward() : Boolean
      {
         return this._9789665canReward;
      }
      
      public function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
         }
      }
      
      public function set index(value:int) : void
      {
         var oldValue:Object = this._100346066index;
         if(oldValue !== value)
         {
            this._100346066index = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set haveReward(value:Boolean) : void
      {
         var oldValue:Object = this._1105703241haveReward;
         if(oldValue !== value)
         {
            this._1105703241haveReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"haveReward",oldValue,value));
         }
      }
      
      public function resolveReward(_index:int, _nowVitality:int, _haveReward:Boolean) : void
      {
         index = _index;
         switch(index)
         {
            case 1:
               item1 = ObjectAction.cloneItem(300057);
               item1.count = 1;
               item2 = ObjectAction.cloneItem(300061);
               item2.count = 1;
               item3 = ObjectAction.cloneItem(300059);
               item3.count = 3;
               level = 50;
               desc = UILang.DegreeTarget.replace(/#1/,level);
               if(_nowVitality >= level)
               {
                  canReward = true;
               }
               break;
            case 2:
               item1 = ObjectAction.cloneItem(300057);
               item1.count = 5;
               item2 = ObjectAction.cloneItem(300061);
               item2.count = 2;
               item3 = ObjectAction.cloneItem(300077);
               item3.count = 1;
               level = 100;
               desc = UILang.DegreeTarget.replace(/#1/,level);
               if(_nowVitality >= level)
               {
                  canReward = true;
               }
               break;
            case 3:
               item1 = ObjectAction.cloneItem(300057);
               item1.count = 10;
               item2 = ObjectAction.cloneItem(300061);
               item2.count = 5;
               item3 = ObjectAction.cloneItem(300077);
               item3.count = 1;
               level = 150;
               desc = UILang.DegreeTarget.replace(/#1/,level);
               if(_nowVitality >= level)
               {
                  canReward = true;
               }
         }
         if(_haveReward)
         {
            haveReward = true;
            canReward = false;
         }
         else
         {
            haveReward = false;
         }
      }
      
      public function set item1(value:ItemBase) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      public function set item2(value:ItemBase) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemBase
      {
         return this._100525951item2;
      }
   }
}


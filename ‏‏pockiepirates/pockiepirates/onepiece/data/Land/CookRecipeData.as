package data.Land
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class CookRecipeData implements IEventDispatcher
   {
      
      private var _804834487recipeId:int;
      
      private var _3373707name:String;
      
      private var _549272376canCook:Boolean;
      
      private var _879772964amount4:int;
      
      private var _116079url:String;
      
      private var _3355id:int;
      
      private var _102865796level:int;
      
      private var _879772967amount1:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _879772966amount2:int;
      
      private var _stuff1:int;
      
      private var _stuff2:int;
      
      private var _stuff3:int;
      
      private var _stuff4:int;
      
      private var _3242771item:ItemBase;
      
      private var _231987514isSelect:Boolean;
      
      private var _879772965amount3:int;
      
      public function CookRecipeData()
      {
         super();
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set isSelect(value:Boolean) : void
      {
         var oldValue:Object = this._231987514isSelect;
         if(oldValue !== value)
         {
            this._231987514isSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelect",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set recipeId(value:int) : void
      {
         var oldValue:Object = this._804834487recipeId;
         if(oldValue !== value)
         {
            this._804834487recipeId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      public function set name(value:String) : void
      {
         var oldValue:Object = this._3373707name;
         if(oldValue !== value)
         {
            this._3373707name = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",oldValue,value));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function refreshData(info:Object) : void
      {
         id = info.cfgItemId;
         amount1 = info.amount1;
         amount2 = info.amount2;
         amount3 = info.amount3;
         amount4 = info.amount4;
         _stuff1 = info.stuff1;
         _stuff2 = info.stuff2;
         _stuff3 = info.stuff3;
         _stuff4 = info.stuff4;
         name = info.name;
         level = info.requireCookLevel;
         item = ObjectAction.cloneItem(id);
         url = item.url;
         if(level > DataManager.Instance.cookData._cookLevel)
         {
            canCook = false;
         }
         else
         {
            canCook = true;
         }
      }
      
      public function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      public function set amount1(value:int) : void
      {
         var oldValue:Object = this._879772967amount1;
         if(oldValue !== value)
         {
            this._879772967amount1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount1",oldValue,value));
         }
      }
      
      public function set amount2(value:int) : void
      {
         var oldValue:Object = this._879772966amount2;
         if(oldValue !== value)
         {
            this._879772966amount2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount2",oldValue,value));
         }
      }
      
      public function set id(value:int) : void
      {
         var oldValue:Object = this._3355id;
         if(oldValue !== value)
         {
            this._3355id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",oldValue,value));
         }
      }
      
      public function set amount3(value:int) : void
      {
         var oldValue:Object = this._879772965amount3;
         if(oldValue !== value)
         {
            this._879772965amount3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount3",oldValue,value));
         }
      }
      
      public function get stuff2() : ItemBase
      {
         if(_stuff2 == 0)
         {
            return null;
         }
         var item:ItemBase = ObjectAction.cloneItem(_stuff2);
         item.count = 0;
         item.isSelect = false;
         return item;
      }
      
      public function get stuff3() : ItemBase
      {
         if(_stuff3 == 0)
         {
            return null;
         }
         var item:ItemBase = ObjectAction.cloneItem(_stuff3);
         item.count = 0;
         item.isSelect = false;
         return item;
      }
      
      public function get stuff4() : ItemBase
      {
         if(_stuff4 == 0)
         {
            return null;
         }
         var item:ItemBase = ObjectAction.cloneItem(_stuff4);
         item.count = 0;
         item.isSelect = false;
         return item;
      }
      
      public function get stuff1() : ItemBase
      {
         if(_stuff1 == 0)
         {
            return null;
         }
         var item:ItemBase = ObjectAction.cloneItem(_stuff1);
         item.count = 0;
         item.isSelect = false;
         return item;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelect() : Boolean
      {
         return this._231987514isSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeId() : int
      {
         return this._804834487recipeId;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function get getFood() : ItemBase
      {
         return ObjectAction.cloneItem(id);
      }
      
      [Bindable(event="propertyChange")]
      public function get amount1() : int
      {
         return this._879772967amount1;
      }
      
      [Bindable(event="propertyChange")]
      public function get amount2() : int
      {
         return this._879772966amount2;
      }
      
      [Bindable(event="propertyChange")]
      public function get amount3() : int
      {
         return this._879772965amount3;
      }
      
      public function get hasAmount1() : int
      {
         return DataManager.Instance.parcel.findItemAmount(_stuff1);
      }
      
      public function get hasAmount2() : int
      {
         return DataManager.Instance.parcel.findItemAmount(_stuff2);
      }
      
      public function get hasAmount3() : int
      {
         return DataManager.Instance.parcel.findItemAmount(_stuff3);
      }
      
      public function get hasAmount4() : int
      {
         return DataManager.Instance.parcel.findItemAmount(_stuff4);
      }
      
      [Bindable(event="propertyChange")]
      public function get amount4() : int
      {
         return this._879772964amount4;
      }
      
      public function set amount4(value:int) : void
      {
         var oldValue:Object = this._879772964amount4;
         if(oldValue !== value)
         {
            this._879772964amount4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount4",oldValue,value));
         }
      }
      
      public function set canCook(value:Boolean) : void
      {
         var oldValue:Object = this._549272376canCook;
         if(oldValue !== value)
         {
            this._549272376canCook = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canCook",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canCook() : Boolean
      {
         return this._549272376canCook;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
   }
}


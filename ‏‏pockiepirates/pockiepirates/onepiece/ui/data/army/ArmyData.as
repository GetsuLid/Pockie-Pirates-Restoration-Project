package data.army
{
   import constant.Global;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ArmyData implements IEventDispatcher
   {
      
      private var _85567126experience:int;
      
      private var _1176516047item3Url:String;
      
      private var _3373707name:String;
      
      private var _2126470189itemBase1:ItemBase;
      
      private var _100525950item1:int;
      
      private var _102865796level:int;
      
      private var _116079url:String;
      
      private var _631598701contribute:int;
      
      private var _1176486256item2Url:String;
      
      private var _1413853096amount:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3355id:int;
      
      private var _100525951item2:int;
      
      private var _2126470190itemBase2:ItemBase;
      
      private var _1176456465item1Url:String;
      
      private var _100525952item3:int;
      
      private var _2126470191itemBase3:ItemBase;
      
      public function ArmyData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : int
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set item3(value:int) : void
      {
         var oldValue:Object = this._100525952item3;
         if(oldValue !== value)
         {
            this._100525952item3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item2Url() : String
      {
         return this._1176486256item2Url;
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set item2(value:int) : void
      {
         var oldValue:Object = this._100525951item2;
         if(oldValue !== value)
         {
            this._100525951item2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",oldValue,value));
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
      public function get item1Url() : String
      {
         return this._1176456465item1Url;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
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
      
      [Bindable(event="propertyChange")]
      public function get contribute() : int
      {
         return this._631598701contribute;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set item3Url(value:String) : void
      {
         var oldValue:Object = this._1176516047item3Url;
         if(oldValue !== value)
         {
            this._1176516047item3Url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3Url",oldValue,value));
         }
      }
      
      public function set item1Url(value:String) : void
      {
         var oldValue:Object = this._1176456465item1Url;
         if(oldValue !== value)
         {
            this._1176456465item1Url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1Url",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBase1() : ItemBase
      {
         return this._2126470189itemBase1;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBase2() : ItemBase
      {
         return this._2126470190itemBase2;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBase3() : ItemBase
      {
         return this._2126470191itemBase3;
      }
      
      public function set amount(value:int) : void
      {
         var oldValue:Object = this._1413853096amount;
         if(oldValue !== value)
         {
            this._1413853096amount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount",oldValue,value));
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
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get item3Url() : String
      {
         return this._1176516047item3Url;
      }
      
      public function set experience(value:int) : void
      {
         var oldValue:Object = this._85567126experience;
         if(oldValue !== value)
         {
            this._85567126experience = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"experience",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amount() : int
      {
         return this._1413853096amount;
      }
      
      public function set itemBase2(value:ItemBase) : void
      {
         var oldValue:Object = this._2126470190itemBase2;
         if(oldValue !== value)
         {
            this._2126470190itemBase2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBase2",oldValue,value));
         }
      }
      
      public function set itemBase1(value:ItemBase) : void
      {
         var oldValue:Object = this._2126470189itemBase1;
         if(oldValue !== value)
         {
            this._2126470189itemBase1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBase1",oldValue,value));
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
      
      public function set contribute(value:int) : void
      {
         var oldValue:Object = this._631598701contribute;
         if(oldValue !== value)
         {
            this._631598701contribute = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribute",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get experience() : int
      {
         return this._85567126experience;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set itemBase3(value:ItemBase) : void
      {
         var oldValue:Object = this._2126470191itemBase3;
         if(oldValue !== value)
         {
            this._2126470191itemBase3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBase3",oldValue,value));
         }
      }
      
      public function resolveArmyInfo(info:Object) : void
      {
         id = info.cfgTeamId;
         url = "../assets/images/UI/Army/" + id + ".swf";
         name = info.name;
         experience = info.experience;
         contribute = info.exploit;
         level = info.requireOfficium;
         item1 = info.rewardItem1;
         item2 = info.rewardItem2;
         item3 = info.rewardItem3;
         if(item1)
         {
            itemBase1 = Global.getItemConfig(item1);
            item1Url = itemBase1.url;
         }
         if(item2)
         {
            itemBase2 = Global.getItemConfig(item2);
            item2Url = itemBase2.url;
         }
         if(item3)
         {
            itemBase3 = Global.getItemConfig(item3);
            item3Url = itemBase3.url;
         }
         amount = 8;
      }
      
      public function set item2Url(value:String) : void
      {
         var oldValue:Object = this._1176486256item2Url;
         if(oldValue !== value)
         {
            this._1176486256item2Url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2Url",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set item1(value:int) : void
      {
         var oldValue:Object = this._100525950item1;
         if(oldValue !== value)
         {
            this._100525950item1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : int
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : int
      {
         return this._100525951item2;
      }
   }
}


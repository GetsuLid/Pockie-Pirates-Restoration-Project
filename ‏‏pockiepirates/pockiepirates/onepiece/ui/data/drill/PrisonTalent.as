package data.drill
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class PrisonTalent implements IEventDispatcher
   {
      
      private var _765711810valueText:String;
      
      private var _415963732perValue:Number;
      
      private var _3575610type:int;
      
      private var _679577425valueNextText:String;
      
      private var _424672089costType:int;
      
      private var _765890556valueNext:Number;
      
      private var _3355id:int;
      
      private var _100318270imgId:int;
      
      private var _111972721value:Number;
      
      private var _285474517abilityName:String;
      
      private var _18515180canSelect:Boolean;
      
      private var _1650343649requireLevel:int;
      
      private var _3466lv:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1658395621abilityId:int;
      
      private var enhanceValue:int;
      
      private var _278804060costValue:int;
      
      private var _3079825desc:String;
      
      private var _1207870360nameColor:uint;
      
      private var _231987514isSelect:Boolean;
      
      private var _603995825requireTalent:int;
      
      public function PrisonTalent()
      {
         super();
      }
      
      private function dealPervalue() : void
      {
         if(id == 1 || id == 2 || id == 6 || id == 8)
         {
            perValue = enhanceValue;
         }
         else if(id == 3 || id == 4 || id == 9)
         {
            perValue = enhanceValue / 1000;
         }
         else
         {
            perValue = enhanceValue / 10000;
         }
         value = perValue * lv;
         valueNext = perValue * (lv + 1);
         if(id == 1 || id == 2 || id == 6 || id == 8)
         {
            valueText = value.toString();
            valueNextText = valueNext.toString();
         }
         else
         {
            valueText = (value * 100).toFixed(1) + "%";
            valueNextText = (valueNext * 100).toFixed(1) + "%";
         }
      }
      
      public function set imgId(value:int) : void
      {
         var oldValue:Object = this._100318270imgId;
         if(oldValue !== value)
         {
            this._100318270imgId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueNext() : Number
      {
         return this._765890556valueNext;
      }
      
      public function set level(_level:int) : void
      {
         var obj:Object = Global.talentRoleUpgrade[id * 100 + _level + 1];
         lv = _level;
         if(obj)
         {
            costType = obj.costType;
            costValue = obj.costValue;
            requireLevel = obj.requireLevel;
            requireTalent = obj.requireTalent;
         }
         dealPervalue();
      }
      
      public function doIsSelect() : void
      {
         isSelect = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv() : int
      {
         return this._3466lv;
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
      
      public function set valueNext(value:Number) : void
      {
         var oldValue:Object = this._765890556valueNext;
         if(oldValue !== value)
         {
            this._765890556valueNext = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueNext",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get requireLevel() : int
      {
         return this._1650343649requireLevel;
      }
      
      public function doCanSelect() : void
      {
         canSelect = true;
      }
      
      public function set valueNextText(value:String) : void
      {
         var oldValue:Object = this._679577425valueNextText;
         if(oldValue !== value)
         {
            this._679577425valueNextText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueNextText",oldValue,value));
         }
      }
      
      public function set lv(value:int) : void
      {
         var oldValue:Object = this._3466lv;
         if(oldValue !== value)
         {
            this._3466lv = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costValue() : int
      {
         return this._278804060costValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get costType() : int
      {
         return this._424672089costType;
      }
      
      public function set perValue(value:Number) : void
      {
         var oldValue:Object = this._415963732perValue;
         if(oldValue !== value)
         {
            this._415963732perValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perValue",oldValue,value));
         }
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
      
      public function set abilityName(value:String) : void
      {
         var oldValue:Object = this._285474517abilityName;
         if(oldValue !== value)
         {
            this._285474517abilityName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityName",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get requireTalent() : int
      {
         return this._603995825requireTalent;
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
      
      public function set nameColor(value:uint) : void
      {
         var oldValue:Object = this._1207870360nameColor;
         if(oldValue !== value)
         {
            this._1207870360nameColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueText() : String
      {
         return this._765711810valueText;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function resolveInfo(info:Object) : void
      {
         canSelect = false;
         isSelect = false;
         id = info.cfgTalentId;
         desc = info.desc;
         type = info.enhanceType;
         abilityName = Global.talent[id - 1];
         enhanceValue = info.enhanceValue;
         level = 0;
         if(id <= 6)
         {
            imgId = 1;
            nameColor = 65280;
         }
         else if(id >= 7 && id <= 11)
         {
            imgId = 2;
            nameColor = 65535;
         }
         else
         {
            imgId = 3;
            nameColor = 16711935;
         }
      }
      
      public function set costValue(value:int) : void
      {
         var oldValue:Object = this._278804060costValue;
         if(oldValue !== value)
         {
            this._278804060costValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costValue",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelect() : Boolean
      {
         return this._231987514isSelect;
      }
      
      public function set costType(value:int) : void
      {
         var oldValue:Object = this._424672089costType;
         if(oldValue !== value)
         {
            this._424672089costType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costType",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueNextText() : String
      {
         return this._679577425valueNextText;
      }
      
      [Bindable(event="propertyChange")]
      public function get perValue() : Number
      {
         return this._415963732perValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get abilityName() : String
      {
         return this._285474517abilityName;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgId() : int
      {
         return this._100318270imgId;
      }
      
      public function set abilityId(value:int) : void
      {
         var oldValue:Object = this._1658395621abilityId;
         if(oldValue !== value)
         {
            this._1658395621abilityId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abilityId",oldValue,value));
         }
      }
      
      public function set canSelect(value:Boolean) : void
      {
         var oldValue:Object = this._18515180canSelect;
         if(oldValue !== value)
         {
            this._18515180canSelect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSelect",oldValue,value));
         }
      }
      
      public function set requireLevel(value:int) : void
      {
         var oldValue:Object = this._1650343649requireLevel;
         if(oldValue !== value)
         {
            this._1650343649requireLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireLevel",oldValue,value));
         }
      }
      
      public function set value(value:Number) : void
      {
         var oldValue:Object = this._111972721value;
         if(oldValue !== value)
         {
            this._111972721value = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"value",oldValue,value));
         }
      }
      
      public function cancalIsSelect() : void
      {
         isSelect = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get abilityId() : int
      {
         return this._1658395621abilityId;
      }
      
      public function set requireTalent(value:int) : void
      {
         var oldValue:Object = this._603995825requireTalent;
         if(oldValue !== value)
         {
            this._603995825requireTalent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireTalent",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get value() : Number
      {
         return this._111972721value;
      }
      
      [Bindable(event="propertyChange")]
      public function get canSelect() : Boolean
      {
         return this._18515180canSelect;
      }
      
      public function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
      
      public function set valueText(value:String) : void
      {
         var oldValue:Object = this._765711810valueText;
         if(oldValue !== value)
         {
            this._765711810valueText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueText",oldValue,value));
         }
      }
   }
}


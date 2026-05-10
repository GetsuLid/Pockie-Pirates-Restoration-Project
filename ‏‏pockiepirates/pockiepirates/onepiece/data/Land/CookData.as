package data.Land
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   
   public class CookData implements IEventDispatcher
   {
      
      private var _110371416title:String;
      
      private var _1180592604isCrit:Boolean;
      
      private var _444970686cookCritRate:int;
      
      private var _53828459cookExpScale:Number;
      
      private var _952155573cookExp:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1702729583cookExpMax:int;
      
      private var _1380765386openRecipeList:ArrayCollection;
      
      private var _buffList:ArrayCollection = new ArrayCollection();
      
      private var _1289534563_cookLevel:int = 0;
      
      public function CookData()
      {
         super();
      }
      
      public function set cookCritRate(value:int) : void
      {
         var oldValue:Object = this._444970686cookCritRate;
         if(oldValue !== value)
         {
            this._444970686cookCritRate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookCritRate",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function get buffList() : ArrayCollection
      {
         return _buffList;
      }
      
      public function addBuff(value:FoodBuff) : void
      {
         for(var i:int = 0; i < _buffList.length; i++)
         {
            if(_buffList.getItemAt(i).cd == "00:00")
            {
               _buffList.removeItemAt(i);
            }
            if(value.id == _buffList.getItemAt(i).id)
            {
               _buffList.removeItemAt(i);
               _buffList.addItemAt(value,i);
               return;
            }
         }
         _buffList.addItem(value);
      }
      
      [Bindable(event="propertyChange")]
      public function get cookExpScale() : Number
      {
         return this._53828459cookExpScale;
      }
      
      public function get cookLevel() : int
      {
         return _cookLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get _cookLevel() : int
      {
         return this._1289534563_cookLevel;
      }
      
      public function deleteBuff(id:int) : void
      {
         for(var i:int = 0; i < _buffList.length; i++)
         {
            if(_buffList.getItemAt(i).cd == "00:00")
            {
               _buffList.removeItemAt(i);
            }
            if(_buffList.getItemAt(i).id == id)
            {
               if(_buffList.getItemAt(i))
               {
                  _buffList.removeItemAt(i);
               }
            }
         }
      }
      
      private function getTitle() : String
      {
         var str:String = "";
         if(cookLevel >= 1 && cookLevel <= 9)
         {
            str = UILang.cookerTitle1;
         }
         else if(cookLevel >= 10 && cookLevel <= 19)
         {
            str = UILang.cookerTitle2;
         }
         else if(cookLevel >= 20 && cookLevel <= 29)
         {
            str = UILang.cookerTitle3;
         }
         else if(cookLevel >= 30 && cookLevel <= 39)
         {
            str = UILang.cookerTitle4;
         }
         else if(cookLevel >= 40 && cookLevel <= 49)
         {
            str = UILang.cookerTitle5;
         }
         else if(cookLevel >= 50 && cookLevel <= 59)
         {
            str = UILang.cookerTitle6;
         }
         else if(cookLevel >= 60 && cookLevel <= 69)
         {
            str = UILang.cookerTitle7;
         }
         else if(cookLevel >= 70 && cookLevel <= 79)
         {
            str = UILang.cookerTitle8;
         }
         else if(cookLevel >= 80 && cookLevel <= 89)
         {
            str = UILang.cookerTitle9;
         }
         else if(cookLevel >= 90 && cookLevel <= 99)
         {
            str = UILang.cookerTitle10;
         }
         else if(cookLevel >= 100)
         {
            str = UILang.cookerTitle11;
         }
         return str;
      }
      
      [Bindable(event="propertyChange")]
      public function get isCrit() : Boolean
      {
         return this._1180592604isCrit;
      }
      
      public function refreshData(e:ResultEvent, fun:Function) : void
      {
         if(e.result.error_code == -1)
         {
            cookLevel = e.result.cook_level;
            cookExp = e.result.cook_exp;
            cookExpMax = e.result.cook_exp_max;
            cookExpScale = cookExp / cookExpMax;
            cookCritRate = e.result.cook_crit_rate * 100;
            openRecipeList = e.result.open_recipe_list;
            title = getTitle();
            if(fun != null)
            {
               fun();
            }
         }
      }
      
      public function set cookExpScale(value:Number) : void
      {
         var oldValue:Object = this._53828459cookExpScale;
         if(oldValue !== value)
         {
            this._53828459cookExpScale = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookExpScale",oldValue,value));
         }
      }
      
      public function set title(value:String) : void
      {
         var oldValue:Object = this._110371416title;
         if(oldValue !== value)
         {
            this._110371416title = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cookExp() : int
      {
         return this._952155573cookExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get openRecipeList() : ArrayCollection
      {
         return this._1380765386openRecipeList;
      }
      
      [Bindable(event="propertyChange")]
      public function set cookLevel(value:int) : void
      {
         var oldValue:Object = this.cookLevel;
         if(oldValue !== value)
         {
            this._199379228cookLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookLevel",oldValue,value));
         }
      }
      
      public function set _cookLevel(value:int) : void
      {
         var oldValue:Object = this._1289534563_cookLevel;
         if(oldValue !== value)
         {
            this._1289534563_cookLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_cookLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cookCritRate() : int
      {
         return this._444970686cookCritRate;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set isCrit(value:Boolean) : void
      {
         var oldValue:Object = this._1180592604isCrit;
         if(oldValue !== value)
         {
            this._1180592604isCrit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCrit",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      private function set _199379228cookLevel(value:int) : void
      {
         if(cookLevel < value && cookLevel != 0)
         {
            main.inst.showEffect("HlevelUp",10,-130);
         }
         _cookLevel = value;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set cookExpMax(value:int) : void
      {
         var oldValue:Object = this._1702729583cookExpMax;
         if(oldValue !== value)
         {
            this._1702729583cookExpMax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookExpMax",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set openRecipeList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1380765386openRecipeList;
         if(oldValue !== value)
         {
            this._1380765386openRecipeList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openRecipeList",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cookExpMax() : int
      {
         return this._1702729583cookExpMax;
      }
      
      public function set cookExp(value:int) : void
      {
         var oldValue:Object = this._952155573cookExp;
         if(oldValue !== value)
         {
            this._952155573cookExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookExp",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}


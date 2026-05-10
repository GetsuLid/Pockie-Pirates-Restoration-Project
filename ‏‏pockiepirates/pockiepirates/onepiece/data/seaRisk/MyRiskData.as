package data.seaRisk
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class MyRiskData implements IEventDispatcher
   {
      
      private var _94979220myRiskMaxExp:int;
      
      private var _435973758myRiskExp:int;
      
      private var _992209618pebble:int;
      
      private var _1130431379myCardCount:int;
      
      private var _930743222riskId:int;
      
      private var _1539616812myRiskLevelName:String;
      
      private var _1941921193myRiskLevel:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function MyRiskData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function resolveInfo(info:Object) : void
      {
         setExp(info.risk_exp,info.risk_level);
         myCardCount = info.ticket;
         pebble = info.crystal;
      }
      
      [Bindable(event="propertyChange")]
      public function get myRiskExp() : int
      {
         return this._435973758myRiskExp;
      }
      
      public function set myRiskExp(value:int) : void
      {
         var oldValue:Object = this._435973758myRiskExp;
         if(oldValue !== value)
         {
            this._435973758myRiskExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myRiskExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get riskId() : int
      {
         return this._930743222riskId;
      }
      
      public function set myRiskLevel(value:int) : void
      {
         var oldValue:Object = this._1941921193myRiskLevel;
         if(oldValue !== value)
         {
            this._1941921193myRiskLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myRiskLevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myCardCount() : int
      {
         return this._1130431379myCardCount;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set riskId(value:int) : void
      {
         var oldValue:Object = this._930743222riskId;
         if(oldValue !== value)
         {
            this._930743222riskId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"riskId",oldValue,value));
         }
      }
      
      public function set pebble(value:int) : void
      {
         var oldValue:Object = this._992209618pebble;
         if(oldValue !== value)
         {
            this._992209618pebble = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pebble",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function setExp(_exp:int, _level:int) : void
      {
         myRiskExp = _exp;
         myRiskLevel = _level;
         switch(myRiskLevel)
         {
            case 1:
               myRiskMaxExp = 2000;
               myRiskLevelName = UILang.BeastSkill0;
               break;
            case 2:
               myRiskMaxExp = 18000;
               myRiskLevelName = UILang.BeastSkill1;
               break;
            case 3:
               myRiskMaxExp = 360000;
               myRiskLevelName = UILang.BeastSkill2;
               break;
            case 4:
               myRiskMaxExp = 800000;
               myRiskLevelName = UILang.BeastSkill3;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myRiskLevelName() : String
      {
         return this._1539616812myRiskLevelName;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set myCardCount(value:int) : void
      {
         var oldValue:Object = this._1130431379myCardCount;
         if(oldValue !== value)
         {
            this._1130431379myCardCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCardCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myRiskLevel() : int
      {
         return this._1941921193myRiskLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get myRiskMaxExp() : int
      {
         return this._94979220myRiskMaxExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get pebble() : int
      {
         return this._992209618pebble;
      }
      
      public function set myRiskLevelName(value:String) : void
      {
         var oldValue:Object = this._1539616812myRiskLevelName;
         if(oldValue !== value)
         {
            this._1539616812myRiskLevelName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myRiskLevelName",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set myRiskMaxExp(value:int) : void
      {
         var oldValue:Object = this._94979220myRiskMaxExp;
         if(oldValue !== value)
         {
            this._94979220myRiskMaxExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myRiskMaxExp",oldValue,value));
         }
      }
   }
}


package data.skill
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class TianfuData implements IEventDispatcher
   {
      
      private var _906021636select:Boolean;
      
      private var _3373707name:String;
      
      private var _3575610type:int;
      
      private var _1111486718costExploit:int;
      
      private var _1062455962needPoint:int;
      
      private var _116079url:String;
      
      private var _3355id:int;
      
      private var _102865796level:int;
      
      private var _1059689930needMoney:int;
      
      private var _390120576maxLevel:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _105405job:int;
      
      private var _2090576875needExploit:int;
      
      private var _860631729realDesc:String;
      
      private var _3079825desc:String;
      
      private var _532995639needOfficialRanklevel:int;
      
      private var _1656352535levelPama:int;
      
      public function TianfuData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get maxLevel() : int
      {
         return this._390120576maxLevel;
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
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set maxLevel(value:int) : void
      {
         var oldValue:Object = this._390120576maxLevel;
         if(oldValue !== value)
         {
            this._390120576maxLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxLevel",oldValue,value));
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
      
      public function resolveTianfuInfo(info:Object) : void
      {
         id = info.cfgTalentId;
         name = info.name;
         maxLevel = info.maxLevel;
         desc = info.desc;
         job = info.requireJob;
         needOfficialRanklevel = info.requireOfficium;
         type = info.type;
         needPoint = info.requirePoint;
         levelPama = info.levelParam;
         costExploit = info.costExploit;
         url = "../assets/images/Icon/Tianfu/" + info.icon + ".swf";
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      public function set needMoney(value:int) : void
      {
         var oldValue:Object = this._1059689930needMoney;
         if(oldValue !== value)
         {
            this._1059689930needMoney = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needMoney",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needExploit() : int
      {
         return this._2090576875needExploit;
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
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function set realDesc(value:String) : void
      {
         var oldValue:Object = this._860631729realDesc;
         if(oldValue !== value)
         {
            this._860631729realDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realDesc",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needPoint() : int
      {
         return this._1062455962needPoint;
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
      
      public function countCostMoney() : void
      {
         var x:int = levelPama + needOfficialRanklevel;
         switch(type)
         {
            case 1:
               x = levelPama;
               break;
            case 2:
               x += 25;
               break;
            case 3:
               x += 50;
               break;
            case 4:
               x += 500;
         }
         needMoney = (x * 240 + 10000) * (level * 1.5 + 1);
      }
      
      public function set costExploit(value:int) : void
      {
         var oldValue:Object = this._1111486718costExploit;
         if(oldValue !== value)
         {
            this._1111486718costExploit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costExploit",oldValue,value));
         }
      }
      
      public function set needExploit(value:int) : void
      {
         var oldValue:Object = this._2090576875needExploit;
         if(oldValue !== value)
         {
            this._2090576875needExploit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needExploit",oldValue,value));
         }
      }
      
      public function createDesc() : void
      {
         var content:Array = desc.split("#");
         realDesc = "";
         if(level != 0)
         {
            realDesc += UILang.CrtLv + "<br>" + content[0] + Number(content[1] * level).toFixed(1) + content[2];
         }
         if(level != 0 && level != maxLevel)
         {
            realDesc += "<br>";
         }
         if(level != maxLevel)
         {
            realDesc += UILang.NextLv + "<br>" + content[0] + Number(content[1] * (level + 1)).toFixed(1) + content[2];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
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
      
      [Bindable(event="propertyChange")]
      public function get needOfficialRanklevel() : int
      {
         return this._532995639needOfficialRanklevel;
      }
      
      public function set needPoint(value:int) : void
      {
         var oldValue:Object = this._1062455962needPoint;
         if(oldValue !== value)
         {
            this._1062455962needPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needPoint",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get job() : int
      {
         return this._105405job;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : int
      {
         return this._3575610type;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get needMoney() : int
      {
         return this._1059689930needMoney;
      }
      
      [Bindable(event="propertyChange")]
      public function get realDesc() : String
      {
         return this._860631729realDesc;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set levelPama(value:int) : void
      {
         var oldValue:Object = this._1656352535levelPama;
         if(oldValue !== value)
         {
            this._1656352535levelPama = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelPama",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
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
      public function get levelPama() : int
      {
         return this._1656352535levelPama;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set needOfficialRanklevel(value:int) : void
      {
         var oldValue:Object = this._532995639needOfficialRanklevel;
         if(oldValue !== value)
         {
            this._532995639needOfficialRanklevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needOfficialRanklevel",oldValue,value));
         }
      }
      
      public function set select(value:Boolean) : void
      {
         var oldValue:Object = this._906021636select;
         if(oldValue !== value)
         {
            this._906021636select = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",oldValue,value));
         }
      }
      
      public function set job(value:int) : void
      {
         var oldValue:Object = this._105405job;
         if(oldValue !== value)
         {
            this._105405job = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job",oldValue,value));
         }
      }
      
      public function countExploit() : void
      {
         needExploit = costExploit * (1 + Math.pow(level,1.5));
      }
      
      [Bindable(event="propertyChange")]
      public function get costExploit() : int
      {
         return this._1111486718costExploit;
      }
   }
}


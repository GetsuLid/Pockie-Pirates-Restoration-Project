package data.legion
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class LegionMemberData implements IEventDispatcher
   {
      
      private var _906021636select:Boolean;
      
      private var _3373707name:String;
      
      private var _747804969position:String;
      
      private var _116079url:String;
      
      private var _100361842intru:String;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _395458172contrbute:int;
      
      private var _102865796level:String;
      
      private var _1819503753lastOnline:String;
      
      private var _1472332155_level:int;
      
      private var _1197175666todayContribute:int;
      
      private var _3492908rank:int;
      
      public function LegionMemberData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : String
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get _level() : int
      {
         return this._1472332155_level;
      }
      
      public function set level(value:String) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastOnline() : String
      {
         return this._1819503753lastOnline;
      }
      
      public function set _level(value:int) : void
      {
         var oldValue:Object = this._1472332155_level;
         if(oldValue !== value)
         {
            this._1472332155_level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set contrbute(value:int) : void
      {
         var oldValue:Object = this._395458172contrbute;
         if(oldValue !== value)
         {
            this._395458172contrbute = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contrbute",oldValue,value));
         }
      }
      
      public function set lastOnline(value:String) : void
      {
         var oldValue:Object = this._1819503753lastOnline;
         if(oldValue !== value)
         {
            this._1819503753lastOnline = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastOnline",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contrbute() : int
      {
         return this._395458172contrbute;
      }
      
      [Bindable(event="propertyChange")]
      public function get todayContribute() : int
      {
         return this._1197175666todayContribute;
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
      public function get id() : int
      {
         return this._3355id;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set todayContribute(value:int) : void
      {
         var oldValue:Object = this._1197175666todayContribute;
         if(oldValue !== value)
         {
            this._1197175666todayContribute = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayContribute",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get position() : String
      {
         return this._747804969position;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : int
      {
         return this._3492908rank;
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
      
      public function set position(value:String) : void
      {
         var oldValue:Object = this._747804969position;
         if(oldValue !== value)
         {
            this._747804969position = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"position",oldValue,value));
         }
      }
      
      public function set rank(value:int) : void
      {
         var oldValue:Object = this._3492908rank;
         if(oldValue !== value)
         {
            this._3492908rank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",oldValue,value));
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
      
      public function set intru(value:String) : void
      {
         var oldValue:Object = this._100361842intru;
         if(oldValue !== value)
         {
            this._100361842intru = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intru",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      [Bindable(event="propertyChange")]
      public function get intru() : String
      {
         return this._100361842intru;
      }
      
      public function resolveMemberInfo(info:Object) : void
      {
         if(info.position == 1)
         {
            position = UILang.LegLeader;
         }
         else if(info.position == 2)
         {
            position = UILang.ViceLeader;
         }
         else if(info.position == 3)
         {
            position = UILang.ThirdLeader;
         }
         else
         {
            position = UILang.Member;
         }
         contrbute = info.contribute;
         _level = info.officium;
         level = UILang.LV.replace("#1",info.officium);
         id = info.role_id;
         name = info.role_name;
         todayContribute = info.contribute_today;
         lastOnline = info.last_time;
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
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
   }
}


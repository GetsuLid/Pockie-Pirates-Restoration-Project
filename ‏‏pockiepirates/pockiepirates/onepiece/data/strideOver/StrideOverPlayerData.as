package data.strideOver
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class StrideOverPlayerData implements IEventDispatcher
   {
      
      private var _475686761warValue:int;
      
      private var _1244665561fromTeam:String;
      
      private var _1379103678serverId:int;
      
      private var _3373707name:String;
      
      private var _1826110354serverName:String;
      
      private var _1180327073isLose:Boolean = true;
      
      private var _102865796level:int;
      
      private var _116079url:int;
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1271629221flower:int;
      
      private var _3135069face:int;
      
      private var _3386882node:StrideOverData;
      
      private var _105405job:int;
      
      private var _117724win:Boolean;
      
      public function StrideOverPlayerData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get node() : StrideOverData
      {
         return this._3386882node;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
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
      public function get level() : int
      {
         return this._102865796level;
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
      
      public function set node(value:StrideOverData) : void
      {
         var oldValue:Object = this._3386882node;
         if(oldValue !== value)
         {
            this._3386882node = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"node",oldValue,value));
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
      
      public function set win(value:Boolean) : void
      {
         var oldValue:Object = this._117724win;
         if(oldValue !== value)
         {
            this._117724win = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"win",oldValue,value));
         }
      }
      
      public function set flower(value:int) : void
      {
         var oldValue:Object = this._1271629221flower;
         if(oldValue !== value)
         {
            this._1271629221flower = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flower",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serverId() : int
      {
         return this._1379103678serverId;
      }
      
      [Bindable(event="propertyChange")]
      public function get fromTeam() : String
      {
         return this._1244665561fromTeam;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set face(value:int) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get job() : int
      {
         return this._105405job;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set isLose(value:Boolean) : void
      {
         var oldValue:Object = this._1180327073isLose;
         if(oldValue !== value)
         {
            this._1180327073isLose = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLose",oldValue,value));
         }
      }
      
      public function set fromTeam(value:String) : void
      {
         var oldValue:Object = this._1244665561fromTeam;
         if(oldValue !== value)
         {
            this._1244665561fromTeam = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fromTeam",oldValue,value));
         }
      }
      
      public function set warValue(value:int) : void
      {
         var oldValue:Object = this._475686761warValue;
         if(oldValue !== value)
         {
            this._475686761warValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warValue",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get win() : Boolean
      {
         return this._117724win;
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      public function set url(value:int) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isLose() : Boolean
      {
         return this._1180327073isLose;
      }
      
      public function set serverName(value:String) : void
      {
         var oldValue:Object = this._1826110354serverName;
         if(oldValue !== value)
         {
            this._1826110354serverName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverName",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get warValue() : int
      {
         return this._475686761warValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get flower() : int
      {
         return this._1271629221flower;
      }
      
      [Bindable(event="propertyChange")]
      public function get serverName() : String
      {
         return this._1826110354serverName;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : int
      {
         return this._116079url;
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
      
      public function set serverId(value:int) : void
      {
         var oldValue:Object = this._1379103678serverId;
         if(oldValue !== value)
         {
            this._1379103678serverId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverId",oldValue,value));
         }
      }
   }
}


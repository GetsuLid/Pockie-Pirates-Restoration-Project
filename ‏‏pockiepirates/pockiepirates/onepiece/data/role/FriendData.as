package data.role
{
   import Util.NameGetor;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class FriendData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _592249752isFriend:Boolean = false;
      
      public var isShow:Boolean = false;
      
      private var _116079url:String;
      
      private var _3373707name:String;
      
      private var _951530617content:String = "";
      
      public var id:int;
      
      private var _375146365isMessage:Boolean;
      
      private var waitingMsg:Array = new Array();
      
      public function FriendData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get isFriend() : Boolean
      {
         return this._592249752isFriend;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set isFriend(value:Boolean) : void
      {
         var oldValue:Object = this._592249752isFriend;
         if(oldValue !== value)
         {
            this._592249752isFriend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFriend",oldValue,value));
         }
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
      
      private function addContent(info:Object) : void
      {
         if(content != "")
         {
            content += "<br>";
         }
         content += NameGetor.getName(info.senderId) + ":" + info.content;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function resolveContent(info:Object) : void
      {
         if(name != null)
         {
            addContent(info);
         }
         else
         {
            waitingMsg.push(info);
         }
      }
      
      public function set content(value:String) : void
      {
         var oldValue:Object = this._951530617content;
         if(oldValue !== value)
         {
            this._951530617content = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : String
      {
         return this._951530617content;
      }
      
      public function set isMessage(value:Boolean) : void
      {
         var oldValue:Object = this._375146365isMessage;
         if(oldValue !== value)
         {
            this._375146365isMessage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isMessage",oldValue,value));
         }
      }
      
      public function nameInit() : void
      {
         var info:Object = null;
         for each(info in waitingMsg)
         {
            addContent(info);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isMessage() : Boolean
      {
         return this._375146365isMessage;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
   }
}


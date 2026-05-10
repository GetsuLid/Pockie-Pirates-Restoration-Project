package data.mail
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   
   public class MailData implements IEventDispatcher
   {
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var isSelect:Boolean = false;
      
      private var _1180158496isRead:Boolean;
      
      private var _951530617content:String;
      
      public var id:int;
      
      private var _3560141time:String;
      
      private var _3242771item:ItemBase;
      
      private var _905962955sender:String;
      
      private var _110371416title:String;
      
      public function MailData()
      {
         super();
      }
      
      public function set isRead(value:Boolean) : void
      {
         var oldValue:Object = this._1180158496isRead;
         if(oldValue !== value)
         {
            this._1180158496isRead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRead",oldValue,value));
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
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : String
      {
         return this._3560141time;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set time(value:String) : void
      {
         var oldValue:Object = this._3560141time;
         if(oldValue !== value)
         {
            this._3560141time = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function resolveAddInfo(e:ResultEvent) : void
      {
         content = e.result.content;
         item = ObjectAction.cloneItem(e.result.attachment);
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
      
      [Bindable(event="propertyChange")]
      public function get isRead() : Boolean
      {
         return this._1180158496isRead;
      }
      
      public function set sender(value:String) : void
      {
         var oldValue:Object = this._905962955sender;
         if(oldValue !== value)
         {
            this._905962955sender = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sender",oldValue,value));
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
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get sender() : String
      {
         return this._905962955sender;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : String
      {
         return this._951530617content;
      }
      
      public function resolveBasicInfo(info:Object) : void
      {
         sender = info.sender_name;
         title = info.title;
         id = info.id;
         isRead = info.is_read;
         time = info.time;
      }
   }
}


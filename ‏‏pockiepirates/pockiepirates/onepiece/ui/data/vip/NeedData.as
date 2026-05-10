package data.vip
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class NeedData implements IEventDispatcher
   {
      
      private var _3355id:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1068784020module:String;
      
      private var _3373707name:String;
      
      private var _3540562star:int;
      
      private var _3079825desc:String;
      
      private var _679283057btEnabled:Boolean;
      
      private var _116079url:String;
      
      private var _1818537112needButton:Boolean;
      
      public function NeedData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      private function dealBtEnabled() : void
      {
         btEnabled = true;
         switch(id)
         {
            case 4:
               if(DataManager.Instance.role.officialRanklevel >= 28)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 6:
            case 7:
            case 8:
            case 15:
            case 27:
               if(DataManager.Instance.role.control.landBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 9:
            case 24:
            case 25:
            case 32:
            case 33:
               if(DataManager.Instance.role.control.warBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 10:
               if(DataManager.Instance.role.control.seaBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 11:
            case 12:
            case 28:
               if(DataManager.Instance.role.control.arenaBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 13:
            case 23:
            case 31:
               if(DataManager.Instance.role.officialRanklevel >= 25)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 16:
            case 22:
               if(DataManager.Instance.role.control.dailymBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
               break;
            case 21:
               if(DataManager.Instance.role.control.copyBtn)
               {
                  btEnabled = true;
               }
               else
               {
                  btEnabled = false;
               }
         }
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
      
      [Bindable(event="propertyChange")]
      public function get btEnabled() : Boolean
      {
         return this._679283057btEnabled;
      }
      
      public function set needButton(value:Boolean) : void
      {
         var oldValue:Object = this._1818537112needButton;
         if(oldValue !== value)
         {
            this._1818537112needButton = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needButton",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : int
      {
         return this._3540562star;
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
      
      public function set module(value:String) : void
      {
         var oldValue:Object = this._1068784020module;
         if(oldValue !== value)
         {
            this._1068784020module = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"module",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
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
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set star(value:int) : void
      {
         var oldValue:Object = this._3540562star;
         if(oldValue !== value)
         {
            this._3540562star = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",oldValue,value));
         }
      }
      
      public function set btEnabled(value:Boolean) : void
      {
         var oldValue:Object = this._679283057btEnabled;
         if(oldValue !== value)
         {
            this._679283057btEnabled = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btEnabled",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get module() : String
      {
         return this._1068784020module;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
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
      public function get needButton() : Boolean
      {
         return this._1818537112needButton;
      }
      
      public function resolveInfo(info:Object) : void
      {
         id = info.id;
         name = info.title;
         star = info.star;
         desc = info.desc;
         url = info.url;
         module = info.module;
         if(url == "" && module == "")
         {
            needButton = false;
         }
         else
         {
            needButton = true;
         }
         dealBtEnabled();
      }
   }
}


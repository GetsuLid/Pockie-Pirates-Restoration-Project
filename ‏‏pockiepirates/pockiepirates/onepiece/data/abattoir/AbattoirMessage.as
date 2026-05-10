package data.abattoir
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class AbattoirMessage implements IEventDispatcher
   {
      
      private var _1282162632faceid:int;
      
      private var _3373707name:String;
      
      private var _1721931064nameImg:String;
      
      private var _1367741604campid:int;
      
      private var _1409291400armyid:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function AbattoirMessage()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get armyid() : int
      {
         return this._1409291400armyid;
      }
      
      public function resoverArmyMess(_object:Object) : void
      {
         armyid = _object.cfgArmyId;
         campid = _object.cfgCampId;
         faceid = _object.face;
         name = _object.name;
         nameImg = "../assets/images/Head/Small/" + _object.face + ".swf";
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
      
      public function set campid(value:int) : void
      {
         var oldValue:Object = this._1367741604campid;
         if(oldValue !== value)
         {
            this._1367741604campid = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campid",oldValue,value));
         }
      }
      
      public function set faceid(value:int) : void
      {
         var oldValue:Object = this._1282162632faceid;
         if(oldValue !== value)
         {
            this._1282162632faceid = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"faceid",oldValue,value));
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
      
      [Bindable(event="propertyChange")]
      public function get campid() : int
      {
         return this._1367741604campid;
      }
      
      public function set nameImg(value:String) : void
      {
         var oldValue:Object = this._1721931064nameImg;
         if(oldValue !== value)
         {
            this._1721931064nameImg = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameImg",oldValue,value));
         }
      }
      
      public function set armyid(value:int) : void
      {
         var oldValue:Object = this._1409291400armyid;
         if(oldValue !== value)
         {
            this._1409291400armyid = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyid",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameImg() : String
      {
         return this._1721931064nameImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get faceid() : int
      {
         return this._1282162632faceid;
      }
   }
}


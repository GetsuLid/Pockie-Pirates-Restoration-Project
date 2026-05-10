package Scene.Data
{
   import constant.Global;
   import data.npc.NPCData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class DialogData implements IEventDispatcher
   {
      
      private var _3373707name:String;
      
      private var _737528801funOptions:ArrayCollection;
      
      private var _638556505taskOptions:ArrayCollection;
      
      private var _116079url:String;
      
      private var _113318569words:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function DialogData()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set taskOptions(value:ArrayCollection) : void
      {
         var oldValue:Object = this._638556505taskOptions;
         if(oldValue !== value)
         {
            this._638556505taskOptions = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskOptions",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
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
      
      public function set words(value:String) : void
      {
         var oldValue:Object = this._113318569words;
         if(oldValue !== value)
         {
            this._113318569words = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"words",oldValue,value));
         }
      }
      
      public function resolveDialog(dialog:Object, npcId:int) : void
      {
         var info:Object = null;
         var option:NPCDialogSelectData = null;
         var npc:NPCData = Global.npcs[npcId];
         if(npc)
         {
            name = npc.name;
            url = "../assets/images/Head/Big/" + npc.head + ".swf";
         }
         words = dialog.word_content;
         words = words.replace(/-0-/,DataManager.Instance.role.name);
         funOptions = new ArrayCollection();
         taskOptions = new ArrayCollection();
         for each(info in dialog.options)
         {
            option = new NPCDialogSelectData(info);
            if(option.content == "" || option.effect == 0)
            {
               continue;
            }
            switch(option.effect)
            {
               case 1:
               case 2:
               case 3:
                  option.width = 420;
                  taskOptions.addItem(option);
                  break;
               default:
                  option.width = 300;
                  funOptions.addItem(option);
            }
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
      
      [Bindable(event="propertyChange")]
      public function get funOptions() : ArrayCollection
      {
         return this._737528801funOptions;
      }
      
      [Bindable(event="propertyChange")]
      public function get taskOptions() : ArrayCollection
      {
         return this._638556505taskOptions;
      }
      
      [Bindable(event="propertyChange")]
      public function get words() : String
      {
         return this._113318569words;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set funOptions(value:ArrayCollection) : void
      {
         var oldValue:Object = this._737528801funOptions;
         if(oldValue !== value)
         {
            this._737528801funOptions = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funOptions",oldValue,value));
         }
      }
   }
}


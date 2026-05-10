package mx.collections
{
   import flash.events.EventDispatcher;
   import flash.utils.getQualifiedClassName;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import mx.events.PropertyChangeEventKind;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.IXMLNotifiable;
   import mx.utils.UIDUtil;
   import mx.utils.XMLNotifier;
   
   use namespace mx_internal;
   
   public class XMLListAdapter extends EventDispatcher implements IList, IXMLNotifiable
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var uidCounter:int = 0;
      
      private var _dispatchEvents:int = 0;
      
      private var _busy:int = 0;
      
      private var seedUID:String;
      
      private var _source:XMLList;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function XMLListAdapter(source:XMLList = null)
      {
         super();
         disableEvents();
         this.source = source;
         enableEvents();
      }
      
      public function setItemAt(item:Object, index:int) : Object
      {
         var message:String = null;
         var event:CollectionEvent = null;
         var updateInfo:PropertyChangeEvent = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var oldItem:Object = source[index];
         source[index] = item;
         stopTrackUpdates(oldItem);
         startTrackUpdates(item,seedUID + uidCounter.toString());
         ++uidCounter;
         if(_dispatchEvents == 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.REPLACE;
            updateInfo = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
            updateInfo.kind = PropertyChangeEventKind.UPDATE;
            updateInfo.oldValue = oldItem;
            updateInfo.newValue = item;
            event.location = index;
            event.items.push(updateInfo);
            dispatchEvent(event);
         }
         return oldItem;
      }
      
      protected function startTrackUpdates(item:Object, uid:String) : void
      {
         XMLNotifier.getInstance().watchXML(item,this,uid);
      }
      
      public function removeAll() : void
      {
         var i:* = 0;
         var event:CollectionEvent = null;
         if(length > 0)
         {
            for(i = int(length - 1); i >= 0; i--)
            {
               stopTrackUpdates(source[i]);
               delete source[i];
            }
            if(_dispatchEvents == 0)
            {
               event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
               event.kind = CollectionEventKind.RESET;
               dispatchEvent(event);
            }
         }
      }
      
      protected function itemUpdateHandler(event:PropertyChangeEvent) : void
      {
         var updateEvent:CollectionEvent = null;
         if(_dispatchEvents == 0)
         {
            updateEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            updateEvent.kind = CollectionEventKind.UPDATE;
            updateEvent.items.push(event);
            dispatchEvent(updateEvent);
         }
      }
      
      public function getItemIndex(item:Object) : int
      {
         var len:int = 0;
         var i:int = 0;
         var search:Object = null;
         if(item is XML && source.contains(XML(item)))
         {
            len = length;
            for(i = 0; i < len; i++)
            {
               search = source[i];
               if(search === item)
               {
                  return i;
               }
            }
         }
         return -1;
      }
      
      public function removeItemAt(index:int) : Object
      {
         var message:String = null;
         var event:CollectionEvent = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         setBusy();
         var removed:Object = source[index];
         delete source[index];
         stopTrackUpdates(removed);
         if(_dispatchEvents == 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.REMOVE;
            event.location = index;
            event.items.push(removed);
            dispatchEvent(event);
         }
         clearBusy();
         return removed;
      }
      
      public function addItem(item:Object) : void
      {
         addItemAt(item,length);
      }
      
      public function get source() : XMLList
      {
         return _source;
      }
      
      public function toArray() : Array
      {
         var s:XMLList = source;
         var len:int = s.length();
         var ret:Array = [];
         for(var i:int = 0; i < len; i++)
         {
            ret[i] = s[i];
         }
         return ret;
      }
      
      protected function disableEvents() : void
      {
         --_dispatchEvents;
      }
      
      public function xmlNotification(currentTarget:Object, type:String, target:Object, value:Object, detail:Object) : void
      {
         var prop:String = null;
         var oldValue:Object = null;
         var newValue:Object = null;
         var par:* = undefined;
         var gpar:* = undefined;
         if(currentTarget === target)
         {
            switch(type)
            {
               case "attributeAdded":
                  prop = "@" + String(value);
                  newValue = detail;
                  break;
               case "attributeChanged":
                  prop = "@" + String(value);
                  oldValue = detail;
                  newValue = target[prop];
                  break;
               case "attributeRemoved":
                  prop = "@" + String(value);
                  oldValue = detail;
                  break;
               case "nodeAdded":
                  prop = value.localName();
                  newValue = value;
                  break;
               case "nodeChanged":
                  prop = value.localName();
                  oldValue = detail;
                  newValue = value;
                  break;
               case "nodeRemoved":
                  prop = value.localName();
                  oldValue = value;
                  break;
               case "textSet":
                  prop = String(value);
                  newValue = String(target[prop]);
                  oldValue = detail;
            }
         }
         else if(type == "textSet")
         {
            par = target.parent();
            if(par != undefined)
            {
               gpar = par.parent();
               if(gpar === currentTarget)
               {
                  prop = par.name().toString();
                  newValue = value;
                  oldValue = detail;
               }
            }
         }
         itemUpdated(currentTarget,prop,oldValue,newValue);
      }
      
      public function addItemAt(item:Object, index:int) : void
      {
         var message:String = null;
         var event:CollectionEvent = null;
         if(index < 0 || index > length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         if(!(item is XML) && !(item is XMLList && item.length() == 1))
         {
            message = resourceManager.getString("collections","invalidType");
            throw new Error(message);
         }
         setBusy();
         if(index == 0)
         {
            source[0] = length > 0 ? item + source[0] : item;
         }
         else
         {
            source[index - 1] += item;
         }
         startTrackUpdates(item,seedUID + uidCounter.toString());
         ++uidCounter;
         if(_dispatchEvents == 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.ADD;
            event.items.push(item);
            event.location = index;
            dispatchEvent(event);
         }
         clearBusy();
      }
      
      public function getItemAt(index:int, prefetch:int = 0) : Object
      {
         var message:String = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         return source[index];
      }
      
      override public function toString() : String
      {
         if(source)
         {
            return source.toString();
         }
         return getQualifiedClassName(this);
      }
      
      public function get length() : int
      {
         return source.length();
      }
      
      public function itemUpdated(item:Object, property:Object = null, oldValue:Object = null, newValue:Object = null) : void
      {
         var event:PropertyChangeEvent = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
         event.kind = PropertyChangeEventKind.UPDATE;
         event.source = item;
         event.property = property;
         event.oldValue = oldValue;
         event.newValue = newValue;
         itemUpdateHandler(event);
      }
      
      protected function stopTrackUpdates(item:Object) : void
      {
         XMLNotifier.getInstance().unwatchXML(item,this);
      }
      
      private function clearBusy() : void
      {
         ++_busy;
         if(_busy > 0)
         {
            _busy = 0;
         }
      }
      
      public function set source(s:XMLList) : void
      {
         var i:int = 0;
         var len:int = 0;
         var event:CollectionEvent = null;
         if(Boolean(_source) && Boolean(_source.length()))
         {
            len = _source.length();
            for(i = 0; i < len; i++)
            {
               stopTrackUpdates(_source[i]);
            }
         }
         _source = s ? s : XMLList(new XMLList(""));
         seedUID = UIDUtil.createUID();
         uidCounter = 0;
         len = _source.length();
         for(i = 0; i < len; i++)
         {
            startTrackUpdates(_source[i],seedUID + uidCounter.toString());
            ++uidCounter;
         }
         if(_dispatchEvents == 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.RESET;
            dispatchEvent(event);
         }
      }
      
      public function busy() : Boolean
      {
         return _busy != 0;
      }
      
      private function setBusy() : void
      {
         --_busy;
      }
      
      protected function enableEvents() : void
      {
         ++_dispatchEvents;
         if(_dispatchEvents > 0)
         {
            _dispatchEvents = 0;
         }
      }
   }
}


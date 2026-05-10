package mx.collections
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import flash.utils.getQualifiedClassName;
   import mx.collections.errors.CollectionViewError;
   import mx.collections.errors.ItemPendingError;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   use namespace flash_proxy;
   
   public class ListCollectionView extends Proxy implements ICollectionView, IList, IMXMLObject
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var autoUpdateCounter:int;
      
      private var _list:IList;
      
      private var _filterFunction:Function;
      
      protected var localIndex:Array;
      
      mx_internal var dispatchResetEvent:Boolean = true;
      
      private var pendingUpdates:Array;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var eventDispatcher:EventDispatcher;
      
      private var revision:int;
      
      private var _sort:Sort;
      
      public function ListCollectionView(list:IList = null)
      {
         super();
         eventDispatcher = new EventDispatcher(this);
         this.list = list;
      }
      
      private function handlePendingUpdates() : void
      {
         var pu:Array = null;
         var singleUpdateEvent:CollectionEvent = null;
         var i:int = 0;
         var event:CollectionEvent = null;
         var j:int = 0;
         if(pendingUpdates)
         {
            pu = pendingUpdates;
            pendingUpdates = null;
            for(i = 0; i < pu.length; i++)
            {
               event = pu[i];
               if(event.kind == CollectionEventKind.UPDATE)
               {
                  if(!singleUpdateEvent)
                  {
                     singleUpdateEvent = event;
                  }
                  else
                  {
                     for(j = 0; j < event.items.length; j++)
                     {
                        singleUpdateEvent.items.push(event.items[j]);
                     }
                  }
               }
               else
               {
                  listChangeHandler(event);
               }
            }
            if(singleUpdateEvent)
            {
               listChangeHandler(singleUpdateEvent);
            }
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         eventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      private function replaceItemsInView(items:Array, location:int, dispatch:Boolean = true) : void
      {
         var len:int = 0;
         var oldItems:Array = null;
         var newItems:Array = null;
         var i:int = 0;
         var propertyEvent:PropertyChangeEvent = null;
         var event:CollectionEvent = null;
         if(localIndex)
         {
            len = int(items.length);
            oldItems = [];
            newItems = [];
            for(i = 0; i < len; i++)
            {
               propertyEvent = items[i];
               oldItems.push(propertyEvent.oldValue);
               newItems.push(propertyEvent.newValue);
            }
            removeItemsFromView(oldItems,location,dispatch);
            addItemsToView(newItems,location,dispatch);
         }
         else
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.REPLACE;
            event.location = location;
            event.items = items;
            dispatchEvent(event);
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return eventDispatcher.willTrigger(type);
      }
      
      private function getFilteredItemIndex(item:Object) : int
      {
         var prevItem:Object = null;
         var len:int = 0;
         var j:int = 0;
         var loc:int = list.getItemIndex(item);
         if(loc == 0)
         {
            return 0;
         }
         for(var i:* = int(loc - 1); i >= 0; i--)
         {
            prevItem = list.getItemAt(i);
            if(filterFunction(prevItem))
            {
               len = int(localIndex.length);
               for(j = 0; j < len; j++)
               {
                  if(localIndex[j] == prevItem)
                  {
                     return j + 1;
                  }
               }
            }
         }
         return 0;
      }
      
      mx_internal function findItem(values:Object, mode:String, insertIndex:Boolean = false) : int
      {
         var message:String = null;
         if(!sort)
         {
            message = resourceManager.getString("collections","itemNotFound");
            throw new CollectionViewError(message);
         }
         if(localIndex.length == 0)
         {
            return insertIndex ? 0 : -1;
         }
         return sort.findItem(localIndex,values,mode,insertIndex);
      }
      
      override flash_proxy function nextName(index:int) : String
      {
         return (index - 1).toString();
      }
      
      public function removeAll() : void
      {
         var i:* = 0;
         var len:int = length;
         if(len > 0)
         {
            if(localIndex)
            {
               for(i = int(len - 1); i >= 0; i--)
               {
                  removeItemAt(i);
               }
            }
            else
            {
               list.removeAll();
            }
         }
      }
      
      override flash_proxy function hasProperty(name:*) : Boolean
      {
         var index:int;
         var n:Number = NaN;
         if(name is QName)
         {
            name = name.localName;
         }
         index = -1;
         try
         {
            n = parseInt(String(name));
            if(!isNaN(n))
            {
               index = int(n);
            }
         }
         catch(e:Error)
         {
         }
         if(index == -1)
         {
            return false;
         }
         return index >= 0 && index < length;
      }
      
      [Bindable("collectionChange")]
      public function getItemAt(index:int, prefetch:int = 0) : Object
      {
         var message:String = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         if(localIndex)
         {
            return localIndex[index];
         }
         if(list)
         {
            return list.getItemAt(index,prefetch);
         }
         return null;
      }
      
      private function moveItemInView(item:Object, dispatch:Boolean = true, updateEventItems:Array = null) : void
      {
         var removeLocation:int = 0;
         var i:int = 0;
         var addLocation:int = 0;
         var event:CollectionEvent = null;
         if(localIndex)
         {
            removeLocation = -1;
            for(i = 0; i < localIndex.length; i++)
            {
               if(localIndex[i] == item)
               {
                  removeLocation = i;
                  break;
               }
            }
            if(removeLocation > -1)
            {
               localIndex.splice(removeLocation,1);
            }
            addLocation = addItemsToView([item],removeLocation,false);
            if(dispatch)
            {
               event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
               event.items.push(item);
               if(Boolean(updateEventItems) && Boolean(addLocation == removeLocation) && addLocation > -1)
               {
                  updateEventItems.push(item);
                  return;
               }
               if(addLocation > -1 && removeLocation > -1)
               {
                  event.kind = CollectionEventKind.MOVE;
                  event.location = addLocation;
                  event.oldLocation = removeLocation;
               }
               else if(addLocation > -1)
               {
                  event.kind = CollectionEventKind.ADD;
                  event.location = addLocation;
               }
               else if(removeLocation > -1)
               {
                  event.kind = CollectionEventKind.REMOVE;
                  event.location = removeLocation;
               }
               else
               {
                  dispatch = false;
               }
               if(dispatch)
               {
                  dispatchEvent(event);
               }
            }
         }
      }
      
      public function contains(item:Object) : Boolean
      {
         return getItemIndex(item) != -1;
      }
      
      [Bindable("sortChanged")]
      public function get sort() : Sort
      {
         return _sort;
      }
      
      private function removeItemsFromView(items:Array, sourceLocation:int, dispatch:Boolean = true) : void
      {
         var i:int = 0;
         var item:Object = null;
         var loc:int = 0;
         var event:CollectionEvent = null;
         var removedItems:Array = localIndex ? [] : items;
         var removeLocation:int = sourceLocation;
         if(localIndex)
         {
            for(i = 0; i < items.length; i++)
            {
               item = items[i];
               loc = getItemIndex(item);
               if(loc > -1)
               {
                  localIndex.splice(loc,1);
                  removedItems.push(item);
                  removeLocation = loc;
               }
            }
         }
         if(dispatch && removedItems.length > 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.REMOVE;
            event.location = !localIndex || removedItems.length == 1 ? removeLocation : -1;
            event.items = removedItems;
            dispatchEvent(event);
         }
      }
      
      [Bindable("listChanged")]
      public function get list() : IList
      {
         return _list;
      }
      
      public function addItemAt(item:Object, index:int) : void
      {
         var message:String = null;
         if(index < 0 || !list || index > length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var listIndex:int = index;
         if(Boolean(localIndex) && Boolean(sort))
         {
            listIndex = list.length;
         }
         else if(Boolean(localIndex) && filterFunction != null)
         {
            if(listIndex == localIndex.length)
            {
               listIndex = list.length;
            }
            else
            {
               listIndex = list.getItemIndex(localIndex[index]);
            }
         }
         list.addItemAt(item,listIndex);
      }
      
      public function itemUpdated(item:Object, property:Object = null, oldValue:Object = null, newValue:Object = null) : void
      {
         list.itemUpdated(item,property,oldValue,newValue);
      }
      
      private function populateLocalIndex() : void
      {
         if(list)
         {
            localIndex = list.toArray();
         }
         else
         {
            localIndex = [];
         }
      }
      
      private function handlePropertyChangeEvents(events:Array) : void
      {
         var updatedItems:Array = null;
         var updateEntry:Object = null;
         var i:int = 0;
         var temp:Array = null;
         var ctr:int = 0;
         var updateInfo:PropertyChangeEvent = null;
         var item:Object = null;
         var defaultMove:Boolean = false;
         var j:int = 0;
         var ctr1:int = 0;
         var updateEvent:CollectionEvent = null;
         var eventItems:Array = events;
         if(Boolean(sort) || filterFunction != null)
         {
            updatedItems = [];
            for(i = 0; i < events.length; i++)
            {
               updateInfo = events[i];
               if(updateInfo.target)
               {
                  item = updateInfo.target;
                  defaultMove = updateInfo.target != updateInfo.source;
               }
               else
               {
                  item = updateInfo.source;
                  defaultMove = false;
               }
               for(j = 0; j < updatedItems.length; )
               {
                  if(updatedItems[j].item == item)
                  {
                     break;
                  }
                  j++;
               }
               if(j < updatedItems.length)
               {
                  updateEntry = updatedItems[j];
               }
               else
               {
                  updateEntry = {
                     "item":item,
                     "move":defaultMove,
                     "event":updateInfo
                  };
                  updatedItems.push(updateEntry);
               }
               updateEntry.move = updateEntry.move || filterFunction || !updateInfo.property || sort && sort.propertyAffectsSort(String(updateInfo.property));
            }
            eventItems = [];
            for(i = 0; i < updatedItems.length; i++)
            {
               updateEntry = updatedItems[i];
               if(updateEntry.move)
               {
                  moveItemInView(updateEntry.item,updateEntry.item,eventItems);
               }
               else
               {
                  eventItems.push(updateEntry.item);
               }
            }
            temp = [];
            for(ctr = 0; ctr < eventItems.length; ctr++)
            {
               for(ctr1 = 0; ctr1 < updatedItems.length; ctr1++)
               {
                  if(eventItems[ctr] == updatedItems[ctr1].item)
                  {
                     temp.push(updatedItems[ctr1].event);
                  }
               }
            }
            eventItems = temp;
         }
         if(eventItems.length > 0)
         {
            updateEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            updateEvent.kind = CollectionEventKind.UPDATE;
            updateEvent.items = eventItems;
            dispatchEvent(updateEvent);
         }
      }
      
      public function set sort(s:Sort) : void
      {
         _sort = s;
         dispatchEvent(new Event("sortChanged"));
      }
      
      override flash_proxy function nextValue(index:int) : *
      {
         return getItemAt(index - 1);
      }
      
      public function setItemAt(item:Object, index:int) : Object
      {
         var message:String = null;
         var oldItem:Object = null;
         if(index < 0 || !list || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var listIndex:int = index;
         if(localIndex)
         {
            if(index > localIndex.length)
            {
               listIndex = list.length;
            }
            else
            {
               oldItem = localIndex[index];
               listIndex = list.getItemIndex(oldItem);
            }
         }
         return list.setItemAt(item,listIndex);
      }
      
      mx_internal function getBookmark(index:int) : ListCollectionViewBookmark
      {
         var value:Object = null;
         var message:String = null;
         if(index < 0 || index > length)
         {
            message = resourceManager.getString("collections","invalidIndex",[index]);
            throw new CollectionViewError(message);
         }
         try
         {
            value = getItemAt(index);
         }
         catch(e:Error)
         {
            value = null;
         }
         return new ListCollectionViewBookmark(value,this,revision,index);
      }
      
      private function addItemsToView(items:Array, sourceLocation:int, dispatch:Boolean = true) : int
      {
         var loc:* = 0;
         var i:int = 0;
         var item:Object = null;
         var message:String = null;
         var event:CollectionEvent = null;
         var addedItems:Array = localIndex ? [] : items;
         var addLocation:int = sourceLocation;
         var firstOne:Boolean = true;
         if(localIndex)
         {
            loc = sourceLocation;
            for(i = 0; i < items.length; i++)
            {
               item = items[i];
               if(filterFunction == null || Boolean(filterFunction(item)))
               {
                  if(sort)
                  {
                     loc = findItem(item,Sort.ANY_INDEX_MODE,true);
                     if(firstOne)
                     {
                        addLocation = loc;
                        firstOne = false;
                     }
                  }
                  else
                  {
                     loc = getFilteredItemIndex(item);
                     if(firstOne)
                     {
                        addLocation = loc;
                        firstOne = false;
                     }
                  }
                  if(Boolean(sort) && Boolean(sort.unique) && sort.compareFunction(item,localIndex[loc]) == 0)
                  {
                     message = resourceManager.getString("collections","incorrectAddition");
                     throw new CollectionViewError(message);
                  }
                  localIndex.splice(loc++,0,item);
                  addedItems.push(item);
               }
               else
               {
                  addLocation = -1;
               }
            }
         }
         if(Boolean(localIndex) && addedItems.length > 1)
         {
            addLocation = -1;
         }
         if(dispatch && addedItems.length > 0)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.ADD;
            event.location = addLocation;
            event.items = addedItems;
            dispatchEvent(event);
         }
         return addLocation;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return eventDispatcher.dispatchEvent(event);
      }
      
      public function set list(value:IList) : void
      {
         var oldHasItems:Boolean = false;
         var newHasItems:Boolean = false;
         if(_list != value)
         {
            if(_list)
            {
               _list.removeEventListener(CollectionEvent.COLLECTION_CHANGE,listChangeHandler);
               oldHasItems = _list.length > 0;
            }
            _list = value;
            if(_list)
            {
               _list.addEventListener(CollectionEvent.COLLECTION_CHANGE,listChangeHandler,false,0,true);
               newHasItems = _list.length > 0;
            }
            if(oldHasItems || newHasItems)
            {
               reset();
            }
            dispatchEvent(new Event("listChanged"));
         }
      }
      
      mx_internal function getBookmarkIndex(bookmark:CursorBookmark) : int
      {
         var message:String = null;
         if(!(bookmark is ListCollectionViewBookmark) || ListCollectionViewBookmark(bookmark).view != this)
         {
            message = resourceManager.getString("collections","bookmarkNotFound");
            throw new CollectionViewError(message);
         }
         var bm:ListCollectionViewBookmark = ListCollectionViewBookmark(bookmark);
         if(bm.viewRevision != revision)
         {
            if(bm.index < 0 || bm.index >= length || getItemAt(bm.index) != bm.value)
            {
               bm.index = getItemIndex(bm.value);
            }
            bm.viewRevision = revision;
         }
         return bm.index;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         eventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function getItemIndex(item:Object) : int
      {
         var i:int = 0;
         var startIndex:int = 0;
         var endIndex:int = 0;
         var len:int = 0;
         if(sort)
         {
            startIndex = sort.findItem(localIndex,item,Sort.FIRST_INDEX_MODE);
            if(startIndex == -1)
            {
               return -1;
            }
            endIndex = sort.findItem(localIndex,item,Sort.LAST_INDEX_MODE);
            for(i = startIndex; i <= endIndex; i++)
            {
               if(localIndex[i] == item)
               {
                  return i;
               }
            }
            return -1;
         }
         if(filterFunction != null)
         {
            len = int(localIndex.length);
            for(i = 0; i < len; i++)
            {
               if(localIndex[i] == item)
               {
                  return i;
               }
            }
            return -1;
         }
         return list.getItemIndex(item);
      }
      
      public function removeItemAt(index:int) : Object
      {
         var message:String = null;
         var oldItem:Object = null;
         if(index < 0 || index >= length)
         {
            message = resourceManager.getString("collections","outOfBounds",[index]);
            throw new RangeError(message);
         }
         var listIndex:int = index;
         if(localIndex)
         {
            oldItem = localIndex[index];
            listIndex = list.getItemIndex(oldItem);
         }
         return list.removeItemAt(listIndex);
      }
      
      override flash_proxy function getProperty(name:*) : *
      {
         var index:int;
         var n:Number = NaN;
         var message:String = null;
         if(name is QName)
         {
            name = name.localName;
         }
         index = -1;
         try
         {
            n = parseInt(String(name));
            if(!isNaN(n))
            {
               index = int(n);
            }
         }
         catch(e:Error)
         {
         }
         if(index == -1)
         {
            message = resourceManager.getString("collections","unknownProperty",[name]);
            throw new Error(message);
         }
         return getItemAt(index);
      }
      
      public function enableAutoUpdate() : void
      {
         if(autoUpdateCounter > 0)
         {
            --autoUpdateCounter;
            if(autoUpdateCounter == 0)
            {
               handlePendingUpdates();
            }
         }
      }
      
      mx_internal function reset() : void
      {
         var event:CollectionEvent = null;
         internalRefresh(false);
         if(dispatchResetEvent)
         {
            event = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            event.kind = CollectionEventKind.RESET;
            dispatchEvent(event);
         }
      }
      
      public function toArray() : Array
      {
         var ret:Array = null;
         if(localIndex)
         {
            ret = localIndex.concat();
         }
         else
         {
            ret = list.toArray();
         }
         return ret;
      }
      
      override flash_proxy function callProperty(name:*, ... rest) : *
      {
         return null;
      }
      
      public function initialized(document:Object, id:String) : void
      {
         refresh();
      }
      
      override flash_proxy function setProperty(name:*, value:*) : void
      {
         var index:int;
         var n:Number = NaN;
         var message:String = null;
         if(name is QName)
         {
            name = name.localName;
         }
         index = -1;
         try
         {
            n = parseInt(String(name));
            if(!isNaN(n))
            {
               index = int(n);
            }
         }
         catch(e:Error)
         {
         }
         if(index == -1)
         {
            message = resourceManager.getString("collections","unknownProperty",[name]);
            throw new Error(message);
         }
         setItemAt(value,index);
      }
      
      public function addItem(item:Object) : void
      {
         addItemAt(item,length);
      }
      
      private function internalRefresh(dispatch:Boolean) : Boolean
      {
         var tmp:Array = null;
         var len:int = 0;
         var i:int = 0;
         var item:Object = null;
         var refreshEvent:CollectionEvent = null;
         if(Boolean(sort) || filterFunction != null)
         {
            try
            {
               populateLocalIndex();
            }
            catch(pending:ItemPendingError)
            {
               pending.addResponder(new ItemResponder(function(data:Object, token:Object = null):void
               {
                  internalRefresh(dispatch);
               },function(info:Object, token:Object = null):void
               {
               }));
               return false;
            }
            if(filterFunction != null)
            {
               tmp = [];
               len = int(localIndex.length);
               for(i = 0; i < len; i++)
               {
                  item = localIndex[i];
                  if(filterFunction(item))
                  {
                     tmp.push(item);
                  }
               }
               localIndex = tmp;
            }
            if(sort)
            {
               sort.sort(localIndex);
               dispatch = true;
            }
         }
         else if(localIndex)
         {
            localIndex = null;
         }
         ++revision;
         pendingUpdates = null;
         if(dispatch)
         {
            refreshEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            refreshEvent.kind = CollectionEventKind.REFRESH;
            dispatchEvent(refreshEvent);
         }
         return true;
      }
      
      public function set filterFunction(f:Function) : void
      {
         _filterFunction = f;
         dispatchEvent(new Event("filterFunctionChanged"));
      }
      
      public function refresh() : Boolean
      {
         return internalRefresh(true);
      }
      
      [Bindable("filterFunctionChanged")]
      public function get filterFunction() : Function
      {
         return _filterFunction;
      }
      
      public function createCursor() : IViewCursor
      {
         return new ListCollectionViewCursor(this);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return eventDispatcher.hasEventListener(type);
      }
      
      [Bindable("collectionChange")]
      public function get length() : int
      {
         if(localIndex)
         {
            return localIndex.length;
         }
         if(list)
         {
            return list.length;
         }
         return 0;
      }
      
      override flash_proxy function nextNameIndex(index:int) : int
      {
         return index < length ? int(index + 1) : 0;
      }
      
      public function disableAutoUpdate() : void
      {
         ++autoUpdateCounter;
      }
      
      public function toString() : String
      {
         if(localIndex)
         {
            return ObjectUtil.toString(localIndex);
         }
         if(Boolean(list) && Boolean(Object(list).toString))
         {
            return Object(list).toString();
         }
         return getQualifiedClassName(this);
      }
      
      private function listChangeHandler(event:CollectionEvent) : void
      {
         if(autoUpdateCounter > 0)
         {
            if(!pendingUpdates)
            {
               pendingUpdates = [];
            }
            pendingUpdates.push(event);
         }
         else
         {
            switch(event.kind)
            {
               case CollectionEventKind.ADD:
                  addItemsToView(event.items,event.location);
                  break;
               case CollectionEventKind.RESET:
                  reset();
                  break;
               case CollectionEventKind.REMOVE:
                  removeItemsFromView(event.items,event.location);
                  break;
               case CollectionEventKind.REPLACE:
                  replaceItemsInView(event.items,event.location);
                  break;
               case CollectionEventKind.UPDATE:
                  handlePropertyChangeEvents(event.items);
                  break;
               default:
                  dispatchEvent(event);
            }
         }
      }
   }
}

import flash.events.EventDispatcher;
import mx.collections.errors.CollectionViewError;
import mx.collections.errors.CursorError;
import mx.collections.errors.ItemPendingError;
import mx.collections.errors.SortError;
import mx.core.mx_internal;
import mx.events.CollectionEvent;
import mx.events.CollectionEventKind;
import mx.events.FlexEvent;
import mx.resources.IResourceManager;
import mx.resources.ResourceManager;

use namespace mx_internal;

class ListCollectionViewBookmark extends CursorBookmark
{
   
   mx_internal var viewRevision:int;
   
   mx_internal var index:int;
   
   mx_internal var view:ListCollectionView;
   
   public function ListCollectionViewBookmark(value:Object, view:ListCollectionView, viewRevision:int, index:int)
   {
      super(value);
      this.mx_internal::view = view;
      this.mx_internal::viewRevision = viewRevision;
      this.mx_internal::index = index;
   }
   
   override public function getViewIndex() : int
   {
      return mx_internal::view.mx_internal::getBookmarkIndex(this);
   }
}

class ListCollectionViewCursor extends EventDispatcher implements IViewCursor
{
   
   private static const BEFORE_FIRST_INDEX:int = -1;
   
   private static const AFTER_LAST_INDEX:int = -2;
   
   private var _view:ListCollectionView;
   
   private var invalid:Boolean;
   
   private var resourceManager:IResourceManager;
   
   private var currentIndex:int;
   
   private var currentValue:Object;
   
   public function ListCollectionViewCursor(view:ListCollectionView)
   {
      resourceManager = ResourceManager.getInstance();
      super();
      _view = view;
      _view.addEventListener(CollectionEvent.COLLECTION_CHANGE,collectionEventHandler,false,0,true);
      currentIndex = view.length > 0 ? 0 : int(AFTER_LAST_INDEX);
      if(currentIndex == 0)
      {
         try
         {
            setCurrent(view.getItemAt(0),false);
         }
         catch(e:ItemPendingError)
         {
            currentIndex = BEFORE_FIRST_INDEX;
            setCurrent(null,false);
         }
      }
   }
   
   public function findAny(values:Object) : Boolean
   {
      var lcView:ListCollectionView;
      var index:int = 0;
      checkValid();
      lcView = ListCollectionView(view);
      try
      {
         index = lcView.findItem(values,Sort.ANY_INDEX_MODE);
      }
      catch(e:SortError)
      {
         throw new CursorError(e.message);
      }
      if(index > -1)
      {
         currentIndex = index;
         setCurrent(lcView.getItemAt(currentIndex));
      }
      return index > -1;
   }
   
   public function remove() : Object
   {
      var removed:Object;
      var oldIndex:int = 0;
      var message:String = null;
      if(Boolean(beforeFirst) || Boolean(afterLast))
      {
         message = resourceManager.getString("collections","invalidRemove");
         throw new CursorError(message);
      }
      oldIndex = int(currentIndex);
      ++currentIndex;
      if(currentIndex >= view.length)
      {
         currentIndex = AFTER_LAST_INDEX;
         setCurrent(null);
      }
      else
      {
         try
         {
            setCurrent(ListCollectionView(view).getItemAt(currentIndex));
         }
         catch(e:ItemPendingError)
         {
            setCurrent(null,false);
            ListCollectionView(view).removeItemAt(oldIndex);
            throw e;
         }
      }
      removed = ListCollectionView(view).removeItemAt(oldIndex);
      return removed;
   }
   
   private function setCurrent(value:Object, dispatch:Boolean = true) : void
   {
      currentValue = value;
      if(dispatch)
      {
         dispatchEvent(new FlexEvent(FlexEvent.CURSOR_UPDATE));
      }
   }
   
   public function seek(bookmark:CursorBookmark, offset:int = 0, prefetch:int = 0) : void
   {
      var newIndex:int;
      var newCurrent:Object;
      var message:String = null;
      checkValid();
      if(view.length == 0)
      {
         currentIndex = AFTER_LAST_INDEX;
         setCurrent(null,false);
         return;
      }
      newIndex = int(currentIndex);
      if(bookmark == CursorBookmark.FIRST)
      {
         newIndex = 0;
      }
      else if(bookmark == CursorBookmark.LAST)
      {
         newIndex = view.length - 1;
      }
      else if(bookmark != CursorBookmark.CURRENT)
      {
         try
         {
            newIndex = ListCollectionView(view).getBookmarkIndex(bookmark);
            if(newIndex < 0)
            {
               setCurrent(null);
               message = resourceManager.getString("collections","bookmarkInvalid");
               throw new CursorError(message);
            }
         }
         catch(bmError:CollectionViewError)
         {
            message = resourceManager.getString("collections","bookmarkInvalid");
            throw new CursorError(message);
         }
      }
      newIndex += offset;
      newCurrent = null;
      if(newIndex >= view.length)
      {
         currentIndex = AFTER_LAST_INDEX;
      }
      else if(newIndex < 0)
      {
         currentIndex = BEFORE_FIRST_INDEX;
      }
      else
      {
         newCurrent = ListCollectionView(view).getItemAt(newIndex,prefetch);
         currentIndex = newIndex;
      }
      setCurrent(newCurrent);
   }
   
   public function insert(item:Object) : void
   {
      var insertIndex:int = 0;
      var message:String = null;
      if(afterLast)
      {
         insertIndex = int(view.length);
      }
      else if(beforeFirst)
      {
         if(view.length > 0)
         {
            message = resourceManager.getString("collections","invalidInsert");
            throw new CursorError(message);
         }
         insertIndex = 0;
      }
      else
      {
         insertIndex = int(currentIndex);
      }
      ListCollectionView(view).addItemAt(item,insertIndex);
   }
   
   [Bindable("cursorUpdate")]
   public function get afterLast() : Boolean
   {
      checkValid();
      return currentIndex == AFTER_LAST_INDEX || view.length == 0;
   }
   
   private function checkValid() : void
   {
      var message:String = null;
      if(invalid)
      {
         message = resourceManager.getString("collections","invalidCursor");
         throw new CursorError(message);
      }
   }
   
   private function collectionEventHandler(event:CollectionEvent) : void
   {
      switch(event.kind)
      {
         case CollectionEventKind.ADD:
            if(event.location <= currentIndex)
            {
               currentIndex += event.items.length;
            }
            break;
         case CollectionEventKind.REMOVE:
            if(event.location < currentIndex)
            {
               currentIndex -= event.items.length;
            }
            else if(event.location == currentIndex)
            {
               if(currentIndex < view.length)
               {
                  try
                  {
                     setCurrent(ListCollectionView(view).getItemAt(currentIndex));
                  }
                  catch(error:ItemPendingError)
                  {
                     setCurrent(null,false);
                  }
               }
               else
               {
                  currentIndex = AFTER_LAST_INDEX;
                  setCurrent(null);
               }
            }
            break;
         case CollectionEventKind.MOVE:
            if(event.oldLocation == currentIndex)
            {
               currentIndex = event.location;
            }
            else
            {
               if(event.oldLocation < currentIndex)
               {
                  currentIndex -= event.items.length;
               }
               if(event.location <= currentIndex)
               {
                  currentIndex += event.items.length;
               }
            }
            break;
         case CollectionEventKind.REFRESH:
            if(!(Boolean(beforeFirst) || Boolean(afterLast)))
            {
               currentIndex = ListCollectionView(view).getItemIndex(currentValue);
               if(currentIndex == -1)
               {
                  setCurrent(null);
               }
            }
            break;
         case CollectionEventKind.REPLACE:
            if(event.location == currentIndex)
            {
               try
               {
                  setCurrent(ListCollectionView(view).getItemAt(currentIndex));
               }
               catch(error:ItemPendingError)
               {
                  setCurrent(null,false);
               }
            }
            break;
         case CollectionEventKind.RESET:
            currentIndex = BEFORE_FIRST_INDEX;
            setCurrent(null);
      }
   }
   
   public function moveNext() : Boolean
   {
      if(afterLast)
      {
         return false;
      }
      var tempIndex:int = beforeFirst ? 0 : int(currentIndex + 1);
      if(tempIndex >= view.length)
      {
         tempIndex = int(AFTER_LAST_INDEX);
         setCurrent(null);
      }
      else
      {
         setCurrent(ListCollectionView(view).getItemAt(tempIndex));
      }
      currentIndex = tempIndex;
      return !afterLast;
   }
   
   public function get view() : ICollectionView
   {
      checkValid();
      return _view;
   }
   
   public function movePrevious() : Boolean
   {
      if(beforeFirst)
      {
         return false;
      }
      var tempIndex:int = afterLast ? int(view.length - 1) : int(currentIndex - 1);
      if(tempIndex == -1)
      {
         tempIndex = int(BEFORE_FIRST_INDEX);
         setCurrent(null);
      }
      else
      {
         setCurrent(ListCollectionView(view).getItemAt(tempIndex));
      }
      currentIndex = tempIndex;
      return !beforeFirst;
   }
   
   public function findLast(values:Object) : Boolean
   {
      var lcView:ListCollectionView;
      var index:int = 0;
      checkValid();
      lcView = ListCollectionView(view);
      try
      {
         index = lcView.findItem(values,Sort.LAST_INDEX_MODE);
      }
      catch(sortError:SortError)
      {
         throw new CursorError(sortError.message);
      }
      if(index > -1)
      {
         currentIndex = index;
         setCurrent(lcView.getItemAt(currentIndex));
      }
      return index > -1;
   }
   
   [Bindable("cursorUpdate")]
   public function get beforeFirst() : Boolean
   {
      checkValid();
      return currentIndex == BEFORE_FIRST_INDEX || view.length == 0;
   }
   
   [Bindable("cursorUpdate")]
   public function get bookmark() : CursorBookmark
   {
      checkValid();
      if(view.length == 0 || Boolean(beforeFirst))
      {
         return CursorBookmark.FIRST;
      }
      if(afterLast)
      {
         return CursorBookmark.LAST;
      }
      return ListCollectionView(view).getBookmark(currentIndex);
   }
   
   public function findFirst(values:Object) : Boolean
   {
      var lcView:ListCollectionView;
      var index:int = 0;
      checkValid();
      lcView = ListCollectionView(view);
      try
      {
         index = lcView.findItem(values,Sort.FIRST_INDEX_MODE);
      }
      catch(sortError:SortError)
      {
         throw new CursorError(sortError.message);
      }
      if(index > -1)
      {
         currentIndex = index;
         setCurrent(lcView.getItemAt(currentIndex));
      }
      return index > -1;
   }
   
   [Bindable("cursorUpdate")]
   public function get current() : Object
   {
      checkValid();
      return currentValue;
   }
}

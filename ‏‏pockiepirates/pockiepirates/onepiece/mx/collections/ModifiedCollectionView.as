package mx.collections
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   import mx.collections.errors.CollectionViewError;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class ModifiedCollectionView implements ICollectionView
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const REMOVED:String = "removed";
      
      public static const ADDED:String = "added";
      
      public static const REPLACED:String = "replaced";
      
      public static const REPLACEMENT:String = "replacement";
      
      private var addedItems:Dictionary = new Dictionary(true);
      
      private var _showPreserved:Boolean = false;
      
      private var list:ICollectionView;
      
      private var deltaLength:int = 0;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var removedItems:Dictionary = new Dictionary(true);
      
      private var itemWrappersByIndex:Array = [];
      
      private var replacementItems:Dictionary = new Dictionary(true);
      
      private var deltas:Array = [];
      
      private var replacedItems:Dictionary = new Dictionary(true);
      
      private var itemWrappersByCollectionMod:Dictionary = new Dictionary(true);
      
      public function ModifiedCollectionView(list:ICollectionView)
      {
         super();
         this.list = list;
      }
      
      mx_internal function getBookmarkIndex(bookmark:CursorBookmark) : int
      {
         var message:String = null;
         if(!(bookmark is ModifiedCollectionViewBookmark) || ModifiedCollectionViewBookmark(bookmark).view != this)
         {
            message = resourceManager.getString("collections","bookmarkNotFound");
            throw new CollectionViewError(message);
         }
         var bm:ModifiedCollectionViewBookmark = ModifiedCollectionViewBookmark(bookmark);
         return bm.index;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return false;
      }
      
      private function removeModification(mod:CollectionModification) : Boolean
      {
         for(var i:int = 0; i < deltas.length; i++)
         {
            if(deltas[i] == mod)
            {
               deltas.splice(i,1);
               return true;
            }
         }
         return false;
      }
      
      mx_internal function getWrappedItemUsingCursor(mcvCursor:ModifiedCollectionViewCursor, newIndex:int) : Object
      {
         var mod0:CollectionModification = null;
         var itemWrapper:Object = null;
         var adjustedIndex:* = newIndex;
         var item:Object = null;
         var cm:CollectionModification = null;
         var isReplacement:Boolean = false;
         for(var j:int = 0; j < deltas.length; j++)
         {
            mod0 = deltas[j];
            if(adjustedIndex < mod0.index)
            {
               break;
            }
            if(mod0.modificationType == CollectionModification.REPLACE)
            {
               if(adjustedIndex == mod0.index && mod0.showOldReplace && _showPreserved)
               {
                  cm = mod0;
                  break;
               }
               if(adjustedIndex == mod0.index + 1 && mod0.showOldReplace && mod0.showNewReplace && _showPreserved)
               {
                  adjustedIndex--;
                  isReplacement = true;
                  break;
               }
               if(adjustedIndex == mod0.index && (!mod0.showOldReplace && mod0.showNewReplace || !_showPreserved))
               {
                  isReplacement = true;
                  break;
               }
               adjustedIndex -= mod0.modCount;
            }
            else if(isActive(mod0))
            {
               if(adjustedIndex == mod0.index && mod0.isRemove)
               {
                  cm = mod0;
                  break;
               }
               if(adjustedIndex >= mod0.index)
               {
                  adjustedIndex -= mod0.modCount;
               }
            }
         }
         if(cm)
         {
            item = cm.item;
         }
         else
         {
            mcvCursor.internalCursor.seek(CursorBookmark.CURRENT,adjustedIndex - mcvCursor.internalIndex);
            item = mcvCursor.internalCursor.current;
            mcvCursor.internalIndex = adjustedIndex;
         }
         if(Boolean(mod0) && Boolean(adjustedIndex == mod0.index) && mod0.modificationType == CollectionModification.ADD)
         {
            itemWrapper = getUniqueItemWrapper(item,mod0,adjustedIndex);
         }
         else
         {
            itemWrapper = getUniqueItemWrapper(item,cm,adjustedIndex);
         }
         return itemWrapper;
      }
      
      public function contains(item:Object) : Boolean
      {
         return false;
      }
      
      private function integrateReplacedElements(event:CollectionEvent, startItemIndex:int, endItemIndex:int) : void
      {
         var oldItem:Object = null;
         var newItem:Object = null;
         var mod:CollectionModification = null;
         var newMod:CollectionModification = null;
         var i:int = 0;
         var j:int = 0;
         var inserted:Boolean = false;
         var insertCount:int = int(event.items.length);
         var offset:int = 0;
         while(i < deltas.length && j < insertCount)
         {
            oldItem = PropertyChangeEvent(event.items[j]).oldValue;
            newItem = PropertyChangeEvent(event.items[j]).newValue;
            mod = CollectionModification(deltas[i]);
            newMod = new CollectionModification(event.location + j,oldItem,CollectionModification.REPLACE);
            if(mod.isRemove && mod.index <= newMod.index || !mod.isRemove && mod.index < newMod.index)
            {
               i++;
            }
            else if((mod.modificationType == CollectionModification.ADD || mod.modificationType == CollectionModification.REPLACE) && mod.index == newMod.index)
            {
               i++;
               j++;
            }
            else
            {
               deltas.splice(i + j,0,newMod);
               replacedItems[getUniqueItemWrapper(oldItem,newMod,event.location + j)] = newMod;
               replacementItems[getUniqueItemWrapper(newItem,newMod,event.location + j,true)] = newMod;
               j++;
               i++;
            }
         }
         while(j < insertCount)
         {
            oldItem = PropertyChangeEvent(event.items[j]).oldValue;
            newItem = PropertyChangeEvent(event.items[j]).newValue;
            deltas.push(newMod = new CollectionModification(event.location + j,oldItem,CollectionModification.REPLACE));
            replacedItems[getUniqueItemWrapper(oldItem,newMod,event.location + j)] = newMod;
            replacementItems[getUniqueItemWrapper(newItem,newMod,event.location + j,true)] = newMod;
            j++;
         }
      }
      
      mx_internal function getBookmark(mcvCursor:ModifiedCollectionViewCursor) : ModifiedCollectionViewBookmark
      {
         var message:String = null;
         var index:int = mcvCursor.mx_internal::currentIndex;
         if(index < 0 || index > length)
         {
            message = resourceManager.getString("collections","invalidIndex",[index]);
            throw new CollectionViewError(message);
         }
         var value:Object = mcvCursor.current;
         return new ModifiedCollectionViewBookmark(value,this,0,index,mcvCursor.internalCursor.bookmark,mcvCursor.internalIndex);
      }
      
      public function get sort() : Sort
      {
         return null;
      }
      
      public function itemUpdated(item:Object, property:Object = null, oldValue:Object = null, newValue:Object = null) : void
      {
      }
      
      public function processCollectionEvent(event:CollectionEvent, startItemIndex:int, endItemIndex:int) : void
      {
         switch(event.kind)
         {
            case CollectionEventKind.ADD:
               integrateAddedElements(event,startItemIndex,endItemIndex);
               break;
            case CollectionEventKind.REMOVE:
               integrateRemovedElements(event,startItemIndex,endItemIndex);
               break;
            case CollectionEventKind.REPLACE:
               integrateReplacedElements(event,startItemIndex,endItemIndex);
         }
      }
      
      public function get showPreservedState() : Boolean
      {
         return _showPreserved;
      }
      
      public function getSemantics(itemWrapper:ItemWrapper) : String
      {
         if(removedItems[itemWrapper])
         {
            return ModifiedCollectionView.REMOVED;
         }
         if(addedItems[itemWrapper])
         {
            return ModifiedCollectionView.ADDED;
         }
         if(replacedItems[itemWrapper])
         {
            return ModifiedCollectionView.REPLACED;
         }
         if(replacementItems[itemWrapper])
         {
            return ModifiedCollectionView.REPLACEMENT;
         }
         return null;
      }
      
      private function getUniqueItemWrapper(item:Object, mod:CollectionModification, index:int, isReplacement:Boolean = false) : Object
      {
         if(Boolean(mod) && (mod.isRemove || mod.modificationType == CollectionModification.REPLACE && !isReplacement))
         {
            if(!itemWrappersByCollectionMod[mod])
            {
               itemWrappersByCollectionMod[mod] = new ItemWrapper(item);
            }
            return itemWrappersByCollectionMod[mod];
         }
         if(Boolean(mod) && mod.modificationType == CollectionModification.ADD)
         {
            index = mod.index;
         }
         if(!itemWrappersByIndex[index])
         {
            itemWrappersByIndex[index] = new ItemWrapper(item);
         }
         return itemWrappersByIndex[index];
      }
      
      public function enableAutoUpdate() : void
      {
      }
      
      public function set sort(value:Sort) : void
      {
      }
      
      public function removeItem(itemWrapper:ItemWrapper) : void
      {
         var mod:CollectionModification = removedItems[itemWrapper] as CollectionModification;
         if(!mod)
         {
            mod = replacedItems[itemWrapper] as CollectionModification;
            if(mod)
            {
               delete replacedItems[itemWrapper];
               mod.stopShowingReplacedValue();
               --deltaLength;
               if(mod.modCount == 0)
               {
                  removeModification(mod);
               }
            }
         }
         else if(removeModification(mod))
         {
            delete removedItems[itemWrapper];
            --deltaLength;
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
      }
      
      private function integrateRemovedElements(event:CollectionEvent, startItemIndex:int, endItemIndex:int) : void
      {
         var mod:CollectionModification = null;
         var newMod:CollectionModification = null;
         var i:* = 0;
         var j:int = 0;
         var ignoredElementCount:int = 0;
         var insertCount:int = int(event.items.length);
         var offset:* = 0;
         while(i < deltas.length && j < insertCount)
         {
            mod = CollectionModification(deltas[i]);
            newMod = new CollectionModification(event.location,event.items[j],CollectionModification.REMOVE);
            removedItems[getUniqueItemWrapper(event.items[j],newMod,0)] = newMod;
            if(offset != 0)
            {
               mod.index += offset;
            }
            if(mod.isRemove && mod.index <= newMod.index || !mod.isRemove && mod.index < newMod.index)
            {
               i++;
            }
            else
            {
               if(!mod.isRemove && mod.index == newMod.index)
               {
                  deltas.splice(i + j,1);
               }
               else
               {
                  deltas.splice(i + j,0,newMod);
                  i++;
               }
               offset--;
               j++;
            }
         }
         while(i < deltas.length)
         {
            mod = CollectionModification(deltas[i++]);
            mod.index += offset;
         }
         while(j < insertCount)
         {
            deltas.push(newMod = new CollectionModification(event.location,event.items[j],CollectionModification.REMOVE));
            removedItems[getUniqueItemWrapper(event.items[j],newMod,0)] = newMod;
            j++;
         }
         deltaLength += event.items.length - ignoredElementCount;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return false;
      }
      
      private function isActive(mod:CollectionModification) : Boolean
      {
         return _showPreserved;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
      }
      
      public function refresh() : Boolean
      {
         return false;
      }
      
      public function addItem(itemWrapper:ItemWrapper) : void
      {
         var mod:CollectionModification = addedItems[itemWrapper] as CollectionModification;
         if(!mod)
         {
            mod = replacementItems[itemWrapper] as CollectionModification;
            if(mod)
            {
               mod.startShowingReplacementValue();
               ++deltaLength;
               if(mod.modCount == 0)
               {
                  removeModification(mod);
               }
            }
         }
         else if(removeModification(mod))
         {
            ++deltaLength;
         }
      }
      
      public function get length() : int
      {
         return list.length + (_showPreserved ? deltaLength : 0);
      }
      
      public function set filterFunction(value:Function) : void
      {
      }
      
      public function set showPreservedState(show:Boolean) : void
      {
         _showPreserved = show;
      }
      
      public function createCursor() : IViewCursor
      {
         var internalCursor:IViewCursor = list.createCursor();
         var current:Object = internalCursor.current;
         return new ModifiedCollectionViewCursor(this,internalCursor,current);
      }
      
      private function integrateAddedElements(event:CollectionEvent, startItemIndex:int, endItemIndex:int) : void
      {
         var mod:CollectionModification = null;
         var newMod:CollectionModification = null;
         var i:* = 0;
         var j:int = 0;
         var inserted:Boolean = false;
         var insertCount:int = int(event.items.length);
         var offset:int = 0;
         while(i < deltas.length && j < insertCount)
         {
            mod = CollectionModification(deltas[i]);
            newMod = new CollectionModification(event.location + j,null,CollectionModification.ADD);
            addedItems[getUniqueItemWrapper(event.items[j],newMod,0)] = newMod;
            if(mod.isRemove && mod.index <= newMod.index || !mod.isRemove && mod.index < newMod.index)
            {
               i++;
            }
            else
            {
               deltas.splice(i + j,0,newMod);
               offset++;
               j++;
               i++;
            }
         }
         while(i < deltas.length)
         {
            mod = CollectionModification(deltas[i++]);
            mod.index += offset;
         }
         while(j < insertCount)
         {
            deltas.push(newMod = new CollectionModification(event.location + j,null,CollectionModification.ADD));
            addedItems[getUniqueItemWrapper(event.items[j],newMod,0)] = newMod;
            j++;
         }
         deltaLength -= event.items.length;
      }
      
      public function disableAutoUpdate() : void
      {
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return false;
      }
      
      public function get filterFunction() : Function
      {
         return null;
      }
   }
}

import flash.events.EventDispatcher;
import mx.collections.errors.CollectionViewError;
import mx.collections.errors.CursorError;
import mx.collections.errors.ItemPendingError;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.resources.IResourceManager;
import mx.resources.ResourceManager;

use namespace mx_internal;

class ModifiedCollectionViewBookmark extends CursorBookmark
{
   
   mx_internal var viewRevision:int;
   
   mx_internal var index:int;
   
   mx_internal var internalBookmark:CursorBookmark;
   
   mx_internal var view:ModifiedCollectionView;
   
   mx_internal var internalIndex:int;
   
   public function ModifiedCollectionViewBookmark(value:Object, view:ModifiedCollectionView, viewRevision:int, index:int, internalBookmark:CursorBookmark, internalIndex:int)
   {
      super(value);
      this.mx_internal::view = view;
      this.mx_internal::viewRevision = viewRevision;
      this.mx_internal::index = index;
      this.mx_internal::internalBookmark = internalBookmark;
      this.mx_internal::internalIndex = internalIndex;
   }
   
   override public function getViewIndex() : int
   {
      return mx_internal::view.mx_internal::getBookmarkIndex(this);
   }
}

class ModifiedCollectionViewCursor extends EventDispatcher implements IViewCursor
{
   
   private static const BEFORE_FIRST_INDEX:int = -1;
   
   private static const AFTER_LAST_INDEX:int = -2;
   
   private var _view:ModifiedCollectionView;
   
   private var resourceManager:IResourceManager;
   
   public var internalIndex:int;
   
   mx_internal var currentIndex:int;
   
   public var internalCursor:IViewCursor;
   
   private var invalid:Boolean;
   
   private var currentValue:Object;
   
   public function ModifiedCollectionViewCursor(view:ModifiedCollectionView, cursor:IViewCursor, current:Object)
   {
      resourceManager = ResourceManager.getInstance();
      super();
      _view = view;
      internalCursor = cursor;
      if(cursor.beforeFirst && !current)
      {
         internalIndex = BEFORE_FIRST_INDEX;
      }
      else if(cursor.afterLast && !current)
      {
         internalIndex = AFTER_LAST_INDEX;
      }
      else
      {
         internalIndex = 0;
      }
      mx_internal::currentIndex = view.length > 0 ? 0 : int(AFTER_LAST_INDEX);
      if(mx_internal::currentIndex == 0)
      {
         try
         {
            setCurrent(current,false);
         }
         catch(e:ItemPendingError)
         {
            mx_internal::currentIndex = BEFORE_FIRST_INDEX;
            setCurrent(null,false);
         }
      }
   }
   
   public function findAny(values:Object) : Boolean
   {
      return false;
   }
   
   public function findFirst(values:Object) : Boolean
   {
      return false;
   }
   
   public function seek(bookmark:CursorBookmark, offset:int = 0, prefetch:int = 0) : void
   {
      var newCurrent:Object;
      var newIndex:int;
      var message:String = null;
      var mcvBookmark:ModifiedCollectionViewBookmark = null;
      checkValid();
      if(view.length == 0)
      {
         mx_internal::currentIndex = AFTER_LAST_INDEX;
         setCurrent(null,false);
         return;
      }
      newIndex = int(mx_internal::currentIndex);
      if(bookmark == CursorBookmark.FIRST)
      {
         newIndex = 0;
         internalIndex = 0;
         internalCursor.seek(CursorBookmark.FIRST);
      }
      else if(bookmark == CursorBookmark.LAST)
      {
         newIndex = view.length - 1;
         internalCursor.seek(CursorBookmark.LAST);
      }
      else if(bookmark != CursorBookmark.CURRENT)
      {
         try
         {
            mcvBookmark = bookmark as ModifiedCollectionViewBookmark;
            newIndex = ModifiedCollectionView(view).getBookmarkIndex(bookmark);
            if(!mcvBookmark || newIndex < 0)
            {
               setCurrent(null);
               message = resourceManager.getString("collections","bookmarkInvalid");
               throw new CursorError(message);
            }
            internalIndex = mcvBookmark.internalIndex;
            internalCursor.seek(mcvBookmark.internalBookmark);
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
         mx_internal::currentIndex = AFTER_LAST_INDEX;
      }
      else if(newIndex < 0)
      {
         mx_internal::currentIndex = BEFORE_FIRST_INDEX;
      }
      else
      {
         newCurrent = ModifiedCollectionView(view).getWrappedItemUsingCursor(this,newIndex);
         mx_internal::currentIndex = newIndex;
      }
      setCurrent(newCurrent);
   }
   
   public function insert(item:Object) : void
   {
   }
   
   [Bindable("cursorUpdate")]
   public function get afterLast() : Boolean
   {
      checkValid();
      return mx_internal::currentIndex == AFTER_LAST_INDEX || view.length == 0;
   }
   
   public function remove() : Object
   {
      return null;
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
      var tempIndex:int = afterLast ? int(view.length - 1) : int(mx_internal::currentIndex - 1);
      if(tempIndex == -1)
      {
         tempIndex = int(BEFORE_FIRST_INDEX);
         setCurrent(null);
      }
      else
      {
         setCurrent(ModifiedCollectionView(view).getWrappedItemUsingCursor(this,tempIndex));
      }
      mx_internal::currentIndex = tempIndex;
      return !beforeFirst;
   }
   
   public function moveNext() : Boolean
   {
      if(afterLast)
      {
         return false;
      }
      var tempIndex:int = beforeFirst ? 0 : int(mx_internal::currentIndex + 1);
      if(tempIndex >= view.length)
      {
         tempIndex = int(AFTER_LAST_INDEX);
         setCurrent(null);
      }
      else
      {
         setCurrent(ModifiedCollectionView(view).getWrappedItemUsingCursor(this,tempIndex));
      }
      mx_internal::currentIndex = tempIndex;
      return !afterLast;
   }
   
   public function findLast(values:Object) : Boolean
   {
      return false;
   }
   
   [Bindable("cursorUpdate")]
   public function get beforeFirst() : Boolean
   {
      checkValid();
      return mx_internal::currentIndex == BEFORE_FIRST_INDEX || view.length == 0;
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
      return ModifiedCollectionView(view).getBookmark(this);
   }
   
   [Bindable("cursorUpdate")]
   public function get current() : Object
   {
      checkValid();
      return currentValue;
   }
   
   private function setCurrent(value:Object, dispatch:Boolean = true) : void
   {
      currentValue = value;
      if(dispatch)
      {
         dispatchEvent(new FlexEvent(FlexEvent.CURSOR_UPDATE));
      }
   }
}

class CollectionModification
{
   
   public static const REMOVE:String = "remove";
   
   public static const ADD:String = "add";
   
   public static const REPLACE:String = "replace";
   
   public var showOldReplace:Boolean = true;
   
   private var _modCount:int = 0;
   
   public var showNewReplace:Boolean = false;
   
   public var index:int;
   
   public var modificationType:String = null;
   
   public var item:Object = null;
   
   public function CollectionModification(index:int, item:Object, modificationType:String)
   {
      super();
      this.index = index;
      this.modificationType = modificationType;
      if(modificationType != CollectionModification.ADD)
      {
         this.item = item;
      }
      if(modificationType == CollectionModification.REMOVE)
      {
         _modCount = 1;
      }
      else if(modificationType == CollectionModification.ADD)
      {
         _modCount = -1;
      }
   }
   
   public function startShowingReplacementValue() : void
   {
      showNewReplace = true;
      ++_modCount;
   }
   
   public function get modCount() : int
   {
      return _modCount;
   }
   
   public function get isRemove() : Boolean
   {
      return modificationType == CollectionModification.REMOVE;
   }
   
   public function stopShowingReplacedValue() : void
   {
      showOldReplace = false;
      --_modCount;
   }
}

package mx.core
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.automation.IAutomationObject;
   import mx.collections.ArrayCollection;
   import mx.collections.CursorBookmark;
   import mx.collections.ICollectionView;
   import mx.collections.IList;
   import mx.collections.IViewCursor;
   import mx.collections.ItemResponder;
   import mx.collections.ListCollectionView;
   import mx.collections.XMLListCollection;
   import mx.collections.errors.ItemPendingError;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class Repeater extends UIComponent implements IRepeater
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _container:Container;
      
      private var _count:int = -1;
      
      private var descriptorIndex:int;
      
      public var childDescriptors:Array;
      
      mx_internal var createdComponents:Array;
      
      private var collection:ICollectionView;
      
      private var _currentIndex:int;
      
      private var created:Boolean = false;
      
      private var iterator:IViewCursor;
      
      private var _startingIndex:int = 0;
      
      private var _recycleChildren:Boolean = false;
      
      public function Repeater()
      {
         super();
      }
      
      public function get container() : IContainer
      {
         return _container as IContainer;
      }
      
      private function createComponentFromDescriptor(instanceIndex:int, descriptorIndex:int, recurse:Boolean) : IFlexDisplayObject
      {
         var descriptor:UIComponentDescriptor = childDescriptors[descriptorIndex];
         if(!descriptor.document)
         {
            descriptor.document = document;
         }
         descriptor.mx_internal::instanceIndices = instanceIndices ? instanceIndices : [];
         descriptor.mx_internal::instanceIndices.push(instanceIndex);
         descriptor.mx_internal::repeaters = repeaters;
         descriptor.mx_internal::repeaters.push(this);
         descriptor.mx_internal::repeaterIndices = repeaterIndices;
         descriptor.mx_internal::repeaterIndices.push(startingIndex + instanceIndex);
         descriptor.invalidateProperties();
         var child:IFlexDisplayObject = Container(container).createComponentFromDescriptor(descriptor,recurse);
         descriptor.mx_internal::instanceIndices = null;
         descriptor.mx_internal::repeaters = null;
         descriptor.mx_internal::repeaterIndices = null;
         dispatchEvent(new Event("nextRepeaterItem"));
         return child;
      }
      
      private function responderResultHandler(data:Object, info:Object) : void
      {
         execute();
      }
      
      private function removeAllChildRepeaters(container:Container) : void
      {
         var n:int = 0;
         var i:* = 0;
         var repeater:Repeater = null;
         if(container.mx_internal::childRepeaters)
         {
            n = int(container.mx_internal::childRepeaters.length);
            for(i = int(n - 1); i >= 0; i--)
            {
               repeater = container.mx_internal::childRepeaters[i];
               if(hasDescendant(repeater))
               {
                  removeRepeater(repeater);
               }
            }
         }
      }
      
      private function recycle() : void
      {
         var i:* = 0;
         var m:int = 0;
         var j:int = 0;
         var previousChildIndex:int = 0;
         var repeater:Repeater = null;
         var createdComponent:IRepeaterClient = null;
         var from:int = 0;
         var to:int = 0;
         var component:IRepeaterClient = null;
         var extra:IRepeaterClient = null;
         dispatchEvent(new FlexEvent(FlexEvent.REPEAT_START));
         var n:int = 0;
         var numComponents:int = 0;
         if(Boolean(collection) && Boolean(collection.length > 0) && collection.length - startingIndex > 0)
         {
            n = positiveMin(collection.length - startingIndex,count);
            previousChildIndex = 0;
            for(i = 0; i < n; i++)
            {
               _currentIndex = startingIndex + i;
               dispatchEvent(new FlexEvent(FlexEvent.REPEAT));
               if(childDescriptors)
               {
                  m = int(childDescriptors.length);
                  if(createdComponents.length >= (i + 1) * m)
                  {
                     for(j = 0; j < m; j++)
                     {
                        createdComponent = createdComponents[i * m + j];
                        if(createdComponent is Repeater)
                        {
                           repeater = Repeater(createdComponent);
                           resetRepeaterIndices(repeater,_currentIndex);
                           repeater.owner = this;
                           repeater.execute();
                        }
                        else
                        {
                           resetRepeaterIndices(createdComponent,_currentIndex);
                           if(createdComponent is IDeferredInstantiationUIComponent)
                           {
                              IDeferredInstantiationUIComponent(createdComponent).executeBindings(true);
                           }
                        }
                        numComponents++;
                     }
                  }
                  else
                  {
                     for(j = 0; j < m; j++)
                     {
                        from = int(container.numChildren);
                        to = getIndexForFirstChild() + numCreatedChildren;
                        component = IRepeaterClient(createComponentFromDescriptor(i,j,true));
                        createdComponents.push(component);
                        if(component is IUIComponent)
                        {
                           IUIComponent(component).owner = this;
                        }
                        if(component is IAutomationObject)
                        {
                           IAutomationObject(component).showInAutomationHierarchy = true;
                        }
                        if(component is Repeater)
                        {
                           repeater = Repeater(component);
                           repeater.reindexDescendants(from,to);
                        }
                        else
                        {
                           container.setChildIndex(DisplayObject(component),to);
                        }
                        numComponents++;
                     }
                  }
               }
            }
         }
         _currentIndex = -1;
         for(i = int(createdComponents.length - 1); i >= numComponents; i--)
         {
            extra = createdComponents.pop();
            if(extra is Repeater)
            {
               removeRepeater(Repeater(extra));
            }
            else if(extra)
            {
               if(extra is Container)
               {
                  removeAllChildren(Container(extra));
                  removeAllChildRepeaters(Container(extra));
               }
               if(container.contains(DisplayObject(extra)))
               {
                  container.removeChild(DisplayObject(extra));
               }
               if(extra is IDeferredInstantiationUIComponent)
               {
                  IDeferredInstantiationUIComponent(extra).deleteReferenceOnParentDocument(IFlexDisplayObject(parentDocument));
               }
            }
         }
         dispatchEvent(new FlexEvent(FlexEvent.REPEAT_END));
      }
      
      [Bindable("countChanged")]
      public function get count() : int
      {
         return _count;
      }
      
      private function reindexDescendants(from:int, to:int) : void
      {
         var child:IRepeaterClient = null;
         var n:int = container.numChildren - from;
         for(var i:int = 0; i < n; i++)
         {
            child = IRepeaterClient(container.getChildAt(from + i));
            container.setChildIndex(DisplayObject(child),to + i);
         }
      }
      
      private function adjustIndices(o:IRepeaterClient, adjustment:int) : void
      {
         var repeaters:Array = o.repeaters;
         if(repeaters == null)
         {
            return;
         }
         var n:int = int(repeaters.length);
         for(var i:int = 0; i < n; i++)
         {
            if(repeaters[i] == this)
            {
               o.repeaterIndices[i] += adjustment;
               o.instanceIndices[i] += adjustment;
               break;
            }
         }
      }
      
      private function positiveMin(x:int, y:int) : int
      {
         var result:int = 0;
         if(x >= 0)
         {
            if(y >= 0)
            {
               if(x < y)
               {
                  result = x;
               }
               else
               {
                  result = y;
               }
            }
            else
            {
               result = x;
            }
         }
         else
         {
            result = y;
         }
         return result;
      }
      
      mx_internal function getItemAt(index:int) : Object
      {
         var result:Object = null;
         if(iterator)
         {
            try
            {
               iterator.seek(CursorBookmark.FIRST,index);
               result = iterator.current;
            }
            catch(itemPendingError:ItemPendingError)
            {
               itemPendingError.addResponder(new ItemResponder(responderResultHandler,responderFaultHandler));
            }
         }
         return result;
      }
      
      public function set count(value:int) : void
      {
         _count = value;
         execute();
         dispatchEvent(new Event("countChanged"));
      }
      
      private function addItems(firstIndex:int, lastIndex:int) : void
      {
         var i:* = 0;
         var child:IRepeaterClient = null;
         var repeaterIndex:int = 0;
         var numItemsAdded:int = 0;
         var m:int = 0;
         var j:int = 0;
         var from:int = 0;
         var to:int = 0;
         var component:IFlexDisplayObject = null;
         var r:Repeater = null;
         if(startingIndex > lastIndex)
         {
            return;
         }
         var index:int = -1;
         var n:int = int(container.numChildren);
         if(lastIndex == collection.length - 1)
         {
            for(i = int(n - 1); i >= 0; i--)
            {
               child = IRepeaterClient(container.getChildAt(i));
               repeaterIndex = getRepeaterIndex(child);
               if(repeaterIndex != -1)
               {
                  index = i + 1;
                  break;
               }
            }
         }
         else
         {
            numItemsAdded = lastIndex - firstIndex + 1;
            for(i = 0; i < n; i++)
            {
               child = IRepeaterClient(container.getChildAt(i));
               repeaterIndex = getRepeaterIndex(child);
               if(repeaterIndex != -1)
               {
                  if(firstIndex <= repeaterIndex && repeaterIndex <= lastIndex && index == -1)
                  {
                     index = i;
                  }
                  if(repeaterIndex >= firstIndex)
                  {
                     adjustIndices(child,numItemsAdded);
                  }
               }
            }
         }
         if(count == -1)
         {
            n = lastIndex;
         }
         else
         {
            n = positiveMin(startingIndex + count - 1,lastIndex);
         }
         for(i = int(Math.max(startingIndex,firstIndex)); i <= n; i++)
         {
            m = int(childDescriptors.length);
            _currentIndex = i;
            dispatchEvent(new FlexEvent(FlexEvent.REPEAT));
            for(j = 0; j < m; j++)
            {
               from = int(container.numChildren);
               to = getIndexForFirstChild() + numCreatedChildren;
               component = createComponentFromDescriptor(i - startingIndex,j,true);
               createdComponents.push(component);
               if(component is IUIComponent)
               {
                  IUIComponent(component).owner = this;
               }
               if(component is IAutomationObject)
               {
                  IAutomationObject(component).showInAutomationHierarchy = true;
               }
               if(component is Repeater)
               {
                  r = Repeater(component);
                  r.owner = this;
                  r.reindexDescendants(from,to);
               }
               else
               {
                  container.setChildIndex(DisplayObject(component),to);
               }
            }
         }
         _currentIndex = -1;
      }
      
      private function get numCreatedChildren() : int
      {
         var component:IFlexDisplayObject = null;
         var repeater:Repeater = null;
         var result:int = 0;
         for(var i:int = 0; i < createdComponents.length; i++)
         {
            component = createdComponents[i];
            if(component is Repeater)
            {
               repeater = Repeater(component);
               result += repeater.numCreatedChildren;
            }
            else
            {
               result += 1;
            }
         }
         return result;
      }
      
      private function removeChildRepeater(container:Container, repeater:Repeater) : void
      {
         var i:int = 0;
         var n:int = int(container.mx_internal::childRepeaters.length);
         while(i < n)
         {
            if(container.repeaters[i] == repeater)
            {
               container.repeaters.splice(i,1);
               break;
            }
            i++;
         }
      }
      
      private function removeAllChildren(container:IContainer) : void
      {
         var child:IRepeaterClient = null;
         var n:int = int(container.numChildren);
         for(var i:* = int(n - 1); i >= 0; i--)
         {
            child = IRepeaterClient(container.getChildAt(i));
            if(hasDescendant(child))
            {
               if(child is Container)
               {
                  removeAllChildren(Container(child));
                  removeAllChildRepeaters(Container(child));
               }
               container.removeChildAt(i);
               if(child is IDeferredInstantiationUIComponent)
               {
                  IDeferredInstantiationUIComponent(child).deleteReferenceOnParentDocument(IFlexDisplayObject(parentDocument));
               }
            }
         }
      }
      
      [Bindable("nextRepeaterItem")]
      public function get currentItem() : Object
      {
         var result:Object = null;
         var message:String = null;
         if(_currentIndex == -1)
         {
            message = resourceManager.getString("core","notExecuting");
            throw new Error(message);
         }
         if(iterator)
         {
            try
            {
               iterator.seek(CursorBookmark.FIRST,_currentIndex);
               result = iterator.current;
            }
            catch(itemPendingError:ItemPendingError)
            {
               itemPendingError.addResponder(new ItemResponder(responderResultHandler,responderFaultHandler));
            }
         }
         return result;
      }
      
      private function resetRepeaterIndices(o:IRepeaterClient, index:int) : void
      {
         var fc:Container = null;
         var n:int = 0;
         var i:int = 0;
         var child:IRepeaterClient = null;
         var repeaterIndices:Array = o.repeaterIndices;
         repeaterIndices[repeaterIndices.length - 1] = index;
         o.repeaterIndices = repeaterIndices;
         if(o is Container)
         {
            fc = Container(o);
            n = int(fc.numChildren);
            for(i = 0; i < n; i++)
            {
               child = IRepeaterClient(fc.getChildAt(i));
               resetRepeaterIndices(child,index);
            }
         }
      }
      
      public function get recycleChildren() : Boolean
      {
         return _recycleChildren;
      }
      
      private function collectionChangedHandler(collectionEvent:CollectionEvent) : void
      {
         switch(collectionEvent.kind)
         {
            case CollectionEventKind.UPDATE:
               break;
            default:
               execute();
         }
      }
      
      private function getIndexForRepeater(target:Repeater, locationInfo:LocationInfo) : void
      {
         var component:IFlexDisplayObject = null;
         var repeater:Repeater = null;
         var i:int = 0;
         var length:int = int(createdComponents.length);
         while(i < length)
         {
            component = createdComponents[i];
            if(component == target)
            {
               locationInfo.found = true;
               break;
            }
            if(component is Repeater)
            {
               repeater = Repeater(component);
               repeater.getIndexForRepeater(target,locationInfo);
               if(locationInfo.found)
               {
                  break;
               }
            }
            else
            {
               locationInfo.index += 1;
            }
            i++;
         }
      }
      
      private function hasDescendant(o:Object) : Boolean
      {
         var repeaters:Array = o.repeaters;
         if(repeaters == null)
         {
            return false;
         }
         var n:int = int(repeaters.length);
         for(var i:int = 0; i < n; i++)
         {
            if(repeaters[i] == this)
            {
               return true;
            }
         }
         return false;
      }
      
      public function initializeRepeater(container:IContainer, recurse:Boolean) : void
      {
         _container = Container(container);
         descriptorIndex = container.numChildren;
         created = true;
         if(collection)
         {
            createComponentsFromDescriptors(recurse);
         }
         if(owner == null)
         {
            owner = Container(container);
         }
      }
      
      [Bindable("collectionChange")]
      public function get dataProvider() : Object
      {
         return collection;
      }
      
      private function removeItems(firstIndex:int, lastIndex:int) : void
      {
         var i:* = 0;
         var component:IRepeaterClient = null;
         var repeaterIndex:int = 0;
         var repeater:Repeater = null;
         if(Boolean(createdComponents) && createdComponents.length > 0)
         {
            for(i = int(createdComponents.length - 1); i >= 0; i--)
            {
               component = createdComponents[i];
               repeaterIndex = getRepeaterIndex(component);
               if(firstIndex <= repeaterIndex && (repeaterIndex < lastIndex || lastIndex == -1) || repeaterIndex >= dataProvider.length)
               {
                  if(component is Repeater)
                  {
                     repeater = Repeater(component);
                     removeRepeater(repeater);
                  }
                  else if(container.contains(DisplayObject(component)))
                  {
                     container.removeChild(DisplayObject(component));
                  }
                  if(component is IDeferredInstantiationUIComponent)
                  {
                     IDeferredInstantiationUIComponent(component).deleteReferenceOnParentDocument(IFlexDisplayObject(parentDocument));
                  }
                  createdComponents.splice(i,1);
               }
               else if(firstIndex <= repeaterIndex && lastIndex != -1 && repeaterIndex >= lastIndex)
               {
                  adjustIndices(component,lastIndex - firstIndex + 1);
                  if(component is IDeferredInstantiationUIComponent)
                  {
                     IDeferredInstantiationUIComponent(component).executeBindings(true);
                  }
               }
            }
         }
      }
      
      private function getIndexForFirstChild() : int
      {
         var component:IFlexDisplayObject = null;
         var repeater:Repeater = null;
         var locationInfo:LocationInfo = new LocationInfo();
         var i:int = 0;
         var cc:Array = Container(container).mx_internal::createdComponents;
         var length:int = cc ? int(cc.length) : 0;
         while(i < length)
         {
            component = Container(container).mx_internal::createdComponents[i];
            if(component == this)
            {
               locationInfo.found = true;
               break;
            }
            if(component is Repeater)
            {
               repeater = Repeater(component);
               repeater.getIndexForRepeater(this,locationInfo);
               if(locationInfo.found)
               {
                  break;
               }
            }
            else
            {
               locationInfo.index += 1;
            }
            i++;
         }
         return locationInfo.found ? locationInfo.index : int(container.numChildren);
      }
      
      private function createComponentsFromDescriptors(recurse:Boolean) : void
      {
         var n:int = 0;
         var i:int = 0;
         var m:int = 0;
         var j:int = 0;
         var component:IFlexDisplayObject = null;
         dispatchEvent(new FlexEvent(FlexEvent.REPEAT_START));
         createdComponents = [];
         if(Boolean(collection) && Boolean(collection.length > 0) && collection.length - startingIndex > 0)
         {
            n = positiveMin(collection.length - startingIndex,count);
            for(i = 0; i < n; i++)
            {
               _currentIndex = startingIndex + i;
               dispatchEvent(new FlexEvent(FlexEvent.REPEAT));
               if(Boolean(childDescriptors) && childDescriptors.length > 0)
               {
                  m = int(childDescriptors.length);
                  for(j = 0; j < m; j++)
                  {
                     component = createComponentFromDescriptor(i,j,recurse);
                     createdComponents.push(component);
                     if(component is IUIComponent)
                     {
                        IUIComponent(component).owner = this;
                     }
                     if(component is IAutomationObject)
                     {
                        IAutomationObject(component).showInAutomationHierarchy = true;
                     }
                  }
               }
            }
            _currentIndex = -1;
         }
         dispatchEvent(new FlexEvent(FlexEvent.REPEAT_END));
      }
      
      private function sort() : void
      {
         execute();
      }
      
      private function removeRepeater(repeater:Repeater) : void
      {
         repeater.removeAllChildren(repeater.container);
         repeater.removeAllChildRepeaters(Container(repeater.container));
         removeChildRepeater(Container(container),repeater);
         repeater.deleteReferenceOnParentDocument(IFlexDisplayObject(parentDocument));
         repeater.dataProvider = null;
      }
      
      public function executeChildBindings() : void
      {
         var child:IRepeaterClient = null;
         var n:int = int(container.numChildren);
         for(var i:int = 0; i < n; i++)
         {
            child = IRepeaterClient(container.getChildAt(i));
            if(hasDescendant(child) && child is IDeferredInstantiationUIComponent)
            {
               IDeferredInstantiationUIComponent(child).executeBindings();
            }
         }
      }
      
      [Bindable("nextRepeaterItem")]
      public function get currentIndex() : int
      {
         var message:String = null;
         if(_currentIndex == -1)
         {
            message = resourceManager.getString("core","notExecuting");
            throw new Error(message);
         }
         return _currentIndex;
      }
      
      public function set startingIndex(value:int) : void
      {
         _startingIndex = value;
         execute();
         dispatchEvent(new Event("startingIndexChanged"));
      }
      
      private function responderFaultHandler(data:Object, info:Object) : void
      {
      }
      
      override public function toString() : String
      {
         return Object(container).toString() + "." + super.toString();
      }
      
      private function recreate() : void
      {
         removeAllChildren(container);
         removeAllChildRepeaters(Container(container));
         var from:int = int(container.numChildren);
         var to:int = getIndexForFirstChild();
         createComponentsFromDescriptors(true);
         if(from != to)
         {
            reindexDescendants(from,to);
         }
      }
      
      [Bindable("startingIndexChanged")]
      public function get startingIndex() : int
      {
         return _startingIndex;
      }
      
      private function getRepeaterIndex(o:IRepeaterClient) : int
      {
         var repeaters:Array = o.repeaters;
         if(repeaters == null)
         {
            return -1;
         }
         var n:int = int(repeaters.length);
         for(var i:int = 0; i < n; i++)
         {
            if(repeaters[i] == this)
            {
               return o.repeaterIndices[i];
            }
         }
         return -1;
      }
      
      private function execute() : void
      {
         if(!created)
         {
            return;
         }
         if(Boolean(recycleChildren) && Boolean(createdComponents) && createdComponents.length > 0)
         {
            recycle();
         }
         else
         {
            recreate();
         }
      }
      
      override public function set showInAutomationHierarchy(value:Boolean) : void
      {
      }
      
      public function set recycleChildren(value:Boolean) : void
      {
         _recycleChildren = value;
      }
      
      public function set dataProvider(value:Object) : void
      {
         var xl:XMLList = null;
         var tmp:Array = null;
         var hadValue:Boolean = false;
         if(collection)
         {
            hadValue = true;
            collection.removeEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangedHandler);
            collection = null;
            iterator = null;
         }
         if(value is Array)
         {
            collection = new ArrayCollection(value as Array);
         }
         else if(value is ICollectionView)
         {
            collection = ICollectionView(value);
         }
         else if(value is IList)
         {
            collection = new ListCollectionView(IList(value));
         }
         else if(value is XMLList)
         {
            collection = new XMLListCollection(value as XMLList);
         }
         else if(value is XML)
         {
            xl = new XMLList();
            xl += value;
            collection = new XMLListCollection(xl);
         }
         else if(value != null)
         {
            tmp = [value];
            collection = new ArrayCollection(tmp);
         }
         if(collection)
         {
            collection.addEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangedHandler,false,0,true);
            iterator = collection.createCursor();
         }
         dispatchEvent(new Event("collectionChange"));
         if(Boolean(collection) || hadValue)
         {
            execute();
         }
      }
      
      private function updateItems(firstIndex:int, lastIndex:int) : void
      {
         var n:int = 0;
         var i:int = 0;
         var child:IRepeaterClient = null;
         var repeaterIndex:int = 0;
         if(recycleChildren)
         {
            n = int(container.numChildren);
            for(i = 0; i < n; i++)
            {
               child = IRepeaterClient(container.getChildAt(i));
               repeaterIndex = getRepeaterIndex(child);
               if(repeaterIndex != -1 && firstIndex <= repeaterIndex && repeaterIndex <= lastIndex)
               {
                  if(child is IDeferredInstantiationUIComponent)
                  {
                     IDeferredInstantiationUIComponent(child).executeBindings(true);
                  }
               }
            }
         }
         else
         {
            removeItems(firstIndex,lastIndex);
            addItems(firstIndex,lastIndex);
         }
      }
   }
}

class LocationInfo
{
   
   public var index:int = 0;
   
   public var found:Boolean = false;
   
   public function LocationInfo()
   {
      super();
   }
}

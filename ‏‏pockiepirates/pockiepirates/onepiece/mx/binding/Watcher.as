package mx.binding
{
   import mx.collections.errors.ItemPendingError;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Watcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      protected var children:Array;
      
      public var value:Object;
      
      protected var cloneIndex:int;
      
      protected var listeners:Array;
      
      public function Watcher(listeners:Array = null)
      {
         super();
         this.listeners = listeners;
      }
      
      public function removeChildren(startingIndex:int) : void
      {
         children.splice(startingIndex);
      }
      
      public function updateChildren() : void
      {
         var n:int = 0;
         var i:int = 0;
         if(children)
         {
            n = int(children.length);
            for(i = 0; i < n; i++)
            {
               children[i].updateParent(this);
            }
         }
      }
      
      protected function shallowClone() : Watcher
      {
         return new Watcher();
      }
      
      protected function wrapUpdate(wrappedFunction:Function) : void
      {
         try
         {
            wrappedFunction.apply(this);
         }
         catch(itemPendingError:ItemPendingError)
         {
            value = null;
         }
         catch(rangeError:RangeError)
         {
            value = null;
         }
         catch(error:Error)
         {
            if(error.errorID != 1006 && error.errorID != 1009 && error.errorID != 1010 && error.errorID != 1055 && error.errorID != 1069)
            {
               throw error;
            }
         }
      }
      
      private function valueChanged(oldval:Object) : Boolean
      {
         if(oldval == null && value == null)
         {
            return false;
         }
         var valType:String = typeof value;
         if(valType == "string")
         {
            if(oldval == null && value == "")
            {
               return false;
            }
            return oldval != value;
         }
         if(valType == "number")
         {
            if(oldval == null && value == 0)
            {
               return false;
            }
            return oldval != value;
         }
         if(valType == "boolean")
         {
            if(oldval == null && value == false)
            {
               return false;
            }
            return oldval != value;
         }
         return true;
      }
      
      public function notifyListeners(commitEvent:Boolean) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(listeners)
         {
            n = int(listeners.length);
            for(i = 0; i < n; i++)
            {
               listeners[i].watcherFired(commitEvent,cloneIndex);
            }
         }
      }
      
      protected function deepClone(index:int) : Watcher
      {
         var n:int = 0;
         var i:int = 0;
         var clonedChild:Watcher = null;
         var w:Watcher = shallowClone();
         w.cloneIndex = index;
         if(listeners)
         {
            w.listeners = listeners.concat();
         }
         if(children)
         {
            n = int(children.length);
            for(i = 0; i < n; i++)
            {
               clonedChild = children[i].deepClone(index);
               w.addChild(clonedChild);
            }
         }
         return w;
      }
      
      public function updateParent(parent:Object) : void
      {
      }
      
      public function addChild(child:Watcher) : void
      {
         if(!children)
         {
            children = [child];
         }
         else
         {
            children.push(child);
         }
         child.updateParent(this);
      }
   }
}


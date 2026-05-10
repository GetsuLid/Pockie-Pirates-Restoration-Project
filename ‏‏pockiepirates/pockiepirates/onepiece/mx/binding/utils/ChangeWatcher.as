package mx.binding.utils
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import mx.core.EventPriority;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.utils.DescribeTypeCache;
   
   use namespace mx_internal;
   
   public class ChangeWatcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var commitOnly:Boolean;
      
      private var host:Object;
      
      private var handler:Function;
      
      private var getter:Function;
      
      private var name:String;
      
      private var events:Object;
      
      private var next:ChangeWatcher;
      
      public function ChangeWatcher(access:Object, handler:Function, commitOnly:Boolean = false, next:ChangeWatcher = null)
      {
         super();
         host = null;
         name = access is String ? access as String : access.name;
         getter = access is String ? null : access.getter;
         this.handler = handler;
         this.commitOnly = commitOnly;
         this.next = next;
         events = {};
      }
      
      private static function isEmpty(obj:Object) : Boolean
      {
         var p:String = null;
         var _loc3_:int = 0;
         var _loc4_:* = obj;
         for(p in _loc4_)
         {
            return false;
         }
         return true;
      }
      
      public static function getEvents(host:Object, name:String, commitOnly:Boolean = false) : Object
      {
         var allEvents:Object = null;
         var commitOnlyEvents:Object = null;
         var ename:String = null;
         if(host is IEventDispatcher)
         {
            allEvents = DescribeTypeCache.describeType(host).bindabilityInfo.getChangeEvents(name);
            if(commitOnly)
            {
               commitOnlyEvents = {};
               for(ename in allEvents)
               {
                  if(allEvents[ename])
                  {
                     commitOnlyEvents[ename] = true;
                  }
               }
               return commitOnlyEvents;
            }
            return allEvents;
         }
         return {};
      }
      
      public static function watch(host:Object, chain:Object, handler:Function, commitOnly:Boolean = false) : ChangeWatcher
      {
         var w:ChangeWatcher = null;
         if(!(chain is Array))
         {
            chain = [chain];
         }
         if(chain.length > 0)
         {
            w = new ChangeWatcher(chain[0],handler,commitOnly,watch(null,chain.slice(1),handler,commitOnly));
            w.reset(host);
            return w;
         }
         return null;
      }
      
      public static function canWatch(host:Object, name:String, commitOnly:Boolean = false) : Boolean
      {
         return !isEmpty(getEvents(host,name,commitOnly));
      }
      
      private function getHostPropertyValue() : Object
      {
         return host == null ? null : (getter != null ? getter(host) : host[name]);
      }
      
      public function isWatching() : Boolean
      {
         return !isEmpty(events) && (next == null || next.isWatching());
      }
      
      public function unwatch() : void
      {
         reset(null);
      }
      
      private function wrapHandler(event:Event) : void
      {
         if(next)
         {
            next.reset(getHostPropertyValue());
         }
         if(event is PropertyChangeEvent)
         {
            if((event as PropertyChangeEvent).property == name)
            {
               handler(event as PropertyChangeEvent);
            }
         }
         else
         {
            handler(event);
         }
      }
      
      public function setHandler(handler:Function) : void
      {
         this.handler = handler;
         if(next)
         {
            next.setHandler(handler);
         }
      }
      
      public function getValue() : Object
      {
         return host == null ? null : (next == null ? getHostPropertyValue() : next.getValue());
      }
      
      public function reset(newHost:Object) : void
      {
         var p:String = null;
         if(host != null)
         {
            for(p in events)
            {
               host.removeEventListener(p,wrapHandler);
            }
            events = {};
         }
         host = newHost;
         if(host != null)
         {
            events = getEvents(host,name,commitOnly);
            for(p in events)
            {
               host.addEventListener(p,wrapHandler,false,EventPriority.BINDING,false);
            }
         }
         if(next)
         {
            next.reset(getHostPropertyValue());
         }
      }
   }
}


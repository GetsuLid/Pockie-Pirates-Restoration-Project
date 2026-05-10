package mx.rpc
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import mx.core.mx_internal;
   import mx.messaging.ChannelSet;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.rpc.events.AbstractEvent;
   
   use namespace mx_internal;
   use namespace flash_proxy;
   
   [Bindable(event="operationsChange")]
   public dynamic class AbstractService extends Proxy implements IEventDispatcher
   {
      
      mx_internal var asyncRequest:AsyncRequest;
      
      mx_internal var _operations:Object;
      
      private var nextNameArray:Array;
      
      private var eventDispatcher:EventDispatcher;
      
      mx_internal var _availableChannelIds:Array;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function AbstractService(destination:String = null)
      {
         super();
         eventDispatcher = new EventDispatcher(this);
         mx_internal::asyncRequest = new AsyncRequest();
         if(destination)
         {
            this.destination = destination;
         }
         mx_internal::_operations = {};
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return eventDispatcher.dispatchEvent(event);
      }
      
      public function setRemoteCredentials(remoteUsername:String, remotePassword:String, charset:String = null) : void
      {
         asyncRequest.setRemoteCredentials(remoteUsername,remotePassword,charset);
      }
      
      public function set channelSet(value:ChannelSet) : void
      {
         if(channelSet != value)
         {
            asyncRequest.channelSet = value;
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         eventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         eventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function get destination() : String
      {
         return asyncRequest.destination;
      }
      
      mx_internal function hasTokenResponders(event:Event) : Boolean
      {
         var rpcEvent:AbstractEvent = null;
         if(event is AbstractEvent)
         {
            rpcEvent = event as AbstractEvent;
            if(rpcEvent.token != null && rpcEvent.token.hasResponder())
            {
               return true;
            }
         }
         return false;
      }
      
      public function get requestTimeout() : int
      {
         return asyncRequest.requestTimeout;
      }
      
      override flash_proxy function callProperty(name:*, ... args) : *
      {
         return getOperation(getLocalName(name)).send.apply(null,args);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return eventDispatcher.willTrigger(type);
      }
      
      override flash_proxy function setProperty(name:*, value:*) : void
      {
         var message:String = resourceManager.getString("rpc","operationsNotAllowedInService",[getLocalName(name)]);
         throw new Error(message);
      }
      
      public function set operations(ops:Object) : void
      {
         var op:AbstractOperation = null;
         var i:String = null;
         for(i in ops)
         {
            op = AbstractOperation(ops[i]);
            op.setService(this);
            if(!op.name)
            {
               op.name = i;
            }
            op.asyncRequest = asyncRequest;
         }
         _operations = ops;
      }
      
      public function logout() : void
      {
         asyncRequest.logout();
      }
      
      override flash_proxy function getProperty(name:*) : *
      {
         return getOperation(getLocalName(name));
      }
      
      public function set destination(name:String) : void
      {
         asyncRequest.destination = name;
      }
      
      override flash_proxy function nextName(index:int) : String
      {
         return nextNameArray[index - 1];
      }
      
      public function get channelSet() : ChannelSet
      {
         return asyncRequest.channelSet;
      }
      
      override flash_proxy function nextValue(index:int) : *
      {
         return _operations[nextNameArray[index - 1]];
      }
      
      override flash_proxy function nextNameIndex(index:int) : int
      {
         var op:String = null;
         if(index == 0)
         {
            nextNameArray = [];
            for(op in _operations)
            {
               nextNameArray.push(op);
            }
         }
         return index < nextNameArray.length ? int(index + 1) : 0;
      }
      
      public function set requestTimeout(value:int) : void
      {
         if(requestTimeout != value)
         {
            asyncRequest.requestTimeout = value;
         }
      }
      
      mx_internal function getLocalName(name:Object) : String
      {
         if(name is QName)
         {
            return QName(name).localName;
         }
         return String(name);
      }
      
      public function valueOf() : Object
      {
         return this;
      }
      
      public function disconnect() : void
      {
         asyncRequest.disconnect();
      }
      
      public function get operations() : Object
      {
         return _operations;
      }
      
      public function getOperation(name:String) : AbstractOperation
      {
         var o:Object = _operations[name];
         return o is AbstractOperation ? AbstractOperation(o) : null;
      }
      
      public function setCredentials(username:String, password:String, charset:String = null) : void
      {
         asyncRequest.setCredentials(username,password,charset);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return eventDispatcher.hasEventListener(type);
      }
   }
}


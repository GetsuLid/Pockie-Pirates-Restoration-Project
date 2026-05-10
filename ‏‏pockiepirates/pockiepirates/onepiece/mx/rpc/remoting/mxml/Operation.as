package mx.rpc.remoting.mxml
{
   import mx.core.mx_internal;
   import mx.managers.CursorManager;
   import mx.messaging.events.MessageEvent;
   import mx.messaging.messages.AsyncMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.rpc.AbstractService;
   import mx.rpc.AsyncDispatcher;
   import mx.rpc.AsyncToken;
   import mx.rpc.Fault;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.mxml.Concurrency;
   import mx.rpc.mxml.IMXMLSupport;
   import mx.rpc.remoting.Operation;
   import mx.rpc.remoting.RemoteObject;
   
   use namespace mx_internal;
   
   public class Operation extends mx.rpc.remoting.Operation implements IMXMLSupport
   {
      
      private var _concurrency:String;
      
      private var remoteObject:mx.rpc.remoting.mxml.RemoteObject;
      
      private var _showBusyCursor:Boolean;
      
      private var _concurrencySet:Boolean;
      
      private var _showBusyCursorSet:Boolean;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function Operation(remoteObject:mx.rpc.remoting.RemoteObject = null, name:String = null)
      {
         super(remoteObject,name);
         this.remoteObject = RemoteObject(remoteObject);
      }
      
      override mx_internal function getNetmonId() : String
      {
         return remoteObject.id;
      }
      
      override mx_internal function setService(ro:AbstractService) : void
      {
         super.mx_internal::setService(ro);
         remoteObject = RemoteObject(ro);
      }
      
      override public function send(... args) : AsyncToken
      {
         var token:AsyncToken = null;
         var message:String = null;
         var fault:Fault = null;
         var faultEvent:FaultEvent = null;
         if(Concurrency.SINGLE == concurrency && activeCalls.hasActiveCalls())
         {
            token = new AsyncToken(null);
            message = resourceManager.getString("rpc","pendingCallExists");
            fault = new Fault("ConcurrencyError",message);
            faultEvent = FaultEvent.createEvent(fault,token);
            new AsyncDispatcher(dispatchRpcEvent,[faultEvent],10);
            return token;
         }
         if(asyncRequest.channelSet == null && remoteObject.endpoint != null)
         {
            remoteObject.initEndpoint();
         }
         return super.send.apply(null,args);
      }
      
      public function get concurrency() : String
      {
         if(_concurrencySet)
         {
            return _concurrency;
         }
         return remoteObject.concurrency;
      }
      
      public function get showBusyCursor() : Boolean
      {
         if(_showBusyCursorSet)
         {
            return _showBusyCursor;
         }
         return remoteObject.showBusyCursor;
      }
      
      public function set showBusyCursor(sbc:Boolean) : void
      {
         _showBusyCursor = sbc;
         _showBusyCursorSet = true;
      }
      
      public function set concurrency(c:String) : void
      {
         _concurrency = c;
         _concurrencySet = true;
      }
      
      override mx_internal function preHandle(event:MessageEvent) : AsyncToken
      {
         if(showBusyCursor)
         {
            CursorManager.removeBusyCursor();
         }
         var wasLastCall:Boolean = activeCalls.wasLastCall(AsyncMessage(event.message).correlationId);
         var token:AsyncToken = super.mx_internal::preHandle(event);
         if(Concurrency.LAST == concurrency && !wasLastCall)
         {
            return null;
         }
         return token;
      }
      
      override mx_internal function invoke(message:IMessage, token:AsyncToken = null) : AsyncToken
      {
         if(showBusyCursor)
         {
            CursorManager.setBusyCursor();
         }
         return super.mx_internal::invoke(message,token);
      }
      
      override public function cancel(id:String = null) : AsyncToken
      {
         if(showBusyCursor)
         {
            CursorManager.removeBusyCursor();
         }
         return super.cancel(id);
      }
   }
}


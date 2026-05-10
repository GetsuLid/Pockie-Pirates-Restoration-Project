package mx.rpc
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getQualifiedClassName;
   import mx.core.mx_internal;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.messaging.errors.MessagingError;
   import mx.messaging.events.MessageEvent;
   import mx.messaging.events.MessageFaultEvent;
   import mx.messaging.messages.AsyncMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.rpc.events.AbstractEvent;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.events.InvokeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class AbstractInvoker extends EventDispatcher
   {
      
      mx_internal static const BINDING_RESULT:String = "resultForBinding";
      
      mx_internal var _responseHeaders:Array;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var _asyncRequest:AsyncRequest;
      
      private var _log:ILogger;
      
      mx_internal var activeCalls:ActiveCalls;
      
      mx_internal var _result:Object;
      
      mx_internal var _makeObjectsBindable:Boolean;
      
      public function AbstractInvoker()
      {
         super();
         _log = Log.getLogger("mx.rpc.AbstractInvoker");
         mx_internal::activeCalls = new ActiveCalls();
      }
      
      mx_internal function getNetmonId() : String
      {
         return null;
      }
      
      public function cancel(id:String = null) : AsyncToken
      {
         if(id != null)
         {
            return activeCalls.removeCall(id);
         }
         return activeCalls.cancelLast();
      }
      
      mx_internal function processFault(message:IMessage, token:AsyncToken) : Boolean
      {
         return true;
      }
      
      mx_internal function faultHandler(event:MessageFaultEvent) : void
      {
         var fault:Fault = null;
         var faultEvent:FaultEvent = null;
         var msgEvent:MessageEvent = MessageEvent.createEvent(MessageEvent.MESSAGE,event.message);
         var token:AsyncToken = preHandle(msgEvent);
         if(token == null && AsyncMessage(event.message).correlationId != null && AsyncMessage(event.message).correlationId != "" && event.faultCode != "Client.Authentication")
         {
            return;
         }
         if(processFault(event.message,token))
         {
            fault = new Fault(event.faultCode,event.faultString,event.faultDetail);
            fault.content = event.message.body;
            fault.rootCause = event.rootCause;
            faultEvent = FaultEvent.createEvent(fault,token,event.message);
            faultEvent.headers = _responseHeaders;
            dispatchRpcEvent(faultEvent);
         }
      }
      
      public function clearResult(fireBindingEvent:Boolean = true) : void
      {
         _result = null;
         if(fireBindingEvent)
         {
            dispatchEvent(new Event(BINDING_RESULT));
         }
      }
      
      mx_internal function get asyncRequest() : AsyncRequest
      {
         if(_asyncRequest == null)
         {
            _asyncRequest = new AsyncRequest();
         }
         return _asyncRequest;
      }
      
      mx_internal function dispatchRpcEvent(event:AbstractEvent) : void
      {
         event.callTokenResponders();
         if(!event.isDefaultPrevented())
         {
            dispatchEvent(event);
         }
      }
      
      [Bindable("resultForBinding")]
      public function get lastResult() : Object
      {
         return _result;
      }
      
      mx_internal function set asyncRequest(req:AsyncRequest) : void
      {
         _asyncRequest = req;
      }
      
      mx_internal function preHandle(event:MessageEvent) : AsyncToken
      {
         return activeCalls.removeCall(AsyncMessage(event.message).correlationId);
      }
      
      mx_internal function processResult(message:IMessage, token:AsyncToken) : Boolean
      {
         var body:Object = message.body;
         if(makeObjectsBindable && body != null && getQualifiedClassName(body) == "Object")
         {
            _result = new ObjectProxy(body);
         }
         else
         {
            _result = body;
         }
         return true;
      }
      
      mx_internal function resultHandler(event:MessageEvent) : void
      {
         var resultEvent:ResultEvent = null;
         var token:AsyncToken = preHandle(event);
         if(token == null)
         {
            return;
         }
         if(processResult(event.message,token))
         {
            dispatchEvent(new Event(BINDING_RESULT));
            resultEvent = ResultEvent.createEvent(_result,token,event.message);
            resultEvent.headers = _responseHeaders;
            dispatchRpcEvent(resultEvent);
         }
      }
      
      public function set makeObjectsBindable(b:Boolean) : void
      {
         _makeObjectsBindable = b;
      }
      
      public function get makeObjectsBindable() : Boolean
      {
         return _makeObjectsBindable;
      }
      
      mx_internal function invoke(message:IMessage, token:AsyncToken = null) : AsyncToken
      {
         var fault:Fault = null;
         var errorText:String = null;
         if(token == null)
         {
            token = new AsyncToken(message);
         }
         else
         {
            token.setMessage(message);
         }
         activeCalls.addCall(message.messageId,token);
         try
         {
            asyncRequest.invoke(message,new Responder(resultHandler,faultHandler));
            dispatchRpcEvent(InvokeEvent.createEvent(token,message));
         }
         catch(e:MessagingError)
         {
            _log.warn(e.toString());
            errorText = resourceManager.getString("rpc","cannotConnectToDestination",[asyncRequest.destination]);
            fault = new Fault("InvokeFailed",e.toString(),errorText);
            new AsyncDispatcher(dispatchRpcEvent,[FaultEvent.createEvent(fault,token,message)],10);
         }
         catch(e2:Error)
         {
            _log.warn(e2.toString());
            fault = new Fault("InvokeFailed",e2.message);
            new AsyncDispatcher(dispatchRpcEvent,[FaultEvent.createEvent(fault,token,message)],10);
         }
         return token;
      }
   }
}


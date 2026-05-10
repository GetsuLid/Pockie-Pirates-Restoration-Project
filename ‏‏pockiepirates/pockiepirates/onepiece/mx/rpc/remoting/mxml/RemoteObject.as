package mx.rpc.remoting.mxml
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   import mx.messaging.Channel;
   import mx.messaging.ChannelSet;
   import mx.messaging.channels.AMFChannel;
   import mx.messaging.channels.SecureAMFChannel;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.rpc.AbstractOperation;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.mxml.Concurrency;
   import mx.rpc.mxml.IMXMLSupport;
   import mx.rpc.remoting.RemoteObject;
   
   use namespace mx_internal;
   
   public dynamic class RemoteObject extends mx.rpc.remoting.RemoteObject implements IMXMLSupport, IMXMLObject
   {
      
      mx_internal var document:Object;
      
      private var _concurrency:String;
      
      mx_internal var id:String;
      
      private var _showBusyCursor:Boolean;
      
      private var _endpoint:String;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function RemoteObject(destination:String = null)
      {
         super(destination);
         concurrency = Concurrency.MULTIPLE;
         showBusyCursor = false;
      }
      
      override public function dispatchEvent(event:Event) : Boolean
      {
         var reason:String = null;
         var evt:ErrorEvent = null;
         var message:String = null;
         if(hasEventListener(event.type))
         {
            return super.dispatchEvent(event);
         }
         if(event is FaultEvent && !hasTokenResponders(event) || event is ErrorEvent)
         {
            reason = event is FaultEvent ? FaultEvent(event).fault.faultString : ErrorEvent(event).text;
            if(Boolean(document) && Boolean(document.willTrigger(ErrorEvent.ERROR)))
            {
               evt = new ErrorEvent(ErrorEvent.ERROR,true,true);
               evt.text = reason;
               return document.dispatchEvent(evt);
            }
            if(event is FaultEvent)
            {
               throw FaultEvent(event).fault;
            }
            message = resourceManager.getString("rpc","noListenerForEvent",[reason]);
            throw new Error(message);
         }
         return false;
      }
      
      mx_internal function initEndpoint() : void
      {
         var chan:Channel = null;
         if(endpoint != null)
         {
            if(endpoint.indexOf("https") == 0)
            {
               chan = new SecureAMFChannel(null,endpoint);
            }
            else
            {
               chan = new AMFChannel(null,endpoint);
            }
            channelSet = new ChannelSet();
            channelSet.addChannel(chan);
         }
      }
      
      public function get endpoint() : String
      {
         return _endpoint;
      }
      
      public function get concurrency() : String
      {
         return _concurrency;
      }
      
      public function set showBusyCursor(sbc:Boolean) : void
      {
         _showBusyCursor = sbc;
      }
      
      public function initialized(document:Object, id:String) : void
      {
         this.document = document;
         this.id = id;
      }
      
      public function get showBusyCursor() : Boolean
      {
         return _showBusyCursor;
      }
      
      public function set concurrency(c:String) : void
      {
         _concurrency = c;
      }
      
      public function set endpoint(url:String) : void
      {
         if(_endpoint != url || url == null)
         {
            _endpoint = url;
            channelSet = null;
         }
      }
      
      override public function getOperation(name:String) : AbstractOperation
      {
         var o:Object = _operations[name];
         var op:AbstractOperation = o is AbstractOperation ? AbstractOperation(o) : null;
         if(op == null)
         {
            op = new Operation(this,name);
            _operations[name] = op;
            op.asyncRequest = asyncRequest;
         }
         return op;
      }
   }
}


package mx.rpc.remoting
{
   import mx.core.mx_internal;
   import mx.rpc.AbstractOperation;
   import mx.rpc.AbstractService;
   
   use namespace mx_internal;
   
   public dynamic class RemoteObject extends AbstractService
   {
      
      private var _source:String;
      
      private var _makeObjectsBindable:Boolean;
      
      public function RemoteObject(destination:String = null)
      {
         super(destination);
         makeObjectsBindable = true;
      }
      
      public function set makeObjectsBindable(b:Boolean) : void
      {
         _makeObjectsBindable = b;
      }
      
      public function set source(s:String) : void
      {
         _source = s;
      }
      
      override public function setRemoteCredentials(remoteUsername:String, remotePassword:String, charset:String = null) : void
      {
         super.setRemoteCredentials(remoteUsername,remotePassword,charset);
      }
      
      override public function getOperation(name:String) : AbstractOperation
      {
         var op:AbstractOperation = super.getOperation(name);
         if(op == null)
         {
            op = new Operation(this,name);
            _operations[name] = op;
            op.asyncRequest = asyncRequest;
         }
         return op;
      }
      
      public function toString() : String
      {
         var s:String = "[RemoteObject ";
         s += " destination=\"" + destination + "\"";
         if(source)
         {
            s += " source=\"" + source + "\"";
         }
         return s + (" channelSet=\"" + channelSet + "\"]");
      }
      
      public function get source() : String
      {
         return _source;
      }
      
      public function get makeObjectsBindable() : Boolean
      {
         return _makeObjectsBindable;
      }
   }
}


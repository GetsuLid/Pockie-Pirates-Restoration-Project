package mx.rpc.remoting
{
   import mx.core.mx_internal;
   import mx.messaging.messages.RemotingMessage;
   import mx.rpc.AbstractOperation;
   import mx.rpc.AbstractService;
   import mx.rpc.AsyncToken;
   
   use namespace mx_internal;
   
   public class Operation extends AbstractOperation
   {
      
      private var _makeObjectsBindableSet:Boolean;
      
      public var argumentNames:Array;
      
      public function Operation(remoteObject:AbstractService = null, name:String = null)
      {
         super(remoteObject,name);
         argumentNames = [];
      }
      
      override public function set makeObjectsBindable(b:Boolean) : void
      {
         _makeObjectsBindable = b;
         _makeObjectsBindableSet = true;
      }
      
      override public function get makeObjectsBindable() : Boolean
      {
         if(_makeObjectsBindableSet)
         {
            return _makeObjectsBindable;
         }
         return RemoteObject(service).makeObjectsBindable;
      }
      
      override public function send(... args) : AsyncToken
      {
         var i:int = 0;
         if(!args || Boolean(args.length == 0) && Boolean(this.arguments))
         {
            if(this.arguments is Array)
            {
               args = this.arguments as Array;
            }
            else
            {
               args = [];
               for(i = 0; i < argumentNames.length; i++)
               {
                  args[i] = this.arguments[argumentNames[i]];
               }
            }
         }
         var message:RemotingMessage = new RemotingMessage();
         message.operation = name;
         message.body = args;
         message.source = RemoteObject(service).source;
         return invoke(message);
      }
   }
}


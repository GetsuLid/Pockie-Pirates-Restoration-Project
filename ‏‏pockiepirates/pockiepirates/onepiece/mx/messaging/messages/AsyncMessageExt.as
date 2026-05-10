package mx.messaging.messages
{
   import flash.utils.IDataOutput;
   import flash.utils.IExternalizable;
   
   public class AsyncMessageExt extends AsyncMessage implements IExternalizable
   {
      
      private var _message:AsyncMessage;
      
      public function AsyncMessageExt(message:AsyncMessage = null)
      {
         super();
         _message = message;
      }
      
      override public function get messageId() : String
      {
         if(_message != null)
         {
            return _message.messageId;
         }
         return super.messageId;
      }
      
      override public function writeExternal(output:IDataOutput) : void
      {
         if(_message != null)
         {
            _message.writeExternal(output);
         }
         else
         {
            super.writeExternal(output);
         }
      }
   }
}


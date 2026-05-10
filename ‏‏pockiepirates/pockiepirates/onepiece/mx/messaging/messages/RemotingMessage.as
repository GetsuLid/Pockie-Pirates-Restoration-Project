package mx.messaging.messages
{
   public class RemotingMessage extends AbstractMessage
   {
      
      public var source:String;
      
      public var operation:String;
      
      public function RemotingMessage()
      {
         super();
         operation = "";
      }
   }
}


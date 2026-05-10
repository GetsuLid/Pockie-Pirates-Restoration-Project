package mx.messaging.channels
{
   public class SecureAMFChannel extends AMFChannel
   {
      
      public function SecureAMFChannel(id:String = null, uri:String = null)
      {
         super(id,uri);
      }
      
      override public function get protocol() : String
      {
         return "https";
      }
   }
}


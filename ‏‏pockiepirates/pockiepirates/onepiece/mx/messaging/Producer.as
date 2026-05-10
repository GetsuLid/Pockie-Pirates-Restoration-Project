package mx.messaging
{
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.logging.Log;
   import mx.messaging.messages.AsyncMessage;
   import mx.messaging.messages.IMessage;
   
   use namespace mx_internal;
   
   public class Producer extends AbstractProducer
   {
      
      private var _subtopic:String = "";
      
      public function Producer()
      {
         super();
         _log = Log.getLogger("mx.messaging.Producer");
         _agentType = "producer";
      }
      
      override protected function internalSend(message:IMessage, waitForClientId:Boolean = true) : void
      {
         if(subtopic.length > 0)
         {
            message.headers[AsyncMessage.SUBTOPIC_HEADER] = subtopic;
         }
         super.internalSend(message,waitForClientId);
      }
      
      public function set subtopic(value:String) : void
      {
         var event:PropertyChangeEvent = null;
         if(_subtopic != value)
         {
            if(value == null)
            {
               value = "";
            }
            event = PropertyChangeEvent.createUpdateEvent(this,"subtopic",_subtopic,value);
            _subtopic = value;
            dispatchEvent(event);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subtopic() : String
      {
         return _subtopic;
      }
   }
}


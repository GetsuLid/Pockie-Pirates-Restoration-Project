package mx.messaging
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class FlexClient extends EventDispatcher
   {
      
      private static var _instance:FlexClient;
      
      mx_internal static const NULL_FLEXCLIENT_ID:String = "nil";
      
      private var _waitForFlexClientId:Boolean = false;
      
      private var _id:String;
      
      public function FlexClient()
      {
         super();
      }
      
      public static function getInstance() : FlexClient
      {
         if(_instance == null)
         {
            _instance = new FlexClient();
         }
         return _instance;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : String
      {
         return _id;
      }
      
      [Bindable(event="propertyChange")]
      mx_internal function get waitForFlexClientId() : Boolean
      {
         return _waitForFlexClientId;
      }
      
      public function set id(value:String) : void
      {
         var event:PropertyChangeEvent = null;
         if(_id != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"id",_id,value);
            _id = value;
            dispatchEvent(event);
         }
      }
      
      mx_internal function set waitForFlexClientId(value:Boolean) : void
      {
         var event:PropertyChangeEvent = null;
         if(_waitForFlexClientId != value)
         {
            event = PropertyChangeEvent.createUpdateEvent(this,"waitForFlexClientId",_waitForFlexClientId,value);
            _waitForFlexClientId = value;
            dispatchEvent(event);
         }
      }
   }
}


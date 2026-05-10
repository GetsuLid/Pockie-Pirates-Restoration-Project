package mx.messaging.events
{
   import flash.events.Event;
   import mx.messaging.Channel;
   import mx.messaging.messages.ErrorMessage;
   
   public class ChannelFaultEvent extends ChannelEvent
   {
      
      public static const FAULT:String = "channelFault";
      
      public var faultString:String;
      
      public var rootCause:Object;
      
      public var faultDetail:String;
      
      public var faultCode:String;
      
      public function ChannelFaultEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, channel:Channel = null, reconnecting:Boolean = false, code:String = null, level:String = null, description:String = null, rejected:Boolean = false, connected:Boolean = false)
      {
         super(type,bubbles,cancelable,channel,reconnecting,rejected,connected);
         faultCode = code;
         faultString = level;
         faultDetail = description;
      }
      
      public static function createEvent(channel:Channel, reconnecting:Boolean = false, code:String = null, level:String = null, description:String = null, rejected:Boolean = false, connected:Boolean = false) : ChannelFaultEvent
      {
         return new ChannelFaultEvent(ChannelFaultEvent.FAULT,false,false,channel,reconnecting,code,level,description,rejected,connected);
      }
      
      override public function clone() : Event
      {
         var faultEvent:ChannelFaultEvent = new ChannelFaultEvent(type,bubbles,cancelable,channel,reconnecting,faultCode,faultString,faultDetail,rejected,connected);
         faultEvent.rootCause = rootCause;
         return faultEvent;
      }
      
      public function createErrorMessage() : ErrorMessage
      {
         var result:ErrorMessage = new ErrorMessage();
         result.faultCode = faultCode;
         result.faultString = faultString;
         result.faultDetail = faultDetail;
         result.rootCause = rootCause;
         return result;
      }
      
      override public function toString() : String
      {
         return formatToString("ChannelFaultEvent","faultCode","faultString","faultDetail","channelId","type","bubbles","cancelable","eventPhase");
      }
   }
}


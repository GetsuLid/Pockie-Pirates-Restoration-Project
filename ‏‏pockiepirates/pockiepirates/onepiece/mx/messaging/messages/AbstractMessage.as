package mx.messaging.messages
{
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.core.mx_internal;
   import mx.utils.RPCObjectUtil;
   import mx.utils.RPCStringUtil;
   import mx.utils.RPCUIDUtil;
   
   use namespace mx_internal;
   
   public class AbstractMessage implements IMessage
   {
      
      public static const DESTINATION_CLIENT_ID_HEADER:String = "DSDstClientId";
      
      public static const ENDPOINT_HEADER:String = "DSEndpoint";
      
      public static const FLEX_CLIENT_ID_HEADER:String = "DSId";
      
      public static const REMOTE_CREDENTIALS_HEADER:String = "DSRemoteCredentials";
      
      public static const REMOTE_CREDENTIALS_CHARSET_HEADER:String = "DSRemoteCredentialsCharset";
      
      public static const REQUEST_TIMEOUT_HEADER:String = "DSRequestTimeout";
      
      public static const STATUS_CODE_HEADER:String = "DSStatusCode";
      
      private static const HAS_NEXT_FLAG:uint = 128;
      
      private static const BODY_FLAG:uint = 1;
      
      private static const CLIENT_ID_FLAG:uint = 2;
      
      private static const DESTINATION_FLAG:uint = 4;
      
      private static const HEADERS_FLAG:uint = 8;
      
      private static const MESSAGE_ID_FLAG:uint = 16;
      
      private static const TIMESTAMP_FLAG:uint = 32;
      
      private static const TIME_TO_LIVE_FLAG:uint = 64;
      
      private static const CLIENT_ID_BYTES_FLAG:uint = 1;
      
      private static const MESSAGE_ID_BYTES_FLAG:uint = 2;
      
      private var _body:Object = {};
      
      private var _messageId:String;
      
      private var messageIdBytes:ByteArray;
      
      private var _timestamp:Number = 0;
      
      private var _clientId:String;
      
      private var clientIdBytes:ByteArray;
      
      private var _headers:Object;
      
      private var _destination:String = "";
      
      private var _timeToLive:Number = 0;
      
      public function AbstractMessage()
      {
         super();
      }
      
      public function set messageId(value:String) : void
      {
         _messageId = value;
         messageIdBytes = null;
      }
      
      public function get headers() : Object
      {
         if(_headers == null)
         {
            _headers = {};
         }
         return _headers;
      }
      
      public function readExternal(input:IDataInput) : void
      {
         var flags:uint = 0;
         var reservedPosition:uint = 0;
         var j:uint = 0;
         var flagsArray:Array = readFlags(input);
         for(var i:uint = 0; i < flagsArray.length; i++)
         {
            flags = flagsArray[i] as uint;
            reservedPosition = 0;
            if(i == 0)
            {
               if((flags & BODY_FLAG) != 0)
               {
                  body = input.readObject();
               }
               else
               {
                  body = null;
               }
               if((flags & CLIENT_ID_FLAG) != 0)
               {
                  clientId = input.readObject();
               }
               if((flags & DESTINATION_FLAG) != 0)
               {
                  destination = input.readObject() as String;
               }
               if((flags & HEADERS_FLAG) != 0)
               {
                  headers = input.readObject();
               }
               if((flags & MESSAGE_ID_FLAG) != 0)
               {
                  messageId = input.readObject() as String;
               }
               if((flags & TIMESTAMP_FLAG) != 0)
               {
                  timestamp = input.readObject() as Number;
               }
               if((flags & TIME_TO_LIVE_FLAG) != 0)
               {
                  timeToLive = input.readObject() as Number;
               }
               reservedPosition = 7;
            }
            else if(i == 1)
            {
               if((flags & CLIENT_ID_BYTES_FLAG) != 0)
               {
                  clientIdBytes = input.readObject() as ByteArray;
                  clientId = RPCUIDUtil.fromByteArray(clientIdBytes);
               }
               if((flags & MESSAGE_ID_BYTES_FLAG) != 0)
               {
                  messageIdBytes = input.readObject() as ByteArray;
                  messageId = RPCUIDUtil.fromByteArray(messageIdBytes);
               }
               reservedPosition = 2;
            }
            if(flags >> reservedPosition != 0)
            {
               for(j = reservedPosition; j < 6; j++)
               {
                  if((flags >> j & 1) != 0)
                  {
                     input.readObject();
                  }
               }
            }
         }
      }
      
      public function get messageId() : String
      {
         if(_messageId == null)
         {
            _messageId = RPCUIDUtil.createUID();
         }
         return _messageId;
      }
      
      public function set clientId(value:String) : void
      {
         _clientId = value;
         clientIdBytes = null;
      }
      
      public function get destination() : String
      {
         return _destination;
      }
      
      public function get timestamp() : Number
      {
         return _timestamp;
      }
      
      protected function readFlags(input:IDataInput) : Array
      {
         var flags:uint = 0;
         var hasNextFlag:Boolean = true;
         var flagsArray:Array = [];
         while(hasNextFlag && input.bytesAvailable > 0)
         {
            flags = input.readUnsignedByte();
            flagsArray.push(flags);
            if((flags & HAS_NEXT_FLAG) != 0)
            {
               hasNextFlag = true;
            }
            else
            {
               hasNextFlag = false;
            }
         }
         return flagsArray;
      }
      
      public function set headers(value:Object) : void
      {
         _headers = value;
      }
      
      public function get body() : Object
      {
         return _body;
      }
      
      public function set destination(value:String) : void
      {
         _destination = value;
      }
      
      public function set timestamp(value:Number) : void
      {
         _timestamp = value;
      }
      
      protected function addDebugAttributes(attributes:Object) : void
      {
         attributes["body"] = body;
         attributes["clientId"] = clientId;
         attributes["destination"] = destination;
         attributes["headers"] = headers;
         attributes["messageId"] = messageId;
         attributes["timestamp"] = timestamp;
         attributes["timeToLive"] = timeToLive;
      }
      
      public function get timeToLive() : Number
      {
         return _timeToLive;
      }
      
      public function set body(value:Object) : void
      {
         _body = value;
      }
      
      public function get clientId() : String
      {
         return _clientId;
      }
      
      public function writeExternal(output:IDataOutput) : void
      {
         var flags:uint = 0;
         var checkForMessageId:String = messageId;
         if(clientIdBytes == null)
         {
            clientIdBytes = RPCUIDUtil.toByteArray(_clientId);
         }
         if(messageIdBytes == null)
         {
            messageIdBytes = RPCUIDUtil.toByteArray(_messageId);
         }
         if(body != null)
         {
            flags |= BODY_FLAG;
         }
         if(clientId != null && clientIdBytes == null)
         {
            flags |= CLIENT_ID_FLAG;
         }
         if(destination != null)
         {
            flags |= DESTINATION_FLAG;
         }
         if(headers != null)
         {
            flags |= HEADERS_FLAG;
         }
         if(messageId != null && messageIdBytes == null)
         {
            flags |= MESSAGE_ID_FLAG;
         }
         if(timestamp != 0)
         {
            flags |= TIMESTAMP_FLAG;
         }
         if(timeToLive != 0)
         {
            flags |= TIME_TO_LIVE_FLAG;
         }
         if(clientIdBytes != null || messageIdBytes != null)
         {
            flags |= HAS_NEXT_FLAG;
         }
         output.writeByte(flags);
         flags = 0;
         if(clientIdBytes != null)
         {
            flags |= CLIENT_ID_BYTES_FLAG;
         }
         if(messageIdBytes != null)
         {
            flags |= MESSAGE_ID_BYTES_FLAG;
         }
         if(flags != 0)
         {
            output.writeByte(flags);
         }
         if(body != null)
         {
            output.writeObject(body);
         }
         if(clientId != null && clientIdBytes == null)
         {
            output.writeObject(clientId);
         }
         if(destination != null)
         {
            output.writeObject(destination);
         }
         if(headers != null)
         {
            output.writeObject(headers);
         }
         if(messageId != null && messageIdBytes == null)
         {
            output.writeObject(messageId);
         }
         if(timestamp != 0)
         {
            output.writeObject(timestamp);
         }
         if(timeToLive != 0)
         {
            output.writeObject(timeToLive);
         }
         if(clientIdBytes != null)
         {
            output.writeObject(clientIdBytes);
         }
         if(messageIdBytes != null)
         {
            output.writeObject(messageIdBytes);
         }
      }
      
      final protected function getDebugString() : String
      {
         var propertyName:String = null;
         var i:uint = 0;
         var name:String = null;
         var value:String = null;
         var result:String = "(" + getQualifiedClassName(this) + ")";
         var attributes:Object = {};
         addDebugAttributes(attributes);
         var propertyNames:Array = [];
         for(propertyName in attributes)
         {
            propertyNames.push(propertyName);
         }
         propertyNames.sort();
         for(i = 0; i < propertyNames.length; i++)
         {
            name = String(propertyNames[i]);
            value = RPCObjectUtil.toString(attributes[name]);
            result += RPCStringUtil.substitute("\n  {0}={1}",name,value);
         }
         return result;
      }
      
      public function toString() : String
      {
         return RPCObjectUtil.toString(this);
      }
      
      public function set timeToLive(value:Number) : void
      {
         _timeToLive = value;
      }
   }
}


package mx.messaging.channels
{
   import flash.events.IOErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Responder;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.messaging.FlexClient;
   import mx.messaging.config.ConfigMap;
   import mx.messaging.config.ServerConfig;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.messages.AbstractMessage;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.IMessage;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class AMFChannel extends NetConnectionChannel
   {
      
      protected var _reconnectingWithSessionId:Boolean;
      
      private var _ignoreNetStatusEvents:Boolean;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function AMFChannel(id:String = null, uri:String = null)
      {
         super(id,uri);
      }
      
      override public function AppendToGatewayUrl(value:String) : void
      {
         if(value != null && value != "" && _appendToURL != value)
         {
            super.AppendToGatewayUrl(value);
            _reconnectingWithSessionId = true;
         }
      }
      
      public function get polling() : Boolean
      {
         return pollOutstanding;
      }
      
      public function get pollingEnabled() : Boolean
      {
         return internalPollingEnabled;
      }
      
      public function get piggybackingEnabled() : Boolean
      {
         return internalPiggybackingEnabled;
      }
      
      override protected function statusHandler(event:NetStatusEvent) : void
      {
         var channelFault:ChannelFaultEvent = null;
         var info:Object = null;
         var errorText:String = null;
         if(_ignoreNetStatusEvents)
         {
            return;
         }
         if(Log.isDebug())
         {
            _log.debug("\'{0}\' channel got status. {1}",id,ObjectUtil.toString(event.info));
         }
         var handled:Boolean = true;
         if(event.info != null)
         {
            info = event.info;
            if(info.level == "error")
            {
               if(connected)
               {
                  if(info.code.indexOf("Call.Failed") != -1)
                  {
                     channelFault = ChannelFaultEvent.createEvent(this,false,"Channel.Call.Failed",info.level,info.code + ": " + info.description);
                     channelFault.rootCause = info;
                     dispatchEvent(channelFault);
                  }
                  internalDisconnect();
               }
               else
               {
                  channelFault = ChannelFaultEvent.createEvent(this,false,"Channel.Connect.Failed",info.level,info.code + ": " + info.description + ": url: \'" + endpoint + "\'");
                  channelFault.rootCause = info;
                  connectFailed(channelFault);
               }
            }
            else if(!connected)
            {
               handled = info.level == "status" && info.code.indexOf("Connect.Closed") != -1;
            }
            else
            {
               handled = false;
            }
         }
         else
         {
            handled = false;
         }
         if(!handled)
         {
            errorText = resourceManager.getString("messaging","invalidURL");
            connectFailed(ChannelFaultEvent.createEvent(this,false,"Channel.Connect.Failed","error",errorText + " url: \'" + endpoint + "\'"));
         }
      }
      
      public function get pollingInterval() : Number
      {
         return internalPollingInterval;
      }
      
      protected function handleReconnectWithSessionId() : void
      {
         if(_reconnectingWithSessionId)
         {
            _reconnectingWithSessionId = false;
            shutdownNetConnection();
            super.internalConnect();
            _ignoreNetStatusEvents = false;
         }
      }
      
      public function set piggybackingEnabled(value:Boolean) : void
      {
         internalPiggybackingEnabled = value;
      }
      
      override protected function internalConnect() : void
      {
         super.internalConnect();
         _ignoreNetStatusEvents = false;
         var msg:CommandMessage = new CommandMessage();
         if(credentials != null)
         {
            msg.operation = CommandMessage.LOGIN_OPERATION;
            msg.body = credentials;
         }
         else
         {
            msg.operation = CommandMessage.CLIENT_PING_OPERATION;
         }
         msg.headers[CommandMessage.MESSAGING_VERSION] = messagingVersion;
         if(ServerConfig.needsConfig(this))
         {
            msg.headers[CommandMessage.NEEDS_CONFIG_HEADER] = true;
         }
         setFlexClientIdOnMessage(msg);
         netConnection.call(null,new Responder(resultHandler,faultHandler),msg);
         if(Log.isDebug())
         {
            _log.debug("\'{0}\' pinging endpoint.",id);
         }
      }
      
      protected function faultHandler(msg:ErrorMessage) : void
      {
         var faultEvent:ChannelFaultEvent = null;
         var serverVersion:Number = NaN;
         if(msg != null)
         {
            faultEvent = null;
            if(msg.faultCode == "Client.Authentication")
            {
               resultHandler(msg);
               faultEvent = ChannelFaultEvent.createEvent(this,false,"Channel.Authentication.Error","warn",msg.faultString);
               faultEvent.rootCause = msg;
               dispatchEvent(faultEvent);
            }
            else
            {
               _log.debug("\'{0}\' fault handler called. {1}",id,msg.toString());
               if(FlexClient.getInstance().id == null && msg.headers[AbstractMessage.FLEX_CLIENT_ID_HEADER] != null)
               {
                  FlexClient.getInstance().id = msg.headers[AbstractMessage.FLEX_CLIENT_ID_HEADER];
               }
               if(msg.headers[CommandMessage.MESSAGING_VERSION] != null)
               {
                  serverVersion = msg.headers[CommandMessage.MESSAGING_VERSION] as Number;
                  handleServerMessagingVersion(serverVersion);
               }
               faultEvent = ChannelFaultEvent.createEvent(this,false,"Channel.Ping.Failed","error",msg.faultDetail + " url: \'" + endpoint + "\'");
               faultEvent.rootCause = msg;
               connectFailed(faultEvent);
            }
         }
         handleReconnectWithSessionId();
      }
      
      public function set pollingInterval(value:Number) : void
      {
         internalPollingInterval = value;
      }
      
      override public function applySettings(settings:XML) : void
      {
         super.applySettings(settings);
         applyPollingSettings(settings);
      }
      
      override protected function shutdownNetConnection() : void
      {
         _nc.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
         _nc.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         _ignoreNetStatusEvents = true;
         _nc.close();
      }
      
      override public function get protocol() : String
      {
         return "http";
      }
      
      override protected function internalDisconnect(rejected:Boolean = false) : void
      {
         var msg:CommandMessage = null;
         if(!rejected)
         {
            msg = new CommandMessage();
            msg.operation = CommandMessage.DISCONNECT_OPERATION;
            internalSend(new AMFFireAndForgetResponder(msg));
         }
         setConnected(false);
         super.internalDisconnect(rejected);
      }
      
      protected function resultHandler(msg:IMessage) : void
      {
         var serverVersion:Number = NaN;
         if(msg != null)
         {
            ServerConfig.updateServerConfigData(msg.body as ConfigMap,endpoint);
            if(FlexClient.getInstance().id == null && msg.headers[AbstractMessage.FLEX_CLIENT_ID_HEADER] != null)
            {
               FlexClient.getInstance().id = msg.headers[AbstractMessage.FLEX_CLIENT_ID_HEADER];
            }
            if(msg.headers[CommandMessage.MESSAGING_VERSION] != null)
            {
               serverVersion = msg.headers[CommandMessage.MESSAGING_VERSION] as Number;
               handleServerMessagingVersion(serverVersion);
            }
         }
         handleReconnectWithSessionId();
         connectSuccess();
         if(credentials != null && !(msg is ErrorMessage))
         {
            setAuthenticated(true);
         }
      }
      
      public function set pollingEnabled(value:Boolean) : void
      {
         internalPollingEnabled = value;
      }
   }
}

import mx.messaging.MessageResponder;
import mx.messaging.messages.IMessage;

class AMFFireAndForgetResponder extends MessageResponder
{
   
   public function AMFFireAndForgetResponder(message:IMessage)
   {
      super(null,message,null);
   }
}

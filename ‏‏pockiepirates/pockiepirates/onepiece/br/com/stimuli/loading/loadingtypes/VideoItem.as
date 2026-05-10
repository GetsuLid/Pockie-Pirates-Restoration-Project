package br.com.stimuli.loading.loadingtypes
{
   import br.com.stimuli.loading.BulkLoader;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class VideoItem extends LoadingItem
   {
      
      public var stream:NetStream;
      
      public var dummyEventTrigger:Sprite;
      
      public var pausedAtStart:Boolean = false;
      
      public var _metaData:Object;
      
      public var _canBeginStreaming:Boolean = false;
      
      private var nc:NetConnection;
      
      public var _checkPolicyFile:Boolean;
      
      public function VideoItem(url:URLRequest, type:String, uid:String)
      {
         specificAvailableProps = [BulkLoader.CHECK_POLICY_FILE,BulkLoader.PAUSED_AT_START];
         super(url,type,uid);
         _bytesTotal = _bytesLoaded = 0;
      }
      
      public function get checkPolicyFile() : Object
      {
         return _checkPolicyFile;
      }
      
      override public function onStartedHandler(evt:Event) : void
      {
         _content = stream;
         if(pausedAtStart && Boolean(stream))
         {
            stream.pause();
         }
         super.onStartedHandler(evt);
      }
      
      override public function stop() : void
      {
         try
         {
            if(stream)
            {
               stream.close();
            }
         }
         catch(e:Error)
         {
         }
         super.stop();
      }
      
      override public function _parseOptions(props:Object) : Array
      {
         pausedAtStart = Boolean(props[BulkLoader.PAUSED_AT_START]);
         _checkPolicyFile = Boolean(props[BulkLoader.CHECK_POLICY_FILE]);
         return super._parseOptions(props);
      }
      
      private function fireCanBeginStreamingEvent() : void
      {
         if(_canBeginStreaming)
         {
            return;
         }
         _canBeginStreaming = true;
         var evt:Event = new Event(BulkLoader.CAN_BEGIN_PLAYING);
         dispatchEvent(evt);
      }
      
      public function get metaData() : Object
      {
         return _metaData;
      }
      
      internal function onNetStatus(evt:NetStatusEvent) : void
      {
         var e:Event = null;
         if(!stream)
         {
            return;
         }
         stream.removeEventListener(NetStatusEvent.NET_STATUS,onNetStatus,false);
         if(evt.info.code == "NetStream.Play.Start")
         {
            _content = stream;
            e = new Event(Event.OPEN);
            onStartedHandler(e);
         }
         else if(evt.info.code == "NetStream.Play.StreamNotFound")
         {
            onErrorHandler(_createErrorEvent(new Error("[VideoItem] NetStream not found at " + this.url.url)));
         }
      }
      
      override public function isStreamable() : Boolean
      {
         return true;
      }
      
      override public function load() : void
      {
         var customClient:Object;
         super.load();
         nc = new NetConnection();
         nc.connect(null);
         stream = new NetStream(nc);
         stream.addEventListener(IOErrorEvent.IO_ERROR,onErrorHandler,false,0,true);
         stream.addEventListener(NetStatusEvent.NET_STATUS,onNetStatus,false,0,true);
         dummyEventTrigger = new Sprite();
         dummyEventTrigger.addEventListener(Event.ENTER_FRAME,createNetStreamEvent,false,0,true);
         customClient = new Object();
         customClient.onCuePoint = function(... args):void
         {
         };
         customClient.onMetaData = onVideoMetadata;
         customClient.onPlayStatus = function(... args):void
         {
         };
         stream.client = customClient;
         try
         {
            stream.play(url.url,_checkPolicyFile);
         }
         catch(e:SecurityError)
         {
            onSecurityErrorHandler(_createErrorEvent(e));
         }
         stream.seek(0);
      }
      
      public function get canBeginStreaming() : Boolean
      {
         return _canBeginStreaming;
      }
      
      internal function onVideoMetadata(evt:*) : void
      {
         _metaData = evt;
      }
      
      override public function onCompleteHandler(evt:Event) : void
      {
         _content = stream;
         super.onCompleteHandler(evt);
      }
      
      override public function cleanListeners() : void
      {
         if(stream)
         {
            stream.removeEventListener(IOErrorEvent.IO_ERROR,onErrorHandler,false);
            stream.removeEventListener(NetStatusEvent.NET_STATUS,onNetStatus,false);
         }
         if(dummyEventTrigger)
         {
            dummyEventTrigger.removeEventListener(Event.ENTER_FRAME,createNetStreamEvent,false);
            dummyEventTrigger = null;
         }
      }
      
      override public function isVideo() : Boolean
      {
         return true;
      }
      
      public function createNetStreamEvent(evt:Event) : void
      {
         var completeEvent:Event = null;
         var startEvent:Event = null;
         var event:ProgressEvent = null;
         var timeElapsed:int = 0;
         var currentSpeed:Number = NaN;
         var estimatedTimeRemaining:Number = NaN;
         var videoTimeToDownload:Number = NaN;
         if(_bytesTotal == _bytesLoaded && _bytesTotal > 8)
         {
            if(dummyEventTrigger)
            {
               dummyEventTrigger.removeEventListener(Event.ENTER_FRAME,createNetStreamEvent,false);
            }
            fireCanBeginStreamingEvent();
            completeEvent = new Event(Event.COMPLETE);
            onCompleteHandler(completeEvent);
         }
         else if(Boolean(_bytesTotal == 0) && Boolean(stream) && stream.bytesTotal > 4)
         {
            startEvent = new Event(Event.OPEN);
            onStartedHandler(startEvent);
            _bytesLoaded = stream.bytesLoaded;
            _bytesTotal = stream.bytesTotal;
         }
         else if(stream)
         {
            event = new ProgressEvent(ProgressEvent.PROGRESS,false,false,stream.bytesLoaded,stream.bytesTotal);
            if(Boolean(isVideo()) && Boolean(metaData) && !_canBeginStreaming)
            {
               timeElapsed = getTimer() - responseTime;
               if(timeElapsed > 100)
               {
                  currentSpeed = bytesLoaded / (timeElapsed / 1000);
                  _bytesRemaining = _bytesTotal - bytesLoaded;
                  estimatedTimeRemaining = _bytesRemaining / (currentSpeed * 0.8);
                  videoTimeToDownload = metaData.duration - stream.bufferLength;
                  if(videoTimeToDownload > estimatedTimeRemaining)
                  {
                     fireCanBeginStreamingEvent();
                  }
               }
            }
            super.onProgressHandler(event);
         }
      }
      
      override public function destroy() : void
      {
         if(!stream)
         {
         }
         stop();
         cleanListeners();
         stream = null;
         super.destroy();
      }
   }
}


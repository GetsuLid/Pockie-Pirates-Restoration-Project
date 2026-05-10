package br.com.stimuli.loading.loadingtypes
{
   import br.com.stimuli.loading.BulkLoader;
   import br.com.stimuli.loading.utils.SmartURL;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class LoadingItem extends EventDispatcher
   {
      
      public static const STATUS_STOPPED:String = "stopped";
      
      public static const STATUS_STARTED:String = "started";
      
      public static const STATUS_FINISHED:String = "finished";
      
      public static const STATUS_ERROR:String = "error";
      
      public var _priority:int = 0;
      
      public var _type:String;
      
      public var _parsedURL:SmartURL;
      
      public var _isLoaded:Boolean;
      
      public var _isLoading:Boolean;
      
      public var _additionIndex:int;
      
      public var _bytesTotal:int = -1;
      
      public var _httpStatus:int = -1;
      
      public var _content:*;
      
      public var status:String;
      
      public var _speed:Number;
      
      public var _weightPercentLoaded:Number;
      
      public var propertyParsingErrors:Array;
      
      public var url:URLRequest;
      
      public var errorEvent:ErrorEvent;
      
      public var weight:int = 1;
      
      public var _addedTime:int;
      
      public var _context:* = null;
      
      public var preventCache:Boolean;
      
      public var _responseTime:Number;
      
      public var _uid:String;
      
      public var maxTries:int = 3;
      
      public var _bytesLoaded:int = 0;
      
      public var _percentLoaded:Number;
      
      public var _totalTime:int;
      
      public var numTries:int = 0;
      
      public var _id:String;
      
      public var _latency:Number;
      
      public var _startTime:int;
      
      public var _bytesRemaining:int = 10000000;
      
      public var _timeToDownload:Number;
      
      public var specificAvailableProps:Array;
      
      public function LoadingItem(url:URLRequest, type:String, _uid:String)
      {
         super();
         this._type = type;
         this.url = url;
         _parsedURL = new SmartURL(url.url);
         if(!specificAvailableProps)
         {
            specificAvailableProps = [];
         }
         this._uid = _uid;
      }
      
      public function onSecurityErrorHandler(e:ErrorEvent) : void
      {
         status = STATUS_ERROR;
         errorEvent = e as ErrorEvent;
         e.stopPropagation();
         _dispatchErrorEvent(errorEvent);
      }
      
      public function stop() : void
      {
         if(_isLoaded)
         {
            return;
         }
         status = STATUS_STOPPED;
         _isLoading = false;
      }
      
      public function isSound() : Boolean
      {
         return false;
      }
      
      public function onCompleteHandler(evt:Event) : void
      {
         _totalTime = getTimer();
         _timeToDownload = (_totalTime - _responseTime) / 1000;
         if(_timeToDownload == 0)
         {
            _timeToDownload = 0.1;
         }
         _speed = BulkLoader.truncateNumber(bytesTotal / 1024 / _timeToDownload);
         status = STATUS_FINISHED;
         _isLoaded = true;
         dispatchEvent(evt);
         evt.stopPropagation();
      }
      
      public function get weightPercentLoaded() : Number
      {
         return _weightPercentLoaded;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function _dispatchErrorEvent(evt:ErrorEvent) : void
      {
         status = STATUS_ERROR;
         dispatchEvent(new ErrorEvent(BulkLoader.ERROR,true,false,evt.text));
      }
      
      public function onHttpStatusHandler(evt:HTTPStatusEvent) : void
      {
         _httpStatus = evt.status;
         dispatchEvent(evt);
      }
      
      public function get totalTime() : int
      {
         return _totalTime;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get speed() : Number
      {
         return _speed;
      }
      
      public function _parseOptions(props:Object) : Array
      {
         var propName:String = null;
         preventCache = props[BulkLoader.PREVENT_CACHING];
         _id = props[BulkLoader.ID];
         _priority = int(props[BulkLoader.PRIORITY]) || 0;
         maxTries = int(props[BulkLoader.MAX_TRIES]) || 3;
         weight = int(props[BulkLoader.WEIGHT]) || 1;
         var allowedProps:Array = BulkLoader.GENERAL_AVAILABLE_PROPS.concat(specificAvailableProps);
         propertyParsingErrors = [];
         for(propName in props)
         {
            if(allowedProps.indexOf(propName) == -1)
            {
               propertyParsingErrors.push(this + ": got a wrong property name: " + propName + ", with value:" + props[propName]);
            }
         }
         return propertyParsingErrors;
      }
      
      public function get startTime() : int
      {
         return _startTime;
      }
      
      public function get bytesLoaded() : int
      {
         return _bytesLoaded;
      }
      
      public function isImage() : Boolean
      {
         return false;
      }
      
      public function onStartedHandler(evt:Event) : void
      {
         _responseTime = getTimer();
         _latency = BulkLoader.truncateNumber((_responseTime - _startTime) / 1000);
         status = STATUS_STARTED;
         dispatchEvent(evt);
      }
      
      public function get hostName() : String
      {
         return _parsedURL.host;
      }
      
      override public function toString() : String
      {
         return "LoadingItem url: " + url.url + ", type:" + _type + ", status: " + status;
      }
      
      public function isVideo() : Boolean
      {
         return false;
      }
      
      public function isText() : Boolean
      {
         return false;
      }
      
      public function get content() : *
      {
         return _content;
      }
      
      public function onProgressHandler(evt:*) : void
      {
         _bytesLoaded = evt.bytesLoaded;
         _bytesTotal = evt.bytesTotal;
         _bytesRemaining = _bytesTotal - bytesLoaded;
         _percentLoaded = _bytesLoaded / _bytesTotal;
         _weightPercentLoaded = _percentLoaded * weight;
         dispatchEvent(evt);
      }
      
      public function isXML() : Boolean
      {
         return false;
      }
      
      public function get bytesTotal() : int
      {
         return _bytesTotal;
      }
      
      public function get httpStatus() : int
      {
         return _httpStatus;
      }
      
      public function onErrorHandler(evt:ErrorEvent) : void
      {
         ++numTries;
         evt.stopPropagation();
         if(numTries < maxTries)
         {
            status = null;
            load();
         }
         else
         {
            status = STATUS_ERROR;
            errorEvent = evt;
            _dispatchErrorEvent(errorEvent);
         }
      }
      
      public function get humanFiriendlySize() : String
      {
         var kb:Number = _bytesTotal / 1024;
         if(kb < 1024)
         {
            return int(kb) + " kb";
         }
         return (kb / 1024).toPrecision(3) + " mb";
      }
      
      public function isStreamable() : Boolean
      {
         return false;
      }
      
      public function get percentLoaded() : Number
      {
         return _percentLoaded;
      }
      
      public function get responseTime() : Number
      {
         return _responseTime;
      }
      
      public function get priority() : int
      {
         return _priority;
      }
      
      public function get bytesRemaining() : int
      {
         return _bytesRemaining;
      }
      
      public function get isLoaded() : Boolean
      {
         return _isLoaded;
      }
      
      public function get timeToDownload() : int
      {
         return _timeToDownload;
      }
      
      public function isLoader() : Boolean
      {
         return false;
      }
      
      public function load() : void
      {
         var cacheString:String = null;
         if(preventCache)
         {
            cacheString = "BulkLoaderNoCache=" + _uid + "_" + int(Math.random() * 100 * getTimer());
            if(url.url.indexOf("?") == -1)
            {
               url.url += "?" + cacheString;
            }
            else
            {
               url.url += "&" + cacheString;
            }
         }
         _isLoading = true;
         _startTime = getTimer();
      }
      
      public function getStats() : String
      {
         return "Item url: " + url.url + "(s), total time: " + (_totalTime / 1000).toPrecision(3) + "(s), download time: " + _timeToDownload.toPrecision(3) + "(s), latency:" + _latency + "(s), speed: " + _speed + " kb/s, size: " + humanFiriendlySize;
      }
      
      public function get addedTime() : int
      {
         return _addedTime;
      }
      
      public function _createErrorEvent(e:Error) : ErrorEvent
      {
         return new ErrorEvent(BulkLoader.ERROR,false,false,e.message);
      }
      
      public function cleanListeners() : void
      {
      }
      
      public function isSWF() : Boolean
      {
         return false;
      }
      
      public function destroy() : void
      {
         _content = null;
      }
      
      public function get latency() : Number
      {
         return _latency;
      }
   }
}


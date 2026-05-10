package mx.controls
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import mx.core.Application;
   import mx.core.FlexLoader;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.ISWFLoader;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.InterManagerRequest;
   import mx.events.InvalidateRequestData;
   import mx.events.SWFBridgeEvent;
   import mx.events.SWFBridgeRequest;
   import mx.managers.CursorManager;
   import mx.managers.ISystemManager;
   import mx.managers.SystemManagerGlobals;
   import mx.styles.ISimpleStyleClient;
   import mx.utils.LoaderUtil;
   
   use namespace mx_internal;
   
   public class SWFLoader extends UIComponent implements ISWFLoader
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _loadForCompatibility:Boolean = false;
      
      private var _loaderContext:LoaderContext;
      
      private var requestedURL:URLRequest;
      
      private var _swfBridge:IEventDispatcher;
      
      private var _bytesTotal:Number = NaN;
      
      private var useUnloadAndStop:Boolean;
      
      private var flexContent:Boolean = false;
      
      private var explicitLoaderContext:Boolean = false;
      
      private var resizableContent:Boolean = false;
      
      private var brokenImageBorder:IFlexDisplayObject;
      
      private var _maintainAspectRatio:Boolean = true;
      
      private var _source:Object;
      
      private var mouseShield:Sprite;
      
      private var contentRequestID:String = null;
      
      mx_internal var contentHolder:DisplayObject;
      
      private var brokenImage:Boolean = false;
      
      private var _bytesLoaded:Number = NaN;
      
      private var _autoLoad:Boolean = true;
      
      private var _showBusyCursor:Boolean = false;
      
      private var _scaleContent:Boolean = true;
      
      private var isContentLoaded:Boolean = false;
      
      private var unloadAndStopGC:Boolean;
      
      private var _trustContent:Boolean = false;
      
      private var attemptingChildAppDomain:Boolean = false;
      
      private var scaleContentChanged:Boolean = false;
      
      private var contentChanged:Boolean = false;
      
      public function SWFLoader()
      {
         super();
         tabChildren = true;
         tabEnabled = false;
         addEventListener(FlexEvent.INITIALIZE,initializeHandler);
         addEventListener(Event.ADDED_TO_STAGE,addedToStageHandler);
         showInAutomationHierarchy = false;
      }
      
      public function get contentHeight() : Number
      {
         return contentHolder ? contentHolder.height : NaN;
      }
      
      [Bindable("trustContentChanged")]
      public function get trustContent() : Boolean
      {
         return _trustContent;
      }
      
      public function set trustContent(value:Boolean) : void
      {
         if(_trustContent != value)
         {
            _trustContent = value;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("trustContentChanged"));
         }
      }
      
      [Bindable("maintainAspectRatioChanged")]
      public function get maintainAspectRatio() : Boolean
      {
         return _maintainAspectRatio;
      }
      
      private function unScaleContent() : void
      {
         contentHolder.scaleX = 1;
         contentHolder.scaleY = 1;
         contentHolder.x = 0;
         contentHolder.y = 0;
      }
      
      public function set maintainAspectRatio(value:Boolean) : void
      {
         _maintainAspectRatio = value;
         dispatchEvent(new Event("maintainAspectRatioChanged"));
      }
      
      override public function regenerateStyleCache(recursive:Boolean) : void
      {
         var sm:ISystemManager = null;
         super.regenerateStyleCache(recursive);
         try
         {
            sm = content as ISystemManager;
            if(sm != null)
            {
               Object(sm).regenerateStyleCache(recursive);
            }
         }
         catch(error:Error)
         {
         }
      }
      
      private function get contentHolderHeight() : Number
      {
         var loaderInfo:LoaderInfo = null;
         var content:IFlexDisplayObject = null;
         var bridge:IEventDispatcher = null;
         var request:SWFBridgeRequest = null;
         var testContent:DisplayObject = null;
         if(contentHolder is Loader)
         {
            loaderInfo = Loader(contentHolder).contentLoaderInfo;
         }
         if(loaderInfo)
         {
            if(loaderInfo.contentType == "application/x-shockwave-flash")
            {
               try
               {
                  if(systemManager.swfBridgeGroup)
                  {
                     bridge = swfBridge;
                     if(bridge)
                     {
                        request = new SWFBridgeRequest(SWFBridgeRequest.GET_SIZE_REQUEST);
                        bridge.dispatchEvent(request);
                        return request.data.height;
                     }
                  }
                  content = Loader(contentHolder).content as IFlexDisplayObject;
                  if(content)
                  {
                     return content.measuredHeight;
                  }
               }
               catch(error:Error)
               {
                  return contentHolder.height;
               }
            }
            else
            {
               try
               {
                  testContent = Loader(contentHolder).content;
               }
               catch(error:Error)
               {
                  return contentHolder.height;
               }
            }
            return loaderInfo.height;
         }
         if(contentHolder is IUIComponent)
         {
            return IUIComponent(contentHolder).getExplicitOrMeasuredHeight();
         }
         if(contentHolder is IFlexDisplayObject)
         {
            return IFlexDisplayObject(contentHolder).measuredHeight;
         }
         return contentHolder.height;
      }
      
      [Bindable("loaderContextChanged")]
      public function get loaderContext() : LoaderContext
      {
         return _loaderContext;
      }
      
      public function set showBusyCursor(value:Boolean) : void
      {
         if(_showBusyCursor != value)
         {
            _showBusyCursor = value;
            if(_showBusyCursor)
            {
               CursorManager.registerToUseBusyCursor(this);
            }
            else
            {
               CursorManager.unRegisterToUseBusyCursor(this);
            }
         }
      }
      
      override public function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
         var sm:ISystemManager = null;
         super.notifyStyleChangeInChildren(styleProp,recursive);
         try
         {
            sm = content as ISystemManager;
            if(sm != null)
            {
               Object(sm).notifyStyleChangeInChildren(styleProp,recursive);
            }
         }
         catch(error:Error)
         {
         }
      }
      
      private function getHorizontalAlignValue() : Number
      {
         var horizontalAlign:String = getStyle("horizontalAlign");
         if(horizontalAlign == "left")
         {
            return 0;
         }
         if(horizontalAlign == "right")
         {
            return 1;
         }
         return 0.5;
      }
      
      [Bindable("sourceChanged")]
      public function get source() : Object
      {
         return _source;
      }
      
      [Bindable("loadForCompatibilityChanged")]
      public function get loadForCompatibility() : Boolean
      {
         return _loadForCompatibility;
      }
      
      private function contentLoaderInfo_httpStatusEventHandler(event:HTTPStatusEvent) : void
      {
         dispatchEvent(event);
      }
      
      [Bindable("autoLoadChanged")]
      public function get autoLoad() : Boolean
      {
         return _autoLoad;
      }
      
      public function set source(value:Object) : void
      {
         if(_source != value)
         {
            _source = value;
            contentChanged = true;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("sourceChanged"));
         }
      }
      
      public function set loaderContext(value:LoaderContext) : void
      {
         _loaderContext = value;
         explicitLoaderContext = true;
         dispatchEvent(new Event("loaderContextChanged"));
      }
      
      private function get contentHolderWidth() : Number
      {
         var loaderInfo:LoaderInfo = null;
         var content:IFlexDisplayObject = null;
         var request:SWFBridgeRequest = null;
         var testContent:DisplayObject = null;
         if(contentHolder is Loader)
         {
            loaderInfo = Loader(contentHolder).contentLoaderInfo;
         }
         if(loaderInfo)
         {
            if(loaderInfo.contentType == "application/x-shockwave-flash")
            {
               try
               {
                  if(swfBridge)
                  {
                     request = new SWFBridgeRequest(SWFBridgeRequest.GET_SIZE_REQUEST);
                     swfBridge.dispatchEvent(request);
                     return request.data.width;
                  }
                  content = Loader(contentHolder).content as IFlexDisplayObject;
                  if(content)
                  {
                     return content.measuredWidth;
                  }
               }
               catch(error:Error)
               {
                  return contentHolder.width;
               }
            }
            else
            {
               try
               {
                  testContent = Loader(contentHolder).content;
               }
               catch(error:Error)
               {
                  return contentHolder.width;
               }
            }
            return loaderInfo.width;
         }
         if(contentHolder is IUIComponent)
         {
            return IUIComponent(contentHolder).getExplicitOrMeasuredWidth();
         }
         if(contentHolder is IFlexDisplayObject)
         {
            return IFlexDisplayObject(contentHolder).measuredWidth;
         }
         return contentHolder.width;
      }
      
      [Bindable("progress")]
      public function get bytesLoaded() : Number
      {
         return _bytesLoaded;
      }
      
      private function removeInitSystemManagerCompleteListener(loaderInfo:LoaderInfo) : void
      {
         var bridge:EventDispatcher = null;
         if(loaderInfo.contentType == "application/x-shockwave-flash")
         {
            bridge = loaderInfo.sharedEvents;
            bridge.removeEventListener(SWFBridgeEvent.BRIDGE_NEW_APPLICATION,initSystemManagerCompleteEventHandler);
         }
      }
      
      public function set loadForCompatibility(value:Boolean) : void
      {
         if(_loadForCompatibility != value)
         {
            _loadForCompatibility = value;
            contentChanged = true;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("loadForCompatibilityChanged"));
         }
      }
      
      override protected function measure() : void
      {
         var oldScaleX:Number = NaN;
         var oldScaleY:Number = NaN;
         super.measure();
         if(isContentLoaded)
         {
            oldScaleX = contentHolder.scaleX;
            oldScaleY = contentHolder.scaleY;
            contentHolder.scaleX = 1;
            contentHolder.scaleY = 1;
            measuredWidth = contentHolderWidth;
            measuredHeight = contentHolderHeight;
            contentHolder.scaleX = oldScaleX;
            contentHolder.scaleY = oldScaleY;
         }
         else if(!_source || _source == "")
         {
            measuredWidth = 0;
            measuredHeight = 0;
         }
      }
      
      private function contentLoaderInfo_initEventHandler(event:Event) : void
      {
         dispatchEvent(event);
         addInitSystemManagerCompleteListener(LoaderInfo(event.target).loader.contentLoaderInfo);
      }
      
      public function set autoLoad(value:Boolean) : void
      {
         if(_autoLoad != value)
         {
            _autoLoad = value;
            contentChanged = true;
            invalidateProperties();
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("autoLoadChanged"));
         }
      }
      
      private function doScaleLoader() : void
      {
         if(!isContentLoaded)
         {
            return;
         }
         unScaleContent();
         var w:Number = unscaledWidth;
         var h:Number = unscaledHeight;
         if(contentHolderWidth > w || contentHolderHeight > h || !parentAllowsChild)
         {
            contentHolder.scrollRect = new Rectangle(0,0,w,h);
         }
         else
         {
            contentHolder.scrollRect = null;
         }
         contentHolder.x = (w - contentHolderWidth) * getHorizontalAlignValue();
         contentHolder.y = (h - contentHolderHeight) * getVerticalAlignValue();
      }
      
      private function getVerticalAlignValue() : Number
      {
         var verticalAlign:String = getStyle("verticalAlign");
         if(verticalAlign == "top")
         {
            return 0;
         }
         if(verticalAlign == "bottom")
         {
            return 1;
         }
         return 0.5;
      }
      
      public function get content() : DisplayObject
      {
         if(contentHolder is Loader)
         {
            return Loader(contentHolder).content;
         }
         return contentHolder;
      }
      
      private function dispatchInvalidateRequest(invalidateProperites:Boolean, invalidateSize:Boolean, invalidateDisplayList:Boolean) : void
      {
         var sm:ISystemManager = systemManager;
         if(!sm.useSWFBridge())
         {
            return;
         }
         var bridge:IEventDispatcher = sm.swfBridgeGroup.parentBridge;
         var flags:uint = 0;
         if(invalidateProperites)
         {
            flags |= InvalidateRequestData.PROPERTIES;
         }
         if(invalidateSize)
         {
            flags |= InvalidateRequestData.SIZE;
         }
         if(invalidateDisplayList)
         {
            flags |= InvalidateRequestData.DISPLAY_LIST;
         }
         var request:SWFBridgeRequest = new SWFBridgeRequest(SWFBridgeRequest.INVALIDATE_REQUEST,false,false,bridge,flags);
         bridge.dispatchEvent(request);
      }
      
      public function getVisibleApplicationRect(allApplications:Boolean = false) : Rectangle
      {
         var rect:Rectangle = getVisibleRect();
         if(allApplications)
         {
            rect = systemManager.getVisibleApplicationRect(rect);
         }
         return rect;
      }
      
      public function unloadAndStop(invokeGarbageCollector:Boolean = true) : void
      {
         useUnloadAndStop = true;
         unloadAndStopGC = invokeGarbageCollector;
         source = null;
      }
      
      private function contentLoaderInfo_progressEventHandler(event:ProgressEvent) : void
      {
         _bytesTotal = event.bytesTotal;
         _bytesLoaded = event.bytesLoaded;
         dispatchEvent(event);
      }
      
      public function get showBusyCursor() : Boolean
      {
         return _showBusyCursor;
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return 0;
         }
         return super.baselinePosition;
      }
      
      private function initSystemManagerCompleteEventHandler(event:Event) : void
      {
         var sm:ISystemManager = null;
         var eObj:Object = Object(event);
         if(contentHolder is Loader && eObj.data == Loader(contentHolder).contentLoaderInfo.sharedEvents)
         {
            _swfBridge = Loader(contentHolder).contentLoaderInfo.sharedEvents;
            sm = systemManager;
            sm.addChildBridge(_swfBridge,this);
            removeInitSystemManagerCompleteListener(Loader(contentHolder).contentLoaderInfo);
            _swfBridge.addEventListener(SWFBridgeRequest.INVALIDATE_REQUEST,invalidateRequestHandler);
         }
      }
      
      [Bindable("complete")]
      public function get bytesTotal() : Number
      {
         return _bytesTotal;
      }
      
      private function initializeHandler(event:FlexEvent) : void
      {
         if(contentChanged)
         {
            contentChanged = false;
            if(_autoLoad)
            {
               load(_source);
            }
         }
      }
      
      private function contentLoaderInfo_unloadEventHandler(event:Event) : void
      {
         var sm:ISystemManager = null;
         dispatchEvent(event);
         if(_swfBridge)
         {
            _swfBridge.removeEventListener(SWFBridgeRequest.INVALIDATE_REQUEST,invalidateRequestHandler);
            sm = systemManager;
            sm.removeChildBridge(_swfBridge);
            _swfBridge = null;
         }
         if(contentHolder is Loader)
         {
            removeInitSystemManagerCompleteListener(Loader(contentHolder).contentLoaderInfo);
         }
      }
      
      mx_internal function contentLoaderInfo_completeEventHandler(event:Event) : void
      {
         if(LoaderInfo(event.target).loader != contentHolder)
         {
            return;
         }
         dispatchEvent(event);
         contentLoaded();
         if(contentHolder is Loader)
         {
            removeInitSystemManagerCompleteListener(Loader(contentHolder).contentLoaderInfo);
         }
      }
      
      public function set scaleContent(value:Boolean) : void
      {
         if(_scaleContent != value)
         {
            _scaleContent = value;
            scaleContentChanged = true;
            invalidateDisplayList();
         }
         dispatchEvent(new Event("scaleContentChanged"));
      }
      
      private function contentLoaderInfo_openEventHandler(event:Event) : void
      {
         dispatchEvent(event);
      }
      
      private function addedToStageHandler(event:Event) : void
      {
         systemManager.getSandboxRoot().addEventListener(InterManagerRequest.DRAG_MANAGER_REQUEST,mouseShieldHandler,false,0,true);
      }
      
      [Bindable("progress")]
      public function get percentLoaded() : Number
      {
         var p:Number = isNaN(_bytesTotal) || _bytesTotal == 0 ? 0 : 100 * (_bytesLoaded / _bytesTotal);
         if(isNaN(p))
         {
            p = 0;
         }
         return p;
      }
      
      public function get swfBridge() : IEventDispatcher
      {
         return _swfBridge;
      }
      
      private function loadContent(classOrString:Object) : DisplayObject
      {
         var child:DisplayObject = null;
         var cls:Class = null;
         var url:String = null;
         var byteArray:ByteArray = null;
         var loader:Loader = null;
         var lc:LoaderContext = null;
         var rootURL:String = null;
         var lastIndex:int = 0;
         var currentDomain:ApplicationDomain = null;
         var topmostDomain:ApplicationDomain = null;
         var message:String = null;
         if(classOrString is Class)
         {
            cls = Class(classOrString);
         }
         else if(classOrString is String)
         {
            try
            {
               cls = Class(systemManager.getDefinitionByName(String(classOrString)));
            }
            catch(e:Error)
            {
            }
            url = String(classOrString);
         }
         else if(classOrString is ByteArray)
         {
            byteArray = ByteArray(classOrString);
         }
         else
         {
            url = classOrString.toString();
         }
         if(cls)
         {
            contentHolder = child = new cls();
            addChild(child);
            contentLoaded();
         }
         else if(classOrString is DisplayObject)
         {
            contentHolder = child = DisplayObject(classOrString);
            addChild(child);
            contentLoaded();
         }
         else if(byteArray)
         {
            loader = new FlexLoader();
            child = loader;
            addChild(child);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,contentLoaderInfo_completeEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.INIT,contentLoaderInfo_initEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.UNLOAD,contentLoaderInfo_unloadEventHandler);
            loader.loadBytes(byteArray,loaderContext);
         }
         else
         {
            if(!url)
            {
               message = resourceManager.getString("controls","notLoadable",[source]);
               throw new Error(message);
            }
            loader = new FlexLoader();
            child = loader;
            addChild(loader);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,contentLoaderInfo_completeEventHandler);
            loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,contentLoaderInfo_httpStatusEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.INIT,contentLoaderInfo_initEventHandler);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,contentLoaderInfo_ioErrorEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.OPEN,contentLoaderInfo_openEventHandler);
            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,contentLoaderInfo_progressEventHandler);
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,contentLoaderInfo_securityErrorEventHandler);
            loader.contentLoaderInfo.addEventListener(Event.UNLOAD,contentLoaderInfo_unloadEventHandler);
            if(Capabilities.isDebugger == true && url.indexOf(".jpg") == -1 && LoaderUtil.normalizeURL(Application.application.systemManager.loaderInfo).indexOf("debug=true") > -1)
            {
               url += url.indexOf("?") > -1 ? "&debug=true" : "?debug=true";
            }
            if(!(url.indexOf(":") > -1 || url.indexOf("/") == 0 || url.indexOf("\\") == 0))
            {
               if(SystemManagerGlobals.bootstrapLoaderInfoURL != null && SystemManagerGlobals.bootstrapLoaderInfoURL != "")
               {
                  rootURL = SystemManagerGlobals.bootstrapLoaderInfoURL;
               }
               else if(root)
               {
                  rootURL = LoaderUtil.normalizeURL(root.loaderInfo);
               }
               else if(systemManager)
               {
                  rootURL = LoaderUtil.normalizeURL(DisplayObject(systemManager).loaderInfo);
               }
               if(rootURL)
               {
                  lastIndex = Math.max(rootURL.lastIndexOf("\\"),rootURL.lastIndexOf("/"));
                  if(lastIndex != -1)
                  {
                     url = rootURL.substr(0,lastIndex + 1) + url;
                  }
               }
            }
            requestedURL = new URLRequest(url);
            lc = loaderContext;
            if(!lc)
            {
               lc = new LoaderContext();
               _loaderContext = lc;
               if(loadForCompatibility)
               {
                  currentDomain = ApplicationDomain.currentDomain.parentDomain;
                  topmostDomain = null;
                  while(currentDomain)
                  {
                     topmostDomain = currentDomain;
                     currentDomain = currentDomain.parentDomain;
                  }
                  lc.applicationDomain = new ApplicationDomain(topmostDomain);
               }
               if(trustContent)
               {
                  lc.securityDomain = SecurityDomain.currentDomain;
               }
               else if(!loadForCompatibility)
               {
                  attemptingChildAppDomain = true;
                  lc.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
               }
            }
            loader.load(requestedURL,lc);
         }
         invalidateDisplayList();
         return child;
      }
      
      public function get contentWidth() : Number
      {
         return contentHolder ? contentHolder.width : NaN;
      }
      
      [Bindable("scaleContentChanged")]
      public function get scaleContent() : Boolean
      {
         return _scaleContent;
      }
      
      public function get childAllowsParent() : Boolean
      {
         if(!isContentLoaded)
         {
            return false;
         }
         if(contentHolder is Loader)
         {
            return Loader(contentHolder).contentLoaderInfo.childAllowsParent;
         }
         return true;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(contentChanged)
         {
            contentChanged = false;
            if(_autoLoad)
            {
               load(_source);
            }
         }
      }
      
      private function contentLoaderInfo_securityErrorEventHandler(event:SecurityErrorEvent) : void
      {
         var lc:LoaderContext = null;
         if(attemptingChildAppDomain)
         {
            attemptingChildAppDomain = false;
            lc = new LoaderContext();
            _loaderContext = lc;
            callLater(load);
            return;
         }
         dispatchEvent(event);
         if(contentHolder is Loader)
         {
            removeInitSystemManagerCompleteListener(Loader(contentHolder).contentLoaderInfo);
         }
      }
      
      private function sizeShield() : void
      {
         if(Boolean(mouseShield) && Boolean(mouseShield.parent))
         {
            mouseShield.width = unscaledWidth;
            mouseShield.height = unscaledHeight;
         }
      }
      
      private function addInitSystemManagerCompleteListener(loaderInfo:LoaderInfo) : void
      {
         var bridge:EventDispatcher = null;
         if(loaderInfo.contentType == "application/x-shockwave-flash")
         {
            bridge = loaderInfo.sharedEvents;
            bridge.addEventListener(SWFBridgeEvent.BRIDGE_NEW_APPLICATION,initSystemManagerCompleteEventHandler);
         }
      }
      
      private function invalidateRequestHandler(event:Event) : void
      {
         if(event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         var invalidateFlags:uint = uint(request.data);
         if(invalidateFlags & InvalidateRequestData.PROPERTIES)
         {
            invalidateProperties();
         }
         if(invalidateFlags & InvalidateRequestData.SIZE)
         {
            invalidateSize();
         }
         if(invalidateFlags & InvalidateRequestData.DISPLAY_LIST)
         {
            invalidateDisplayList();
         }
         dispatchInvalidateRequest((invalidateFlags & InvalidateRequestData.PROPERTIES) != 0,(invalidateFlags & InvalidateRequestData.SIZE) != 0,(invalidateFlags & InvalidateRequestData.DISPLAY_LIST) != 0);
      }
      
      private function contentLoaded() : void
      {
         var loaderInfo:LoaderInfo = null;
         isContentLoaded = true;
         if(contentHolder is Loader)
         {
            loaderInfo = Loader(contentHolder).contentLoaderInfo;
         }
         resizableContent = false;
         if(loaderInfo)
         {
            if(loaderInfo.contentType == "application/x-shockwave-flash")
            {
               resizableContent = true;
            }
            if(resizableContent)
            {
               try
               {
                  if(Loader(contentHolder).content is IFlexDisplayObject)
                  {
                     flexContent = true;
                  }
                  else
                  {
                     flexContent = swfBridge != null;
                  }
               }
               catch(e:Error)
               {
                  flexContent = swfBridge != null;
               }
            }
         }
         try
         {
            if(tabChildren && contentHolder is Loader && (loaderInfo.contentType == "application/x-shockwave-flash" || Loader(contentHolder).content is DisplayObjectContainer))
            {
               Loader(contentHolder).tabChildren = true;
               DisplayObjectContainer(Loader(contentHolder).content).tabChildren = true;
            }
         }
         catch(e:Error)
         {
         }
         invalidateSize();
         invalidateDisplayList();
      }
      
      private function getContentSize() : Point
      {
         var bridge:IEventDispatcher = null;
         var request:SWFBridgeRequest = null;
         var pt:Point = new Point();
         if(!contentHolder is Loader)
         {
            return pt;
         }
         var holder:Loader = Loader(contentHolder);
         if(holder.contentLoaderInfo.childAllowsParent)
         {
            pt.x = holder.content.width;
            pt.y = holder.content.height;
         }
         else
         {
            bridge = swfBridge;
            if(bridge)
            {
               request = new SWFBridgeRequest(SWFBridgeRequest.GET_SIZE_REQUEST);
               bridge.dispatchEvent(request);
               pt.x = request.data.width;
               pt.y = request.data.height;
            }
         }
         if(pt.x == 0)
         {
            pt.x = holder.contentLoaderInfo.width;
         }
         if(pt.y == 0)
         {
            pt.y = holder.contentLoaderInfo.height;
         }
         return pt;
      }
      
      public function load(url:Object = null) : void
      {
         var imageData:Bitmap = null;
         var request:SWFBridgeEvent = null;
         if(url)
         {
            _source = url;
         }
         if(contentHolder)
         {
            if(isContentLoaded)
            {
               if(contentHolder is Loader)
               {
                  try
                  {
                     if(Loader(contentHolder).content is Bitmap)
                     {
                        imageData = Bitmap(Loader(contentHolder).content);
                        if(imageData.bitmapData)
                        {
                           imageData.bitmapData = null;
                        }
                     }
                  }
                  catch(error:Error)
                  {
                  }
                  if(_swfBridge)
                  {
                     request = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_APPLICATION_UNLOADING,false,false,_swfBridge);
                     _swfBridge.dispatchEvent(request);
                  }
                  if(useUnloadAndStop && "unloadAndStop" in contentHolder)
                  {
                     contentHolder["unloadAndStop"](unloadAndStopGC);
                  }
                  else
                  {
                     Loader(contentHolder).unload();
                  }
                  if(!explicitLoaderContext)
                  {
                     _loaderContext = null;
                  }
               }
               else if(contentHolder is Bitmap)
               {
                  imageData = Bitmap(contentHolder);
                  if(imageData.bitmapData)
                  {
                     imageData.bitmapData = null;
                  }
               }
            }
            else if(contentHolder is Loader)
            {
               try
               {
                  Loader(contentHolder).close();
               }
               catch(error:Error)
               {
               }
            }
            try
            {
               if(contentHolder.parent == this)
               {
                  removeChild(contentHolder);
               }
            }
            catch(error:Error)
            {
               try
               {
                  removeChild(contentHolder);
               }
               catch(error1:Error)
               {
               }
            }
            contentHolder = null;
         }
         isContentLoaded = false;
         brokenImage = false;
         useUnloadAndStop = false;
         if(!_source || _source == "")
         {
            return;
         }
         contentHolder = loadContent(_source);
      }
      
      public function get parentAllowsChild() : Boolean
      {
         if(!isContentLoaded)
         {
            return false;
         }
         if(contentHolder is Loader)
         {
            return Loader(contentHolder).contentLoaderInfo.parentAllowsChild;
         }
         return true;
      }
      
      private function contentLoaderInfo_ioErrorEventHandler(event:IOErrorEvent) : void
      {
         source = getStyle("brokenImageSkin");
         load();
         contentChanged = false;
         brokenImage = true;
         if(hasEventListener(event.type))
         {
            dispatchEvent(event);
         }
         if(contentHolder is Loader)
         {
            removeInitSystemManagerCompleteListener(Loader(contentHolder).contentLoaderInfo);
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var skinClass:Class = null;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(contentChanged)
         {
            contentChanged = false;
            if(_autoLoad)
            {
               load(_source);
            }
         }
         if(isContentLoaded)
         {
            if(_scaleContent && !brokenImage)
            {
               doScaleContent();
            }
            else
            {
               doScaleLoader();
            }
            scaleContentChanged = false;
         }
         if(brokenImage && !brokenImageBorder)
         {
            skinClass = getStyle("brokenImageBorderSkin");
            if(skinClass)
            {
               brokenImageBorder = IFlexDisplayObject(new skinClass());
               if(brokenImageBorder is ISimpleStyleClient)
               {
                  ISimpleStyleClient(brokenImageBorder).styleName = this;
               }
               addChild(DisplayObject(brokenImageBorder));
            }
         }
         else if(!brokenImage && Boolean(brokenImageBorder))
         {
            removeChild(DisplayObject(brokenImageBorder));
            brokenImageBorder = null;
         }
         if(brokenImageBorder)
         {
            brokenImageBorder.setActualSize(unscaledWidth,unscaledHeight);
         }
         sizeShield();
      }
      
      private function doScaleContent() : void
      {
         var interiorWidth:Number = NaN;
         var interiorHeight:Number = NaN;
         var contentWidth:Number = NaN;
         var contentHeight:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var newXScale:Number = NaN;
         var newYScale:Number = NaN;
         var scale:Number = NaN;
         var w:Number = NaN;
         var h:Number = NaN;
         var holder:Loader = null;
         var sizeSet:Boolean = false;
         var lInfo:LoaderInfo = null;
         if(!isContentLoaded)
         {
            return;
         }
         if(!resizableContent || maintainAspectRatio && !flexContent)
         {
            unScaleContent();
            interiorWidth = unscaledWidth;
            interiorHeight = unscaledHeight;
            contentWidth = contentHolderWidth;
            contentHeight = contentHolderHeight;
            x = 0;
            y = 0;
            newXScale = contentWidth == 0 ? 1 : interiorWidth / contentWidth;
            newYScale = contentHeight == 0 ? 1 : interiorHeight / contentHeight;
            if(_maintainAspectRatio)
            {
               if(newXScale > newYScale)
               {
                  x = Math.floor((interiorWidth - contentWidth * newYScale) * getHorizontalAlignValue());
                  scale = newYScale;
               }
               else
               {
                  y = Math.floor((interiorHeight - contentHeight * newXScale) * getVerticalAlignValue());
                  scale = newXScale;
               }
               contentHolder.scaleX = scale;
               contentHolder.scaleY = scale;
            }
            else
            {
               contentHolder.scaleX = newXScale;
               contentHolder.scaleY = newYScale;
            }
            contentHolder.x = x;
            contentHolder.y = y;
         }
         else
         {
            contentHolder.x = 0;
            contentHolder.y = 0;
            w = unscaledWidth;
            h = unscaledHeight;
            if(contentHolder is Loader)
            {
               holder = Loader(contentHolder);
               try
               {
                  if(getContentSize().x > 0)
                  {
                     sizeSet = false;
                     if(holder.contentLoaderInfo.contentType == "application/x-shockwave-flash")
                     {
                        if(childAllowsParent)
                        {
                           if(holder.content is IFlexDisplayObject)
                           {
                              IFlexDisplayObject(holder.content).setActualSize(w,h);
                              sizeSet = true;
                           }
                        }
                        if(!sizeSet)
                        {
                           if(swfBridge)
                           {
                              swfBridge.dispatchEvent(new SWFBridgeRequest(SWFBridgeRequest.SET_ACTUAL_SIZE_REQUEST,false,false,null,{
                                 "width":w,
                                 "height":h
                              }));
                              sizeSet = true;
                           }
                        }
                     }
                     else
                     {
                        lInfo = holder.contentLoaderInfo;
                        if(lInfo)
                        {
                           contentHolder.scaleX = w / lInfo.width;
                           contentHolder.scaleY = h / lInfo.height;
                           sizeSet = true;
                        }
                     }
                     if(!sizeSet)
                     {
                        contentHolder.width = w;
                        contentHolder.height = h;
                     }
                  }
                  else if(childAllowsParent && !(holder.content is IFlexDisplayObject))
                  {
                     contentHolder.width = w;
                     contentHolder.height = h;
                  }
               }
               catch(error:Error)
               {
                  contentHolder.width = w;
                  contentHolder.height = h;
               }
               if(!parentAllowsChild)
               {
                  contentHolder.scrollRect = new Rectangle(0,0,w / contentHolder.scaleX,h / contentHolder.scaleY);
               }
            }
            else
            {
               contentHolder.width = w;
               contentHolder.height = h;
            }
         }
      }
      
      private function mouseShieldHandler(event:Event) : void
      {
         if(event["name"] != "mouseShield")
         {
            return;
         }
         if(parentAllowsChild)
         {
            return;
         }
         if(event["value"])
         {
            if(!mouseShield)
            {
               mouseShield = new Sprite();
               mouseShield.graphics.beginFill(0,0);
               mouseShield.graphics.drawRect(0,0,100,100);
               mouseShield.graphics.endFill();
            }
            if(!mouseShield.parent)
            {
               addChild(mouseShield);
            }
            sizeShield();
         }
         else if(Boolean(mouseShield) && Boolean(mouseShield.parent))
         {
            removeChild(mouseShield);
         }
      }
   }
}


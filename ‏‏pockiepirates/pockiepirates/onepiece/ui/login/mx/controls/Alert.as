package mx.controls
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventPhase;
   import mx.containers.Panel;
   import mx.controls.alertClasses.AlertForm;
   import mx.core.Application;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.managers.ISystemManager;
   import mx.managers.PopUpManager;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class Alert extends Panel
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      private static var cancelLabelOverride:String;
      
      private static var _resourceManager:IResourceManager;
      
      private static var noLabelOverride:String;
      
      private static var _yesLabel:String;
      
      private static var yesLabelOverride:String;
      
      private static var _okLabel:String;
      
      private static var _cancelLabel:String;
      
      private static var okLabelOverride:String;
      
      private static var _noLabel:String;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const YES:uint = 1;
      
      public static const NO:uint = 2;
      
      public static const OK:uint = 4;
      
      public static const CANCEL:uint = 8;
      
      public static const NONMODAL:uint = 32768;
      
      private static var initialized:Boolean = false;
      
      public static var buttonHeight:Number = 22;
      
      public static var buttonWidth:Number = FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0 ? 60 : 65;
      
      mx_internal var alertForm:AlertForm;
      
      public var defaultButtonFlag:uint = 4;
      
      public var text:String = "";
      
      public var buttonFlags:uint = 4;
      
      public var iconClass:Class;
      
      public function Alert()
      {
         super();
         title = "";
      }
      
      private static function initialize() : void
      {
         if(!initialized)
         {
            resourceManager.addEventListener(Event.CHANGE,static_resourceManager_changeHandler,false,0,true);
            static_resourcesChanged();
            initialized = true;
         }
      }
      
      private static function static_resourcesChanged() : void
      {
         cancelLabel = cancelLabelOverride;
         noLabel = noLabelOverride;
         okLabel = okLabelOverride;
         yesLabel = yesLabelOverride;
      }
      
      public static function get cancelLabel() : String
      {
         initialize();
         return _cancelLabel;
      }
      
      public static function set yesLabel(value:String) : void
      {
         yesLabelOverride = value;
         _yesLabel = value != null ? value : resourceManager.getString("controls","yesLabel");
      }
      
      private static function static_creationCompleteHandler(event:FlexEvent) : void
      {
         if(event.target is IFlexDisplayObject && event.eventPhase == EventPhase.AT_TARGET)
         {
            event.target.removeEventListener(FlexEvent.CREATION_COMPLETE,static_creationCompleteHandler);
            PopUpManager.centerPopUp(IFlexDisplayObject(event.target));
         }
      }
      
      public static function get noLabel() : String
      {
         initialize();
         return _noLabel;
      }
      
      public static function set cancelLabel(value:String) : void
      {
         cancelLabelOverride = value;
         _cancelLabel = value != null ? value : resourceManager.getString("controls","cancelLabel");
      }
      
      private static function get resourceManager() : IResourceManager
      {
         if(!_resourceManager)
         {
            _resourceManager = ResourceManager.getInstance();
         }
         return _resourceManager;
      }
      
      public static function get yesLabel() : String
      {
         initialize();
         return _yesLabel;
      }
      
      public static function set noLabel(value:String) : void
      {
         noLabelOverride = value;
         _noLabel = value != null ? value : resourceManager.getString("controls","noLabel");
      }
      
      private static function static_resourceManager_changeHandler(event:Event) : void
      {
         static_resourcesChanged();
      }
      
      public static function set okLabel(value:String) : void
      {
         okLabelOverride = value;
         _okLabel = value != null ? value : resourceManager.getString("controls","okLabel");
      }
      
      public static function get okLabel() : String
      {
         initialize();
         return _okLabel;
      }
      
      public static function show(text:String = "", title:String = "", flags:uint = 4, parent:Sprite = null, closeHandler:Function = null, iconClass:Class = null, defaultButtonFlag:uint = 4) : Alert
      {
         var sm:ISystemManager = null;
         var modal:Boolean = flags & Alert.NONMODAL ? false : true;
         if(!parent)
         {
            sm = ISystemManager(Application.application.systemManager);
            if(sm.useSWFBridge())
            {
               parent = Sprite(sm.getSandboxRoot());
            }
            else
            {
               parent = Sprite(Application.application);
            }
         }
         var alert:Alert = new Alert();
         if(Boolean(flags & Alert.OK) || Boolean(flags & Alert.CANCEL) || Boolean(flags & Alert.YES) || Boolean(flags & Alert.NO))
         {
            alert.buttonFlags = flags;
         }
         if(defaultButtonFlag == Alert.OK || defaultButtonFlag == Alert.CANCEL || defaultButtonFlag == Alert.YES || defaultButtonFlag == Alert.NO)
         {
            alert.defaultButtonFlag = defaultButtonFlag;
         }
         alert.text = text;
         alert.title = title;
         alert.iconClass = iconClass;
         if(closeHandler != null)
         {
            alert.addEventListener(CloseEvent.CLOSE,closeHandler);
         }
         if(parent is UIComponent)
         {
            alert.moduleFactory = UIComponent(parent).moduleFactory;
         }
         PopUpManager.addPopUp(alert,parent,modal);
         alert.setActualSize(alert.getExplicitOrMeasuredWidth(),alert.getExplicitOrMeasuredHeight());
         alert.addEventListener(FlexEvent.CREATION_COMPLETE,static_creationCompleteHandler);
         return alert;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var messageStyleName:String = null;
         super.styleChanged(styleProp);
         if(styleProp == "messageStyleName")
         {
            messageStyleName = getStyle("messageStyleName");
            styleName = messageStyleName;
         }
         if(alertForm)
         {
            alertForm.styleChanged(styleProp);
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         var m:EdgeMetrics = viewMetrics;
         measuredWidth = Math.max(measuredWidth,alertForm.getExplicitOrMeasuredWidth() + m.left + m.right);
         measuredHeight = alertForm.getExplicitOrMeasuredHeight() + m.top + m.bottom;
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         static_resourcesChanged();
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var vm:EdgeMetrics = viewMetrics;
         alertForm.setActualSize(unscaledWidth - vm.left - vm.right - getStyle("paddingLeft") - getStyle("paddingRight"),unscaledHeight - vm.top - vm.bottom - getStyle("paddingTop") - getStyle("paddingBottom"));
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         var messageStyleName:String = getStyle("messageStyleName");
         if(messageStyleName)
         {
            styleName = messageStyleName;
         }
         if(!alertForm)
         {
            alertForm = new AlertForm();
            alertForm.styleName = this;
            addChild(alertForm);
         }
      }
      
      override protected function initializeAccessibility() : void
      {
         if(Alert.createAccessibilityImplementation != null)
         {
            Alert.createAccessibilityImplementation(this);
         }
      }
   }
}


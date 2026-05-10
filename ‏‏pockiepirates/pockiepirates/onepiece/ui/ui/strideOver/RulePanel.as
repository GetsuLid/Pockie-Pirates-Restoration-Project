package ui.strideOver
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.*;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RulePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _RulePanel_GlowLabel1:GlowLabel;
      
      public var _RulePanel_GlowText1:GlowText;
      
      public var _RulePanel_GlowText3:GlowText;
      
      public var _RulePanel_GlowText2:GlowText;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":441,
               "height":537,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_RulePanel_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontSize = 16;
                     this.fontWeight = "bold";
                     this.color = 10876374;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":441,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_RulePanel_GlowText1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":72,
                        "width":406,
                        "height":20,
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_RulePanel_GlowText2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":88,
                        "width":406,
                        "height":20,
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowText,
                  "id":"_RulePanel_GlowText3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "width":406,
                        "height":487,
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "x":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___RulePanel_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":408,
                        "y":8
                     };
                  }
               })]
            };
         }
      });
      
      private var _95474624desc1:String;
      
      public function RulePanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "Border112";
         this.width = 441;
         this.height = 537;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RulePanel._watcherSetupUtil = param1;
      }
      
      public function ___RulePanel_GlowButton1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _RulePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.RunRule;
         _loc1_ = DataManager.Instance.skyStartCool2;
         _loc1_ = DataManager.Instance.skyStartCool;
         _loc1_ = UILang.StrideOverRule;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RulePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RulePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_strideOver_RulePanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      private function _RulePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RunRule;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _RulePanel_GlowLabel1.htmlText = param1;
         },"_RulePanel_GlowLabel1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.skyStartCool2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _RulePanel_GlowText1.htmlText = param1;
         },"_RulePanel_GlowText1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.skyStartCool;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _RulePanel_GlowText2.htmlText = param1;
         },"_RulePanel_GlowText2.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.StrideOverRule;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _RulePanel_GlowText3.htmlText = param1;
         },"_RulePanel_GlowText3.htmlText");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get desc1() : String
      {
         return this._95474624desc1;
      }
      
      private function set desc1(value:String) : void
      {
         var oldValue:Object = this._95474624desc1;
         if(oldValue !== value)
         {
            this._95474624desc1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc1",oldValue,value));
         }
      }
      
      override public function show() : void
      {
         super.show();
         var str1:String = DataManager.Instance.skyNameCool;
         var str2:String = DataManager.Instance.skyStartCool;
         desc1 = UILang.RunRule.replace("*",str1).replace("^",str2);
      }
   }
}


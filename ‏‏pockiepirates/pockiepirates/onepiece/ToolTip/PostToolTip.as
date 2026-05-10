package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowText;
   import data.Land.PostVisitor;
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
   import mx.binding.*;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PostToolTip extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _951530617content:String;
      
      private var _3556653text:GlowText;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function PostToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":230,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"text",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "selectable":false,
                           "y":5,
                           "x":5
                        };
                     }
                  })]
               };
            }
         });
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.color = 16777215;
            this.fontSize = 12;
         };
         this.styleName = "Border146";
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.width = 230;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PostToolTip._watcherSetupUtil = param1;
      }
      
      override public function set data(value:Object) : void
      {
         content = PostVisitor(value).toolTip;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PostToolTip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PostToolTip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_PostToolTipWatcherSetupUtil");
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
      
      public function set text(param1:GlowText) : void
      {
         var _loc2_:Object = this._3556653text;
         if(_loc2_ !== param1)
         {
            this._3556653text = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text",_loc2_,param1));
         }
      }
      
      private function _PostToolTip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return text.height + 10;
         },function(param1:Number):void
         {
            this.height = param1;
         },"this.height");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = content;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            text.htmlText = param1;
         },"text.htmlText");
         result[1] = binding;
         return result;
      }
      
      private function set content(value:String) : void
      {
         var oldValue:Object = this._951530617content;
         if(oldValue !== value)
         {
            this._951530617content = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",oldValue,value));
         }
      }
      
      private function _PostToolTip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = text.height + 10;
         _loc1_ = content;
      }
      
      [Bindable(event="propertyChange")]
      private function get content() : String
      {
         return this._951530617content;
      }
      
      [Bindable(event="propertyChange")]
      public function get text() : GlowText
      {
         return this._3556653text;
      }
   }
}


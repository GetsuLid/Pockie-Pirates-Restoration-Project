package ui.vip
{
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
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
   import mx.binding.*;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class VipTastePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":570,
               "height":340,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___VipTastePanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":537,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Border/vipTaste.jpg"};
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_VipTastePanel_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "0";
                     this.top = "10";
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___VipTastePanel_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button205",
                        "width":108,
                        "height":43,
                        "x":429,
                        "y":271
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/vipTaste2.png",
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "x":439,
                        "y":284
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      public var _VipTastePanel_GlowLabel1:GlowLabel;
      
      public function VipTastePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 570;
         this.height = 340;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VipTastePanel._watcherSetupUtil = param1;
      }
      
      private function charge() : void
      {
         ShowResult.inst.showResult(-102);
      }
      
      private function _VipTastePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.VipTaste;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:VipTastePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VipTastePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_VipTastePanelWatcherSetupUtil");
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
      
      public function ___VipTastePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      public function ___VipTastePanel_Button2_click(event:MouseEvent) : void
      {
         charge();
      }
      
      private function _VipTastePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VipTaste;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipTastePanel_GlowLabel1.text = param1;
         },"_VipTastePanel_GlowLabel1.text");
         result[0] = binding;
         return result;
      }
   }
}


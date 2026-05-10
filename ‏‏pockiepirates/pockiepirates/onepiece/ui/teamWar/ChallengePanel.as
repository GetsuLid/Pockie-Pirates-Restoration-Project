package teamWar
{
   import ExtendComp.GlowLabel;
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
   import mx.binding.*;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   import teamWar.Comp.MergeBtnPanel1;
   import teamWar.Comp.MergeBtnPanel2;
   import teamWar.Comp.MergeBtnPanel3;
   
   use namespace mx_internal;
   
   public class ChallengePanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":382,
               "height":422,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___ChallengePanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":352,
                        "y":8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ChallengePanel_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":10};
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalGap = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":42,
                        "height":370,
                        "horizontalScrollPolicy":"off",
                        "width":343,
                        "childDescriptors":[new UIComponentDescriptor({"type":MergeBtnPanel1}),new UIComponentDescriptor({"type":MergeBtnPanel2}),new UIComponentDescriptor({"type":MergeBtnPanel3})]
                     };
                  }
               })]
            };
         }
      });
      
      public var _ChallengePanel_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array = [];
      
      public function ChallengePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 382;
         this.height = 422;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChallengePanel._watcherSetupUtil = param1;
      }
      
      private function _ChallengePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.EverDayChallenge;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ChallengePanel_GlowLabel1.text = param1;
         },"_ChallengePanel_GlowLabel1.text");
         result[0] = binding;
         return result;
      }
      
      public function ___ChallengePanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChallengePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChallengePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_ChallengePanelWatcherSetupUtil");
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
      
      private function _ChallengePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.EverDayChallenge;
      }
   }
}


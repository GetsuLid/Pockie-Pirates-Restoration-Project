package teamWar.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import events.NavigationEvent;
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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class TeamWarJoinRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TeamWarJoinRenderer_GlowLabel1:GlowLabel;
      
      public var _TeamWarJoinRenderer_GlowLabel2:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":88,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border113",
                        "width":500,
                        "height":84,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/TeamWar/icon2.jpg",
                                 "width":64,
                                 "height":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TeamWarJoinRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.color = 10876374;
                              this.fontSize = 14;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_TeamWarJoinRenderer_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":33,
                                 "width":162,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_TeamWarJoinRenderer_GlowButton1",
                           "events":{"click":"___TeamWarJoinRenderer_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 14;
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":396,
                                 "width":77,
                                 "height":31
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TeamWarJoinRenderer_GlowButton1:GlowButton;
      
      mx_internal var _watchers:Array = [];
      
      public function TeamWarJoinRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 88;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TeamWarJoinRenderer._watcherSetupUtil = param1;
      }
      
      private function _TeamWarJoinRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.LegBatt;
         _loc1_ = UILang.LeginLevelUp;
         _loc1_ = UILang.MyJoBatt;
         _loc1_ = DataManager.Instance.isLegionWarBegin;
      }
      
      private function _TeamWarJoinRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LegBatt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamWarJoinRenderer_GlowLabel1.text = param1;
         },"_TeamWarJoinRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LeginLevelUp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamWarJoinRenderer_GlowLabel2.text = param1;
         },"_TeamWarJoinRenderer_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MyJoBatt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _TeamWarJoinRenderer_GlowButton1.label = param1;
         },"_TeamWarJoinRenderer_GlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.isLegionWarBegin;
         },function(param1:Boolean):void
         {
            _TeamWarJoinRenderer_GlowButton1.enabled = param1;
         },"_TeamWarJoinRenderer_GlowButton1.enabled");
         result[3] = binding;
         return result;
      }
      
      private function resolveList(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.teamWarData = e.result;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "teamWar/TeamWarField.swf";
            dispatchEvent(event);
         }
      }
      
      private function teamWarField() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionReplayList",resolveList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___TeamWarJoinRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         teamWarField();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TeamWarJoinRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TeamWarJoinRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_TeamWarJoinRendererWatcherSetupUtil");
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
   }
}


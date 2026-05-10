package teamWar.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
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
   import teamWar.TeamWarPanel;
   
   use namespace mx_internal;
   
   public class ArmyRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ArmyRenderer_GlowLabel1:GlowLabel;
      
      public var _ArmyRenderer_GlowLabel2:GlowLabel;
      
      public var _ArmyRenderer_GlowLabel3:GlowLabel;
      
      public var _ArmyRenderer_GlowLabel4:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _ArmyRenderer_GlowButton1:GlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
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
                                 "source":"../assets/images/UI/TeamWar/icon1.jpg",
                                 "width":64,
                                 "height":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_ArmyRenderer_GlowLabel1",
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
                           "id":"_ArmyRenderer_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":197,
                                 "y":11
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_ArmyRenderer_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16776116;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":33
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_ArmyRenderer_GlowLabel4",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_ArmyRenderer_GlowButton1",
                           "events":{"click":"___ArmyRenderer_GlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                              this.right = "10";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "width":77,
                                 "height":25
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var leftTimes:int;
      
      public function ArmyRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 88;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ArmyRenderer._watcherSetupUtil = param1;
      }
      
      private function replaceControl() : void
      {
         if(DataManager.Instance.isTeamWarBegin)
         {
            ShowResult.inst.showResult(-1,UILang.ArmyTip);
         }
         else if((parent.parent as TeamWarPanel).replaceNum > 0)
         {
            if(DataManager.Instance.role.isTeamReplaced)
            {
               doSelect(1);
            }
            else
            {
               GameAlert.show(135,UILang.ArmyTip2,doSelect);
            }
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.ReplaceNotEnough);
         }
      }
      
      private function _ArmyRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.TeamBatt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyRenderer_GlowLabel1.text = param1;
         },"_ArmyRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "(" + UILang.TeamWarDesc + ")";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyRenderer_GlowLabel2.text = param1;
         },"_ArmyRenderer_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.DayFixed_O_39;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyRenderer_GlowLabel3.text = param1;
         },"_ArmyRenderer_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.JoActiGet_I_I;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyRenderer_GlowLabel4.text = param1;
         },"_ArmyRenderer_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MyJoin;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ArmyRenderer_GlowButton1.label = param1;
         },"_ArmyRenderer_GlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.isTeamWarBegin) && !DataManager.Instance.role.isTeamReplaced;
         },function(param1:Boolean):void
         {
            _ArmyRenderer_GlowButton1.enabled = param1;
         },"_ArmyRenderer_GlowButton1.enabled");
         result[5] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ArmyRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ArmyRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_teamWar_Comp_ArmyRendererWatcherSetupUtil");
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
      
      private function _ArmyRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.TeamBatt;
         _loc1_ = "(" + UILang.TeamWarDesc + ")";
         _loc1_ = UILang.DayFixed_O_39;
         _loc1_ = UILang.JoActiGet_I_I;
         _loc1_ = UILang.MyJoin;
         _loc1_ = DataManager.Instance.isTeamWarBegin && !DataManager.Instance.role.isTeamReplaced;
      }
      
      private function onResult(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.role.isTeamReplaced = !DataManager.Instance.role.isTeamReplaced;
            if(DataManager.Instance.role.isTeamReplaced)
            {
               ShowResult.inst.showResult(-2,UILang.TeamBatt3);
            }
            else
            {
               ShowResult.inst.showResult(-2,UILang.TeamBatt4);
            }
         }
      }
      
      private function doSelect(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("campService","teamReplace",onResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,!DataManager.Instance.role.isTeamReplaced]);
         }
      }
      
      private function join() : void
      {
         if(DataManager.Instance.role.officialRanklevel >= 30)
         {
            HttpServerManager.getInstance().callServer("campService","team",resolveJoin,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.RoLvToTeamBat_30);
         }
      }
      
      private function openWin(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         event.data = leftTimes;
         dispatchEvent(event);
      }
      
      private function resolveJoin(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            leftTimes = e.result.count;
            openWin("army");
         }
      }
      
      public function ___ArmyRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         join();
      }
   }
}


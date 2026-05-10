package ui.land.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.skill.SkillData;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class StudyUp extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array;
      
      public var _StudyUp_GlowText1:GlowText;
      
      private var _2147320652skillId:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _StudyUp_SWFLoader1:SWFLoader;
      
      private var _109496913skill:SkillData;
      
      public var _StudyUp_GlowLabel1:GlowLabel;
      
      public var _StudyUp_GlowLabel2:GlowLabel;
      
      public var _StudyUp_GlowLabel3:GlowLabel;
      
      public var _StudyUp_GlowLabel4:GlowLabel;
      
      public var _StudyUp_GlowLabel5:GlowLabel;
      
      public var _StudyUp_GlowLabel6:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _StudyUp_GlowButton1:GlowButton;
      
      public function StudyUp()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":500,
                  "height":250,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StudyUp_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.color = 10876374;
                        this.fontWeight = "bold";
                        this.fontSize = 16;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseEnabled":false,
                           "mouseChildren":false,
                           "width":360,
                           "y":4
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border113",
                           "x":13,
                           "y":31,
                           "width":473,
                           "height":207
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border211",
                           "x":81,
                           "y":39,
                           "width":395,
                           "height":70
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowText,
                     "id":"_StudyUp_GlowText1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":39,
                           "x":90,
                           "width":370,
                           "height":69
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border227",
                           "width":48,
                           "height":48,
                           "y":50,
                           "x":24,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_StudyUp_SWFLoader1",
                              "events":{
                                 "rollOver":"___StudyUp_SWFLoader1_rollOver",
                                 "rollOut":"___StudyUp_SWFLoader1_rollOut"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":1,
                                    "y":1
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StudyUp_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.color = 16763194;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":122,
                           "x":31
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StudyUp_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":145,
                           "x":58
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StudyUp_GlowLabel4",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":165,
                           "x":58
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StudyUp_GlowLabel5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":145,
                           "x":388
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_StudyUp_GlowLabel6",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "y":165,
                           "x":388
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_StudyUp_GlowButton1",
                     "events":{"click":"___StudyUp_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "y":200,
                           "x":141,
                           "width":104
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":17,
                           "y":115,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":466,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1218",
                           "x":17,
                           "y":190,
                           "mouseChildren":false,
                           "mouseEnabled":false,
                           "width":466,
                           "height":2
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___StudyUp_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":460,
                           "y":3
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
            this.fontSize = 12;
         };
         this.canMove = true;
         this.width = 500;
         this.height = 250;
         this.styleName = "Border102";
         this.addEventListener("preinitialize",___StudyUp_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StudyUp._watcherSetupUtil = param1;
      }
      
      private function skillGoRankResolves(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.hero.resolveHeroList(e);
            super.hide();
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.SkillDesc7);
         }
      }
      
      public function ___StudyUp_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         preInit();
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StudyUp = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StudyUp_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_land_Comp_StudyUpWatcherSetupUtil");
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
      
      private function set skillId(value:int) : void
      {
         var oldValue:Object = this._2147320652skillId;
         if(oldValue !== value)
         {
            this._2147320652skillId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillId",oldValue,value));
         }
      }
      
      public function ___StudyUp_SWFLoader1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function set skill(value:SkillData) : void
      {
         var oldValue:Object = this._109496913skill;
         if(oldValue !== value)
         {
            this._109496913skill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",oldValue,value));
         }
      }
      
      public function ___StudyUp_GlowButton2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _StudyUp_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.SkillDesc8;
         _loc1_ = skill.desc2;
         _loc1_ = skill.url;
         _loc1_ = UILang.SkillDesc2;
         _loc1_ = UILang.SkillDesc3;
         _loc1_ = UILang.SkillDesc4;
         _loc1_ = DataManager.Instance.conRoleLevel ? UILang.SkillDesc9 : UILang.SkillDesc10;
         _loc1_ = DataManager.Instance.conRoleLevel ? 65280 : 16711680;
         _loc1_ = DataManager.Instance.conRoleCamp ? UILang.SkillDesc9 : UILang.SkillDesc10;
         _loc1_ = DataManager.Instance.conRoleCamp ? 65280 : 16711680;
         _loc1_ = UILang.SkillDesc6;
         _loc1_ = DataManager.Instance.canUp == 2;
      }
      
      private function _StudyUp_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillDesc8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowLabel1.text = param1;
         },"_StudyUp_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.desc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowText1.text = param1;
         },"_StudyUp_GlowText1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return skill.url;
         },function(param1:Object):void
         {
            _StudyUp_SWFLoader1.source = param1;
         },"_StudyUp_SWFLoader1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillDesc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowLabel2.text = param1;
         },"_StudyUp_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillDesc3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowLabel3.text = param1;
         },"_StudyUp_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillDesc4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowLabel4.htmlText = param1;
         },"_StudyUp_GlowLabel4.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.conRoleLevel ? UILang.SkillDesc9 : UILang.SkillDesc10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowLabel5.text = param1;
         },"_StudyUp_GlowLabel5.text");
         result[6] = binding;
         binding = new Binding(this,function():uint
         {
            return DataManager.Instance.conRoleLevel ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _StudyUp_GlowLabel5.setStyle("color",param1);
         },"_StudyUp_GlowLabel5.color");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.conRoleCamp ? UILang.SkillDesc9 : UILang.SkillDesc10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowLabel6.text = param1;
         },"_StudyUp_GlowLabel6.text");
         result[8] = binding;
         binding = new Binding(this,function():uint
         {
            return DataManager.Instance.conRoleCamp ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _StudyUp_GlowLabel6.setStyle("color",param1);
         },"_StudyUp_GlowLabel6.color");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SkillDesc6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _StudyUp_GlowButton1.label = param1;
         },"_StudyUp_GlowButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.canUp == 2;
         },function(param1:Boolean):void
         {
            _StudyUp_GlowButton1.enabled = param1;
         },"_StudyUp_GlowButton1.enabled");
         result[11] = binding;
         return result;
      }
      
      private function studyUp() : void
      {
         HttpServerManager.getInstance().callServer("generalService","skillTalent",skillGoRankResolves,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,2]);
      }
      
      public function ___StudyUp_SWFLoader1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get skill() : SkillData
      {
         return this._109496913skill;
      }
      
      private function preInit() : void
      {
         if(DataManager.Instance.role.job.id == 10001)
         {
            skillId = 31111;
         }
         if(DataManager.Instance.role.job.id == 10002)
         {
            skillId = 32109;
         }
         if(DataManager.Instance.role.job.id == 10003)
         {
            skillId = 33110;
         }
         if(DataManager.Instance.role.job.id == 10004)
         {
            skillId = 34112;
         }
         skill = Global.getSkill(skillId);
         skill.level = 1;
      }
      
      [Bindable(event="propertyChange")]
      private function get skillId() : int
      {
         return this._2147320652skillId;
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.skillToolTipCreater(skill,e);
      }
      
      public function ___StudyUp_GlowButton1_click(event:MouseEvent) : void
      {
         studyUp();
      }
   }
}


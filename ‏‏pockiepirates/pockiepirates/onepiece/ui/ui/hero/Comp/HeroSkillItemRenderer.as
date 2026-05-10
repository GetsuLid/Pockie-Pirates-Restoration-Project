package ui.hero.Comp
{
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ToolTipCreater;
   import constant.TaskConfig;
   import data.skill.SkillData;
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
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class HeroSkillItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HeroSkillItemRenderer_StylesInit_done:Boolean = false;
      
      public var _HeroSkillItemRenderer_GlowButton1:GlowButton;
      
      public var _HeroSkillItemRenderer_GlowButton3:GlowButton;
      
      public var _HeroSkillItemRenderer_GlowButton2:GlowButton;
      
      public var _HeroSkillItemRenderer_GlowButton4:GlowButton;
      
      private var _2067263007showBtn:Boolean;
      
      mx_internal var _watchers:Array = [];
      
      public var _HeroSkillItemRenderer_SWFLoader1:SWFLoader;
      
      public var _HeroSkillItemRenderer_GlowLabel1:GlowLabel;
      
      public var _HeroSkillItemRenderer_GlowLabel2:GlowLabel;
      
      public var _HeroSkillItemRenderer_Image1:Image;
      
      public var _HeroSkillItemRenderer_Image2:Image;
      
      private var _206036743btnName:String;
      
      private var _109496913skill:SkillData;
      
      public var _HeroSkillItemRenderer_Label1:Label;
      
      public var _HeroSkillItemRenderer_Label2:Label;
      
      public var _HeroSkillItemRenderer_Label3:Label;
      
      private var _487847541canEvolution:Boolean;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _embed_css__images_Border_Border207_png_775922435:Class = HeroSkillItemRenderer__embed_css__images_Border_Border207_png_775922435;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":199,
               "height":110,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"bg",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border207",
                        "x":11,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "width":182,
                        "height":105,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_HeroSkillItemRenderer_GlowLabel1",
                           "stylesFactory":function():void
                           {
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":30,
                                 "y":2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"",
                                 "width":50,
                                 "height":50,
                                 "y":24,
                                 "x":21,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":SWFLoader,
                                    "id":"_HeroSkillItemRenderer_SWFLoader1",
                                    "events":{
                                       "rollOver":"___HeroSkillItemRenderer_SWFLoader1_rollOver",
                                       "rollOut":"___HeroSkillItemRenderer_SWFLoader1_rollOut"
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
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"",
                                 "width":107,
                                 "height":19,
                                 "x":75,
                                 "y":31,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_HeroSkillItemRenderer_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                       this.fontWeight = "bold";
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "x":0
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"",
                                 "width":107,
                                 "height":19,
                                 "x":75,
                                 "y":51,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_HeroSkillItemRenderer_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_HeroSkillItemRenderer_GlowLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"x":40};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_HeroSkillItemRenderer_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":1
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_HeroSkillItemRenderer_GlowButton1",
                           "events":{"click":"___HeroSkillItemRenderer_GlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":18,
                                 "y":78,
                                 "width":60,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_HeroSkillItemRenderer_GlowButton2",
                           "events":{"click":"___HeroSkillItemRenderer_GlowButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":18,
                                 "y":78,
                                 "width":60,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_HeroSkillItemRenderer_GlowButton3",
                           "events":{"click":"___HeroSkillItemRenderer_GlowButton3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button113",
                                 "x":19,
                                 "y":78,
                                 "width":60,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowButton,
                           "id":"_HeroSkillItemRenderer_GlowButton4",
                           "events":{"click":"___HeroSkillItemRenderer_GlowButton4_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 0;
                              this.paddingRight = 0;
                              this.paddingTop = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":78,
                                 "styleName":"Button113",
                                 "width":60,
                                 "height":22
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_HeroSkillItemRenderer_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":21,
                        "height":22,
                        "x":20,
                        "y":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_HeroSkillItemRenderer_Image2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":21,
                        "height":22,
                        "x":20,
                        "y":5
                     };
                  }
               })]
            };
         }
      });
      
      private var _3141bg:Canvas;
      
      public function HeroSkillItemRenderer()
      {
         super();
         mx_internal::_document = this;
         mx_internal::_HeroSkillItemRenderer_StylesInit();
         this.width = 199;
         this.height = 110;
         this.addEventListener("dataChange",___HeroSkillItemRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroSkillItemRenderer._watcherSetupUtil = param1;
      }
      
      private function _HeroSkillItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = skill.position == 1 ? UILang.ActiveSkillP : UILang.PassiveSkillP;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowLabel1.text = param1;
         },"_HeroSkillItemRenderer_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return skill.position == 1 ? 16775065 : 16777215;
         },function(param1:uint):void
         {
            _HeroSkillItemRenderer_GlowLabel1.setStyle("color",param1);
         },"_HeroSkillItemRenderer_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return skill.url;
         },function(param1:Object):void
         {
            _HeroSkillItemRenderer_SWFLoader1.source = param1;
         },"_HeroSkillItemRenderer_SWFLoader1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_Label1.text = param1;
         },"_HeroSkillItemRenderer_Label1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.level == 0 ? "" : UILang.StrenLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_Label2.text = param1;
         },"_HeroSkillItemRenderer_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return skill.skillTypeName == "";
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_Label2.visible = param1;
         },"_HeroSkillItemRenderer_Label2.visible");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.level == 0 ? "" : skill.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowLabel2.text = param1;
         },"_HeroSkillItemRenderer_GlowLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return skill.skillTypeName == "";
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_GlowLabel2.visible = param1;
         },"_HeroSkillItemRenderer_GlowLabel2.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = skill.skillTypeName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_Label3.text = param1;
         },"_HeroSkillItemRenderer_Label3.text");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return skill.skillTypeName != "";
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_Label3.visible = param1;
         },"_HeroSkillItemRenderer_Label3.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = btnName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowButton1.label = param1;
         },"_HeroSkillItemRenderer_GlowButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return skill.position != 1;
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_GlowButton1.visible = param1;
         },"_HeroSkillItemRenderer_GlowButton1.visible");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Study;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowButton2.label = param1;
         },"_HeroSkillItemRenderer_GlowButton2.label");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.currentSkillIsRole) && skill.id == 0 && skill.position == 1;
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_GlowButton2.visible = param1;
         },"_HeroSkillItemRenderer_GlowButton2.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.GoRank;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowButton3.label = param1;
         },"_HeroSkillItemRenderer_GlowButton3.label");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.currentSkillIsRole) && skill.position == 1 && skill.skillType != 3 && skill.id != 0;
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_GlowButton3.visible = param1;
         },"_HeroSkillItemRenderer_GlowButton3.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showBtn && (skill.position == 1 ? false : true);
         },function(param1:Boolean):void
         {
            _HeroSkillItemRenderer_GlowButton4.visible = param1;
         },"_HeroSkillItemRenderer_GlowButton4.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Stren;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowButton4.label = param1;
         },"_HeroSkillItemRenderer_GlowButton4.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.UpgSkillLv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroSkillItemRenderer_GlowButton4.toolTip = param1;
         },"_HeroSkillItemRenderer_GlowButton4.toolTip");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/train" + skill.position.toString() + ".png";
         },function(param1:Object):void
         {
            _HeroSkillItemRenderer_Image1.source = param1;
         },"_HeroSkillItemRenderer_Image1.source");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Border/train" + skill.position.toString() + ".png";
         },function(param1:Object):void
         {
            _HeroSkillItemRenderer_Image2.source = param1;
         },"_HeroSkillItemRenderer_Image2.source");
         result[20] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get btnName() : String
      {
         return this._206036743btnName;
      }
      
      public function set bg(param1:Canvas) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
         }
      }
      
      private function skillGoRankResolves(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.hero.resolveHeroList(e);
         }
      }
      
      private function updateSkill() : void
      {
         if(DataManager.Instance.hero.selectHero)
         {
            HttpServerManager.getInstance().callServer("generalService","skillUp",resolveUpdateSkill,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.hero.selectHero.id,skill.id]);
         }
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get canEvolution() : Boolean
      {
         return this._487847541canEvolution;
      }
      
      private function set btnName(value:String) : void
      {
         var oldValue:Object = this._206036743btnName;
         if(oldValue !== value)
         {
            this._206036743btnName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnName",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroSkillItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroSkillItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_Comp_HeroSkillItemRendererWatcherSetupUtil");
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
      
      private function set skill(value:SkillData) : void
      {
         var oldValue:Object = this._109496913skill;
         if(oldValue !== value)
         {
            this._109496913skill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill",oldValue,value));
         }
      }
      
      public function ___HeroSkillItemRenderer_SWFLoader1_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function set canEvolution(value:Boolean) : void
      {
         var oldValue:Object = this._487847541canEvolution;
         if(oldValue !== value)
         {
            this._487847541canEvolution = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canEvolution",oldValue,value));
         }
      }
      
      public function ___HeroSkillItemRenderer_SWFLoader1_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function ___HeroSkillItemRenderer_GlowButton1_click(event:MouseEvent) : void
      {
         skillAction();
      }
      
      private function resolveSkillAwaken(e:ResultEvent) : void
      {
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_LEARN_SKILL))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         HttpServerManager.getInstance().callServer("generalService","general",DataManager.Instance.hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      private function get showBtn() : Boolean
      {
         return this._2067263007showBtn;
      }
      
      private function onDataChange() : void
      {
         skill = data as SkillData;
         if(Boolean(skill) && Boolean(skill.id))
         {
            btnName = UILang.Reset;
            if(skill.isLock)
            {
               showBtn = false;
            }
            else
            {
               showBtn = true;
            }
         }
         else
         {
            btnName = UILang.Grasp;
            showBtn = false;
         }
         var b1:int = int(DataManager.Instance.canUp);
         var b2:Boolean = Boolean(DataManager.Instance.currentSkillIsRole);
      }
      
      private function set showBtn(value:Boolean) : void
      {
         var oldValue:Object = this._2067263007showBtn;
         if(oldValue !== value)
         {
            this._2067263007showBtn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBtn",oldValue,value));
         }
      }
      
      private function resetSkill() : void
      {
         GameAlert.show(2,UILang.CostResetSkill_G,decideResetSkill);
      }
      
      public function ___HeroSkillItemRenderer_GlowButton3_click(event:MouseEvent) : void
      {
         skillGoRank();
      }
      
      mx_internal function _HeroSkillItemRenderer_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HeroSkillItemRenderer_StylesInit_done)
         {
            return;
         }
         mx_internal::_HeroSkillItemRenderer_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border207");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border207",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border207_png_775922435;
            };
         }
      }
      
      private function study() : void
      {
         HttpServerManager.getInstance().callServer("generalService","skillTalent",skillGoRankResolves,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,1]);
      }
      
      private function decideResetSkill(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","skillClean",resolveResetSkill,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.hero.selectHero.id,skill.position]);
         }
      }
      
      public function ___HeroSkillItemRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function awakeSkill() : void
      {
         HttpServerManager.getInstance().callServer("generalService","skillAwaken",resolveSkillAwaken,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,DataManager.Instance.hero.selectHero.id,skill.position]);
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : Canvas
      {
         return this._3141bg;
      }
      
      private function resolveResetSkill(e:ResultEvent) : void
      {
         DataManager.Instance.hero.resolveHeroList(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get skill() : SkillData
      {
         return this._109496913skill;
      }
      
      private function _HeroSkillItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = skill.position == 1 ? UILang.ActiveSkillP : UILang.PassiveSkillP;
         _loc1_ = skill.position == 1 ? 16775065 : 16777215;
         _loc1_ = skill.url;
         _loc1_ = skill.name;
         _loc1_ = skill.level == 0 ? "" : UILang.StrenLv;
         _loc1_ = skill.skillTypeName == "";
         _loc1_ = skill.level == 0 ? "" : skill.level;
         _loc1_ = skill.skillTypeName == "";
         _loc1_ = skill.skillTypeName;
         _loc1_ = skill.skillTypeName != "";
         _loc1_ = btnName;
         _loc1_ = skill.position != 1;
         _loc1_ = UILang.Study;
         _loc1_ = DataManager.Instance.currentSkillIsRole && skill.id == 0 && skill.position == 1;
         _loc1_ = UILang.GoRank;
         _loc1_ = DataManager.Instance.currentSkillIsRole && skill.position == 1 && skill.skillType != 3 && skill.id != 0;
         _loc1_ = showBtn && (skill.position == 1 ? false : true);
         _loc1_ = UILang.Stren;
         _loc1_ = UILang.UpgSkillLv;
         _loc1_ = "../assets/images/UI/Border/train" + skill.position.toString() + ".png";
         _loc1_ = "../assets/images/UI/Border/train" + skill.position.toString() + ".png";
      }
      
      private function skillGoRank() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = "studyUp";
         main.inst.dispatchEvent(event);
      }
      
      private function skillAction() : void
      {
         if(Boolean(skill) && Boolean(skill.id))
         {
            resetSkill();
         }
         else
         {
            awakeSkill();
         }
      }
      
      public function ___HeroSkillItemRenderer_GlowButton2_click(event:MouseEvent) : void
      {
         study();
      }
      
      public function ___HeroSkillItemRenderer_GlowButton4_click(event:MouseEvent) : void
      {
         updateSkill();
      }
      
      private function rollOver(e:MouseEvent) : void
      {
         ToolTipCreater.skillToolTipCreater(skill,e);
      }
      
      private function resolveUpdateSkill(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.SkillUpgSucc);
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_SKILL_UP))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         DataManager.Instance.hero.resolveHeroList(e);
      }
   }
}


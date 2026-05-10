package ui.hero
{
   import ExtendComp.ExtendList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Util.ToolTipCreater;
   import constant.Global;
   import data.hero.FamousHeroData;
   import data.map.MapPointData;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.hero.Comp.FamouseHeroItemRenderer;
   
   use namespace mx_internal;
   
   public class FamousHeroPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1274506051filers:Array;
      
      public var _FamousHeroPanel_GlowButton1:GlowButton;
      
      public var _FamousHeroPanel_GlowButton2:GlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _FamousHeroPanel_SWFLoader1:SWFLoader;
      
      public var _FamousHeroPanel_SWFLoader2:SWFLoader;
      
      public var _FamousHeroPanel_SWFLoader3:SWFLoader;
      
      public var _FamousHeroPanel_GlowLabel2:GlowLabel;
      
      public var _FamousHeroPanel_GlowLabel3:GlowLabel;
      
      public var _FamousHeroPanel_GlowLabel4:GlowLabel;
      
      public var _FamousHeroPanel_GlowLabel5:GlowLabel;
      
      public var _FamousHeroPanel_GlowLabel6:GlowLabel;
      
      public var _FamousHeroPanel_GlowLabel1:GlowLabel;
      
      private var _339314617showData:ArrayCollection;
      
      private var pageNum:int = 12;
      
      private var _embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152:Class;
      
      public var _FamousHeroPanel_GlowText1:GlowText;
      
      public var _FamousHeroPanel_ExtendList1:ExtendList;
      
      public var _FamousHeroPanel_Canvas2:Canvas;
      
      public var _FamousHeroPanel_Canvas5:Canvas;
      
      public var _FamousHeroPanel_Canvas6:Canvas;
      
      mx_internal var _watchers:Array;
      
      private var _2007501193heroSkill:String;
      
      private var _1729159479sceneName:String;
      
      private var _309518737process:int;
      
      private var heros:Array;
      
      public var _FamousHeroPanel_Label10:Label;
      
      public var _FamousHeroPanel_Label11:Label;
      
      private var _577409037totalPage:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _601108392currentPage:int;
      
      public var _FamousHeroPanel_Label1:Label;
      
      public var _FamousHeroPanel_Label2:Label;
      
      public var _FamousHeroPanel_Label3:Label;
      
      public var _FamousHeroPanel_Label4:Label;
      
      public var _FamousHeroPanel_Label5:Label;
      
      public var _FamousHeroPanel_Label6:Label;
      
      public var _FamousHeroPanel_Label7:Label;
      
      public var _FamousHeroPanel_Label8:Label;
      
      public var _FamousHeroPanel_Label9:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindings:Array;
      
      private var _1656317162selectHero:FamousHeroData;
      
      public function FamousHeroPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":664,
                  "height":518,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FamousHeroPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button200",
                           "x":630,
                           "y":27
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":130,
                           "height":11,
                           "styleName":"Border144",
                           "y":66,
                           "x":173,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_FamousHeroPanel_Canvas2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":9,
                                    "x":1,
                                    "y":1,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":128,
                                             "height":9,
                                             "styleName":"Border145"
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_FamousHeroPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 10;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":63,
                           "x":179,
                           "width":120
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_FamousHeroPanel_Label1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":60,
                           "y":460,
                           "x":139
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ExtendList,
                     "id":"_FamousHeroPanel_ExtendList1",
                     "events":{"itemClick":"___FamousHeroPanel_ExtendList1_itemClick"},
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":230,
                           "height":360,
                           "itemRenderer":_FamousHeroPanel_ClassFactory1_c(),
                           "x":51,
                           "y":82
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_FamousHeroPanel_SWFLoader1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":200,
                           "height":250,
                           "x":374,
                           "y":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border194",
                           "width":200,
                           "height":31,
                           "x":375,
                           "y":25,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FamousHeroPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.textAlign = "center";
                                 this.fontSize = 16;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":100,
                                    "x":80,
                                    "y":4
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_FamousHeroPanel_SWFLoader2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":380,
                           "y":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"_FamousHeroPanel_SWFLoader3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":392,
                           "y":34
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_FamousHeroPanel_Canvas5",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":330,
                           "y":280,
                           "width":280,
                           "height":220,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label2",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":18,
                                    "x":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label3",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":18,
                                    "x":150
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label4",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":35,
                                    "x":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label5",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":35,
                                    "x":150
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label6",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":52,
                                    "x":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label7",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":52,
                                    "x":150
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label8",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":70,
                                    "x":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label9",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":69,
                                    "x":150
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label10",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":86,
                                    "x":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_FamousHeroPanel_Label11",
                              "stylesFactory":function():void
                              {
                                 this.color = 4664079;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":86,
                                    "x":150
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_FamousHeroPanel_GlowText1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":40,
                                    "y":108,
                                    "width":230,
                                    "height":60,
                                    "selectable":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FamousHeroPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":21,
                                    "y":175
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_FamousHeroPanel_GlowButton1",
                              "events":{"click":"___FamousHeroPanel_GlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button193",
                                    "width":65,
                                    "height":40,
                                    "x":181,
                                    "y":161
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_FamousHeroPanel_Canvas6",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":330,
                           "y":280,
                           "width":280,
                           "height":220,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FamousHeroPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.fontSize = 16;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":20,
                                    "y":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FamousHeroPanel_GlowLabel5",
                              "events":{
                                 "rollOver":"___FamousHeroPanel_GlowLabel5_rollOver",
                                 "rollOut":"___FamousHeroPanel_GlowLabel5_rollOut"
                              },
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.fontSize = 16;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":20,
                                    "y":50,
                                    "width":200
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FamousHeroPanel_GlowLabel6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":20,
                                    "y":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_FamousHeroPanel_GlowButton2",
                              "events":{"click":"___FamousHeroPanel_GlowButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":105,
                                    "x":190,
                                    "styleName":"Button113"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FamousHeroPanel_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":29,
                           "y":468,
                           "styleName":"Button201"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FamousHeroPanel_Button3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":580,
                           "y":468,
                           "styleName":"Button202"
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         _1274506051filers = [new ColorMatrixFilter([1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,0])];
         _embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152 = FamousHeroPanel__embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152;
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
            this.backgroundImage = _embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152;
         };
         this.width = 664;
         this.height = 518;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FamousHeroPanel._watcherSetupUtil = param1;
      }
      
      private function set process(value:int) : void
      {
         var oldValue:Object = this._309518737process;
         if(oldValue !== value)
         {
            this._309518737process = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"process",oldValue,value));
         }
      }
      
      private function resolveHero(e:ResultEvent) : void
      {
         var info:Object = null;
         var hero:FamousHeroData = null;
         if(!heros)
         {
            heros = Global.famousHero;
         }
         for each(info in e.result.star_general_list)
         {
            for each(hero in heros)
            {
               if(hero.cfgId == info.cfg_general_id)
               {
                  hero.resolveFamousData(info);
               }
            }
         }
         process = e.result.star_general_list.length / heros.length * 100;
         changePage(currentPage);
      }
      
      private function set totalPage(value:int) : void
      {
         var oldValue:Object = this._577409037totalPage;
         if(oldValue !== value)
         {
            this._577409037totalPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPage",oldValue,value));
         }
      }
      
      private function setSelectHero(hero:FamousHeroData) : void
      {
         if(selectHero)
         {
            selectHero.select = false;
         }
         selectHero = hero;
         selectHero.select = true;
         assemblyHeroSkill();
         var scene:MapPointData = MapPointData(Global.scenePointConfig[selectHero.sceneId]);
         if(scene)
         {
            sceneName = scene.sceneName;
         }
         else
         {
            sceneName = UILang.OccScene_U;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectHero() : FamousHeroData
      {
         return this._1656317162selectHero;
      }
      
      private function conscribeHero() : void
      {
         if(selectHero)
         {
            HttpServerManager.getInstance().callServer("generalService","recall",resolveConscribeHero,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectHero.id]);
         }
      }
      
      private function assemblyHeroSkill() : void
      {
         var skill:SkillData = null;
         heroSkill = "";
         for(var i:int = 0; i < selectHero.skills.length; i++)
         {
            skill = selectHero.skills.getItemAt(i) as SkillData;
            if(Boolean(skill) && Boolean(skill.id))
            {
               if(heroSkill != "")
               {
                  heroSkill += "<br>";
               }
               heroSkill += "<font color=\'#ffffff\'>" + UILang.Skill + (i + 1) + "：</font><font color=\'#00ff00\'>" + skill.name + "</font>";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get sceneName() : String
      {
         return this._1729159479sceneName;
      }
      
      private function set selectHero(value:FamousHeroData) : void
      {
         var oldValue:Object = this._1656317162selectHero;
         if(oldValue !== value)
         {
            this._1656317162selectHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectHero",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         currentPage = 1;
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      public function ___FamousHeroPanel_GlowButton1_click(event:MouseEvent) : void
      {
         conscribeHero();
      }
      
      public function ___FamousHeroPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function changePage(page:int) : void
      {
         currentPage = page;
         totalPage = Math.ceil(heros.length / pageNum);
         totalPage = Math.max(totalPage,1);
         currentPage = Math.min(currentPage,totalPage);
         currentPage = Math.max(currentPage,1);
         showData.removeAll();
         var i:int = (currentPage - 1) * pageNum;
         while(i < heros.length && i < currentPage * pageNum)
         {
            showData.addItem(heros[i]);
            i++;
         }
         if(showData.length)
         {
            setSelectHero(showData.getItemAt(0) as FamousHeroData);
         }
      }
      
      private function heroItemClick(event:ListEvent) : void
      {
         setSelectHero(event.itemRenderer.data as FamousHeroData);
      }
      
      private function _FamousHeroPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 128 * process / 100;
         _loc1_ = process + "%";
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = showData;
         _loc1_ = selectHero.bigHead;
         _loc1_ = selectHero.hasGet ? null : filers;
         _loc1_ = selectHero.name;
         _loc1_ = selectHero.jobData.jobIcon;
         _loc1_ = selectHero.jobData.jobName;
         _loc1_ = selectHero.hasGet;
         _loc1_ = UILang.Tili + "：" + selectHero.maxHp;
         _loc1_ = UILang.Lv + "：" + selectHero.level;
         _loc1_ = UILang.Power + "：" + selectHero.strength;
         _loc1_ = UILang.PowerGrow + "：" + selectHero.growStrength;
         _loc1_ = UILang.Intelligence + "：" + selectHero.intelligence;
         _loc1_ = UILang.IntelGrow + "：" + selectHero.growIntelligence;
         _loc1_ = UILang.Agile + "：" + selectHero.agility;
         _loc1_ = UILang.AgileGrow + "：" + selectHero.growAgility;
         _loc1_ = UILang.Constitution + "：" + selectHero.stamina;
         _loc1_ = UILang.ConstiGrow + "：" + selectHero.growStamina;
         _loc1_ = heroSkill;
         _loc1_ = UILang.HirePrice + "：20000" + UILang.Silver;
         _loc1_ = selectHero.isFired;
         _loc1_ = UILang.Hire;
         _loc1_ = selectHero.isFired;
         _loc1_ = !selectHero.hasGet;
         _loc1_ = UILang.OccScene + "：" + sceneName;
         _loc1_ = UILang.FamousSkill + "：" + selectHero.ownSkill.name;
         _loc1_ = selectHero.getCondition;
         _loc1_ = UILang.ExFamous;
         _loc1_ = selectHero.canGetByItem;
      }
      
      private function set sceneName(value:String) : void
      {
         var oldValue:Object = this._1729159479sceneName;
         if(oldValue !== value)
         {
            this._1729159479sceneName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sceneName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get process() : int
      {
         return this._309518737process;
      }
      
      public function ___FamousHeroPanel_GlowLabel5_rollOver(event:MouseEvent) : void
      {
         rollOver(event);
      }
      
      private function set filers(value:Array) : void
      {
         var oldValue:Object = this._1274506051filers;
         if(oldValue !== value)
         {
            this._1274506051filers = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filers",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get heroSkill() : String
      {
         return this._2007501193heroSkill;
      }
      
      public function ___FamousHeroPanel_GlowButton2_click(event:MouseEvent) : void
      {
         getFamouseHero();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FamousHeroPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FamousHeroPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_FamousHeroPanelWatcherSetupUtil");
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
      
      private function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      private function _FamousHeroPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return 128 * process / 100;
         },function(param1:Number):void
         {
            _FamousHeroPanel_Canvas2.width = param1;
         },"_FamousHeroPanel_Canvas2.width");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = process + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowLabel1.text = param1;
         },"_FamousHeroPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label1.text = param1;
         },"_FamousHeroPanel_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _FamousHeroPanel_ExtendList1.dataProvider = param1;
         },"_FamousHeroPanel_ExtendList1.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.bigHead;
         },function(param1:Object):void
         {
            _FamousHeroPanel_SWFLoader1.source = param1;
         },"_FamousHeroPanel_SWFLoader1.source");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return selectHero.hasGet ? null : filers;
         },function(param1:Array):void
         {
            _FamousHeroPanel_SWFLoader1.filters = param1;
         },"_FamousHeroPanel_SWFLoader1.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowLabel2.text = param1;
         },"_FamousHeroPanel_GlowLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.jobData.jobIcon;
         },function(param1:Object):void
         {
            _FamousHeroPanel_SWFLoader2.source = param1;
         },"_FamousHeroPanel_SWFLoader2.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return selectHero.jobData.jobName;
         },function(param1:Object):void
         {
            _FamousHeroPanel_SWFLoader3.source = param1;
         },"_FamousHeroPanel_SWFLoader3.source");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.hasGet;
         },function(param1:Boolean):void
         {
            _FamousHeroPanel_Canvas5.visible = param1;
         },"_FamousHeroPanel_Canvas5.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Tili + "：" + selectHero.maxHp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label2.text = param1;
         },"_FamousHeroPanel_Label2.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：" + selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label3.text = param1;
         },"_FamousHeroPanel_Label3.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Power + "：" + selectHero.strength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label4.text = param1;
         },"_FamousHeroPanel_Label4.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PowerGrow + "：" + selectHero.growStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label5.text = param1;
         },"_FamousHeroPanel_Label5.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Intelligence + "：" + selectHero.intelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label6.text = param1;
         },"_FamousHeroPanel_Label6.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IntelGrow + "：" + selectHero.growIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label7.text = param1;
         },"_FamousHeroPanel_Label7.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Agile + "：" + selectHero.agility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label8.text = param1;
         },"_FamousHeroPanel_Label8.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AgileGrow + "：" + selectHero.growAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label9.text = param1;
         },"_FamousHeroPanel_Label9.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Constitution + "：" + selectHero.stamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label10.text = param1;
         },"_FamousHeroPanel_Label10.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ConstiGrow + "：" + selectHero.growStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_Label11.text = param1;
         },"_FamousHeroPanel_Label11.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = heroSkill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowText1.htmlText = param1;
         },"_FamousHeroPanel_GlowText1.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HirePrice + "：20000" + UILang.Silver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowLabel3.text = param1;
         },"_FamousHeroPanel_GlowLabel3.text");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.isFired;
         },function(param1:Boolean):void
         {
            _FamousHeroPanel_GlowLabel3.visible = param1;
         },"_FamousHeroPanel_GlowLabel3.visible");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Hire;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowButton1.label = param1;
         },"_FamousHeroPanel_GlowButton1.label");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.isFired;
         },function(param1:Boolean):void
         {
            _FamousHeroPanel_GlowButton1.visible = param1;
         },"_FamousHeroPanel_GlowButton1.visible");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !selectHero.hasGet;
         },function(param1:Boolean):void
         {
            _FamousHeroPanel_Canvas6.visible = param1;
         },"_FamousHeroPanel_Canvas6.visible");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OccScene + "：" + sceneName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowLabel4.text = param1;
         },"_FamousHeroPanel_GlowLabel4.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.FamousSkill + "：" + selectHero.ownSkill.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowLabel5.text = param1;
         },"_FamousHeroPanel_GlowLabel5.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = selectHero.getCondition;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowLabel6.text = param1;
         },"_FamousHeroPanel_GlowLabel6.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ExFamous;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FamousHeroPanel_GlowButton2.label = param1;
         },"_FamousHeroPanel_GlowButton2.label");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return selectHero.canGetByItem;
         },function(param1:Boolean):void
         {
            _FamousHeroPanel_GlowButton2.visible = param1;
         },"_FamousHeroPanel_GlowButton2.visible");
         result[30] = binding;
         return result;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         HttpServerManager.getInstance().callServer("generalService","starGeneral",resolveHero,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___FamousHeroPanel_ExtendList1_itemClick(event:ListEvent) : void
      {
         heroItemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function rollOut(event:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(event);
      }
      
      private function getFamouseHero() : void
      {
         if(selectHero)
         {
            HttpServerManager.getInstance().callServer("generalService","openStarGeneral",resolveGetFamouseHero,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectHero.cfgId]);
         }
      }
      
      private function resolveConscribeHero(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            HttpServerManager.getInstance().callServer("generalService","starGeneral",resolveHero,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         DataManager.Instance.hero.resolveHeroList(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get filers() : Array
      {
         return this._1274506051filers;
      }
      
      public function ___FamousHeroPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      private function resolveGetFamouseHero(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ExSucc);
            resolveHero(e);
            HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function ___FamousHeroPanel_GlowLabel5_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      private function _FamousHeroPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = FamouseHeroItemRenderer;
         return temp;
      }
      
      public function ___FamousHeroPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function rollOver(event:MouseEvent) : void
      {
         ToolTipCreater.skillToolTipCreater(selectHero.ownSkill,event);
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      private function set heroSkill(value:String) : void
      {
         var oldValue:Object = this._2007501193heroSkill;
         if(oldValue !== value)
         {
            this._2007501193heroSkill = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroSkill",oldValue,value));
         }
      }
   }
}


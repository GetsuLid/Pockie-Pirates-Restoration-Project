package ui.abattoir
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.ShowResult;
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
   import manager.DataManager;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.abattoir.comp.SkillPreviewRenderer;
   
   use namespace mx_internal;
   
   public class SkillList extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var skillIndex:int;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var skillList:Dictionary;
      
      public var index:int;
      
      private var _1538277118targets:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var currentIndex:int;
      
      private var _nowSkill:SkillData;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _SkillList_ExtendTileList1:ExtendTileList;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function SkillList()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":600,
                           "height":200,
                           "styleName":"Border102",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___SkillList_Button1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "x":540,
                                    "y":4
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "text":"- 技 能 列 表 -",
                                    "y":2
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "width":560,
                                    "height":85,
                                    "y":49,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_SkillList_ExtendTileList1",
                                       "events":{"itemClick":"___SkillList_ExtendTileList1_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.verticalCenter = "0";
                                          this.horizontalCenter = "2";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_SkillList_ClassFactory1_c(),
                                             "height":76,
                                             "width":540
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "events":{"click":"___SkillList_GlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.bottom = "15";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "label":"学习"
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         skillList = new Dictionary();
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
            this.backgroundColor = 0;
            this.backgroundAlpha = 0.3;
         };
         this.width = 1000;
         this.height = 600;
         this.addEventListener("show",___SkillList_Canvas1_show);
         this.addEventListener("click",___SkillList_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillList._watcherSetupUtil = param1;
      }
      
      private function _SkillList_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return targets;
         },function(param1:Object):void
         {
            _SkillList_ExtendTileList1.dataProvider = param1;
         },"_SkillList_ExtendTileList1.dataProvider");
         result[0] = binding;
         return result;
      }
      
      private function _SkillList_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SkillPreviewRenderer;
         return temp;
      }
      
      private function show() : void
      {
         currentIndex = DataManager.Instance.abhero.selectHero.pJob;
         skillList = Global.getSkillList();
         changeIndex(currentIndex % 10000);
      }
      
      private function _SkillList_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = targets;
      }
      
      private function changeIndex(index:int) : void
      {
         resolveInfo(10000 + index);
      }
      
      private function studys(_gladiatorid:int, _killid:int) : void
      {
         if(_killid == 0)
         {
            return;
         }
         HttpServerManager.getInstance().callServer("battleService","gladiatorSkillOpen",refskill,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_gladiatorid,_killid,index]);
         this.visible = false;
      }
      
      private function set targets(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1538277118targets;
         if(oldValue !== value)
         {
            this._1538277118targets = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targets",oldValue,value));
         }
      }
      
      public function ___SkillList_GlowButton1_click(event:MouseEvent) : void
      {
         studys(DataManager.Instance.abhero.selectHero.gladiatorid,skillIndex);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillList = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillList_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_abattoir_SkillListWatcherSetupUtil");
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
      
      private function hide() : void
      {
         this.visible = false;
      }
      
      public function ___SkillList_Canvas1_click(event:MouseEvent) : void
      {
         event.stopImmediatePropagation();
      }
      
      public function ___SkillList_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         skillClick(event);
      }
      
      public function ___SkillList_Canvas1_show(event:FlexEvent) : void
      {
         show();
      }
      
      private function refskill(e:ResultEvent) : void
      {
         if(e.result.error_code == 667)
         {
            ShowResult.inst.showResult(667);
         }
         else
         {
            trace("正在刷新技能" + e.result);
         }
         DataManager.Instance.abhero.type = 1;
         DataManager.Instance.abhero.callServer();
      }
      
      [Bindable(event="propertyChange")]
      private function get targets() : ArrayCollection
      {
         return this._1538277118targets;
      }
      
      public function set nowskill(skill:SkillData) : void
      {
         _nowSkill = skill;
      }
      
      private function skillClick(e:ListEvent) : void
      {
         var nowclick:SkillData = e.itemRenderer.data as SkillData;
         nowclick.ifSkill = true;
         skillIndex = nowclick.id;
         if(DataManager.Instance.abhero.selecetSkill)
         {
            DataManager.Instance.abhero.selecetSkill.ifSkill = false;
         }
         if(!nowskill)
         {
            nowskill = new SkillData();
            nowskill = nowclick;
            DataManager.Instance.abhero.selecetSkill = nowclick;
            DataManager.Instance.abhero.selecetSkill.ifSkill = true;
         }
         if(nowskill)
         {
            nowskill = nowclick;
            DataManager.Instance.abhero.selecetSkill = nowclick;
            DataManager.Instance.abhero.selecetSkill.ifSkill = true;
         }
      }
      
      public function ___SkillList_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function resolveInfo(job:int) : void
      {
         var skill:SkillData = null;
         targets = new ArrayCollection();
         for each(skill in skillList)
         {
            if(skill.job == job && skill.rank == 1 && skill.needCast == false)
            {
               targets.addItem(skill);
            }
         }
      }
      
      public function get nowskill() : SkillData
      {
         return _nowSkill;
      }
   }
}


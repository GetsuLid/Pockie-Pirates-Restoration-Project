package ui.hero
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import constant.Global;
   import data.skill.SkillData;
   import events.GuideEvent;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import ui.hero.Comp.SkillPreviewRenderer;
   
   use namespace mx_internal;
   
   public class SkillPreviewPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SkillPreviewPanel_SkillPreviewRenderer1:SkillPreviewRenderer;
      
      public var _SkillPreviewPanel_SkillPreviewRenderer2:SkillPreviewRenderer;
      
      public var _SkillPreviewPanel_SkillPreviewRenderer3:SkillPreviewRenderer;
      
      public var _SkillPreviewPanel_SkillPreviewRenderer4:SkillPreviewRenderer;
      
      private var _3267605job2:SkillData;
      
      private var _3267607job4:SkillData;
      
      public var _SkillPreviewPanel_GlowLabel1:GlowLabel;
      
      private var _2067087585targetsShow:ArrayCollection;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _SkillPreviewPanel_Button2:Button;
      
      public var _SkillPreviewPanel_Button3:Button;
      
      public var _SkillPreviewPanel_Button4:Button;
      
      public var _SkillPreviewPanel_Button5:Button;
      
      public var _SkillPreviewPanel_ExtendTileList1:ExtendTileList;
      
      public var _SkillPreviewPanel_GlowText1:GlowText;
      
      private var _109320871selfs:ArrayCollection;
      
      private var skillList:Dictionary;
      
      private var _1538277118targets:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var _1448410841currentIndex:int = 1;
      
      private var _3267604job1:SkillData;
      
      private var _3267606job3:SkillData;
      
      private var targetIndex:int;
      
      private var _1673544124selfsShow:ArrayCollection;
      
      private var pageAmount:int = 6;
      
      public var _SkillPreviewPanel_Label1:Label;
      
      public var _SkillPreviewPanel_Label2:Label;
      
      public var _SkillPreviewPanel_Label3:Label;
      
      public var _SkillPreviewPanel_Label4:Label;
      
      private var _1324734238tianfus:ArrayCollection;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var selfIndex:int;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function SkillPreviewPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":756,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___SkillPreviewPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":722,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 45;
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":50,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "events":{"click":"___SkillPreviewPanel_Canvas1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":91,
                                    "height":105,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SkillPreviewPanel_Button2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1029",
                                             "width":91,
                                             "height":105
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_SkillPreviewPanel_Label1",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                          this.color = 0;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":7,
                                             "width":61,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillPreviewRenderer,
                                       "id":"_SkillPreviewPanel_SkillPreviewRenderer1",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "4";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "isTianFu":true,
                                             "y":40,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "events":{"click":"___SkillPreviewPanel_Canvas2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":91,
                                    "height":105,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SkillPreviewPanel_Button3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1029",
                                             "width":91,
                                             "height":105
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_SkillPreviewPanel_Label2",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                          this.color = 0;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":7,
                                             "width":61,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillPreviewRenderer,
                                       "id":"_SkillPreviewPanel_SkillPreviewRenderer2",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "4";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "isTianFu":true,
                                             "y":40,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "events":{"click":"___SkillPreviewPanel_Canvas3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":91,
                                    "height":105,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SkillPreviewPanel_Button4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1029",
                                             "width":91,
                                             "height":105
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_SkillPreviewPanel_Label3",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                          this.color = 0;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":7,
                                             "width":61,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillPreviewRenderer,
                                       "id":"_SkillPreviewPanel_SkillPreviewRenderer3",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "4";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "isTianFu":true,
                                             "y":40,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "events":{"click":"___SkillPreviewPanel_Canvas4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":91,
                                    "height":105,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"_SkillPreviewPanel_Button5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button1029",
                                             "height":105
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_SkillPreviewPanel_Label4",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                          this.color = 0;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":7,
                                             "width":61,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SkillPreviewRenderer,
                                       "id":"_SkillPreviewPanel_SkillPreviewRenderer4",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "4";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "isTianFu":true,
                                             "y":40,
                                             "mouseEnabled":false
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
                     "id":"_SkillPreviewPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.horizontalCenter = "0";
                        this.fontWeight = "bold";
                        this.fontSize = 11;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":160};
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.bottom = "18";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":736,
                           "height":120,
                           "x":10,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.left = "4";
                                 this.top = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":151,
                                    "height":30,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Border/skillbg.png",
                                             "width":151,
                                             "height":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_SkillPreviewPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.horizontalCenter = "0";
                                          this.textAlign = "center";
                                          this.fontWeight = "bold";
                                          this.fontSize = 14;
                                          this.verticalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"glowColor":3550763};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.left = "20";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "width":716,
                                    "height":85,
                                    "y":35,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_SkillPreviewPanel_ExtendTileList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.verticalCenter = "0";
                                          this.horizontalCenter = "15";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_SkillPreviewPanel_ClassFactory1_c(),
                                             "height":76,
                                             "width":716
                                          };
                                       }
                                    })]
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
         _1673544124selfsShow = new ArrayCollection();
         _2067087585targetsShow = new ArrayCollection();
         _3267604job1 = new SkillData();
         _3267605job2 = new SkillData();
         _3267606job3 = new SkillData();
         _3267607job4 = new SkillData();
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
         this.width = 756;
         this.height = 448;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillPreviewPanel._watcherSetupUtil = param1;
      }
      
      private function selfLast() : void
      {
         if(selfIndex > 0)
         {
            --selfIndex;
            arrayInit(selfIndex,1);
         }
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
      
      private function arrayInit(_index:int, _type:int) : void
      {
         if(_type == 1)
         {
            selfsShow.removeAll();
         }
         else
         {
            targetsShow.removeAll();
         }
         for(var i:int = _index; i < _index + 6; i++)
         {
            if(_type == 1)
            {
               selfsShow.addItem(selfs.getItemAt(i));
            }
            else
            {
               targetsShow.addItem(targets.getItemAt(i));
            }
         }
      }
      
      private function changeIndex(index:int) : void
      {
         currentIndex = index;
         resolveInfo(10000 + index);
         resolveTianfu();
         selfIndex = 0;
         targetIndex = 0;
         arrayInit(0,1);
         arrayInit(0,2);
      }
      
      public function ___SkillPreviewPanel_Canvas4_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get job2() : SkillData
      {
         return this._3267605job2;
      }
      
      [Bindable(event="propertyChange")]
      private function get job3() : SkillData
      {
         return this._3267606job3;
      }
      
      [Bindable(event="propertyChange")]
      private function get job4() : SkillData
      {
         return this._3267607job4;
      }
      
      [Bindable(event="propertyChange")]
      private function get targets() : ArrayCollection
      {
         return this._1538277118targets;
      }
      
      [Bindable(event="propertyChange")]
      private function get job1() : SkillData
      {
         return this._3267604job1;
      }
      
      [Bindable(event="propertyChange")]
      private function get targetsShow() : ArrayCollection
      {
         return this._2067087585targetsShow;
      }
      
      private function targetNext() : void
      {
         if(targetIndex + pageAmount < targets.length)
         {
            ++targetIndex;
            arrayInit(targetIndex,2);
         }
      }
      
      private function set job2(value:SkillData) : void
      {
         var oldValue:Object = this._3267605job2;
         if(oldValue !== value)
         {
            this._3267605job2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job2",oldValue,value));
         }
      }
      
      private function set job4(value:SkillData) : void
      {
         var oldValue:Object = this._3267607job4;
         if(oldValue !== value)
         {
            this._3267607job4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job4",oldValue,value));
         }
      }
      
      private function _SkillPreviewPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = SkillPreviewRenderer;
         return temp;
      }
      
      public function ___SkillPreviewPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set job1(value:SkillData) : void
      {
         var oldValue:Object = this._3267604job1;
         if(oldValue !== value)
         {
            this._3267604job1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selfsShow() : ArrayCollection
      {
         return this._1673544124selfsShow;
      }
      
      private function set targetsShow(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2067087585targetsShow;
         if(oldValue !== value)
         {
            this._2067087585targetsShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetsShow",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         dispatchEvent(new GuideEvent("4-6"));
         super.hide();
      }
      
      private function set selfs(value:ArrayCollection) : void
      {
         var oldValue:Object = this._109320871selfs;
         if(oldValue !== value)
         {
            this._109320871selfs = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfs",oldValue,value));
         }
      }
      
      public function ___SkillPreviewPanel_Canvas1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function selfNext() : void
      {
         if(selfIndex + pageAmount < selfs.length)
         {
            ++selfIndex;
            arrayInit(selfIndex,1);
         }
      }
      
      private function set job3(value:SkillData) : void
      {
         var oldValue:Object = this._3267606job3;
         if(oldValue !== value)
         {
            this._3267606job3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job3",oldValue,value));
         }
      }
      
      private function _SkillPreviewPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _SkillPreviewPanel_Button2.selected = param1;
         },"_SkillPreviewPanel_Button2.selected");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Job1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewPanel_Label1.text = param1;
         },"_SkillPreviewPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return job1;
         },function(param1:Object):void
         {
            _SkillPreviewPanel_SkillPreviewRenderer1.data = param1;
         },"_SkillPreviewPanel_SkillPreviewRenderer1.data");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _SkillPreviewPanel_Button3.selected = param1;
         },"_SkillPreviewPanel_Button3.selected");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Job2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewPanel_Label2.text = param1;
         },"_SkillPreviewPanel_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return job2;
         },function(param1:Object):void
         {
            _SkillPreviewPanel_SkillPreviewRenderer2.data = param1;
         },"_SkillPreviewPanel_SkillPreviewRenderer2.data");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _SkillPreviewPanel_Button4.selected = param1;
         },"_SkillPreviewPanel_Button4.selected");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Job3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewPanel_Label3.text = param1;
         },"_SkillPreviewPanel_Label3.text");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return job3;
         },function(param1:Object):void
         {
            _SkillPreviewPanel_SkillPreviewRenderer3.data = param1;
         },"_SkillPreviewPanel_SkillPreviewRenderer3.data");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _SkillPreviewPanel_Button5.selected = param1;
         },"_SkillPreviewPanel_Button5.selected");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Job4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewPanel_Label4.text = param1;
         },"_SkillPreviewPanel_Label4.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return job4;
         },function(param1:Object):void
         {
            _SkillPreviewPanel_SkillPreviewRenderer4.data = param1;
         },"_SkillPreviewPanel_SkillPreviewRenderer4.data");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.RoleLvTo40;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewPanel_GlowLabel1.text = param1;
         },"_SkillPreviewPanel_GlowLabel1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PassiveSkill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _SkillPreviewPanel_GlowText1.text = param1;
         },"_SkillPreviewPanel_GlowText1.text");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return targetsShow;
         },function(param1:Object):void
         {
            _SkillPreviewPanel_ExtendTileList1.dataProvider = param1;
         },"_SkillPreviewPanel_ExtendTileList1.dataProvider");
         result[14] = binding;
         return result;
      }
      
      private function set selfsShow(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1673544124selfsShow;
         if(oldValue !== value)
         {
            this._1673544124selfsShow = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfsShow",oldValue,value));
         }
      }
      
      public function ___SkillPreviewPanel_Canvas2_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillPreviewPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillPreviewPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_SkillPreviewPanelWatcherSetupUtil");
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
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         skillList = Global.getSkillList();
         changeIndex(DataManager.Instance.role.job.id % 10000);
      }
      
      [Bindable(event="propertyChange")]
      private function get selfs() : ArrayCollection
      {
         return this._109320871selfs;
      }
      
      private function set currentIndex(value:int) : void
      {
         var oldValue:Object = this._1448410841currentIndex;
         if(oldValue !== value)
         {
            this._1448410841currentIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndex",oldValue,value));
         }
      }
      
      private function resolveInfo(job:int) : void
      {
         var skill:SkillData = null;
         selfs = new ArrayCollection();
         targets = new ArrayCollection();
         tianfus = new ArrayCollection();
         for each(skill in skillList)
         {
            if(skill.job == job)
            {
               if(skill.rank == 3)
               {
                  tianfus.addItem(skill);
               }
               else if(skill.rank == 1)
               {
                  if(skill.needCast == true)
                  {
                     selfs.addItem(skill);
                  }
                  else
                  {
                     targets.addItem(skill);
                  }
               }
            }
         }
      }
      
      private function resolveTianfu() : void
      {
         var skill:SkillData = null;
         for(var i:int = 10001; i <= 10004; i++)
         {
            for each(skill in skillList)
            {
               if(skill.job == i && skill.rank == 3)
               {
                  this["job" + (i - 10000).toString()] = skill;
                  break;
               }
            }
         }
      }
      
      private function set tianfus(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1324734238tianfus;
         if(oldValue !== value)
         {
            this._1324734238tianfus = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tianfus",oldValue,value));
         }
      }
      
      private function _SkillPreviewPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.Job1;
         _loc1_ = job1;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.Job2;
         _loc1_ = job2;
         _loc1_ = currentIndex == 3;
         _loc1_ = UILang.Job3;
         _loc1_ = job3;
         _loc1_ = currentIndex == 4;
         _loc1_ = UILang.Job4;
         _loc1_ = job4;
         _loc1_ = UILang.RoleLvTo40;
         _loc1_ = UILang.PassiveSkill;
         _loc1_ = targetsShow;
      }
      
      public function ___SkillPreviewPanel_Canvas3_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      private function targetLast() : void
      {
         if(targetIndex > 0)
         {
            --targetIndex;
            arrayInit(targetIndex,2);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tianfus() : ArrayCollection
      {
         return this._1324734238tianfus;
      }
   }
}


package ui.action
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import data.candy.CandyData;
   import events.SendDataEvent;
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
   import mx.controls.Image;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.action.Comp.CandyKindRenderer;
   
   use namespace mx_internal;
   
   public class CandyPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1367722900candy1:ArrayCollection;
      
      mx_internal var _watchers:Array;
      
      private var _1367722899candy2:ArrayCollection;
      
      public var _CandyPanel_GlowLabel10:GlowLabel;
      
      public var _CandyPanel_ExtendTileList1:ExtendTileList;
      
      public var _CandyPanel_GlowLabel1:GlowLabel;
      
      public var _CandyPanel_GlowLabel2:GlowLabel;
      
      public var _CandyPanel_GlowLabel3:GlowLabel;
      
      public var _CandyPanel_GlowLabel4:GlowLabel;
      
      public var _CandyPanel_GlowLabel5:GlowLabel;
      
      public var _CandyPanel_GlowLabel6:GlowLabel;
      
      public var _CandyPanel_GlowLabel7:GlowLabel;
      
      public var _CandyPanel_ExtendTileList2:ExtendTileList;
      
      public var _CandyPanel_GlowLabel9:GlowLabel;
      
      public var _CandyPanel_GlowText1:GlowText;
      
      public var _CandyPanel_GlowText2:GlowText;
      
      public var _CandyPanel_GlowText3:GlowText;
      
      public var _CandyPanel_GlowLabel8:GlowLabel;
      
      public var _CandyPanel_GlowText5:GlowText;
      
      public var _CandyPanel_GlowText6:GlowText;
      
      public var _CandyPanel_GlowText7:GlowText;
      
      public var _CandyPanel_GlowText4:GlowText;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function CandyPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":546,
                  "height":437,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___CandyPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":512,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_CandyPanel_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.horizontalCenter = "0";
                        this.top = "8";
                        this.fontWeight = "bold";
                        this.fontSize = 14;
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":205,
                           "height":391,
                           "x":10,
                           "y":39,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.top = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"source":"../assets/images/UI/Candy/img.jpg"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_CandyPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814712;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":172
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText1",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814712;
                                 this.leading = 5;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":194,
                                    "width":191,
                                    "height":65
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText2",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":252
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText3",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":272,
                                    "width":189
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText4",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":306
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText5",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":326
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText6",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":346
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_CandyPanel_GlowText7",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":366
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":315,
                           "height":391,
                           "y":39,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.top = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":315,
                                    "height":180,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "-52";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":10};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_CandyPanel_ExtendTileList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.top = "35";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_CandyPanel_ClassFactory1_c(),
                                             "width":295,
                                             "height":73
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814712;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":115
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814712;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":135
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814712;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":155
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":315,
                                    "height":180,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776116;
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "-52";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":10};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_CandyPanel_ExtendTileList2",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                          this.horizontalCenter = "0";
                                          this.top = "35";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_CandyPanel_ClassFactory2_c(),
                                             "width":295,
                                             "height":73
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814712;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":115
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814712;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":135
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_CandyPanel_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814712;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":155
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
         _1367722900candy1 = new ArrayCollection();
         _1367722899candy2 = new ArrayCollection();
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
         this.width = 546;
         this.height = 437;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CandyPanel._watcherSetupUtil = param1;
      }
      
      private function check(e:SendDataEvent) : void
      {
         HttpServerManager.getInstance().callServer("activityService","frogCheck",resolveCandy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CandyPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CandyPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_action_CandyPanelWatcherSetupUtil");
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
         addEventListener("candyBuy",check);
         HttpServerManager.getInstance().callServer("activityService","frogCheck",resolveCandy,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function _CandyPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = CandyKindRenderer;
         return temp;
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      private function set candy1(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1367722900candy1;
         if(oldValue !== value)
         {
            this._1367722900candy1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"candy1",oldValue,value));
         }
      }
      
      private function _CandyPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "- " + UILang.Candy17 + " -";
         _loc1_ = UILang.Candy1;
         _loc1_ = UILang.Candy2;
         _loc1_ = UILang.Candy3;
         _loc1_ = UILang.Candy16;
         _loc1_ = UILang.Candy4;
         _loc1_ = UILang.Candy5;
         _loc1_ = UILang.Candy6;
         _loc1_ = UILang.Candy7;
         _loc1_ = UILang.Candy8;
         _loc1_ = candy1;
         _loc1_ = UILang.Candy9;
         _loc1_ = UILang.Candy10;
         _loc1_ = UILang.Candy11;
         _loc1_ = UILang.Candy12;
         _loc1_ = candy2;
         _loc1_ = UILang.Candy13;
         _loc1_ = UILang.Candy14;
         _loc1_ = UILang.Candy15;
      }
      
      private function _CandyPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = CandyKindRenderer;
         return temp;
      }
      
      private function resolveCandy(e:ResultEvent) : void
      {
         var i:int = 0;
         var j:int = 0;
         var _candyData1:CandyData = null;
         var _candyData2:CandyData = null;
         if(e.result.error_code == -1)
         {
            candy1.removeAll();
            candy2.removeAll();
            for(i = 1; i <= 5; i++)
            {
               _candyData1 = new CandyData();
               _candyData1.resolveCandyData(1,e.result.common,i);
               candy1.addItem(_candyData1);
            }
            for(j = 1; j <= 5; j++)
            {
               _candyData2 = new CandyData();
               _candyData2.resolveCandyData(2,e.result.advanced,j);
               candy2.addItem(_candyData2);
            }
         }
      }
      
      public function ___CandyPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set candy2(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1367722899candy2;
         if(oldValue !== value)
         {
            this._1367722899candy2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"candy2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get candy1() : ArrayCollection
      {
         return this._1367722900candy1;
      }
      
      [Bindable(event="propertyChange")]
      private function get candy2() : ArrayCollection
      {
         return this._1367722899candy2;
      }
      
      private function _CandyPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.Candy17 + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel1.text = param1;
         },"_CandyPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel2.text = param1;
         },"_CandyPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText1.text = param1;
         },"_CandyPanel_GlowText1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText2.text = param1;
         },"_CandyPanel_GlowText2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy16;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText3.text = param1;
         },"_CandyPanel_GlowText3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText4.text = param1;
         },"_CandyPanel_GlowText4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText5.text = param1;
         },"_CandyPanel_GlowText5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText6.text = param1;
         },"_CandyPanel_GlowText6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowText7.text = param1;
         },"_CandyPanel_GlowText7.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel3.text = param1;
         },"_CandyPanel_GlowLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return candy1;
         },function(param1:Object):void
         {
            _CandyPanel_ExtendTileList1.dataProvider = param1;
         },"_CandyPanel_ExtendTileList1.dataProvider");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy9;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel4.htmlText = param1;
         },"_CandyPanel_GlowLabel4.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel5.text = param1;
         },"_CandyPanel_GlowLabel5.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy11;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel6.htmlText = param1;
         },"_CandyPanel_GlowLabel6.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy12;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel7.text = param1;
         },"_CandyPanel_GlowLabel7.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return candy2;
         },function(param1:Object):void
         {
            _CandyPanel_ExtendTileList2.dataProvider = param1;
         },"_CandyPanel_ExtendTileList2.dataProvider");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy13;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel8.htmlText = param1;
         },"_CandyPanel_GlowLabel8.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy14;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel9.text = param1;
         },"_CandyPanel_GlowLabel9.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Candy15;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _CandyPanel_GlowLabel10.htmlText = param1;
         },"_CandyPanel_GlowLabel10.htmlText");
         result[18] = binding;
         return result;
      }
   }
}


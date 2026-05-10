package ui.vip
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import data.role.VipData;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class VipPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _VipPanel_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_Border_Border1019_png_1564441883:Class;
      
      mx_internal var _watchers:Array;
      
      public var _VipPanel_HBox4:HBox;
      
      public var _VipPanel_HBox3:HBox;
      
      private var _embed_css__images_Border_Border1020_png_1604620993:Class;
      
      private var _1088982044currentVip:VipData;
      
      public var _VipPanel_GlowLabel1:GlowLabel;
      
      public var _VipPanel_GlowLabel2:GlowLabel;
      
      public var _VipPanel_GlowLabel3:GlowLabel;
      
      public var _VipPanel_GlowLabel4:GlowLabel;
      
      public var _VipPanel_GlowLabel5:GlowLabel;
      
      public var _VipPanel_GlowLabel6:GlowLabel;
      
      public var _VipPanel_GlowLabel8:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _VipPanel_GlowLabel10:GlowLabel;
      
      public var _VipPanel_GlowLabel11:GlowLabel;
      
      public var _VipPanel_GlowLabel12:GlowLabel;
      
      public var _VipPanel_GlowLabel13:GlowLabel;
      
      public var _VipPanel_GlowLabel14:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _VipPanel_GlowText1:GlowText;
      
      public var _VipPanel_GlowText2:GlowText;
      
      public var _VipPanel_Canvas4:Canvas;
      
      mx_internal var _bindings:Array;
      
      public var _VipPanel_GlowButton2:GlowButton;
      
      public var _VipPanel_GlowButton3:GlowButton;
      
      private var _1847065642nextVip:VipData;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function VipPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":668,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1019",
                           "width":143,
                           "height":26,
                           "x":10,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___VipPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":634,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1020",
                           "width":74,
                           "height":34,
                           "x":80,
                           "y":78
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = -5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":162,
                           "y":64,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           })]
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
                           "width":296,
                           "height":26,
                           "styleName":"Border176",
                           "y":86,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_VipPanel_Canvas4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":22,
                                    "x":4,
                                    "y":2,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border174",
                                             "width":288,
                                             "height":22
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":296,
                                    "y":3
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "events":{"click":"___VipPanel_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button1022",
                           "x":489,
                           "y":86,
                           "width":41,
                           "height":23
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = -5;
                        this.left = "50";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":129,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel5",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_VipPanel_GlowLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                        this.left = "50";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":149};
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "id":"_VipPanel_HBox3",
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = -5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":337,
                           "y":129,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"text":"Charge another "};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"text":" gold to become "};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "id":"_VipPanel_HBox4",
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = -5;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":337,
                           "y":129,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel11",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_VipPanel_GlowLabel12",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":337,
                           "y":149
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.left = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":288,
                           "height":255,
                           "styleName":"Border113",
                           "y":174,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":200,
                                    "y":10,
                                    "x":10,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_VipPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "selectable":false,
                                             "width":269
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_VipPanel_GlowButton2",
                              "events":{"click":"___VipPanel_GlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.left = "10";
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button205"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel13",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":223,
                                    "x":105
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.right = "28";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":303,
                           "height":255,
                           "styleName":"Border113",
                           "y":174,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":200,
                                    "x":10,
                                    "y":10,
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_VipPanel_GlowText2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "selectable":false,
                                             "width":283
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_VipPanel_GlowButton3",
                              "events":{"click":"___VipPanel_GlowButton3_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                                 this.right = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"styleName":"Button205"};
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_VipPanel_GlowLabel14",
                              "stylesFactory":function():void
                              {
                                 this.color = 15229979;
                                 this.right = "85";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":223};
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _1088982044currentVip = new VipData();
         _1847065642nextVip = new VipData();
         _embed_css__images_Border_Border1019_png_1564441883 = VipPanel__embed_css__images_Border_Border1019_png_1564441883;
         _embed_css__images_Border_Border1020_png_1604620993 = VipPanel__embed_css__images_Border_Border1020_png_1604620993;
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
         mx_internal::_VipPanel_StylesInit();
         this.width = 668;
         this.height = 448;
         this.styleName = "Border112";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VipPanel._watcherSetupUtil = param1;
      }
      
      private function resolveRole(e:ResultEvent) : void
      {
         DataManager.Instance.role.resolveRoleData(e);
         refreshVIP(DataManager.Instance.role.vip.level);
      }
      
      private function lookVip(type:int) : void
      {
         if(type == 1 && currentVip.level > 0)
         {
            currentVip.setVipLevel(currentVip.level - 1);
            nextVip.setVipLevel(nextVip.level - 1);
         }
         else if(type == 2 && nextVip.level < 13)
         {
            currentVip.setVipLevel(currentVip.level + 1);
            nextVip.setVipLevel(nextVip.level + 1);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:VipPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VipPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_vip_VipPanelWatcherSetupUtil");
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
         HttpServerManager.getInstance().callServer("roleService","role",resolveRole,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___VipPanel_GlowButton2_click(event:MouseEvent) : void
      {
         lookVip(1);
      }
      
      mx_internal function _VipPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_VipPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_VipPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1019");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1019",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1019_png_1564441883;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1020");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1020",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1020_png_1604620993;
            };
         }
      }
      
      private function _VipPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CrtAccCharge + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel1.text = param1;
         },"_VipPanel_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.vip.charge + " " + UILang.Gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel2.text = param1;
         },"_VipPanel_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return 288 * int(DataManager.Instance.role.vip.charge) / int(DataManager.Instance.role.vip.totalCharge);
         },function(param1:Number):void
         {
            _VipPanel_Canvas4.width = param1;
         },"_VipPanel_Canvas4.width");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.vip.charge + "/" + DataManager.Instance.role.vip.totalCharge;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel3.text = param1;
         },"_VipPanel_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CrtVipLv + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel4.text = param1;
         },"_VipPanel_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VipStar.replace("#1",DataManager.Instance.role.vip.level);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel5.text = param1;
         },"_VipPanel_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PriviBelow + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel6.text = param1;
         },"_VipPanel_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level != 10;
         },function(param1:Boolean):void
         {
            _VipPanel_HBox3.visible = param1;
         },"_VipPanel_HBox3.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.vip.totalCharge - DataManager.Instance.role.vip.charge;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel8.text = param1;
         },"_VipPanel_GlowLabel8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.vip.level + 1 + " Star VIP";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel10.text = param1;
         },"_VipPanel_GlowLabel10.text");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level == 10;
         },function(param1:Boolean):void
         {
            _VipPanel_HBox4.visible = param1;
         },"_VipPanel_HBox4.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VipLvTop;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel11.text = param1;
         },"_VipPanel_GlowLabel11.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.PriviBelow + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel12.text = param1;
         },"_VipPanel_GlowLabel12.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentVip.des;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowText1.htmlText = param1;
         },"_VipPanel_GlowText1.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LookLast;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowButton2.label = param1;
         },"_VipPanel_GlowButton2.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VipStar.replace("#1",currentVip.level);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel13.text = param1;
         },"_VipPanel_GlowLabel13.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = nextVip.des;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowText2.htmlText = param1;
         },"_VipPanel_GlowText2.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.LookNext;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowButton3.label = param1;
         },"_VipPanel_GlowButton3.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.VipStar.replace("#1",nextVip.level);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _VipPanel_GlowLabel14.text = param1;
         },"_VipPanel_GlowLabel14.text");
         result[18] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get nextVip() : VipData
      {
         return this._1847065642nextVip;
      }
      
      private function getRewardCode() : void
      {
      }
      
      private function charge() : void
      {
         var obj:Object = ExternalInterface.call("showchagelist");
      }
      
      private function refreshVIP(lv:int) : void
      {
         lv = Math.max(lv,0);
         lv = Math.min(lv,13);
         currentVip.setVipLevel(lv);
         nextVip.setVipLevel(lv + 1);
      }
      
      private function _VipPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.CrtAccCharge + "：";
         _loc1_ = DataManager.Instance.role.vip.charge + " " + UILang.Gold;
         _loc1_ = 288 * int(DataManager.Instance.role.vip.charge) / int(DataManager.Instance.role.vip.totalCharge);
         _loc1_ = DataManager.Instance.role.vip.charge + "/" + DataManager.Instance.role.vip.totalCharge;
         _loc1_ = UILang.CrtVipLv + "：";
         _loc1_ = UILang.VipStar.replace("#1",DataManager.Instance.role.vip.level);
         _loc1_ = UILang.PriviBelow + "：";
         _loc1_ = DataManager.Instance.role.vip.level != 10;
         _loc1_ = DataManager.Instance.role.vip.totalCharge - DataManager.Instance.role.vip.charge;
         _loc1_ = DataManager.Instance.role.vip.level + 1 + " Star VIP";
         _loc1_ = DataManager.Instance.role.vip.level == 10;
         _loc1_ = UILang.VipLvTop;
         _loc1_ = UILang.PriviBelow + "：";
         _loc1_ = currentVip.des;
         _loc1_ = UILang.LookLast;
         _loc1_ = UILang.VipStar.replace("#1",currentVip.level);
         _loc1_ = nextVip.des;
         _loc1_ = UILang.LookNext;
         _loc1_ = UILang.VipStar.replace("#1",nextVip.level);
      }
      
      private function resolveRewardCode(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         DataManager.Instance.parcel.resolveItems({"result":e.result.item_data});
         DataManager.Instance.parcel.resolveMoney({"result":e.result.item_data});
         DataManager.Instance.role.resolveExploit({"result":e.result.item_data});
         if(e.result.error_code == -1)
         {
            event = new NavigationEvent(NavigationEvent.OPENWINDOW);
            event.url = "receiveItem";
            event.data = e.result;
            dispatchEvent(event);
         }
      }
      
      private function set nextVip(value:VipData) : void
      {
         var oldValue:Object = this._1847065642nextVip;
         if(oldValue !== value)
         {
            this._1847065642nextVip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextVip",oldValue,value));
         }
      }
      
      private function set currentVip(value:VipData) : void
      {
         var oldValue:Object = this._1088982044currentVip;
         if(oldValue !== value)
         {
            this._1088982044currentVip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentVip",oldValue,value));
         }
      }
      
      public function ___VipPanel_GlowButton1_click(event:MouseEvent) : void
      {
         charge();
      }
      
      public function ___VipPanel_GlowButton3_click(event:MouseEvent) : void
      {
         lookVip(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentVip() : VipData
      {
         return this._1088982044currentVip;
      }
      
      public function ___VipPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
   }
}


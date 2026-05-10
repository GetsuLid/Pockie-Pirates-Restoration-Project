package ui.hang
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import data.hang.HighHangData;
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
   
   public class HighHangInfo extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _HighHangInfo_GlowButton1:GlowButton;
      
      public var _HighHangInfo_GlowButton2:GlowButton;
      
      mx_internal var _watchers:Array;
      
      public var _HighHangInfo_GlowLabel1:GlowLabel;
      
      public var _HighHangInfo_GlowLabel2:GlowLabel;
      
      public var _HighHangInfo_GlowLabel3:GlowLabel;
      
      public var _HighHangInfo_GlowLabel4:GlowLabel;
      
      public var _HighHangInfo_GlowLabel5:GlowLabel;
      
      public var _HighHangInfo_GlowLabel6:GlowLabel;
      
      public var _HighHangInfo_GlowLabel7:GlowLabel;
      
      public var _HighHangInfo_GlowLabel8:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1151067394highHangData:HighHangData;
      
      public var _HighHangInfo_GlowLabel9:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _HighHangInfo_GlowLabel10:GlowLabel;
      
      public var _HighHangInfo_GlowLabel11:GlowLabel;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _HighHangInfo_Canvas2:Canvas;
      
      public function HighHangInfo()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":385,
                  "height":192,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___HighHangInfo_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "10";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_HighHangInfo_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 10876374;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.horizontalCenter = "0";
                        this.top = "8";
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_HighHangInfo_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":22,
                           "y":51
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":111,
                           "height":27,
                           "styleName":"Border1134",
                           "y":47,
                           "x":180,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HighHangInfo_Canvas2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "height":27,
                                    "x":8,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1135",
                                             "width":96,
                                             "height":27
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
                     "id":"_HighHangInfo_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16776116;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":200,
                           "y":51,
                           "width":111
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
                           "x":22,
                           "y":82,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel5",
                              "stylesFactory":function():void
                              {
                                 this.color = 1952998;
                              }
                           })]
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
                           "x":22,
                           "y":112,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel6",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel7",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           })]
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
                           "x":175,
                           "y":82,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel8",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel9",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           })]
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
                           "x":175,
                           "y":112,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel10",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HighHangInfo_GlowLabel11",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HighHangInfo_GlowButton1",
                     "events":{"click":"___HighHangInfo_GlowButton1_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.horizontalCenter = "0";
                        this.bottom = "20";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "width":140,
                           "height":26
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HighHangInfo_GlowButton2",
                     "events":{"click":"___HighHangInfo_GlowButton2_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                        this.horizontalCenter = "0";
                        this.bottom = "20";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "width":140,
                           "height":26
                        };
                     }
                  })]
               };
            }
         });
         _1151067394highHangData = new HighHangData();
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
         this.width = 385;
         this.height = 192;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HighHangInfo._watcherSetupUtil = param1;
      }
      
      private function set highHangData(value:HighHangData) : void
      {
         var oldValue:Object = this._1151067394highHangData;
         if(oldValue !== value)
         {
            this._1151067394highHangData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highHangData",oldValue,value));
         }
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         var event:NavigationEvent = null;
         var tempId:int = 0;
         var tempArray:Array = null;
         var sceneX:int = 0;
         var sceneY:int = 0;
         if(e.result.error_code == -1)
         {
            if(e.result.result_data)
            {
               DataManager.Instance.playBattle(e);
            }
            else
            {
               event = new NavigationEvent(NavigationEvent.OPENWINDOW);
               event.url = "highHangCan";
               DataManager.Instance.dispatchEvent(event);
            }
            hide();
         }
         else if(e.result.error_code == 531)
         {
            DataManager.Instance.isHighHanging = false;
            ShowResult.inst.showResult(-1,UILang.HighHangFail1.replace(/#1/,""));
            tempId = 4002;
            tempArray = SceneConfig.getSceneInfo(tempId);
            sceneX = int(((tempArray[9] as Array)[0] as Array)[3]);
            sceneY = int(((tempArray[9] as Array)[0] as Array)[4]);
            HttpServerManager.getInstance().callServer("sceneService","change",SceneManager.getInstance().resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempId,sceneX,sceneY]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get highHangData() : HighHangData
      {
         return this._1151067394highHangData;
      }
      
      private function highHangStart() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","beginHunting",dealHang,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,SceneManager.getInstance().highHangSceneId]);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HighHangInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HighHangInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hang_HighHangInfoWatcherSetupUtil");
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
         DataManager.Instance.highHangInfo = null;
         HttpServerManager.getInstance().callServer("sceneService","checkHuntingPoint",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,SceneManager.getInstance().highHangSceneId]);
      }
      
      private function _HighHangInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.HighHangInfo;
         _loc1_ = UILang.ResourcesAmount + "：";
         _loc1_ = highHangData.resourceAmount / 3500 * 96;
         _loc1_ = highHangData.resourceAmount + "/3500";
         _loc1_ = UILang.HighHangNation + "：";
         _loc1_ = highHangData.nationName;
         _loc1_ = UILang.HighHangHuman + "：";
         _loc1_ = highHangData.humanNumber;
         _loc1_ = UILang.HighHangExp + "：";
         _loc1_ = highHangData.exp;
         _loc1_ = UILang.HighHangRewardLevel + "：";
         _loc1_ = highHangData.rewordLevel;
         _loc1_ = UILang.HighHangHang;
         _loc1_ = !highHangData.isEnemy;
         _loc1_ = UILang.HighHangGrab;
         _loc1_ = highHangData.isEnemy;
      }
      
      public function ___HighHangInfo_GlowButton1_click(event:MouseEvent) : void
      {
         highHangStart();
      }
      
      override public function hide() : void
      {
         super.hide();
      }
      
      public function ___HighHangInfo_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function resolveSceneInfo(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            highHangData.resolveInfo(e.result);
         }
      }
      
      private function _HighHangInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangInfo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel1.text = param1;
         },"_HighHangInfo_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ResourcesAmount + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel2.text = param1;
         },"_HighHangInfo_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return highHangData.resourceAmount / 3500 * 96;
         },function(param1:Number):void
         {
            _HighHangInfo_Canvas2.width = param1;
         },"_HighHangInfo_Canvas2.width");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highHangData.resourceAmount + "/3500";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel3.text = param1;
         },"_HighHangInfo_GlowLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangNation + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel4.text = param1;
         },"_HighHangInfo_GlowLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highHangData.nationName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel5.text = param1;
         },"_HighHangInfo_GlowLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangHuman + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel6.text = param1;
         },"_HighHangInfo_GlowLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highHangData.humanNumber;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel7.text = param1;
         },"_HighHangInfo_GlowLabel7.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangExp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel8.text = param1;
         },"_HighHangInfo_GlowLabel8.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highHangData.exp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel9.text = param1;
         },"_HighHangInfo_GlowLabel9.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangRewardLevel + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel10.text = param1;
         },"_HighHangInfo_GlowLabel10.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = highHangData.rewordLevel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowLabel11.text = param1;
         },"_HighHangInfo_GlowLabel11.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangHang;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowButton1.label = param1;
         },"_HighHangInfo_GlowButton1.label");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !highHangData.isEnemy;
         },function(param1:Boolean):void
         {
            _HighHangInfo_GlowButton1.visible = param1;
         },"_HighHangInfo_GlowButton1.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HighHangGrab;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HighHangInfo_GlowButton2.label = param1;
         },"_HighHangInfo_GlowButton2.label");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return highHangData.isEnemy;
         },function(param1:Boolean):void
         {
            _HighHangInfo_GlowButton2.visible = param1;
         },"_HighHangInfo_GlowButton2.visible");
         result[15] = binding;
         return result;
      }
      
      public function ___HighHangInfo_GlowButton2_click(event:MouseEvent) : void
      {
         highHangStart();
      }
   }
}


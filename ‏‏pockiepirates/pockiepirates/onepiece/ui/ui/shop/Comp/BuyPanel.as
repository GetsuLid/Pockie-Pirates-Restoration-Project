package ui.shop.Comp
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.NoEventTextInput;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import constant.TaskConfig;
   import data.Item.ItemBase;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.item.Comp.ItemItemRenderer;
   
   use namespace mx_internal;
   
   public class BuyPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _100358090input:NoEventTextInput;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var npcId:int;
      
      public var _BuyPanel_ItemItemRenderer1:ItemItemRenderer;
      
      private var _3242771item:ItemBase;
      
      public var _BuyPanel_GlowLabel1:GlowLabel;
      
      public var _BuyPanel_GlowLabel2:GlowLabel;
      
      public var _BuyPanel_GlowLabel3:GlowLabel;
      
      public var _BuyPanel_GlowButton1:GlowButton;
      
      public var _BuyPanel_GlowButton2:GlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      mx_internal var _bindings:Array;
      
      public var _BuyPanel_Label1:Label;
      
      public function BuyPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":294,
                  "height":212,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___BuyPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":260,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border111",
                           "width":46,
                           "height":46,
                           "x":51,
                           "y":56,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ItemItemRenderer,
                              "id":"_BuyPanel_ItemItemRenderer1"
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"",
                           "width":150,
                           "height":25,
                           "x":105,
                           "y":56,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_BuyPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "left";
                                 this.fontSize = 15;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":150,
                                    "y":0
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":105,
                           "y":84
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BuyPanel_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":141,
                           "y":82
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/silver.png",
                           "x":155,
                           "y":123
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_BuyPanel_GlowLabel3",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":178,
                           "y":121
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_BuyPanel_Label1",
                     "stylesFactory":function():void
                     {
                        this.color = 13814713;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":52,
                           "y":121
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1045",
                           "width":58,
                           "height":24,
                           "x":89,
                           "y":117,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":NoEventTextInput,
                              "id":"input",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.focusThickness = 0;
                                 this.paddingTop = 3;
                                 this.paddingLeft = 5;
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "restrict":"[0-9]",
                                    "maxChars":3
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_BuyPanel_GlowButton1",
                     "events":{"click":"___BuyPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":89,
                           "y":159,
                           "styleName":"Button113"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_BuyPanel_GlowButton2",
                     "events":{"click":"___BuyPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":169,
                           "y":159,
                           "styleName":"Button113"
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
         this.width = 294;
         this.height = 212;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BuyPanel._watcherSetupUtil = param1;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : NoEventTextInput
      {
         return this._100358090input;
      }
      
      private function buy() : void
      {
         hide();
         if(input.text != "" && Boolean(item))
         {
            HttpServerManager.getInstance().callServer("itemService","buy",resolveBuyResult,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,npcId,item.id,parseInt(input.text)]);
         }
      }
      
      private function set item(value:ItemBase) : void
      {
         var oldValue:Object = this._3242771item;
         if(oldValue !== value)
         {
            this._3242771item = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",oldValue,value));
         }
      }
      
      private function _BuyPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = item;
         _loc1_ = item.nameColor;
         _loc1_ = item.name;
         _loc1_ = item.price;
         _loc1_ = input.text == "" ? "0" : item.price * parseInt(input.text);
         _loc1_ = UILang.Num;
         _loc1_ = UILang.Buy;
         _loc1_ = UILang.Cancel;
      }
      
      public function ___BuyPanel_GlowButton1_click(event:MouseEvent) : void
      {
         buy();
      }
      
      public function set input(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BuyPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BuyPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_shop_Comp_BuyPanelWatcherSetupUtil");
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
      
      public function ___BuyPanel_GlowButton2_click(event:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get item() : ItemBase
      {
         return this._3242771item;
      }
      
      private function _BuyPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return item;
         },function(param1:Object):void
         {
            _BuyPanel_ItemItemRenderer1.data = param1;
         },"_BuyPanel_ItemItemRenderer1.data");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return item.nameColor;
         },function(param1:uint):void
         {
            _BuyPanel_GlowLabel1.setStyle("color",param1);
         },"_BuyPanel_GlowLabel1.color");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BuyPanel_GlowLabel1.text = param1;
         },"_BuyPanel_GlowLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = item.price;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BuyPanel_GlowLabel2.text = param1;
         },"_BuyPanel_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = input.text == "" ? "0" : item.price * parseInt(input.text);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BuyPanel_GlowLabel3.text = param1;
         },"_BuyPanel_GlowLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Num;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BuyPanel_Label1.text = param1;
         },"_BuyPanel_Label1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Buy;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BuyPanel_GlowButton1.label = param1;
         },"_BuyPanel_GlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Cancel;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _BuyPanel_GlowButton2.label = param1;
         },"_BuyPanel_GlowButton2.label");
         result[7] = binding;
         return result;
      }
      
      public function ___BuyPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function resolveBuyResult(event:ResultEvent) : void
      {
         if(event.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.BuySucc);
         }
         DataManager.Instance.parcel.resolveItems(event);
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ITEM))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function show(data:ItemBase, id:int) : void
      {
         item = data;
         npcId = id;
         input.text = "1";
         visible = true;
      }
   }
}


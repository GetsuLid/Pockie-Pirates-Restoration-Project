package ui.friend
{
   import ExtendComp.ExtendTileList;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.NoEventTextInput;
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
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.friend.comp.FriendItemRenderer;
   
   use namespace mx_internal;
   
   public class FriendPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _FriendPanel_StylesInit_done:Boolean = false;
      
      private var _1213385727nameInput:NoEventTextInput;
      
      public var _FriendPanel_ExtendTileList1:ExtendTileList;
      
      mx_internal var _watchers:Array;
      
      public var _FriendPanel_GlowButton1:GlowButton;
      
      private var _577409037totalPage:int = 1;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var friendList:ArrayCollection;
      
      private var _601108392currentPage:int = 1;
      
      public var _FriendPanel_GlowLabel1:GlowLabel;
      
      private var _339314617showData:ArrayCollection;
      
      private var _embed_css__images_Border_Border1025_png_1579848213:Class;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var pageNum:int = 10;
      
      public function FriendPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":270,
                  "height":490,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FriendPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":236,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.left = "10";
                        this.top = "7";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border1025",
                           "width":87,
                           "height":27
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ExtendTileList,
                     "id":"_FriendPanel_ExtendTileList1",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                        this.borderStyle = "none";
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":210,
                           "height":330,
                           "itemRenderer":_FriendPanel_ClassFactory1_c(),
                           "y":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FriendPanel_Button2_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":413,
                           "styleName":"Button130"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___FriendPanel_Button3_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":413,
                           "styleName":"Button131"
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
                           "styleName":"",
                           "width":50,
                           "height":24,
                           "y":412,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_FriendPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 13814713;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "y":2
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
                           "width":140,
                           "height":24,
                           "styleName":"Border1018",
                           "x":21,
                           "y":445,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":NoEventTextInput,
                              "id":"nameInput",
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                                 this.focusThickness = 0;
                                 this.fontSize = 12;
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "maxChars":10,
                                    "y":1
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_FriendPanel_GlowButton1",
                     "events":{"click":"___FriendPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button113",
                           "x":168,
                           "y":445
                        };
                     }
                  })]
               };
            }
         });
         _339314617showData = new ArrayCollection();
         _embed_css__images_Border_Border1025_png_1579848213 = FriendPanel__embed_css__images_Border_Border1025_png_1579848213;
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
         mx_internal::_FriendPanel_StylesInit();
         this.width = 270;
         this.height = 490;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FriendPanel._watcherSetupUtil = param1;
      }
      
      private function _FriendPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return showData;
         },function(param1:Object):void
         {
            _FriendPanel_ExtendTileList1.dataProvider = param1;
         },"_FriendPanel_ExtendTileList1.dataProvider");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = currentPage + "/" + totalPage;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FriendPanel_GlowLabel1.text = param1;
         },"_FriendPanel_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.IncreaseFriend;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _FriendPanel_GlowButton1.label = param1;
         },"_FriendPanel_GlowButton1.label");
         result[2] = binding;
         return result;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FriendPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FriendPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_friend_FriendPanelWatcherSetupUtil");
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
      
      private function addFriend() : void
      {
         if(nameInput.text)
         {
            DataManager.Instance.friend.addFriendByName(nameInput.text);
            nameInput.text = "";
         }
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         DataManager.Instance.newFriend = false;
         if(!friendList)
         {
            friendList = DataManager.Instance.friend.friendList;
            friendList.addEventListener(CollectionEvent.COLLECTION_CHANGE,onDataChange);
         }
         HttpServerManager.getInstance().callServer("chatService","friend",resolveFriendList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function ___FriendPanel_GlowButton1_click(event:MouseEvent) : void
      {
         addFriend();
      }
      
      [Bindable(event="propertyChange")]
      private function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      public function ___FriendPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _FriendPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = showData;
         _loc1_ = currentPage + "/" + totalPage;
         _loc1_ = UILang.IncreaseFriend;
      }
      
      public function ___FriendPanel_Button3_click(event:MouseEvent) : void
      {
         changePage(currentPage + 1);
      }
      
      private function onDataChange(e:CollectionEvent) : void
      {
         changePage(currentPage);
      }
      
      override public function hide() : void
      {
         super.hide();
         showData.removeAll();
      }
      
      [Bindable(event="propertyChange")]
      private function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      mx_internal function _FriendPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_FriendPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_FriendPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border1025");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1025",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1025_png_1579848213;
            };
         }
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
      
      public function refresh() : void
      {
         changePage(currentPage);
      }
      
      private function changePage(page:int) : void
      {
         showData.removeAll();
         currentPage = page;
         totalPage = Math.ceil(friendList.length / pageNum);
         totalPage = Math.max(totalPage,1);
         currentPage = Math.min(currentPage,totalPage);
         currentPage = Math.max(currentPage,1);
         var i:int = (currentPage - 1) * pageNum;
         while(i < currentPage * pageNum && i < friendList.length)
         {
            showData.addItem(friendList.getItemAt(i));
            i++;
         }
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
      
      private function resolveFriendList(e:ResultEvent) : void
      {
         DataManager.Instance.friend.resolveFriendList(e);
         changePage(1);
      }
      
      private function _FriendPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = FriendItemRenderer;
         return temp;
      }
      
      public function ___FriendPanel_Button2_click(event:MouseEvent) : void
      {
         changePage(currentPage - 1);
      }
      
      [Bindable(event="propertyChange")]
      private function get totalPage() : int
      {
         return this._577409037totalPage;
      }
      
      public function set nameInput(param1:NoEventTextInput) : void
      {
         var _loc2_:Object = this._1213385727nameInput;
         if(_loc2_ !== param1)
         {
            this._1213385727nameInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameInput",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameInput() : NoEventTextInput
      {
         return this._1213385727nameInput;
      }
   }
}


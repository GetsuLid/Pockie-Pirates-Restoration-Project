package war.Comp
{
   import ExtendComp.GlowLabel;
   import ExtendComp.ShowResult;
   import data.campagin.CampaginData;
   import events.GuideEvent;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class EliteCampRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1053535685isRollOver:Boolean;
      
      private var _1545627754campaginData:CampaginData;
      
      mx_internal var _watchers:Array = [];
      
      public var _EliteCampRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      public var _EliteCampRenderer_GlowLabel2:GlowLabel;
      
      public var _EliteCampRenderer_Canvas4:Canvas;
      
      public var _EliteCampRenderer_Canvas5:Canvas;
      
      public var _EliteCampRenderer_GlowLabel1:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":180,
               "height":95,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "events":{
                     "rollOver":"___EliteCampRenderer_Canvas2_rollOver",
                     "rollOut":"___EliteCampRenderer_Canvas2_rollOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":180,
                        "height":90,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SWFLoader,
                           "id":"_EliteCampRenderer_SWFLoader1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "-2";
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1063",
                                 "width":172,
                                 "height":82,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_EliteCampRenderer_GlowLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.color = 16777215;
                                       this.fontSize = 14;
                                       this.textAlign = "left";
                                       this.left = "7";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "glowColor":7206,
                                          "blur":5,
                                          "width":155,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_EliteCampRenderer_Canvas4",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "10";
                                       this.bottom = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":29,
                                          "height":34,
                                          "styleName":"Border1066"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_EliteCampRenderer_GlowLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "bold";
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                       this.textAlign = "right";
                                       this.right = "7";
                                       this.bottom = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "glowColor":7206,
                                          "blur":5,
                                          "width":155
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_EliteCampRenderer_Canvas5",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "-2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1064",
                                 "width":180,
                                 "height":86
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function EliteCampRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 180;
         this.height = 95;
         this.addEventListener("dataChange",___EliteCampRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EliteCampRenderer._watcherSetupUtil = param1;
      }
      
      private function _EliteCampRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = campaginData.url;
         _loc1_ = campaginData.selectCampaginId == campaginData.campaginId ? campaginData.name : campaginData.eliteName;
         _loc1_ = campaginData.selectCampaginId == campaginData.eliteCampaginId;
         _loc1_ = UILang.Lv + "：" + campaginData.tips;
         _loc1_ = isRollOver || campaginData.isSelected;
      }
      
      public function set campaginData(value:CampaginData) : void
      {
         var oldValue:Object = this._1545627754campaginData;
         if(oldValue !== value)
         {
            this._1545627754campaginData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"campaginData",oldValue,value));
         }
      }
      
      private function set isRollOver(value:Boolean) : void
      {
         var oldValue:Object = this._1053535685isRollOver;
         if(oldValue !== value)
         {
            this._1053535685isRollOver = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRollOver",oldValue,value));
         }
      }
      
      public function ___EliteCampRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _EliteCampRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return campaginData.url;
         },function(param1:Object):void
         {
            _EliteCampRenderer_SWFLoader1.source = param1;
         },"_EliteCampRenderer_SWFLoader1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = campaginData.selectCampaginId == campaginData.campaginId ? campaginData.name : campaginData.eliteName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EliteCampRenderer_GlowLabel1.text = param1;
         },"_EliteCampRenderer_GlowLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return campaginData.selectCampaginId == campaginData.eliteCampaginId;
         },function(param1:Boolean):void
         {
            _EliteCampRenderer_Canvas4.visible = param1;
         },"_EliteCampRenderer_Canvas4.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Lv + "：" + campaginData.tips;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _EliteCampRenderer_GlowLabel2.text = param1;
         },"_EliteCampRenderer_GlowLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isRollOver || Boolean(campaginData.isSelected);
         },function(param1:Boolean):void
         {
            _EliteCampRenderer_Canvas5.visible = param1;
         },"_EliteCampRenderer_Canvas5.visible");
         result[4] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EliteCampRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EliteCampRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_war_Comp_EliteCampRendererWatcherSetupUtil");
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
      
      private function rollOut() : void
      {
         isRollOver = false;
      }
      
      private function enter() : void
      {
         var event:NavigationEvent = null;
         dispatchEvent(new GuideEvent("2-2"));
         DataManager.Instance.warId = campaginData.selectCampaginId;
         DataManager.Instance.isCopy = false;
         if(DataManager.Instance.role.officialRanklevel >= campaginData.requireLevel)
         {
            DataManager.Instance.newEnter = true;
            event = new NavigationEvent(NavigationEvent.CHANGEVIEW);
            event.url = "war/WarScene.swf";
            dispatchEvent(event);
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.RoleLvLack);
         }
      }
      
      public function ___EliteCampRenderer_Canvas2_rollOver(event:MouseEvent) : void
      {
         rollOver();
      }
      
      private function choose(i:int) : void
      {
         if(i == 1)
         {
            campaginData.selectCampaginId = campaginData.campaginId;
         }
         else
         {
            campaginData.selectCampaginId = campaginData.eliteCampaginId;
         }
      }
      
      public function ___EliteCampRenderer_Canvas2_rollOut(event:MouseEvent) : void
      {
         rollOut();
      }
      
      [Bindable(event="propertyChange")]
      private function get isRollOver() : Boolean
      {
         return this._1053535685isRollOver;
      }
      
      [Bindable(event="propertyChange")]
      public function get campaginData() : CampaginData
      {
         return this._1545627754campaginData;
      }
      
      private function rollOver() : void
      {
         isRollOver = true;
      }
      
      private function onDataChange() : void
      {
         campaginData = data as CampaginData;
      }
   }
}


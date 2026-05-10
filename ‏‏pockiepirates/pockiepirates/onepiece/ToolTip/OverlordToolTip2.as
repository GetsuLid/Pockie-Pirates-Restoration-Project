package ToolTip
{
   import ExtendComp.BaseToolTip;
   import ExtendComp.GlowLabel;
   import data.hero.HeroData;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class OverlordToolTip2 extends BaseToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _OverlordToolTip2_GlowLabel12:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel13:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel10:GlowLabel;
      
      private var _3198970hero:HeroData;
      
      public var _OverlordToolTip2_GlowLabel14:GlowLabel;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindings:Array;
      
      public var _OverlordToolTip2_GlowLabel1:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel2:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel3:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel4:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel5:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel6:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel7:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel8:GlowLabel;
      
      public var _OverlordToolTip2_GlowLabel9:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _OverlordToolTip2_GlowLabel11:GlowLabel;
      
      public function OverlordToolTip2()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BaseToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":184,
                  "height":223,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordToolTip2_GlowLabel1",
                     "stylesFactory":function():void
                     {
                        this.color = 16761894;
                        this.fontSize = 14;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "y":10
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowLabel,
                     "id":"_OverlordToolTip2_GlowLabel2",
                     "stylesFactory":function():void
                     {
                        this.color = 16761894;
                        this.fontSize = 12;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":120,
                           "y":12
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
                           "styleName":"Border1162",
                           "width":174,
                           "height":2,
                           "y":41
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":20,
                           "y":51,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel10",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel11",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel12",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel13",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 15229979;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":GlowLabel,
                                    "id":"_OverlordToolTip2_GlowLabel14",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16761894;
                                    }
                                 })]};
                              }
                           })]
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
         this.width = 184;
         this.height = 223;
         this.styleName = "Border220";
         this.addEventListener("dataChange",___OverlordToolTip2_BaseToolTip1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         OverlordToolTip2._watcherSetupUtil = param1;
      }
      
      private function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:OverlordToolTip2 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _OverlordToolTip2_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ToolTip_OverlordToolTip2WatcherSetupUtil");
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
      
      private function onDataChange() : void
      {
         hero = data as HeroData;
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function ___OverlordToolTip2_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function _OverlordToolTip2_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.OverlordAll;
         _loc1_ = hero.overlordPoint + "%";
         _loc1_ = UILang.ArmorOverlord;
         _loc1_ = (hero.armorOverlord ? hero.armorOverlord.level : 0) + "%";
         _loc1_ = UILang.CloakOverlord;
         _loc1_ = (hero.cloakOverlord ? hero.cloakOverlord.level : 0) + "%";
         _loc1_ = UILang.HorseOverlord;
         _loc1_ = (hero.horseOverlord ? hero.horseOverlord.level : 0) + "%";
         _loc1_ = UILang.MiscOverlord;
         _loc1_ = (hero.miscOverlord ? hero.miscOverlord.level : 0) + "%";
         _loc1_ = UILang.AmuletOverlord;
         _loc1_ = (hero.amuletOverlord ? hero.amuletOverlord.level : 0) + "%";
         _loc1_ = UILang.WeaponOverlord;
         _loc1_ = (hero.weaponOverlord ? hero.weaponOverlord.level : 0) + "%";
      }
      
      private function _OverlordToolTip2_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.OverlordAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel1.text = param1;
         },"_OverlordToolTip2_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = hero.overlordPoint + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel2.text = param1;
         },"_OverlordToolTip2_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.ArmorOverlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel3.text = param1;
         },"_OverlordToolTip2_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (hero.armorOverlord ? hero.armorOverlord.level : 0) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel4.text = param1;
         },"_OverlordToolTip2_GlowLabel4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.CloakOverlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel5.text = param1;
         },"_OverlordToolTip2_GlowLabel5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (hero.cloakOverlord ? hero.cloakOverlord.level : 0) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel6.text = param1;
         },"_OverlordToolTip2_GlowLabel6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.HorseOverlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel7.text = param1;
         },"_OverlordToolTip2_GlowLabel7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (hero.horseOverlord ? hero.horseOverlord.level : 0) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel8.text = param1;
         },"_OverlordToolTip2_GlowLabel8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.MiscOverlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel9.text = param1;
         },"_OverlordToolTip2_GlowLabel9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (hero.miscOverlord ? hero.miscOverlord.level : 0) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel10.text = param1;
         },"_OverlordToolTip2_GlowLabel10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.AmuletOverlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel11.text = param1;
         },"_OverlordToolTip2_GlowLabel11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (hero.amuletOverlord ? hero.amuletOverlord.level : 0) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel12.text = param1;
         },"_OverlordToolTip2_GlowLabel12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.WeaponOverlord;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel13.text = param1;
         },"_OverlordToolTip2_GlowLabel13.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = (hero.weaponOverlord ? hero.weaponOverlord.level : 0) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _OverlordToolTip2_GlowLabel14.text = param1;
         },"_OverlordToolTip2_GlowLabel14.text");
         result[13] = binding;
         return result;
      }
   }
}


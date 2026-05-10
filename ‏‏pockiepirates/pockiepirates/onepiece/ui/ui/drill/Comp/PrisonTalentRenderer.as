package ui.drill.Comp
{
   import ExtendComp.GlowLabel;
   import data.drill.PrisonTalent;
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
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PrisonTalentRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PrisonTalentRenderer_SWFLoader1:SWFLoader;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PrisonTalentRenderer_GlowLabel1:GlowLabel;
      
      mx_internal var _watchers:Array = [];
      
      public var _PrisonTalentRenderer_Image1:Image;
      
      public var _PrisonTalentRenderer_Image2:Image;
      
      public var _PrisonTalentRenderer_Image3:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":54,
               "height":62,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_PrisonTalentRenderer_Image1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-5";
                     this.top = "2";
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_PrisonTalentRenderer_Image2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-6";
                     this.top = "2";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Drill/point/4.png"};
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_PrisonTalentRenderer_SWFLoader1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-4";
                     this.verticalCenter = "-9";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Drill/point/choose.swf"};
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_PrisonTalentRenderer_Image3",
                  "stylesFactory":function():void
                  {
                     this.top = "15";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Drill/target.png"};
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_PrisonTalentRenderer_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.bottom = "5";
                     this.horizontalCenter = "14";
                  }
               })]
            };
         }
      });
      
      private var _757219753prisonTalent:PrisonTalent = new PrisonTalent();
      
      public function PrisonTalentRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 54;
         this.height = 62;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("dataChange",___PrisonTalentRenderer_Canvas1_dataChange);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PrisonTalentRenderer._watcherSetupUtil = param1;
      }
      
      private function _PrisonTalentRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Drill/point/" + prisonTalent.imgId + ".png";
         },function(param1:Object):void
         {
            _PrisonTalentRenderer_Image1.source = param1;
         },"_PrisonTalentRenderer_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !prisonTalent.canSelect;
         },function(param1:Boolean):void
         {
            _PrisonTalentRenderer_Image2.visible = param1;
         },"_PrisonTalentRenderer_Image2.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonTalent.isSelect;
         },function(param1:Boolean):void
         {
            _PrisonTalentRenderer_SWFLoader1.visible = param1;
         },"_PrisonTalentRenderer_SWFLoader1.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return prisonTalent.canSelect;
         },function(param1:Boolean):void
         {
            _PrisonTalentRenderer_Image3.visible = param1;
         },"_PrisonTalentRenderer_Image3.visible");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return prisonTalent.nameColor;
         },function(param1:uint):void
         {
            _PrisonTalentRenderer_GlowLabel1.setStyle("color",param1);
         },"_PrisonTalentRenderer_GlowLabel1.color");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "Lv." + prisonTalent.lv;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PrisonTalentRenderer_GlowLabel1.text = param1;
         },"_PrisonTalentRenderer_GlowLabel1.text");
         result[5] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PrisonTalentRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PrisonTalentRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_drill_Comp_PrisonTalentRendererWatcherSetupUtil");
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
      
      private function _PrisonTalentRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "../assets/images/UI/Drill/point/" + prisonTalent.imgId + ".png";
         _loc1_ = !prisonTalent.canSelect;
         _loc1_ = prisonTalent.isSelect;
         _loc1_ = prisonTalent.canSelect;
         _loc1_ = prisonTalent.nameColor;
         _loc1_ = "Lv." + prisonTalent.lv;
      }
      
      public function ___PrisonTalentRenderer_Canvas1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
      
      private function set prisonTalent(value:PrisonTalent) : void
      {
         var oldValue:Object = this._757219753prisonTalent;
         if(oldValue !== value)
         {
            this._757219753prisonTalent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prisonTalent",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get prisonTalent() : PrisonTalent
      {
         return this._757219753prisonTalent;
      }
      
      private function onDataChange() : void
      {
         prisonTalent = data as PrisonTalent;
      }
   }
}


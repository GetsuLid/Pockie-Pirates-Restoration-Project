package ui.abattoir
{
   import ExtendComp.GlowButton;
   import ExtendComp.GlowRadioButton;
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
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.RadioButtonGroup;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class ChangePerson extends Canvas
   {
      
      private var _3586r4:RadioButtonGroup;
      
      private var typeAdd:int;
      
      private var _94068124btn22:GlowRadioButton;
      
      private var _94068123btn21:GlowRadioButton;
      
      private var _1655940522selectType:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":150,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___ChangePerson_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":165,
                        "y":3
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
                        "text":"抽取船员",
                        "y":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowRadioButton,
                  "id":"btn21",
                  "events":{"click":"__btn21_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "groupName":"r4",
                        "styleName":"radio2",
                        "y":47,
                        "x":42,
                        "label":"花费10金币抽取1次"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowRadioButton,
                  "id":"btn22",
                  "events":{"click":"__btn22_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "groupName":"r4",
                        "styleName":"radio2",
                        "y":73,
                        "x":42,
                        "label":"使用1张卡片抽取1次"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "events":{"click":"___ChangePerson_GlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"确定",
                        "y":113
                     };
                  }
               })]
            };
         }
      });
      
      public function ChangePerson()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 150;
         this.styleName = "Border102";
         _ChangePerson_RadioButtonGroup1_i();
      }
      
      public function __btn21_click(event:MouseEvent) : void
      {
         refreshSelect();
      }
      
      public function __btn22_click(event:MouseEvent) : void
      {
         refreshSelect();
      }
      
      private function callServer(_type:int) : void
      {
         if(_type == 0)
         {
            return;
         }
         trace("更换船员" + _type);
         DataManager.Instance.abhero.type = 0;
         DataManager.Instance.abhero.refreshPersonCallServer(_type);
         this.visible = false;
      }
      
      private function hide() : void
      {
         this.visible = false;
      }
      
      public function set r4(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._3586r4;
         if(_loc2_ !== param1)
         {
            this._3586r4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectType() : int
      {
         return this._1655940522selectType;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn21() : GlowRadioButton
      {
         return this._94068123btn21;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn22() : GlowRadioButton
      {
         return this._94068124btn22;
      }
      
      public function ___ChangePerson_GlowButton1_click(event:MouseEvent) : void
      {
         callServer(typeAdd);
      }
      
      [Bindable(event="propertyChange")]
      public function get r4() : RadioButtonGroup
      {
         return this._3586r4;
      }
      
      public function ___ChangePerson_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function _ChangePerson_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var temp:RadioButtonGroup = new RadioButtonGroup();
         r4 = temp;
         temp.initialized(this,"r4");
         return temp;
      }
      
      private function refreshSelect() : void
      {
         if(r4.selection)
         {
            typeAdd = parseInt(Button(r4.selection).id.substring(4));
         }
         trace("选择的是" + typeAdd);
      }
      
      public function set btn22(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = this._94068124btn22;
         if(_loc2_ !== param1)
         {
            this._94068124btn22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn22",_loc2_,param1));
         }
      }
      
      private function set selectType(value:int) : void
      {
         var oldValue:Object = this._1655940522selectType;
         if(oldValue !== value)
         {
            this._1655940522selectType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectType",oldValue,value));
         }
      }
      
      public function set btn21(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = this._94068123btn21;
         if(_loc2_ !== param1)
         {
            this._94068123btn21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn21",_loc2_,param1));
         }
      }
   }
}


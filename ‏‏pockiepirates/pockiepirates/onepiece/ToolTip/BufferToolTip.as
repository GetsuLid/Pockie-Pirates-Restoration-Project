package ToolTip
{
   import ExtendComp.BaseToolTip;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import war.effect.BufferEffect;
   
   public class BufferToolTip extends BaseToolTip
   {
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1815989025_states:Array;
      
      public function BufferToolTip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({"type":BaseToolTip});
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.color = 16777215;
            this.fontSize = 12;
         };
         this.styleName = "Border146";
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.addEventListener("dataChange",___BufferToolTip_BaseToolTip1_dataChange);
      }
      
      [Bindable(event="propertyChange")]
      private function get _states() : Array
      {
         return this._1815989025_states;
      }
      
      private function addToolTip(_state:int, index:int) : void
      {
         var bp:BufferEffect = new BufferEffect("BUFFER" + _state);
         addChild(bp);
         bp.x = 5;
         bp.y = 5 + index * 20;
         var label:Label = new Label();
         label.x = 25;
         label.y = 5 + index * 20;
         addChild(label);
         switch(_state)
         {
            case 101:
               label.text = UILang.Buff1;
               break;
            case 102:
               label.text = UILang.Buff2;
               break;
            case 103:
               label.text = UILang.Buff3;
               break;
            case 104:
               label.text = UILang.Buff4;
               break;
            case 105:
               label.text = UILang.Buff5;
               break;
            case 106:
               label.text = UILang.Buff6;
               break;
            case 107:
               label.text = UILang.Buff7;
               break;
            case 108:
               label.text = UILang.Buff8;
               break;
            case 109:
               label.text = UILang.Buff9;
               break;
            case 110:
               label.text = UILang.Buff10;
               break;
            case 111:
               label.text = UILang.Buff11;
               break;
            case 112:
               label.text = UILang.Buff12;
               break;
            case 113:
               label.text = UILang.Buff13;
               break;
            case 114:
               label.text = UILang.Buff14;
               break;
            case 115:
               label.text = UILang.Buff15;
               break;
            case 116:
               label.text = UILang.Buff41;
               break;
            case 117:
               label.text = UILang.Buff43;
               break;
            case 118:
               label.text = UILang.Buff45;
               break;
            case 201:
               label.text = UILang.Buff16;
               break;
            case 202:
               label.text = UILang.Buff17;
               break;
            case 203:
               label.text = UILang.Buff18;
               break;
            case 204:
               label.text = UILang.Buff19;
               break;
            case 205:
               label.text = UILang.Buff20;
               break;
            case 206:
               label.text = UILang.Buff21;
               break;
            case 207:
               label.text = UILang.Buff22;
               break;
            case 208:
               label.text = UILang.Buff23;
               break;
            case 209:
               label.text = UILang.Buff24;
               break;
            case 210:
               label.text = UILang.Buff25;
               break;
            case 211:
               label.text = UILang.Buff26;
               break;
            case 212:
               label.text = UILang.Buff27;
               break;
            case 213:
               label.text = UILang.Buff35;
               break;
            case 214:
               label.text = UILang.Buff29;
               break;
            case 215:
               label.text = UILang.Buff36;
               break;
            case 216:
               label.text = UILang.Buff31;
               break;
            case 217:
               label.text = UILang.Buff32;
               break;
            case 218:
               label.text = UILang.Buff33;
               break;
            case 219:
               label.text = UILang.Buff34;
               break;
            case 220:
               label.text = UILang.Buff37;
               break;
            case 221:
               label.text = UILang.Buff38;
               break;
            case 222:
               label.text = UILang.Buff40;
               break;
            case 223:
               label.text = UILang.Buff39;
               break;
            case 224:
               label.text = UILang.Buff42;
               break;
            case 225:
               label.text = UILang.Buff44;
         }
      }
      
      private function set _states(value:Array) : void
      {
         var oldValue:Object = this._1815989025_states;
         if(oldValue !== value)
         {
            this._1815989025_states = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_states",oldValue,value));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function onDataChange() : void
      {
         var _state:int = 0;
         _states = data as Array;
         removeAllChildren();
         var index:int = 0;
         for each(_state in _states)
         {
            addToolTip(_state,index);
            index++;
         }
         height = 10 + index * 20;
      }
      
      public function ___BufferToolTip_BaseToolTip1_dataChange(event:FlexEvent) : void
      {
         onDataChange();
      }
   }
}


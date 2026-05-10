package data.soul
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class SoulData implements IEventDispatcher
   {
      
      private var _1383595098isSpesical:Boolean = false;
      
      private var _3373707name:String;
      
      private var _1449350882growValue:int;
      
      private var _1244699312addValue:String;
      
      private var _1825295072baseValue:int;
      
      private var _651215103quality:int;
      
      private var _3355id:int;
      
      private var _116079url:String;
      
      private var _2067266016showExp:String;
      
      private var _1148566661addType:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _102865796level:int;
      
      private var _1705625582soulSource:int;
      
      private var _332640884baseExp:int;
      
      private var _1422538308addExp:int;
      
      private var _2069123810onlySell:Boolean = false;
      
      private var _91310105_type:int;
      
      private var _1210724454nameColor2:String = "#ffffff";
      
      private var _18057232qualityUrl:String;
      
      private var _3226745icon:int;
      
      private var _2131650567levelExp:int;
      
      private var _1207870360nameColor:uint = 16777215;
      
      public function SoulData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : int
      {
         return this._3226745icon;
      }
      
      public function set icon(value:int) : void
      {
         var oldValue:Object = this._3226745icon;
         if(oldValue !== value)
         {
            this._3226745icon = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addType() : String
      {
         return this._1148566661addType;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      public function set quality(value:int) : void
      {
         var oldValue:Object = this._651215103quality;
         if(oldValue !== value)
         {
            this._651215103quality = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quality",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quality() : int
      {
         return this._651215103quality;
      }
      
      public function set addExp(value:int) : void
      {
         var oldValue:Object = this._1422538308addExp;
         if(oldValue !== value)
         {
            this._1422538308addExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get baseExp() : int
      {
         return this._332640884baseExp;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set level(value:int) : void
      {
         var oldValue:Object = this._102865796level;
         if(oldValue !== value)
         {
            this._102865796level = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addExp() : int
      {
         return this._1422538308addExp;
      }
      
      public function set name(value:String) : void
      {
         var oldValue:Object = this._3373707name;
         if(oldValue !== value)
         {
            this._3373707name = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor() : uint
      {
         return this._1207870360nameColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get _type() : int
      {
         return this._91310105_type;
      }
      
      [Bindable(event="propertyChange")]
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get onlySell() : Boolean
      {
         return this._2069123810onlySell;
      }
      
      public function set baseExp(value:int) : void
      {
         var oldValue:Object = this._332640884baseExp;
         if(oldValue !== value)
         {
            this._332640884baseExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get baseValue() : int
      {
         return this._1825295072baseValue;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameColor2() : String
      {
         return this._1210724454nameColor2;
      }
      
      [Bindable(event="propertyChange")]
      public function get growValue() : int
      {
         return this._1449350882growValue;
      }
      
      public function set addValue(value:String) : void
      {
         var oldValue:Object = this._1244699312addValue;
         if(oldValue !== value)
         {
            this._1244699312addValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addValue",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set nameColor(value:uint) : void
      {
         var oldValue:Object = this._1207870360nameColor;
         if(oldValue !== value)
         {
            this._1207870360nameColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameColor",oldValue,value));
         }
      }
      
      public function set _type(value:int) : void
      {
         var oldValue:Object = this._91310105_type;
         if(oldValue !== value)
         {
            this._91310105_type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_type",oldValue,value));
         }
      }
      
      public function set id(value:int) : void
      {
         var oldValue:Object = this._3355id;
         if(oldValue !== value)
         {
            this._3355id = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"id",oldValue,value));
         }
      }
      
      public function set baseValue(value:int) : void
      {
         var oldValue:Object = this._1825295072baseValue;
         if(oldValue !== value)
         {
            this._1825295072baseValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseValue",oldValue,value));
         }
      }
      
      public function setLevel(l:int) : void
      {
         if(level != l)
         {
            level = l;
            if(!isSpesical)
            {
               if(_type == 6 || _type == 7 || _type == 8)
               {
                  addValue = addType + "+" + (baseValue + (level - 1) * growValue) / 10 + "%";
               }
               else if(_type == 12 || _type == 13 || _type == 14)
               {
                  addValue = addType + "+" + (baseValue + (level - 1) * growValue) / 100 + "%";
               }
               else if(icon == 12)
               {
                  addValue = UILang.SfEat;
               }
               else
               {
                  addValue = addType + "+" + (baseValue + (level - 1) * growValue);
               }
            }
         }
      }
      
      public function set showExp(value:String) : void
      {
         var oldValue:Object = this._2067266016showExp;
         if(oldValue !== value)
         {
            this._2067266016showExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showExp",oldValue,value));
         }
      }
      
      public function set isSpesical(value:Boolean) : void
      {
         var oldValue:Object = this._1383595098isSpesical;
         if(oldValue !== value)
         {
            this._1383595098isSpesical = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSpesical",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get addValue() : String
      {
         return this._1244699312addValue;
      }
      
      public function set onlySell(value:Boolean) : void
      {
         var oldValue:Object = this._2069123810onlySell;
         if(oldValue !== value)
         {
            this._2069123810onlySell = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onlySell",oldValue,value));
         }
      }
      
      public function set nameColor2(value:String) : void
      {
         var oldValue:Object = this._1210724454nameColor2;
         if(oldValue !== value)
         {
            this._1210724454nameColor2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameColor2",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get isSpesical() : Boolean
      {
         return this._1383595098isSpesical;
      }
      
      public function setExp(exp:int) : void
      {
         if(!isSpesical && icon != 12)
         {
            if(level < 10)
            {
               showExp = UILang.FruitExp + "：" + exp + "/" + levelExp * Math.pow(2,level - 1);
            }
            else
            {
               showExp = UILang.FruitFullLv;
            }
            addExp = exp + baseExp;
         }
         else if(icon == 12)
         {
            if(quality == 2)
            {
               addExp = 100;
            }
            else if(quality == 3)
            {
               addExp = 300;
            }
            else if(quality == 4)
            {
               addExp = 500;
            }
            else if(quality == 5)
            {
               addExp = 1000;
            }
            else if(quality == 6)
            {
               addExp = 1500;
            }
            showExp = UILang.FruitExp + "：" + addExp.toString();
         }
         else
         {
            showExp = "";
         }
      }
      
      public function set url(value:String) : void
      {
         var oldValue:Object = this._116079url;
         if(oldValue !== value)
         {
            this._116079url = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",oldValue,value));
         }
      }
      
      public function set qualityUrl(value:String) : void
      {
         var oldValue:Object = this._18057232qualityUrl;
         if(oldValue !== value)
         {
            this._18057232qualityUrl = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityUrl",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showExp() : String
      {
         return this._2067266016showExp;
      }
      
      public function set growValue(value:int) : void
      {
         var oldValue:Object = this._1449350882growValue;
         if(oldValue !== value)
         {
            this._1449350882growValue = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growValue",oldValue,value));
         }
      }
      
      public function set soulSource(value:int) : void
      {
         var oldValue:Object = this._1705625582soulSource;
         if(oldValue !== value)
         {
            this._1705625582soulSource = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulSource",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get soulSource() : int
      {
         return this._1705625582soulSource;
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function resolveBasicInfo(info:Object) : void
      {
         name = info.name;
         icon = info.icon;
         baseExp = info.eatExp;
         url = "../assets/images/Icon/Soul/" + info.icon + ".swf";
         qualityUrl = "../assets/images/Icon/SoulQuality/" + info.quality + ".png";
         quality = info.quality;
         if(info.quality == 1)
         {
            onlySell = true;
         }
         nameColor = Global.nameColors[info.quality - 1];
         nameColor2 = Global.nameColors2[info.quality - 1];
         baseValue = info.abilityBase;
         growValue = info.abilityGrow;
         _type = info.abilityType;
         if(info.abilityType)
         {
            addType = Global.addNames[info.abilityType - 1];
         }
         else
         {
            addType = UILang.AttachEff_U;
            isSpesical = true;
         }
         levelExp = info.levelParam;
      }
      
      public function set levelExp(value:int) : void
      {
         var oldValue:Object = this._2131650567levelExp;
         if(oldValue !== value)
         {
            this._2131650567levelExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelExp() : int
      {
         return this._2131650567levelExp;
      }
      
      public function set addType(value:String) : void
      {
         var oldValue:Object = this._1148566661addType;
         if(oldValue !== value)
         {
            this._1148566661addType = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addType",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityUrl() : String
      {
         return this._18057232qualityUrl;
      }
   }
}


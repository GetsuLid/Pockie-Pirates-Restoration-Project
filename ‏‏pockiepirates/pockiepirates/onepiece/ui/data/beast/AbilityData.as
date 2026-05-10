package data.beast
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import mx.events.PropertyChangeEvent;
   
   public class AbilityData implements IEventDispatcher
   {
      
      public var nowAgility:int;
      
      private var _1700190232StrengthY:Number;
      
      private var _232879782IntelligenceY:Number;
      
      private var _1646165204AgilityY:Number;
      
      private var _1646165203AgilityX:Number;
      
      private var _2008043888LuckyX:Number;
      
      private var _232879783IntelligenceX:Number;
      
      public var nowIntelligence:int;
      
      public var nowStrength:int;
      
      public var nowStamina:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var maxAgility:int;
      
      public var maxIntelligence:int;
      
      public var maxStrength:int;
      
      private var imgHeight:int;
      
      private var correctionNum:Number = 0.1;
      
      public var nowlucky:int;
      
      private var _1376509929StaminaX:Number;
      
      private var imgWidth:int;
      
      private var _2008043887LuckyY:Number;
      
      private var _1376509930StaminaY:Number;
      
      public var maxLucky:int;
      
      private var _1700190231StrengthX:Number;
      
      public var maxStamina:int;
      
      public function AbilityData()
      {
         super();
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get StrengthX() : Number
      {
         return this._1700190231StrengthX;
      }
      
      [Bindable(event="propertyChange")]
      public function get StrengthY() : Number
      {
         return this._1700190232StrengthY;
      }
      
      public function set AgilityX(value:Number) : void
      {
         var oldValue:Object = this._1646165203AgilityX;
         if(oldValue !== value)
         {
            this._1646165203AgilityX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AgilityX",oldValue,value));
         }
      }
      
      public function set LuckyX(value:Number) : void
      {
         var oldValue:Object = this._2008043888LuckyX;
         if(oldValue !== value)
         {
            this._2008043888LuckyX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"LuckyX",oldValue,value));
         }
      }
      
      public function set AgilityY(value:Number) : void
      {
         var oldValue:Object = this._1646165204AgilityY;
         if(oldValue !== value)
         {
            this._1646165204AgilityY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AgilityY",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get LuckyY() : Number
      {
         return this._2008043887LuckyY;
      }
      
      public function set StrengthX(value:Number) : void
      {
         var oldValue:Object = this._1700190231StrengthX;
         if(oldValue !== value)
         {
            this._1700190231StrengthX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"StrengthX",oldValue,value));
         }
      }
      
      public function set StrengthY(value:Number) : void
      {
         var oldValue:Object = this._1700190232StrengthY;
         if(oldValue !== value)
         {
            this._1700190232StrengthY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"StrengthY",oldValue,value));
         }
      }
      
      public function set LuckyY(value:Number) : void
      {
         var oldValue:Object = this._2008043887LuckyY;
         if(oldValue !== value)
         {
            this._2008043887LuckyY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"LuckyY",oldValue,value));
         }
      }
      
      public function set IntelligenceX(value:Number) : void
      {
         var oldValue:Object = this._232879783IntelligenceX;
         if(oldValue !== value)
         {
            this._232879783IntelligenceX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"IntelligenceX",oldValue,value));
         }
      }
      
      public function set IntelligenceY(value:Number) : void
      {
         var oldValue:Object = this._232879782IntelligenceY;
         if(oldValue !== value)
         {
            this._232879782IntelligenceY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"IntelligenceY",oldValue,value));
         }
      }
      
      public function setValue(_strength:int, _agility:int, _intelligence:int, _stamina:int, _lucky:int, _maxStrength:int, _maxAgility:int, _maxIntelligence:int, _maxStamina:int, _maxLucky:int, _width:int, _height:int) : void
      {
         maxAgility = 20000;
         maxIntelligence = 20000;
         maxLucky = 20000;
         maxStamina = 20000;
         maxStrength = 20000;
         nowStrength = _strength;
         nowAgility = _agility;
         nowIntelligence = _intelligence;
         nowStamina = _stamina;
         nowlucky = _lucky;
         imgWidth = _width;
         imgHeight = _height;
         dealXY();
      }
      
      [Bindable(event="propertyChange")]
      public function get LuckyX() : Number
      {
         return this._2008043888LuckyX;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get AgilityX() : Number
      {
         return this._1646165203AgilityX;
      }
      
      public function pointCheck(p:Point, ptPolygon:Array, nCount:int) : Boolean
      {
         var p1:Point = null;
         var p2:Point = null;
         var x:Number = NaN;
         var nCross:int = 0;
         for(var i:int = 0; i < nCount; i++)
         {
            p1 = ptPolygon[i];
            p2 = ptPolygon[(i + 1) % nCount];
            if(p1.y != p2.y)
            {
               if(p.y >= Math.min(p1.y,p2.y))
               {
                  if(p.y < Math.max(p1.y,p2.y))
                  {
                     x = Number(p.y - p1.y) * Number(p2.x - p1.x) / Number(p2.y - p1.y) + p1.x;
                     if(x > p.x)
                     {
                        nCross++;
                     }
                  }
               }
            }
         }
         return nCross % 2 == 1;
      }
      
      [Bindable(event="propertyChange")]
      public function get IntelligenceX() : Number
      {
         return this._232879783IntelligenceX;
      }
      
      [Bindable(event="propertyChange")]
      public function get IntelligenceY() : Number
      {
         return this._232879782IntelligenceY;
      }
      
      [Bindable(event="propertyChange")]
      public function get AgilityY() : Number
      {
         return this._1646165204AgilityY;
      }
      
      public function set StaminaY(value:Number) : void
      {
         var oldValue:Object = this._1376509930StaminaY;
         if(oldValue !== value)
         {
            this._1376509930StaminaY = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"StaminaY",oldValue,value));
         }
      }
      
      private function dealXY() : void
      {
         var percent:Number = 0;
         percent = nowStamina / maxStamina;
         if(percent < correctionNum)
         {
            percent = correctionNum;
         }
         if(percent >= 1)
         {
            percent = 1;
         }
         StaminaX = imgWidth / 2;
         StaminaY = imgHeight * 5 / 9 * (1 - percent);
         percent = nowAgility / maxAgility;
         if(percent < correctionNum)
         {
            percent = correctionNum;
         }
         if(percent >= 1)
         {
            percent = 1;
         }
         AgilityX = imgWidth / 2 * (1 - percent);
         AgilityY = imgHeight / 9 * 6 / 5 * 3 + (imgHeight / 9 * 5 - imgHeight / 9 * 6 / 5 * 3) * (1 - percent);
         percent = nowStrength / maxStrength;
         if(percent < correctionNum)
         {
            percent = correctionNum;
         }
         if(percent >= 1)
         {
            percent = 1;
         }
         StrengthX = imgWidth / 2 * (1 + percent);
         StrengthY = imgHeight / 9 * 6 / 5 * 3 + (imgHeight / 9 * 5 - imgHeight / 9 * 6 / 5 * 3) * (1 - percent);
         percent = nowIntelligence / maxIntelligence;
         if(percent < correctionNum)
         {
            percent = correctionNum;
         }
         if(percent >= 1)
         {
            percent = 1;
         }
         IntelligenceX = imgWidth / 2 - imgWidth / 9 * 3 + imgWidth / 9 * 3 * (1 - percent);
         IntelligenceY = imgHeight / 9 * 5 + imgHeight / 9 * 4 * percent;
         percent = nowlucky / maxLucky;
         if(percent < correctionNum)
         {
            percent = correctionNum;
         }
         if(percent >= 1)
         {
            percent = 1;
         }
         LuckyX = imgWidth / 2 + imgWidth / 9 * 3 * percent;
         LuckyY = imgHeight / 9 * 5 + imgHeight / 9 * 4 * percent;
      }
      
      [Bindable(event="propertyChange")]
      public function get StaminaX() : Number
      {
         return this._1376509929StaminaX;
      }
      
      public function set StaminaX(value:Number) : void
      {
         var oldValue:Object = this._1376509929StaminaX;
         if(oldValue !== value)
         {
            this._1376509929StaminaX = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"StaminaX",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get StaminaY() : Number
      {
         return this._1376509930StaminaY;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}


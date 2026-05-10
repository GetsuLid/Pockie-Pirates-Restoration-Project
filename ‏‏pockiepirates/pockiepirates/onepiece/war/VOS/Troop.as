package war.VOS
{
   import Util.ObjectAction;
   import data.Item.ItemBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class Troop implements IEventDispatcher
   {
      
      public static var TYPE_SOLDIER:int = 1;
      
      public static var TYPE:int = 2;
      
      public static var TYPE_ARMY:int = 3;
      
      public var item:ItemBase;
      
      public var id:int;
      
      private var _818458222middleFace:String;
      
      private var _1413853096amount:int;
      
      public var type:int;
      
      private var _1255039140rewardExploit:int;
      
      private var _401174674rewardPrestige:int;
      
      public var order:int;
      
      private var _1279421736rewardCopper:int;
      
      public var pos1:int;
      
      public var pos2:int;
      
      public var pos3:int;
      
      public var pos4:int;
      
      public var pos5:int;
      
      public var pos7:int;
      
      private var _261236149showAmount:Boolean;
      
      public var require:int;
      
      public var pos6:int;
      
      public var pos8:int;
      
      public var pos9:int;
      
      public var currentFrame:int;
      
      private var _1690898146rewardItem:ItemBase;
      
      public var posX:int;
      
      public var posY:int;
      
      private var _1961091166attackable:Boolean;
      
      private var _3373707name:String;
      
      private var _462882225warHeros:ArrayCollection = new ArrayCollection();
      
      private var _102865796level:int;
      
      private var _1274442605finish:Boolean;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var completePercent:int;
      
      private var _3135069face:String;
      
      private var _1282250233rewardExperience:int;
      
      private var _3079825desc:String;
      
      private var _2110202011containCount:int;
      
      public function Troop()
      {
         super();
      }
      
      public function set rewardExperience(value:int) : void
      {
         var oldValue:Object = this._1282250233rewardExperience;
         if(oldValue !== value)
         {
            this._1282250233rewardExperience = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardExperience",oldValue,value));
         }
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
      
      public function set name(value:String) : void
      {
         var oldValue:Object = this._3373707name;
         if(oldValue !== value)
         {
            this._3373707name = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",oldValue,value));
         }
      }
      
      public function set desc(value:String) : void
      {
         var oldValue:Object = this._3079825desc;
         if(oldValue !== value)
         {
            this._3079825desc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",oldValue,value));
         }
      }
      
      public function resolveCopyConfig(info:Object) : void
      {
         var face:int = 0;
         id = info.cfgArmyId;
         desc = info.desc;
         face = "../assets/images/Head/Small/" + info.face + ".swf";
         middleFace = "../assets/images/Head/Middle/" + info.face + ".swf";
         type = info.isElite == true ? 2 : 1;
         name = info.name;
         order = info.order;
         require = info.require;
         rewardCopper = info.rewardCopper;
         completePercent = info.percent;
         rewardPrestige = info.rewardPrestige;
         rewardExperience = info.rewardExperience;
         posX = info.posX;
         posY = info.posY;
         level = info.level;
         rewardExploit = info.rewardExploit;
         if(info.rewardItem)
         {
            rewardItem = ObjectAction.cloneItem(info.rewardItem);
         }
         else
         {
            rewardItem = null;
         }
         var source:Array = [7,4,1,8,5,2,9,6,3];
         for(var i:int = 1; i <= 9; i++)
         {
            face = int(info["pos" + source[i - 1]]);
            if(face == 0)
            {
               warHeros.addItem("");
            }
            else
            {
               warHeros.addItem("../assets/images/Head/Small/" + face + ".swf");
            }
         }
      }
      
      public function set middleFace(value:String) : void
      {
         var oldValue:Object = this._818458222middleFace;
         if(oldValue !== value)
         {
            this._818458222middleFace = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleFace",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardCopper() : int
      {
         return this._1279421736rewardCopper;
      }
      
      public function set rewardPrestige(value:int) : void
      {
         var oldValue:Object = this._401174674rewardPrestige;
         if(oldValue !== value)
         {
            this._401174674rewardPrestige = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardPrestige",oldValue,value));
         }
      }
      
      public function set finish(value:Boolean) : void
      {
         var oldValue:Object = this._1274442605finish;
         if(oldValue !== value)
         {
            this._1274442605finish = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finish",oldValue,value));
         }
      }
      
      public function set containCount(value:int) : void
      {
         var oldValue:Object = this._2110202011containCount;
         if(oldValue !== value)
         {
            this._2110202011containCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"containCount",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set attackable(value:Boolean) : void
      {
         var oldValue:Object = this._1961091166attackable;
         if(oldValue !== value)
         {
            this._1961091166attackable = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attackable",oldValue,value));
         }
      }
      
      public function set rewardCopper(value:int) : void
      {
         var oldValue:Object = this._1279421736rewardCopper;
         if(oldValue !== value)
         {
            this._1279421736rewardCopper = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardCopper",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function resolveConfig(info:Object) : void
      {
         id = info.cfgArmyId;
         desc = info.desc;
         face = "../assets/images/Head/Small/" + info.face + ".swf";
         middleFace = "../assets/images/Head/Middle/" + info.face + ".swf";
         type = info.isElite == true ? 2 : 1;
         name = info.name;
         order = info.order;
         require = info.require;
         rewardExploit = info.rewardExploit;
         posX = info.posX;
         posY = info.posY;
         completePercent = info.completePercent;
         containCount = info.containCount;
         level = info.level;
         rewardExperience = info.rewardExperience;
         pos1 = info.pos1;
         pos2 = info.pos2;
         pos3 = info.pos3;
         pos4 = info.pos4;
         pos5 = info.pos5;
         pos6 = info.pos6;
         pos7 = info.pos7;
         pos8 = info.pos8;
         pos9 = info.pos9;
         if(info.rewardItem)
         {
            rewardItem = ObjectAction.cloneItem(info.rewardItem);
         }
         else
         {
            rewardItem = null;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amount() : int
      {
         return this._1413853096amount;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardExploit() : int
      {
         return this._1255039140rewardExploit;
      }
      
      public function set warHeros(value:ArrayCollection) : void
      {
         var oldValue:Object = this._462882225warHeros;
         if(oldValue !== value)
         {
            this._462882225warHeros = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warHeros",oldValue,value));
         }
      }
      
      public function set showAmount(value:Boolean) : void
      {
         var oldValue:Object = this._261236149showAmount;
         if(oldValue !== value)
         {
            this._261236149showAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showAmount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : String
      {
         return this._3135069face;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : String
      {
         return this._3079825desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get middleFace() : String
      {
         return this._818458222middleFace;
      }
      
      [Bindable(event="propertyChange")]
      public function get finish() : Boolean
      {
         return this._1274442605finish;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardPrestige() : int
      {
         return this._401174674rewardPrestige;
      }
      
      [Bindable(event="propertyChange")]
      public function get containCount() : int
      {
         return this._2110202011containCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get warHeros() : ArrayCollection
      {
         return this._462882225warHeros;
      }
      
      [Bindable(event="propertyChange")]
      public function get showAmount() : Boolean
      {
         return this._261236149showAmount;
      }
      
      public function set amount(value:int) : void
      {
         var oldValue:Object = this._1413853096amount;
         if(oldValue !== value)
         {
            this._1413853096amount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount",oldValue,value));
         }
      }
      
      public function set rewardExploit(value:int) : void
      {
         var oldValue:Object = this._1255039140rewardExploit;
         if(oldValue !== value)
         {
            this._1255039140rewardExploit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardExploit",oldValue,value));
         }
      }
      
      public function set face(value:String) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      public function set rewardItem(value:ItemBase) : void
      {
         var oldValue:Object = this._1690898146rewardItem;
         if(oldValue !== value)
         {
            this._1690898146rewardItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItem",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attackable() : Boolean
      {
         return this._1961091166attackable;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItem() : ItemBase
      {
         return this._1690898146rewardItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardExperience() : int
      {
         return this._1282250233rewardExperience;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}


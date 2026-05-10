package data.drill
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class PrisonArmyData implements IEventDispatcher
   {
      
      private var _2041217302activation:Boolean;
      
      private var _3373707name:String;
      
      private var _149841376canFight:Boolean;
      
      private var _3540562star:int;
      
      private var _3446877pos1:int;
      
      private var _3446878pos2:int;
      
      private var _3446879pos3:int;
      
      private var _3446933posi:int;
      
      private var _2130941331nowArmy:int;
      
      private var _3355id:int;
      
      private var _818394859middleHead:String;
      
      private var _3446880pos4:int;
      
      private var _3446881pos5:int;
      
      private var _3135069face:int;
      
      private var _3446882pos6:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _3446884pos8:int;
      
      private var _3446883pos7:int;
      
      private var _3446885pos9:int;
      
      private var _843553057maxArmy:int;
      
      private var _115523840bigHead:String;
      
      private var _398301669isSelected:Boolean;
      
      private var _106006350order:int;
      
      public function PrisonArmyData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get bigHead() : String
      {
         return this._115523840bigHead;
      }
      
      public function set pos9(value:int) : void
      {
         var oldValue:Object = this._3446885pos9;
         if(oldValue !== value)
         {
            this._3446885pos9 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos9",oldValue,value));
         }
      }
      
      public function set bigHead(value:String) : void
      {
         var oldValue:Object = this._115523840bigHead;
         if(oldValue !== value)
         {
            this._115523840bigHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigHead",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      [Bindable(event="propertyChange")]
      public function get pos9() : int
      {
         return this._3446885pos9;
      }
      
      [Bindable(event="propertyChange")]
      public function get nowArmy() : int
      {
         return this._2130941331nowArmy;
      }
      
      [Bindable(event="propertyChange")]
      public function get middleHead() : String
      {
         return this._818394859middleHead;
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
      public function get id() : int
      {
         return this._3355id;
      }
      
      [Bindable(event="propertyChange")]
      public function get activation() : Boolean
      {
         return this._2041217302activation;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxArmy() : int
      {
         return this._843553057maxArmy;
      }
      
      [Bindable(event="propertyChange")]
      public function get canFight() : Boolean
      {
         return this._149841376canFight;
      }
      
      public function set middleHead(value:String) : void
      {
         var oldValue:Object = this._818394859middleHead;
         if(oldValue !== value)
         {
            this._818394859middleHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleHead",oldValue,value));
         }
      }
      
      public function set star(value:int) : void
      {
         var oldValue:Object = this._3540562star;
         if(oldValue !== value)
         {
            this._3540562star = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",oldValue,value));
         }
      }
      
      public function set nowArmy(value:int) : void
      {
         var oldValue:Object = this._2130941331nowArmy;
         if(oldValue !== value)
         {
            this._2130941331nowArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowArmy",oldValue,value));
         }
      }
      
      public function set posi(value:int) : void
      {
         var oldValue:Object = this._3446933posi;
         if(oldValue !== value)
         {
            this._3446933posi = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posi",oldValue,value));
         }
      }
      
      public function set order(value:int) : void
      {
         var oldValue:Object = this._106006350order;
         if(oldValue !== value)
         {
            this._106006350order = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"order",oldValue,value));
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
      
      public function set face(value:int) : void
      {
         var oldValue:Object = this._3135069face;
         if(oldValue !== value)
         {
            this._3135069face = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"face",oldValue,value));
         }
      }
      
      public function set pos2(value:int) : void
      {
         var oldValue:Object = this._3446878pos2;
         if(oldValue !== value)
         {
            this._3446878pos2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos2",oldValue,value));
         }
      }
      
      public function set pos3(value:int) : void
      {
         var oldValue:Object = this._3446879pos3;
         if(oldValue !== value)
         {
            this._3446879pos3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos3",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function set canFight(value:Boolean) : void
      {
         var oldValue:Object = this._149841376canFight;
         if(oldValue !== value)
         {
            this._149841376canFight = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canFight",oldValue,value));
         }
      }
      
      public function set activation(value:Boolean) : void
      {
         var oldValue:Object = this._2041217302activation;
         if(oldValue !== value)
         {
            this._2041217302activation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activation",oldValue,value));
         }
      }
      
      public function set pos7(value:int) : void
      {
         var oldValue:Object = this._3446883pos7;
         if(oldValue !== value)
         {
            this._3446883pos7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos7",oldValue,value));
         }
      }
      
      public function set pos4(value:int) : void
      {
         var oldValue:Object = this._3446880pos4;
         if(oldValue !== value)
         {
            this._3446880pos4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos4",oldValue,value));
         }
      }
      
      public function set pos8(value:int) : void
      {
         var oldValue:Object = this._3446884pos8;
         if(oldValue !== value)
         {
            this._3446884pos8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos8",oldValue,value));
         }
      }
      
      public function set maxArmy(value:int) : void
      {
         var oldValue:Object = this._843553057maxArmy;
         if(oldValue !== value)
         {
            this._843553057maxArmy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxArmy",oldValue,value));
         }
      }
      
      public function set isSelected(value:Boolean) : void
      {
         var oldValue:Object = this._398301669isSelected;
         if(oldValue !== value)
         {
            this._398301669isSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelected",oldValue,value));
         }
      }
      
      public function set pos6(value:int) : void
      {
         var oldValue:Object = this._3446882pos6;
         if(oldValue !== value)
         {
            this._3446882pos6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos6",oldValue,value));
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
      public function get order() : int
      {
         return this._106006350order;
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : int
      {
         return this._3540562star;
      }
      
      public function set pos5(value:int) : void
      {
         var oldValue:Object = this._3446881pos5;
         if(oldValue !== value)
         {
            this._3446881pos5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos5",oldValue,value));
         }
      }
      
      public function set pos1(value:int) : void
      {
         var oldValue:Object = this._3446877pos1;
         if(oldValue !== value)
         {
            this._3446877pos1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pos1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos2() : int
      {
         return this._3446878pos2;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos4() : int
      {
         return this._3446880pos4;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos5() : int
      {
         return this._3446881pos5;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos6() : int
      {
         return this._3446882pos6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos7() : int
      {
         return this._3446883pos7;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos1() : int
      {
         return this._3446877pos1;
      }
      
      [Bindable(event="propertyChange")]
      public function get isSelected() : Boolean
      {
         return this._398301669isSelected;
      }
      
      [Bindable(event="propertyChange")]
      public function get posi() : int
      {
         return this._3446933posi;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos8() : int
      {
         return this._3446884pos8;
      }
      
      public function dealArmyData(info:Object, prison:Object) : void
      {
         face = info.figure;
         middleHead = "../assets/images/Head/Middle/" + face + ".swf";
         bigHead = "../assets/images/Head/Big/" + face + ".swf";
         isSelected = false;
         id = info.cfgArmyId;
         name = info.name;
         posi = prison.pos;
         order = prison.order;
         star = prison.star;
         canFight = prison.canFight;
         if(canFight)
         {
            isSelected = true;
         }
         if(star)
         {
            activation = true;
         }
         else
         {
            activation = false;
         }
         pos1 = info.pos1;
         pos2 = info.pos2;
         pos3 = info.pos3;
         pos4 = info.pos4;
         pos5 = info.pos5;
         pos6 = info.pos6;
         pos7 = info.pos7;
         pos8 = info.pos8;
         pos9 = info.pos9;
      }
      
      [Bindable(event="propertyChange")]
      public function get pos3() : int
      {
         return this._3446879pos3;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
   }
}


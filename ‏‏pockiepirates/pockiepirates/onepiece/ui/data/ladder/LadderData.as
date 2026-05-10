package data.ladder
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class LadderData implements IEventDispatcher
   {
      
      private var _1191806081selfLose:int;
      
      private var _99462250honor:int;
      
      private var _811489478legionRate:int;
      
      private var _1965834686legionWin:int;
      
      private var _1191971404selfRate:int;
      
      private var _1307590523todayNum:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _94851343count:int;
      
      private var _811654801legionLose:int;
      
      private var _906335517season:int;
      
      private var _1978118384selfWin:int;
      
      private var _109264530score:int;
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      private var _1666053950changeScore:int;
      
      private var _3492908rank:LadderRankData = new LadderRankData();
      
      public function LadderData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get selfLose() : int
      {
         return this._1191806081selfLose;
      }
      
      public function set selfLose(value:int) : void
      {
         var oldValue:Object = this._1191806081selfLose;
         if(oldValue !== value)
         {
            this._1191806081selfLose = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfLose",oldValue,value));
         }
      }
      
      public function set changeScore(value:int) : void
      {
         var oldValue:Object = this._1666053950changeScore;
         if(oldValue !== value)
         {
            this._1666053950changeScore = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeScore",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get todayNum() : int
      {
         return this._1307590523todayNum;
      }
      
      public function set todayNum(value:int) : void
      {
         var oldValue:Object = this._1307590523todayNum;
         if(oldValue !== value)
         {
            this._1307590523todayNum = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayNum",oldValue,value));
         }
      }
      
      public function set legionWin(value:int) : void
      {
         var oldValue:Object = this._1965834686legionWin;
         if(oldValue !== value)
         {
            this._1965834686legionWin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionWin",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get count() : int
      {
         return this._94851343count;
      }
      
      public function set showData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339314617showData;
         if(oldValue !== value)
         {
            this._339314617showData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get score() : int
      {
         return this._109264530score;
      }
      
      public function set count(value:int) : void
      {
         var oldValue:Object = this._94851343count;
         if(oldValue !== value)
         {
            this._94851343count = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"count",oldValue,value));
         }
      }
      
      public function set selfRate(value:int) : void
      {
         var oldValue:Object = this._1191971404selfRate;
         if(oldValue !== value)
         {
            this._1191971404selfRate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfRate",oldValue,value));
         }
      }
      
      public function set score(value:int) : void
      {
         var oldValue:Object = this._109264530score;
         if(oldValue !== value)
         {
            this._109264530score = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"score",oldValue,value));
         }
      }
      
      public function setHonor(_honor:int) : void
      {
         honor = _honor;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : LadderRankData
      {
         return this._3492908rank;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionRate() : int
      {
         return this._811489478legionRate;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function resolveInfo(info:Object) : void
      {
         var obj:Object = null;
         var _ladderRank:LadderRankData = null;
         DataManager.Instance.skyMarsCount = info.sky_mars_diamond_count;
         count = info.sky_mars_diamond_count;
         score = info.sky_score;
         season = info.sequence;
         changeScore = info.sky_score_change;
         honor = info.honor;
         DataManager.Instance.honor = info.honor;
         todayNum = info.account;
         selfWin = info.single_win_account;
         selfLose = info.single_fail_account;
         if(selfWin == 0)
         {
            selfRate = 0;
         }
         else
         {
            selfRate = Number(Number(selfWin / (selfWin + selfLose)).toFixed(2)) * 100;
         }
         legionWin = info.team_win_account;
         legionLose = info.team_fail_account;
         if(legionWin == 0)
         {
            legionRate = 0;
         }
         else
         {
            legionRate = Number(Number(legionWin / (legionWin + legionLose)).toFixed(2)) * 100;
         }
         showData.removeAll();
         for each(obj in info.top_ten)
         {
            _ladderRank = new LadderRankData();
            _ladderRank.resolveInfo(obj);
            showData.addItem(_ladderRank);
         }
         rank.resolveInfo(info.myRank);
      }
      
      public function set season(value:int) : void
      {
         var oldValue:Object = this._906335517season;
         if(oldValue !== value)
         {
            this._906335517season = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"season",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionWin() : int
      {
         return this._1965834686legionWin;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get selfRate() : int
      {
         return this._1191971404selfRate;
      }
      
      public function set honor(value:int) : void
      {
         var oldValue:Object = this._99462250honor;
         if(oldValue !== value)
         {
            this._99462250honor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"honor",oldValue,value));
         }
      }
      
      public function set rank(value:LadderRankData) : void
      {
         var oldValue:Object = this._3492908rank;
         if(oldValue !== value)
         {
            this._3492908rank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeScore() : int
      {
         return this._1666053950changeScore;
      }
      
      public function set legionLose(value:int) : void
      {
         var oldValue:Object = this._811654801legionLose;
         if(oldValue !== value)
         {
            this._811654801legionLose = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionLose",oldValue,value));
         }
      }
      
      public function set selfWin(value:int) : void
      {
         var oldValue:Object = this._1978118384selfWin;
         if(oldValue !== value)
         {
            this._1978118384selfWin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfWin",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get season() : int
      {
         return this._906335517season;
      }
      
      [Bindable(event="propertyChange")]
      public function get honor() : int
      {
         return this._99462250honor;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionLose() : int
      {
         return this._811654801legionLose;
      }
      
      public function set legionRate(value:int) : void
      {
         var oldValue:Object = this._811489478legionRate;
         if(oldValue !== value)
         {
            this._811489478legionRate = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionRate",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfWin() : int
      {
         return this._1978118384selfWin;
      }
   }
}


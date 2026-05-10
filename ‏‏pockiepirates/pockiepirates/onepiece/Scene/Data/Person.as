package Scene.Data
{
   import Draw.Data.BaseFrame;
   import Draw.Data.TextBitmapDataCreator;
   import Draw.PlayListManager;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.Timer;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   
   public class Person implements IEventDispatcher
   {
      
      public var isRun:Boolean = false;
      
      private var nameBg3:BaseFrame;
      
      private var _906021636select:Boolean = false;
      
      public var currentY:int;
      
      private var nameBg2:BaseFrame;
      
      private var nameBg4:BaseFrame;
      
      public var currentX:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var oldX:int;
      
      public var oldY:int;
      
      private var npcBg:BaseFrame;
      
      public var isHouse:Boolean = false;
      
      private var bodys:Array = new Array();
      
      public var loadFinish:Boolean = false;
      
      public var isAce:Boolean = false;
      
      private var showQiwuhai:Boolean;
      
      private var shadow:BaseFrame;
      
      private var noshadow:Boolean;
      
      private var height:int;
      
      private var nameBg:BaseFrame;
      
      private var timer:Timer;
      
      public var speed:int;
      
      public var isBeast:Boolean = false;
      
      private var nation:BaseFrame;
      
      public var isNPC:Boolean = false;
      
      private var title:BaseFrame;
      
      private var headImage:BaseFrame;
      
      public var face:int;
      
      private var showTitle:Boolean;
      
      private var vipLevel:int;
      
      private var soulId:int = 0;
      
      private var aotuGo:BaseFrame;
      
      private var stride1:BaseFrame;
      
      private var stride2:BaseFrame;
      
      public var direction:int = 0;
      
      public var headState:int = 0;
      
      private var titleId:int;
      
      public var isDrawing:Boolean = false;
      
      private var _3373707name:String;
      
      private var simplePerson:BaseFrame;
      
      public var npcType:int;
      
      private var showStride2:Boolean;
      
      private var showWord:Boolean = false;
      
      public var nationId:int;
      
      private var showStride1:Boolean;
      
      public var waitingRate:int = 0;
      
      private var wordData:TextBitmapDataCreator;
      
      public var nameData:TextBitmapDataCreator;
      
      private var qiwuhai:BaseFrame;
      
      public var targetX:int;
      
      public var targetY:int;
      
      private var wordBg:BaseFrame;
      
      private var soul:BaseFrame;
      
      private var _836030906userId:int;
      
      private var myself:BaseFrame;
      
      public function Person()
      {
         super();
         shadow = new BaseFrame();
         shadow.setInfo("../assets/images/Person/shadow",[1,1,40,20,0]);
         simplePerson = new BaseFrame();
         simplePerson.setInfo("../assets/images/Person/simplePerson",[1,1,73,103,0]);
         headImage = new BaseFrame();
         headImage.setInfo("../assets/images/Person/NPCHeadImage",[1,1,0,0,0]);
         headImage.needHorizontalCenter = true;
         nameBg = new BaseFrame();
         nameBg.setInfo("../assets/images/Person/nameBg",[1,1,0,0,0]);
         nameBg.needHorizontalCenter = true;
         nameBg2 = new BaseFrame();
         nameBg2.setInfo("../assets/images/Person/nameBg2",[1,1,0,0,0]);
         nameBg2.needHorizontalCenter = true;
         nameBg3 = new BaseFrame();
         nameBg3.setInfo("../assets/images/Person/nameBg3",[1,1,0,0,0]);
         nameBg3.needHorizontalCenter = true;
         nameBg4 = new BaseFrame();
         nameBg4.setInfo("../assets/images/Person/nameBg4",[1,1,0,0,0]);
         nameBg4.needHorizontalCenter = true;
         npcBg = new BaseFrame();
         npcBg.setInfo("../assets/images/Person/npcBg",[1,1,0,0,0]);
         npcBg.needHorizontalCenter = true;
         wordBg = new BaseFrame();
         wordBg.setInfo("../assets/images/Person/wordBg",[1,1,0,0,0]);
         nation = new BaseFrame();
         nation.setInfo("../assets/images/Person/nationlist",[3,1,0,0,0]);
         nation.needHorizontalCenter = true;
         myself = new BaseFrame();
         myself.setInfo("../assets/images/Person/myself",[23,1,0,0,0],true,[34,58]);
         myself.needHorizontalCenter = true;
         qiwuhai = new BaseFrame();
         qiwuhai.setInfo("../assets/images/Person/qiwuhai",[23,1,0,0,0]);
         qiwuhai.needHorizontalCenter = true;
         stride1 = new BaseFrame();
         stride1.setInfo("../assets/images/Person/stride1",[1,1,0,0,0]);
         stride1.needHorizontalCenter = true;
         stride2 = new BaseFrame();
         stride2.setInfo("../assets/images/Person/stride2",[1,1,0,0,0]);
         stride2.needHorizontalCenter = true;
      }
      
      public function set select(value:Boolean) : void
      {
         var oldValue:Object = this._906021636select;
         if(oldValue !== value)
         {
            this._906021636select = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",oldValue,value));
         }
      }
      
      public function makeWord(word:String) : void
      {
         if(word != "0")
         {
            wordData = new TextBitmapDataCreator();
            wordData.createText(word,12,16777215,"normal",160);
            wordData.needHorizontalCenter = false;
            timer = new Timer(3000);
            timer.addEventListener(TimerEvent.TIMER,changeWordState);
            timer.start();
         }
      }
      
      public function setTitle(_title:int) : void
      {
         titleId = _title;
         if(titleId)
         {
            title = new BaseFrame();
            title.setInfo("../assets/images/Person/title/" + titleId.toString(),[1,1,0,0,0]);
            title.needHorizontalCenter = true;
            showTitle = true;
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
      
      public function showStride(_id:int, _isStride:Boolean) : void
      {
         if(_id == 1)
         {
            showStride1 = _isStride;
         }
         else if(_id == 2)
         {
            showStride2 = _isStride;
         }
      }
      
      public function loopFrame() : void
      {
         var body:BaseFrame = null;
         for each(body in bodys)
         {
            body.loopFrame();
         }
         if(aotuGo)
         {
            aotuGo.loopFrame();
         }
         if(myself)
         {
            myself.loopFrame();
         }
         if(soul)
         {
            soul.loopFrame();
         }
      }
      
      private function checkLoadFinish() : void
      {
         var body:BaseFrame = null;
         if(!loadFinish)
         {
            loadFinish = true;
            for each(body in bodys)
            {
               loadFinish = loadFinish && body.loadFinish;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userId() : int
      {
         return this._836030906userId;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addFrame() : void
      {
         var body:BaseFrame = null;
         for each(body in bodys)
         {
            body.addFrame();
         }
         if(aotuGo)
         {
            aotuGo.addFrame();
         }
         if(myself)
         {
            myself.addFrame();
         }
         if(soul)
         {
            soul.addFrame();
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
      
      public function showLeizhu(_isQiwuhai:Boolean) : void
      {
         showQiwuhai = _isQiwuhai;
      }
      
      public function setPerson(_face:int, userId:int, x:int, y:int, name:String, body:int, npcType:int, nationId:int = 0, colorType:int = 0, aceType:Boolean = false, beastType:Boolean = false, _vipLevel:int = 0) : void
      {
         this.userId = userId;
         currentX = targetX = x;
         currentY = targetY = y;
         isAce = aceType;
         isBeast = beastType;
         face = _face;
         vipLevel = _vipLevel;
         if(npcType != -1)
         {
            changeSuit([body]);
            isNPC = true;
            this.npcType = npcType;
            if(name == "0")
            {
               name = "";
            }
            else
            {
               makeNameData(name,16772006,7288576);
            }
         }
         else
         {
            changeSuit([body]);
            isNPC = false;
            if(colorType == 1)
            {
               makeNameData(name,16711680,0);
            }
            else if(colorType == 0)
            {
               makeNameData(name,2011614,0);
            }
            else
            {
               makeNameData(name,Global.nameColors[colorType - 2],0);
            }
         }
         nation.currentframe = nationId + 1;
         this.nationId = nationId;
         if(userId == DataManager.Instance.role.roleId)
         {
            aotuGo = new BaseFrame();
            aotuGo.setInfo("../assets/images/Person/aotuGo",[33,1,0,0,0],true,[270,40]);
            aotuGo.needHorizontalCenter = true;
         }
      }
      
      public function moveToPosition(x:int, y:int) : void
      {
         var dir:int = 0;
         targetX = x;
         targetY = y;
         isRun = true;
         waitingRate = 0;
         if(x == currentX && y == currentY)
         {
            changeState(SceneConfig.STAND,direction);
         }
         else
         {
            if(targetX >= currentX)
            {
               dir = 0;
            }
            else
            {
               dir = 1;
            }
            changeState(SceneConfig.RUN,dir);
         }
      }
      
      public function atPosition(finish:Boolean = true) : void
      {
         if(finish)
         {
            oldX = currentX = targetX;
            oldY = currentY = targetY;
         }
         else
         {
            oldX = targetX = currentX;
            oldY = targetY = currentY;
         }
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
      
      public function set userId(value:int) : void
      {
         var oldValue:Object = this._836030906userId;
         if(oldValue !== value)
         {
            this._836030906userId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userId",oldValue,value));
         }
      }
      
      public function deleteMe() : void
      {
         shadow = null;
         simplePerson = null;
         nameBg = null;
         nameBg2 = null;
         nameBg3 = null;
         nameBg4 = null;
         npcBg = null;
         nation = null;
         aotuGo = null;
         headImage = null;
         wordBg = null;
         wordData = null;
         nameData = null;
         myself = null;
         qiwuhai = null;
         bodys.length = 0;
         if(timer)
         {
            timer.removeEventListener(TimerEvent.TIMER,changeWordState);
            timer.stop();
            timer = null;
         }
      }
      
      public function changeState(state:int, dir:int = -1, later:int = 0) : void
      {
         var body:BaseFrame = null;
         direction = dir;
         for each(body in bodys)
         {
            body.changeState(state,dir,later);
         }
      }
      
      public function changeSoul(id:int) : void
      {
         var _frame:int = 0;
         if(id != 0 && soulId != id)
         {
            soulId = id;
            soul = new BaseFrame();
            _frame = 0;
            switch(soulId)
            {
               case 1:
               case 9:
                  _frame = 86;
                  break;
               case 2:
               case 10:
                  _frame = 64;
                  break;
               case 3:
                  _frame = 68;
                  break;
               case 4:
                  _frame = 86;
                  break;
               case 5:
                  _frame = 66;
                  break;
               case 6:
               case 11:
                  _frame = 77;
                  break;
               case 7:
                  _frame = 84;
            }
            soul.setInfo("../assets/images/Person/soul/" + id,[_frame,1,0,0,0],true,[140,140]);
            soul.needHorizontalCenter = true;
         }
      }
      
      public function hitTest(test:Point) : Boolean
      {
         var body:BaseFrame = null;
         var result:Boolean = false;
         if(loadFinish)
         {
            for each(body in bodys)
            {
               result ||= body.hitTest(test);
            }
            if(isNPC && (headState != 0 || npcType != 0) && headImage.loadFinish)
            {
               result ||= headImage.hitTest(new Point(test.x,test.y + height + headImage.height + 20));
            }
         }
         else
         {
            result = false;
         }
         return result;
      }
      
      public function checkLoop() : Boolean
      {
         var body:BaseFrame = null;
         var result:Boolean = true;
         for each(body in bodys)
         {
            result &&= body.checkLoop();
         }
         return result;
      }
      
      public function setDrawContent(list:PlayListManager, scene:SceneManager) : void
      {
         var tempX:int = 0;
         var tempY:int = 0;
         var body:BaseFrame = null;
         if(!scene.userHide || userId == DataManager.Instance.role.roleId || isNPC || isAce || userId % 100000 == DataManager.Instance.role.roleId)
         {
            tempX = currentX + scene.bgX + scene.wX;
            tempY = currentY + scene.bgY + scene.wY;
            if(Boolean(shadow) && !noshadow)
            {
               shadow.addToList(list,tempX,tempY);
            }
            checkLoadFinish();
            if(loadFinish)
            {
               for each(body in bodys)
               {
                  if(select)
                  {
                     body.filter = new GlowFilter();
                  }
                  body.addToList(list,tempX,tempY);
               }
            }
            else
            {
               simplePerson.addToList(list,tempX,tempY);
            }
            if(nameData)
            {
               if(isNPC && !isHouse)
               {
                  if(npcBg)
                  {
                     npcBg.addToList(list,tempX,tempY - height - 20);
                  }
                  nameData.addToList(list,tempX,tempY - height - 20);
               }
               else if(!isAce)
               {
                  if(Boolean(nameBg) && vipLevel <= 10)
                  {
                     nameBg.addToList(list,tempX,tempY);
                  }
                  else if(Boolean(nameBg2) && vipLevel == 11)
                  {
                     nameBg2.addToList(list,tempX,tempY);
                  }
                  else if(Boolean(nameBg3) && vipLevel == 12)
                  {
                     nameBg3.addToList(list,tempX,tempY);
                  }
                  else if(Boolean(nameBg4) && vipLevel == 13)
                  {
                     nameBg4.addToList(list,tempX,tempY);
                  }
                  nameData.addToList(list,tempX,tempY + 2);
               }
            }
            if(Boolean(nation && nation.currentframe && !isHouse && !isNPC) && Boolean(!isAce) && !isBeast)
            {
               nation.addToList(list,tempX - 55,tempY - 1);
            }
            if(userId == DataManager.Instance.role.roleId)
            {
               if(myself)
               {
                  if(showQiwuhai)
                  {
                     myself.addToList(list,tempX + 5,tempY - height - 110);
                  }
                  else
                  {
                     myself.addToList(list,tempX + 5,tempY - height - 80);
                  }
               }
            }
            if(Boolean(aotuGo) && Boolean(userId == DataManager.Instance.role.roleId) && SceneManager.getInstance().showAutoGo)
            {
               aotuGo.addToList(list,540,150);
            }
            if(isNPC && (headState != 0 || npcType != 0))
            {
               if(select)
               {
                  headImage.filter = new GlowFilter();
               }
               if(headState != 0)
               {
                  headImage.currentframe = headState;
               }
               else
               {
                  headImage.currentframe = npcType;
               }
               headImage.addToList(list,tempX,tempY - height - headImage.height - 20);
            }
            if(Boolean(wordData) && showWord)
            {
               if(wordBg)
               {
                  wordBg.addToList(list,tempX + 20,tempY - height - 20);
               }
               wordData.addToList(list,tempX + 30,tempY - height - 15);
            }
            if(Boolean(soul) && soul.loadFinish)
            {
               soul.addToList(list,tempX - 30,tempY - height + 30);
            }
            if(Boolean(qiwuhai) && showQiwuhai)
            {
               qiwuhai.addToList(list,tempX,tempY - height - 60);
            }
            if(Boolean(title) && showTitle)
            {
               title.addToList(list,tempX,tempY - height - 30);
            }
            if(Boolean(stride1) && showStride1)
            {
               stride1.addToList(list,tempX,tempY - height - 30);
            }
            if(Boolean(stride2) && showStride2)
            {
               stride2.addToList(list,tempX,tempY - height - 30);
            }
         }
      }
      
      private function changeWordState(event:TimerEvent) : void
      {
         var test:int = 1000 * Math.random();
         if(showWord)
         {
            if(test <= 500)
            {
               showWord = false;
            }
         }
         else if(test <= 200)
         {
            showWord = true;
         }
      }
      
      public function makeNameData(name:String, color:uint, glowColor:uint) : void
      {
         nameData = new TextBitmapDataCreator();
         nameData.createText(name,12,color);
         this.name = name;
      }
      
      public function changeSuit(bodyIds:Array) : void
      {
         var bodyId:String = null;
         var bodyInfo:Array = null;
         var body:BaseFrame = null;
         for each(bodyId in bodyIds)
         {
            if(bodyId != "0")
            {
               bodyInfo = SceneConfig.getPersonImageInfo(bodyId);
               body = new BaseFrame();
               height = bodyInfo.shift();
               noshadow = bodyInfo.shift();
               body.setInfo("../assets/images/Person/" + bodyId,bodyInfo);
               bodys.push(body);
               if(userId == 100000000)
               {
                  body.needAlpha = true;
               }
            }
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
   }
}


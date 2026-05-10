package data.abattoir
{
   import ExtendComp.ShowResult;
   import data.skill.SkillData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   import ui.abattoir.HeroPanel;
   
   public class AbHeroList implements IEventDispatcher
   {
      
      private var hp:HeroPanel;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public var nowPerson:AbHeroDatas;
      
      public var personList:Array;
      
      private var _99168185heros:ArrayCollection = new ArrayCollection();
      
      public var selecetSkill:SkillData;
      
      private var _1656317162selectHero:AbHeroDatas;
      
      public var type:int;
      
      private var _339068613showList:ArrayCollection = new ArrayCollection();
      
      public var ifComplete:Boolean;
      
      public function AbHeroList()
      {
         super();
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function callServer() : void
      {
         trace("无数据以及更改数据呼叫服务器");
         HttpServerManager.getInstance().callServer("battleService","gladiatorData",resoverData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      public function get showList() : ArrayCollection
      {
         return this._339068613showList;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set selectHero(value:AbHeroDatas) : void
      {
         var oldValue:Object = this._1656317162selectHero;
         if(oldValue !== value)
         {
            this._1656317162selectHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectHero",oldValue,value));
         }
      }
      
      public function resolveEmbattleHero(info:Object) : void
      {
         var j:* = 0;
         heros.removeAll();
         for(var i:int = 1; i <= 3; i++)
         {
            for(j = 2; j >= 0; j--)
            {
               heros.addItem([info["pos_" + (i + j * 3)],i + j * 3]);
            }
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set showList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._339068613showList;
         if(oldValue !== value)
         {
            this._339068613showList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showList",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      private function getPerson(e:ResultEvent) : void
      {
         if(e.result.error_code == 750)
         {
            ShowResult.inst.showResult(750);
         }
         else
         {
            trace("获取船员");
            callServer();
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      public function setPerson() : void
      {
         var tempPersonData:AbHeroDatas = null;
         var PersonInfo:Object = null;
         var i:int = 0;
         showList.removeAll();
         var personArr:Array = new Array();
         personArr = [];
         if(personList.length)
         {
            for each(PersonInfo in personList)
            {
               tempPersonData = new AbHeroDatas();
               tempPersonData.resoverPerson(PersonInfo);
               personArr.push(tempPersonData);
            }
            for(i = 0; i < 10; i++)
            {
               showList.addItem(personArr[i]);
               if(Boolean(showList) && (type == 0 || type == 2))
               {
                  selectHero = personArr[0] as AbHeroDatas;
                  selectHero.heroSelect = true;
               }
               else if(Boolean(personArr.length) && Boolean(type == 1) && selectHero.gladiatorid == (personArr[i] as AbHeroDatas).gladiatorid)
               {
                  selectHero = personArr[i] as AbHeroDatas;
                  selectHero.heroSelect = true;
               }
            }
         }
      }
      
      public function findHero(id:int) : AbHeroDatas
      {
         var hero:AbHeroDatas = null;
         for each(hero in showList)
         {
            if(hero.gladiatorid == id)
            {
               return hero;
            }
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectHero() : AbHeroDatas
      {
         return this._1656317162selectHero;
      }
      
      public function refreshPersonCallServer(_type:int) : void
      {
         ifComplete = false;
         HttpServerManager.getInstance().callServer("battleService","gladiatorGet",getPerson,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_type]);
      }
      
      public function set heros(value:ArrayCollection) : void
      {
         var oldValue:Object = this._99168185heros;
         if(oldValue !== value)
         {
            this._99168185heros = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heros",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get heros() : ArrayCollection
      {
         return this._99168185heros;
      }
      
      public function resoverData(e:ResultEvent) : void
      {
         var tempWarData:AbHeroDatas = null;
         var info:Object = null;
         var i:int = 0;
         nowPerson = null;
         var currentcampid:int = int(e.result.current_camp_id);
         resolveEmbattleHero(e.result);
         personList = e.result.gladiator_list.source;
         var warList:Array = e.result.camp_list.source;
         var warArr:Array = new Array();
         warArr = [];
         trace(warList.length);
         for each(info in warList)
         {
            tempWarData = new AbHeroDatas();
            tempWarData.resoverAscence(info);
            warArr.push(tempWarData);
         }
         setPerson();
         if(warList.length)
         {
            main.inst.chat.visible = false;
            DataManager.Instance.isCopy = false;
            DataManager.Instance.newEnter = true;
            for(i = 0; i < warArr.length; i++)
            {
               if(currentcampid == (warArr[i] as AbHeroDatas).campId)
               {
                  nowPerson = warArr[i] as AbHeroDatas;
                  DataManager.Instance.warId = (warArr[i] as AbHeroDatas).campId;
               }
               DataManager.Instance.warInfo = e;
            }
            DataManager.Instance.isAbattoir = true;
            if(type == 2)
            {
               main.inst.goabattoir();
            }
         }
         ifComplete = true;
      }
   }
}


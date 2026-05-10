package data
{
   import Scene.SceneManager;
   import Util.RefreshDataAction;
   import constant.Global;
   import constant.TaskConfig;
   import data.Item.ItemBase;
   import data.hero.EmbattleData;
   import data.hero.HeroData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.events.PropertyChangeEvent;
   import server.HttpServerManager;
   
   public class HeroList implements IEventDispatcher
   {
      
      private var _1700545187formationStar:int;
      
      private var _3322014list:ArrayCollection;
      
      private var _1700050785formationCard:int;
      
      private var herolist:Array;
      
      private var _843983379maxPage:int = 1;
      
      private var _1734941820selectEmbattle:EmbattleData;
      
      private var _3433103page:int = 1;
      
      private var _1507742445embattles:ArrayCollection;
      
      private var heroSort:Sort;
      
      private var _1258825735currentEmbattle:EmbattleData;
      
      private var _1039634585nowExp:int;
      
      private var _1457464744currentShape:int;
      
      private var _2129451721selectItemHero:HeroData;
      
      private var _74258518nowEmbattle:ArrayCollection;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      private var _1176935792formationShape:int;
      
      private var _1656317162selectHero:HeroData;
      
      private var _1081163239maxExp:int;
      
      private var _339068613showList:ArrayCollection;
      
      public function HeroList()
      {
         var embattle:EmbattleData = null;
         _74258518nowEmbattle = new ArrayCollection();
         _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
         herolist = new Array();
         list = new ArrayCollection();
         embattles = new ArrayCollection();
         for(var i:int = 0; i < 8; i++)
         {
            embattle = new EmbattleData();
            embattles.addItem(embattle);
         }
         heroSort = new Sort();
         heroSort.fields = [new SortField("id",false,false,true)];
         embattles.sort = heroSort;
         embattles.refresh();
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
      public function get page() : int
      {
         return this._3433103page;
      }
      
      public function setPage(value:int) : void
      {
         var i:int = 0;
         if(value < 1 || value > 2)
         {
            return;
         }
         if(list.length > 10)
         {
            maxPage = 2;
            page = value;
            showList = new ArrayCollection();
            for(i = (page - 1) * 10; i < page * 10; i++)
            {
               if(list.length > i)
               {
                  showList.addItem(list.getItemAt(i));
               }
            }
         }
         else
         {
            showList = list;
            maxPage = 2;
         }
      }
      
      private function destroyHero(hero:Object) : void
      {
         hero.destroy();
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ALL_HERO_LEVEL))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function createHero(info:Object) : HeroData
      {
         var hero:HeroData = new HeroData();
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ALL_HERO_LEVEL))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         return hero;
      }
      
      public function set selectItemHero(value:HeroData) : void
      {
         var oldValue:Object = this._2129451721selectItemHero;
         if(oldValue !== value)
         {
            this._2129451721selectItemHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectItemHero",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectHero() : HeroData
      {
         return this._1656317162selectHero;
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : ArrayCollection
      {
         return this._3322014list;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxExp() : int
      {
         return this._1081163239maxExp;
      }
      
      public function set page(value:int) : void
      {
         var oldValue:Object = this._3433103page;
         if(oldValue !== value)
         {
            this._3433103page = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"page",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get formationStar() : int
      {
         return this._1700545187formationStar;
      }
      
      private function checkSelect(select:HeroData) : HeroData
      {
         var hero:HeroData = null;
         if(select)
         {
            hero = findHero(select.id);
         }
         if(!hero && list.length > 0)
         {
            hero = list.getItemAt(0) as HeroData;
         }
         return hero;
      }
      
      public function set selectHero(value:HeroData) : void
      {
         var oldValue:Object = this._1656317162selectHero;
         if(oldValue !== value)
         {
            this._1656317162selectHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectHero",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentShape() : int
      {
         return this._1457464744currentShape;
      }
      
      public function set maxExp(value:int) : void
      {
         var oldValue:Object = this._1081163239maxExp;
         if(oldValue !== value)
         {
            this._1081163239maxExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get embattles() : ArrayCollection
      {
         return this._1507742445embattles;
      }
      
      public function set nowEmbattle(value:ArrayCollection) : void
      {
         var oldValue:Object = this._74258518nowEmbattle;
         if(oldValue !== value)
         {
            this._74258518nowEmbattle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowEmbattle",oldValue,value));
         }
      }
      
      public function set list(value:ArrayCollection) : void
      {
         var oldValue:Object = this._3322014list;
         if(oldValue !== value)
         {
            this._3322014list = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",oldValue,value));
         }
      }
      
      public function set embattles(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1507742445embattles;
         if(oldValue !== value)
         {
            this._1507742445embattles = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"embattles",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxPage() : int
      {
         return this._843983379maxPage;
      }
      
      public function set formationCard(value:int) : void
      {
         var oldValue:Object = this._1700050785formationCard;
         if(oldValue !== value)
         {
            this._1700050785formationCard = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"formationCard",oldValue,value));
         }
      }
      
      public function findEmbatle(id:int) : EmbattleData
      {
         var embattle:EmbattleData = null;
         var temp:EmbattleData = null;
         for each(embattle in embattles)
         {
            if(embattle.id == id)
            {
               return embattle;
            }
         }
         temp = Global.getEmbattle(id);
         for each(embattle in embattles)
         {
            if(embattle.id == 0)
            {
               embattles.setItemAt(temp,embattles.getItemIndex(embattle));
               break;
            }
         }
         return temp;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set maxPage(value:int) : void
      {
         var oldValue:Object = this._843983379maxPage;
         if(oldValue !== value)
         {
            this._843983379maxPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectItemHero() : HeroData
      {
         return this._2129451721selectItemHero;
      }
      
      [Bindable(event="propertyChange")]
      public function get showList() : ArrayCollection
      {
         return this._339068613showList;
      }
      
      public function resolveHeroList(e:Object) : void
      {
         var obj:Object = null;
         var hero2:HeroData = null;
         var hero:HeroData = null;
         var emInfo:Object = null;
         var embattle:EmbattleData = null;
         formationStar = e.result.formation_level;
         formationCard = e.result.formation_card;
         formationShape = e.result.formation_shape;
         RefreshDataAction.refreshData(herolist,e.result.generals,"id","general_id",refreshHero,createHero);
         var share:Boolean = false;
         for each(obj in e.result.generals)
         {
            if(obj.is_role == true)
            {
               DataManager.Instance.canUp = obj.general_skill_deal;
               DataManager.Instance.conRoleLevel = obj.con_role_level;
               DataManager.Instance.conRoleCamp = obj.con_role_camp;
            }
         }
         for each(hero2 in herolist)
         {
            if(hero2.isRole == true)
            {
               nowExp = hero2.exp;
               maxExp = hero2.nextExp;
               break;
            }
         }
         for each(hero in herolist)
         {
            if(hero.skillPoint != 0)
            {
               share = true;
               break;
            }
         }
         if(share)
         {
            DataManager.Instance.heroSkillUrl = "../assets/images/UI/ShareBtn/heroBtn.swf";
         }
         else
         {
            DataManager.Instance.heroSkillUrl = "";
         }
         list = new ArrayCollection(herolist);
         list.sort = heroSort;
         list.refresh();
         selectHero = checkSelect(selectHero);
         if(selectHero)
         {
            selectHero.heroSelect = true;
         }
         nowEmbattle.removeAll();
         for each(emInfo in e.result.formations)
         {
            embattle = findEmbatle(emInfo.cfg_formation_id);
            if(embattle)
            {
               embattle.resolveEmbattleHero(emInfo);
               embattle.setLevel(emInfo.level);
               embattle.setUrl();
               embattle.canChange = true;
               embattle.select = false;
               embattle.resolveAttribution(e.result);
               embattle.addHealth = emInfo.addHealth;
               embattle.addCristResit = emInfo.addCristResit / 100;
               currentEmbattle = embattle;
               nowEmbattle.addItem(currentEmbattle);
            }
         }
         currentShape = e.result.formation_shape;
         setPage(page);
      }
      
      public function changeSelectEmbattle(embattle:EmbattleData) : void
      {
         var embattleData:EmbattleData = null;
         for each(embattleData in embattles)
         {
            embattleData.select = false;
         }
         selectEmbattle = embattle;
         selectEmbattle.select = true;
         if(currentShape != selectEmbattle.id)
         {
            selectEmbattle.canExp = true;
         }
         else
         {
            selectEmbattle.canExp = false;
         }
      }
      
      public function set nowExp(value:int) : void
      {
         var oldValue:Object = this._1039634585nowExp;
         if(oldValue !== value)
         {
            this._1039634585nowExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nowExp",oldValue,value));
         }
      }
      
      public function set currentShape(value:int) : void
      {
         var oldValue:Object = this._1457464744currentShape;
         if(oldValue !== value)
         {
            this._1457464744currentShape = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentShape",oldValue,value));
         }
      }
      
      public function findHero(id:int) : HeroData
      {
         var hero:HeroData = null;
         for each(hero in list)
         {
            if(hero.id == id)
            {
               return hero;
            }
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get nowEmbattle() : ArrayCollection
      {
         return this._74258518nowEmbattle;
      }
      
      public function findMinHeroLevel() : int
      {
         var hero:HeroData = null;
         var min:int = 1000;
         for each(hero in list)
         {
            if(hero.level < min)
            {
               min = hero.level;
            }
         }
         return min;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set formationShape(value:int) : void
      {
         var oldValue:Object = this._1176935792formationShape;
         if(oldValue !== value)
         {
            this._1176935792formationShape = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"formationShape",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get formationCard() : int
      {
         return this._1700050785formationCard;
      }
      
      [Bindable(event="propertyChange")]
      public function get nowExp() : int
      {
         return this._1039634585nowExp;
      }
      
      public function set formationStar(value:int) : void
      {
         var oldValue:Object = this._1700545187formationStar;
         if(oldValue !== value)
         {
            this._1700545187formationStar = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"formationStar",oldValue,value));
         }
      }
      
      public function set currentEmbattle(value:EmbattleData) : void
      {
         var oldValue:Object = this._1258825735currentEmbattle;
         if(oldValue !== value)
         {
            this._1258825735currentEmbattle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentEmbattle",oldValue,value));
         }
      }
      
      private function refreshHero(hero:Object, info:Object, list:Array) : void
      {
         hero.resolveHeroData(info);
         list.push(hero);
         if(hero.isRole)
         {
            DataManager.Instance.role.refreshHero(hero as HeroData);
         }
      }
      
      public function set selectEmbattle(value:EmbattleData) : void
      {
         var oldValue:Object = this._1734941820selectEmbattle;
         if(oldValue !== value)
         {
            this._1734941820selectEmbattle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectEmbattle",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentEmbattle() : EmbattleData
      {
         return this._1258825735currentEmbattle;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectEmbattle() : EmbattleData
      {
         return this._1734941820selectEmbattle;
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
      
      public function findEquip(part:int) : ItemBase
      {
         var result:ItemBase = null;
         if(selectHero)
         {
            switch(part)
            {
               case 1:
                  result = selectHero.weapon;
                  break;
               case 2:
                  result = selectHero.armor;
                  break;
               case 3:
                  result = selectHero.horse;
                  break;
               case 4:
                  result = selectHero.cloak;
                  break;
               case 5:
                  result = selectHero.misc;
                  break;
               case 6:
                  result = selectHero.amulet;
            }
         }
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get formationShape() : int
      {
         return this._1176935792formationShape;
      }
   }
}


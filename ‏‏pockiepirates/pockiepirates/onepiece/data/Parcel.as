package data
{
   import Scene.SceneManager;
   import Util.ObjectAction;
   import Util.RefreshDataAction;
   import constant.TaskConfig;
   import data.Item.ItemBase;
   import events.SendDataEvent;
   import flash.events.EventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.events.PropertyChangeEvent;
   import server.HttpServerManager;
   
   public class Parcel extends EventDispatcher
   {
      
      private var _3178592gold:int;
      
      private var _2080628378currentEquipPage:int;
      
      private var init:Boolean = false;
      
      private var _type:int = 3;
      
      private var _1291322268precious:int;
      
      private var _1308572977fragmentAll:ArrayCollection = new ArrayCollection();
      
      private var _632540853shipProductAmount:int;
      
      private var _1520744819diaryCard:int;
      
      public var inlayItemAll:ArrayCollection = new ArrayCollection();
      
      public var changeGold:Boolean = true;
      
      private var _1664097151feedItem2:ItemBase = new ItemBase();
      
      private var _1664097152feedItem1:ItemBase = new ItemBase();
      
      private var _1957555049equipShowData:ArrayCollection = new ArrayCollection();
      
      private var _976040157feedAll:ArrayCollection = new ArrayCollection();
      
      private var _3135379fame:int;
      
      private var _1967981929fragmentShowdata:ArrayCollection = new ArrayCollection();
      
      private var _339314617showData:ArrayCollection = new ArrayCollection();
      
      private var _1983070747resource3:int;
      
      private var _page:int = 1;
      
      private var _2002812140equipShowAll:ArrayCollection = new ArrayCollection();
      
      public const pageNum:int = 24;
      
      private var _equipPage:int = 1;
      
      private var _846035731shipProductCapacity:int;
      
      private var _104079552money:uint;
      
      private var _1983070748resource2:int;
      
      private var _836717288currentFragmentPage:int;
      
      private var _1983070749resource1:int;
      
      public var items:Array = new Array();
      
      private var _93090393array:Array = new Array();
      
      private var _601108392currentPage:int;
      
      private var _fragmentPage:int = 1;
      
      public var line:int;
      
      public function Parcel()
      {
         super();
      }
      
      public function set feedItem1(value:ItemBase) : void
      {
         var oldValue:Object = this._1664097152feedItem1;
         if(oldValue !== value)
         {
            this._1664097152feedItem1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedItem1",oldValue,value));
         }
      }
      
      public function set feedItem2(value:ItemBase) : void
      {
         var oldValue:Object = this._1664097151feedItem2;
         if(oldValue !== value)
         {
            this._1664097151feedItem2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedItem2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentFragmentPage() : int
      {
         return this._836717288currentFragmentPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipShowAll() : ArrayCollection
      {
         return this._2002812140equipShowAll;
      }
      
      public function set page(p:int) : void
      {
         _page = p;
         _page = Math.min(_page,Math.ceil(array.length / pageNum));
         _page = Math.max(_page,1);
         filterData();
         currentPage = _page;
      }
      
      [Bindable(event="propertyChange")]
      public function get feedAll() : ArrayCollection
      {
         return this._976040157feedAll;
      }
      
      public function set fame(value:int) : void
      {
         var oldValue:Object = this._3135379fame;
         if(oldValue !== value)
         {
            this._3135379fame = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fame",oldValue,value));
         }
      }
      
      public function set equipShowData(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1957555049equipShowData;
         if(oldValue !== value)
         {
            this._1957555049equipShowData = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipShowData",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fragmentAll() : ArrayCollection
      {
         return this._1308572977fragmentAll;
      }
      
      public function resolveItems(infos:Object) : void
      {
         shipProductCapacity = infos.result.ship_product_capacity;
         feedItem1.count = 0;
         feedItem2.count = 0;
         DataManager.Instance.role.resolveActionPoint(infos);
         RefreshDataAction.refreshData(items,infos.result.items,"itemId","item_id",refreshItem,createItem);
         items.sortOn("id",Array.DESCENDING);
         type = _type;
         resolveDelay();
         fragmentPage = 1;
         equipPage = 1;
         resolveMoney(infos);
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_ITEM))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         init = true;
         shipProductAmount = getShipProductAmount();
         DataManager.Instance.wareHouse.refreshWare();
         if(DataManager.Instance.inVoyage)
         {
            DataManager.Instance.task.refreshCookTask();
         }
      }
      
      public function set fragmentShowdata(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1967981929fragmentShowdata;
         if(oldValue !== value)
         {
            this._1967981929fragmentShowdata = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fragmentShowdata",oldValue,value));
         }
      }
      
      private function createItem(info:Object) : ItemBase
      {
         var item:ItemBase = ObjectAction.cloneItem(info.cfg_item_id);
         if(item != null)
         {
            item.itemId = info.item_id;
            item.count = info.amount;
         }
         if(Boolean(init) && Boolean(item) && item.type != 1)
         {
            dispatchEvent(new SendDataEvent("showGetItem",item));
         }
         return item;
      }
      
      public function set currentFragmentPage(value:int) : void
      {
         var oldValue:Object = this._836717288currentFragmentPage;
         if(oldValue !== value)
         {
            this._836717288currentFragmentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentFragmentPage",oldValue,value));
         }
      }
      
      private function dealPercent() : void
      {
      }
      
      public function resolveMoney(infos:Object) : void
      {
         if(Boolean(infos.result.hasOwnProperty("gold")) && changeGold)
         {
            if(gold < infos.result.gold)
            {
               main.inst.showEffect("moneyAdd",0,0);
            }
            gold = infos.result.gold;
         }
         if(infos.result.hasOwnProperty("copper"))
         {
            money = infos.result.copper;
         }
      }
      
      public function startChangeGold() : void
      {
         gold = 100;
         changeGold = true;
      }
      
      public function set feedAll(value:ArrayCollection) : void
      {
         var oldValue:Object = this._976040157feedAll;
         if(oldValue !== value)
         {
            this._976040157feedAll = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"feedAll",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showData() : ArrayCollection
      {
         return this._339314617showData;
      }
      
      private function filterData() : void
      {
         showData.removeAll();
         for(var i:int = pageNum * (_page - 1); i < Math.min(array.length,pageNum * _page); i++)
         {
            showData.addItem(array[i]);
         }
         for(var j:int = showData.length; j < pageNum; j++)
         {
            showData.addItem(new ItemBase());
         }
      }
      
      public function set equipShowAll(value:ArrayCollection) : void
      {
         var oldValue:Object = this._2002812140equipShowAll;
         if(oldValue !== value)
         {
            this._2002812140equipShowAll = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipShowAll",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shipProductAmount() : int
      {
         return this._632540853shipProductAmount;
      }
      
      public function set currentPage(value:int) : void
      {
         var oldValue:Object = this._601108392currentPage;
         if(oldValue !== value)
         {
            this._601108392currentPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPage",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get array() : Array
      {
         return this._93090393array;
      }
      
      public function findItemById(id:int) : ItemBase
      {
         var item:ItemBase = null;
         var sort:Sort = new Sort();
         sort.fields = [new SortField("count",false,true,true)];
         var arr:ArrayCollection = new ArrayCollection();
         for each(item in items)
         {
            if(item.id == id)
            {
               arr.addItem(item);
            }
         }
         arr.sort = sort;
         arr.refresh();
         if(arr.length)
         {
            return arr.getItemAt(0) as ItemBase;
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get gold() : int
      {
         return this._3178592gold;
      }
      
      private function filterEquipData() : void
      {
         var itm:ItemBase = null;
         equipShowData.removeAll();
         for(var i:int = pageNum * (_equipPage - 1); i < Math.min(equipShowAll.length,pageNum * _equipPage); i++)
         {
            equipShowData.addItem(equipShowAll[i]);
         }
         for(var j:int = equipShowData.length; j < pageNum; j++)
         {
            equipShowData.addItem(new ItemBase());
         }
         for(var k:int = equipShowData.length; k < 24; k++)
         {
            itm = new ItemBase();
            itm.isSelect = false;
            equipShowData.addItem(itm);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get precious() : int
      {
         return this._1291322268precious;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentEquipPage() : int
      {
         return this._2080628378currentEquipPage;
      }
      
      public function dealDiaryCard() : void
      {
         --diaryCard;
      }
      
      public function findItem(id:int) : ItemBase
      {
         var item:ItemBase = null;
         for each(item in items)
         {
            if(item.itemId == id)
            {
               return item;
            }
         }
         return null;
      }
      
      public function set fragmentAll(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1308572977fragmentAll;
         if(oldValue !== value)
         {
            this._1308572977fragmentAll = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fragmentAll",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get diaryCard() : int
      {
         return this._1520744819diaryCard;
      }
      
      public function set type(t:int) : void
      {
         array = findItemsByType(t);
         if(_type != t)
         {
            page = 1;
         }
         else
         {
            page = _page;
         }
         _type = t;
      }
      
      [Bindable(event="propertyChange")]
      public function get feedItem2() : ItemBase
      {
         return this._1664097151feedItem2;
      }
      
      public function set money(value:uint) : void
      {
         var oldValue:Object = this._104079552money;
         if(oldValue !== value)
         {
            this._104079552money = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",oldValue,value));
         }
      }
      
      private function refreshItem(item:Object, info:Object, items:Array) : void
      {
         if(item == null || item.id != info.cfg_item_id)
         {
            item = createItem(info);
         }
         if(item)
         {
            item.count = info.amount;
            if(item.id == 300156)
            {
               feedItem1 = item as ItemBase;
            }
            if(item.id == 300157)
            {
               feedItem2 = item as ItemBase;
            }
            if(item.id == 300061)
            {
               line = item.count;
            }
            if(item.id == 300078)
            {
               diaryCard = item.count;
            }
            if(item.id == 600050)
            {
               precious = item.count;
            }
            item.bind = info.bind;
            item.isEquiped = info.equiped;
            item.level = info.star;
            item.hole1Id = info.hole1;
            item.hole2Id = info.hole2;
            item.hole3Id = info.hole3;
            item.hole4Id = info.hole4;
            item.hole5Id = info.hole5;
            item.hole6Id = info.hole6;
            item.rise = info.rise;
            if(item.rise <= 9)
            {
               item.risePercent = 100;
            }
            else
            {
               item.risePercent = 100 - (item.rise - 9) * 6;
            }
            if(!item.isEquiped)
            {
               item.onwer = UILang.NoneEquip;
               item.onwerId = 0;
            }
            items.push(item);
         }
      }
      
      public function get page() : int
      {
         return _page;
      }
      
      [Bindable(event="propertyChange")]
      public function get fame() : int
      {
         return this._3135379fame;
      }
      
      private function getShipProductAmount() : int
      {
         var itemArr:Array = null;
         var num:int = 0;
         itemArr = findItemsByType(7);
         for(var i:int = 0; i < itemArr.length; i++)
         {
            num += itemArr[i].count;
         }
         return num;
      }
      
      public function set shipProductAmount(value:int) : void
      {
         var oldValue:Object = this._632540853shipProductAmount;
         if(oldValue !== value)
         {
            this._632540853shipProductAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipProductAmount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equipShowData() : ArrayCollection
      {
         return this._1957555049equipShowData;
      }
      
      public function findItemsByType(type:int) : Array
      {
         var item:ItemBase = null;
         var result:Array = new Array();
         for each(item in items)
         {
            switch(type)
            {
               case 1:
                  if(item.type == 1)
                  {
                     result.push(item);
                  }
                  break;
               case 2:
                  if(item.type == 2 && !item.isEquiped)
                  {
                     result.push(item);
                  }
                  break;
               case 3:
                  if(item.type != 1 && !item.isEquiped && item.type != 4 && item.type != 6 && item.type != 7 && item.type != 8 && item.type != 9 && item.type != 10 && item.type != 11 && item.effectType != 11 && item.type != 12)
                  {
                     result.push(item);
                  }
                  break;
               case 4:
                  if(item.type == 2)
                  {
                     result.push(item);
                  }
                  break;
               case 6:
                  if(item.type == 6)
                  {
                     result.push(item);
                  }
                  break;
               case 7:
                  if(item.type == 7)
                  {
                     result.push(item);
                  }
                  break;
               case 8:
                  if(item.type == 8)
                  {
                     result.push(item);
                  }
                  break;
               case 9:
                  if(item.type == 9)
                  {
                     result.push(item);
                  }
                  break;
               case 10:
                  if(item.type == 10)
                  {
                     result.push(item);
                  }
                  break;
               case 11:
                  if(item.type == 11)
                  {
                     result.push(item);
                  }
            }
         }
         return result;
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
      public function get fragmentShowdata() : ArrayCollection
      {
         return this._1967981929fragmentShowdata;
      }
      
      public function resolveFame(infos:Object) : void
      {
         if(infos.result.hasOwnProperty("blue_fame"))
         {
            if(fame < infos.result.blue_fame)
            {
               main.inst.showEffect("allBlue",0,0);
            }
            fame = infos.result.blue_fame;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get feedItem1() : ItemBase
      {
         return this._1664097152feedItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentPage() : int
      {
         return this._601108392currentPage;
      }
      
      private function filterFragmentData() : void
      {
         fragmentShowdata.removeAll();
         for(var i:int = pageNum * (_fragmentPage - 1); i < Math.min(fragmentAll.length,pageNum * _fragmentPage); i++)
         {
            fragmentShowdata.addItem(fragmentAll[i]);
         }
         for(var j:int = fragmentShowdata.length; j < pageNum; j++)
         {
            fragmentShowdata.addItem(new ItemBase());
         }
      }
      
      public function removeItem() : void
      {
         dispatchEvent(new SendDataEvent("removeGetItem",""));
      }
      
      public function set array(value:Array) : void
      {
         var oldValue:Object = this._93090393array;
         if(oldValue !== value)
         {
            this._93090393array = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"array",oldValue,value));
         }
      }
      
      public function set equipPage(p:int) : void
      {
         _equipPage = p;
         _equipPage = Math.min(_equipPage,Math.ceil(equipShowAll.length / pageNum));
         _equipPage = Math.max(_equipPage,1);
         filterEquipData();
         currentEquipPage = _equipPage;
      }
      
      public function set precious(value:int) : void
      {
         var oldValue:Object = this._1291322268precious;
         if(oldValue !== value)
         {
            this._1291322268precious = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"precious",oldValue,value));
         }
      }
      
      public function set resource3(value:int) : void
      {
         var oldValue:Object = this._1983070747resource3;
         if(oldValue !== value)
         {
            this._1983070747resource3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resource3",oldValue,value));
         }
      }
      
      public function set currentEquipPage(value:int) : void
      {
         var oldValue:Object = this._2080628378currentEquipPage;
         if(oldValue !== value)
         {
            this._2080628378currentEquipPage = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentEquipPage",oldValue,value));
         }
      }
      
      public function set resource1(value:int) : void
      {
         var oldValue:Object = this._1983070749resource1;
         if(oldValue !== value)
         {
            this._1983070749resource1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resource1",oldValue,value));
         }
      }
      
      public function set gold(value:int) : void
      {
         var oldValue:Object = this._3178592gold;
         if(oldValue !== value)
         {
            this._3178592gold = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",oldValue,value));
         }
      }
      
      public function set resource2(value:int) : void
      {
         var oldValue:Object = this._1983070748resource2;
         if(oldValue !== value)
         {
            this._1983070748resource2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resource2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get money() : uint
      {
         return this._104079552money;
      }
      
      public function stopChangeGold() : void
      {
         gold = 0;
         changeGold = false;
      }
      
      public function get equipPage() : int
      {
         return _equipPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get resource1() : int
      {
         return this._1983070749resource1;
      }
      
      public function set diaryCard(value:int) : void
      {
         var oldValue:Object = this._1520744819diaryCard;
         if(oldValue !== value)
         {
            this._1520744819diaryCard = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diaryCard",oldValue,value));
         }
      }
      
      public function set shipProductCapacity(value:int) : void
      {
         var oldValue:Object = this._846035731shipProductCapacity;
         if(oldValue !== value)
         {
            this._846035731shipProductCapacity = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shipProductCapacity",oldValue,value));
         }
      }
      
      public function findItemAmount(id:int) : int
      {
         var item:ItemBase = null;
         var result:int = 0;
         for each(item in items)
         {
            if(item.id == id)
            {
               result += item.count;
            }
         }
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get resource3() : int
      {
         return this._1983070747resource3;
      }
      
      [Bindable(event="propertyChange")]
      public function get shipProductCapacity() : int
      {
         return this._846035731shipProductCapacity;
      }
      
      [Bindable(event="propertyChange")]
      public function get resource2() : int
      {
         return this._1983070748resource2;
      }
      
      private function resolveDelay() : void
      {
         var item:ItemBase = null;
         feedAll.removeAll();
         inlayItemAll.removeAll();
         fragmentAll.removeAll();
         equipShowAll.removeAll();
         for each(item in items)
         {
            item.isSelect = false;
            if(item.type == 5)
            {
               feedAll.addItem(item);
            }
            if(item.type == 4)
            {
               inlayItemAll.addItem(item);
            }
            if(item.type == 2 && item.effectType == 11)
            {
               fragmentAll.addItem(item);
            }
            if(item.type == 2 && item.effectType == 0 && !item.isEquiped)
            {
               equipShowAll.addItem(item);
            }
         }
      }
      
      public function resolveTalent(infos:Object) : void
      {
         if(infos.result.hasOwnProperty("practice_value"))
         {
            resource1 = infos.result.practice_value;
         }
         if(infos.result.hasOwnProperty("honor_medal"))
         {
            resource2 = infos.result.honor_medal;
         }
         if(infos.result.hasOwnProperty("grow_medal"))
         {
            resource3 = infos.result.grow_medal;
         }
      }
      
      public function set fragmentPage(p:int) : void
      {
         _fragmentPage = p;
         _fragmentPage = Math.min(_fragmentPage,Math.ceil(fragmentAll.length / pageNum));
         _fragmentPage = Math.max(_fragmentPage,1);
         filterFragmentData();
         currentFragmentPage = _fragmentPage;
      }
      
      public function get fragmentPage() : int
      {
         return _fragmentPage;
      }
   }
}


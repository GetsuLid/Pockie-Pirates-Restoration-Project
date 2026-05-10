package data
{
   import Scene.SceneManager;
   import Util.NameGetor;
   import constant.Global;
   import constant.TaskConfig;
   import data.hero.HeroData;
   import data.role.GuideControl;
   import data.role.JobData;
   import data.role.VipData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import lang.UILang;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   import ui.GameMainUIPanel;
   
   public class RoleData implements IEventDispatcher
   {
      
      private var _110371416title:String;
      
      private var _1467772937isTeamReplaced:Boolean;
      
      private var _577693246totalFood:int;
      
      private var _1483181064roleStatus:String;
      
      private var _1379103678serverId:int;
      
      private var _624679854isEnergy:Boolean;
      
      private var _435511673gatewayNmae:String;
      
      private var _927091899isRankReward:Boolean;
      
      private var tempLevel:int = -1;
      
      private var _1737700853legionId:int;
      
      private var _464768234totalActionPoint:int;
      
      private var _336738982highTavern:int;
      
      private var _951543133control:GuideControl = new GuideControl();
      
      private var _834817825juniorTavern:int;
      
      private var _811608859legionName:String = "";
      
      private var _1249765465totalPrestige:int;
      
      private var _1976019030nextPrestige:int;
      
      private var _1652828373totalHpStore:int;
      
      private var _266954890roleHead:String;
      
      private var _1851548265actionItem:int;
      
      private var _597373956bigFigure:String;
      
      private var _102865796level:int;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _818394859middleHead:String;
      
      private var _2067310637officialRanklevel:int;
      
      private var _3148894food:int;
      
      private var _3135069face:int;
      
      private var _1623590009smallHead:String;
      
      private var titleArr:Array = [UILang.EniesLobbyTitle1,UILang.EniesLobbyTitle2,UILang.EniesLobbyTitle3,UILang.EniesLobbyTitle4,UILang.EniesLobbyTitle5,UILang.EniesLobbyTitle6,UILang.EniesLobbyTitle7,UILang.EniesLobbyTitle8,UILang.EniesLobbyTitle9,UILang.EniesLobbyTitle10];
      
      private var _1985170028actionPointTimes:int;
      
      private var _608895598freeCopyTime:int;
      
      private var _111103541areaTitle:int;
      
      private var _1052618937nation:String;
      
      private var _1309148789exploit:int;
      
      private var _131971869TitleName:String;
      
      private var _2055221133superTavern:int;
      
      private var _1085107539isLegionReward:Boolean;
      
      private var _1569741050actionPoint:int;
      
      private var _116765vip:VipData = new VipData();
      
      private var _925416399roleId:int = 1;
      
      private var _1078543071isOfferReward:Boolean;
      
      private var _884097372freeTavern:int;
      
      private var _1503698282eniesTitle:int;
      
      private var _3198970hero:HeroData;
      
      private var _1847242811isNewPresent:Boolean;
      
      private var _1678682354heroAmount:int;
      
      private var _1354715280copyId:int;
      
      private var _361119344leitaiFigure:String;
      
      private var _1929598040nextPositionLevel:String;
      
      private var _3373707name:String;
      
      private var _1097785529hpStore:int;
      
      private var _3540684step:int;
      
      private var _853656104leitaiRank:int;
      
      private var _2045485762nationId:int;
      
      private var _1912055156totalPrestigeText:String;
      
      private var _1449361343currentJobId:int;
      
      private var _105405job:JobData;
      
      private var _1276224445prestige:int;
      
      private var _189118908gateway:String;
      
      public function RoleData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get bigFigure() : String
      {
         return this._597373956bigFigure;
      }
      
      public function set roleStatus(value:String) : void
      {
         var oldValue:Object = this._1483181064roleStatus;
         if(oldValue !== value)
         {
            this._1483181064roleStatus = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roleStatus",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vip() : VipData
      {
         return this._116765vip;
      }
      
      public function set bigFigure(value:String) : void
      {
         var oldValue:Object = this._597373956bigFigure;
         if(oldValue !== value)
         {
            this._597373956bigFigure = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigFigure",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get officialRanklevel() : int
      {
         return this._2067310637officialRanklevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get roleId() : int
      {
         return this._925416399roleId;
      }
      
      [Bindable(event="propertyChange")]
      public function get roleStatus() : String
      {
         return this._1483181064roleStatus;
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
      
      public function set totalActionPoint(value:int) : void
      {
         var oldValue:Object = this._464768234totalActionPoint;
         if(oldValue !== value)
         {
            this._464768234totalActionPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalActionPoint",oldValue,value));
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set vip(value:VipData) : void
      {
         var oldValue:Object = this._116765vip;
         if(oldValue !== value)
         {
            this._116765vip = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vip",oldValue,value));
         }
      }
      
      public function set isOfferReward(value:Boolean) : void
      {
         var oldValue:Object = this._1078543071isOfferReward;
         if(oldValue !== value)
         {
            this._1078543071isOfferReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOfferReward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gateway() : String
      {
         return this._189118908gateway;
      }
      
      public function set juniorTavern(value:int) : void
      {
         var oldValue:Object = this._834817825juniorTavern;
         if(oldValue !== value)
         {
            this._834817825juniorTavern = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juniorTavern",oldValue,value));
         }
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      [Bindable(event="propertyChange")]
      public function get prestige() : int
      {
         return this._1276224445prestige;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextPrestige() : int
      {
         return this._1976019030nextPrestige;
      }
      
      [Bindable(event="propertyChange")]
      public function get isEnergy() : Boolean
      {
         return this._624679854isEnergy;
      }
      
      public function set officialRanklevel(value:int) : void
      {
         var oldValue:Object = this._2067310637officialRanklevel;
         if(oldValue !== value)
         {
            this._2067310637officialRanklevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"officialRanklevel",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get face() : int
      {
         return this._3135069face;
      }
      
      [Bindable(event="propertyChange")]
      public function get food() : int
      {
         return this._3148894food;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set roleId(value:int) : void
      {
         var oldValue:Object = this._925416399roleId;
         if(oldValue !== value)
         {
            this._925416399roleId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roleId",oldValue,value));
         }
      }
      
      public function resolveFood(info:Object) : void
      {
         if(info.result.hasOwnProperty("barn"))
         {
            food = info.result.barn;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actionPointTimes() : int
      {
         return this._1985170028actionPointTimes;
      }
      
      public function chekHpStore() : Boolean
      {
         if(actionPoint == 0 && !isEnergy)
         {
            main.inst.showBtGuide("27-1");
            return false;
         }
         return true;
      }
      
      [Bindable(event="propertyChange")]
      public function get actionItem() : int
      {
         return this._1851548265actionItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get superTavern() : int
      {
         return this._2055221133superTavern;
      }
      
      public function resolvePrestigeLevel(e:Object) : void
      {
         var role:Object = null;
         var current:Object = null;
         var pre:Object = null;
         var i:int = 0;
         var check:Object = null;
         if(Boolean(e.result.hasOwnProperty("prestige")) && Boolean(e.result.hasOwnProperty("level")))
         {
            role = e.result;
            if(totalPrestige != role.prestige && !DataManager.Instance.isInLand)
            {
               main.inst.showEffect("goldAdd",0,0);
            }
            totalPrestige = role.prestige;
            dealTotalPrestige();
            officialRanklevel = role.level;
            DataManager.Instance.officialRanklevel = role.level;
            level = role.level;
            if(tempLevel != officialRanklevel && tempLevel != -1)
            {
               if(officialRanklevel % 5 == 0 && officialRanklevel >= 28)
               {
                  if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
                  {
                     (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.setHoldShow(1);
                  }
               }
               DataManager.Instance.dealTarget();
               if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
               {
                  (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.doQbMoveLeft();
               }
               if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
               {
                  (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.setBtnLevelShow(officialRanklevel);
               }
               if(tempLevel == 27)
               {
                  DataManager.Instance.needDrillGuide = true;
               }
               if(tempLevel == 29)
               {
                  DataManager.Instance.needBeastGuide = true;
               }
               if(tempLevel == 30)
               {
                  DataManager.Instance.needVipGuide = true;
               }
               if(tempLevel == 39)
               {
                  DataManager.Instance.needSeaGodGuide = true;
               }
               if(tempLevel == 31)
               {
                  DataManager.Instance.needNavigationGuide = true;
               }
               if(officialRanklevel == 50)
               {
                  DataManager.Instance.needConfusedFightGuide = true;
               }
            }
            tempLevel = officialRanklevel;
            totalHpStore = 1000000;
            totalFood = 100000 + 5000 * officialRanklevel;
            if(Global.officialRanks[officialRanklevel])
            {
               current = Global.officialRanks[officialRanklevel];
               title = current.name;
               heroAmount = current.generalAmount;
               if(current)
               {
                  nextPrestige = current.prestigeNeed;
               }
               pre = Global.officialRanks[officialRanklevel - 1];
               if(pre)
               {
                  prestige = totalPrestige - pre.prestigeNeed;
                  nextPrestige -= pre.prestigeNeed;
               }
               else
               {
                  prestige = totalPrestige;
               }
               if(heroAmount < 10)
               {
                  for(i = officialRanklevel; i <= 100; i++)
                  {
                     check = Global.officialRanks[i];
                     if(check.generalAmount == heroAmount + 1)
                     {
                        nextPositionLevel = UILang.RoleGradRank.replace("#1",i).replace("#2",check.generalAmount);
                        break;
                     }
                  }
               }
               else
               {
                  nextPositionLevel = "";
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get freeCopyTime() : int
      {
         return this._608895598freeCopyTime;
      }
      
      private function setFreeCopy(_count:int) : void
      {
         var zhufu:int = 0;
         if(DataManager.Instance.blessingState)
         {
            zhufu = 2;
         }
         else
         {
            zhufu = 0;
         }
         if(officialRanklevel >= 100)
         {
            freeCopyTime = Math.max(0,4 - _count + zhufu);
         }
         else if(officialRanklevel >= 80)
         {
            freeCopyTime = Math.max(0,3 - _count + zhufu);
         }
         else if(officialRanklevel >= 60)
         {
            freeCopyTime = Math.max(0,2 - _count + zhufu);
         }
         else if(officialRanklevel >= 40)
         {
            freeCopyTime = Math.max(0,1 - _count + zhufu);
         }
      }
      
      public function set gateway(value:String) : void
      {
         var oldValue:Object = this._189118908gateway;
         if(oldValue !== value)
         {
            this._189118908gateway = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gateway",oldValue,value));
         }
      }
      
      public function set isRankReward(value:Boolean) : void
      {
         var oldValue:Object = this._927091899isRankReward;
         if(oldValue !== value)
         {
            this._927091899isRankReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRankReward",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      public function set prestige(value:int) : void
      {
         var oldValue:Object = this._1276224445prestige;
         if(oldValue !== value)
         {
            this._1276224445prestige = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prestige",oldValue,value));
         }
      }
      
      public function set nation(value:String) : void
      {
         var oldValue:Object = this._1052618937nation;
         if(oldValue !== value)
         {
            this._1052618937nation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nation",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gatewayNmae() : String
      {
         return this._435511673gatewayNmae;
      }
      
      public function dealTotalPrestige() : void
      {
         var _num:int = 0;
         totalPrestigeText = "";
         var _str:String = totalPrestige.toString();
         while(_str != "")
         {
            if(_str.length > 3)
            {
               _num = _str.length % 3;
               if(_num == 0)
               {
                  totalPrestigeText += _str.substr(0,3) + ",";
                  _str = _str.substr(3,_str.length - 3);
               }
               else
               {
                  totalPrestigeText += _str.substr(0,_num) + ",";
                  _str = _str.substr(_num,_str.length - _num);
               }
            }
            else
            {
               totalPrestigeText += _str;
               _str = "";
            }
         }
      }
      
      private function doAction() : void
      {
         HttpServerManager.getInstance().callServer("activityService","rewardCheck",dealAction,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      public function get freeTavern() : int
      {
         return this._884097372freeTavern;
      }
      
      public function set isLegionReward(value:Boolean) : void
      {
         var oldValue:Object = this._1085107539isLegionReward;
         if(oldValue !== value)
         {
            this._1085107539isLegionReward = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLegionReward",oldValue,value));
         }
      }
      
      public function set isEnergy(value:Boolean) : void
      {
         var oldValue:Object = this._624679854isEnergy;
         if(oldValue !== value)
         {
            this._624679854isEnergy = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isEnergy",oldValue,value));
         }
      }
      
      public function set nextPrestige(value:int) : void
      {
         var oldValue:Object = this._1976019030nextPrestige;
         if(oldValue !== value)
         {
            this._1976019030nextPrestige = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPrestige",oldValue,value));
         }
      }
      
      public function set highTavern(value:int) : void
      {
         var oldValue:Object = this._336738982highTavern;
         if(oldValue !== value)
         {
            this._336738982highTavern = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highTavern",oldValue,value));
         }
      }
      
      public function set title(value:String) : void
      {
         var oldValue:Object = this._110371416title;
         if(oldValue !== value)
         {
            this._110371416title = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hpStore() : int
      {
         return this._1097785529hpStore;
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
      
      public function set food(value:int) : void
      {
         var oldValue:Object = this._3148894food;
         if(oldValue !== value)
         {
            this._3148894food = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"food",oldValue,value));
         }
      }
      
      public function set control(value:GuideControl) : void
      {
         var oldValue:Object = this._951543133control;
         if(oldValue !== value)
         {
            this._951543133control = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"control",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nationId() : int
      {
         return this._2045485762nationId;
      }
      
      [Bindable(event="propertyChange")]
      public function get step() : int
      {
         return this._3540684step;
      }
      
      public function set actionItem(value:int) : void
      {
         var oldValue:Object = this._1851548265actionItem;
         if(oldValue !== value)
         {
            this._1851548265actionItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionItem",oldValue,value));
         }
      }
      
      public function set eniesTitle(value:int) : void
      {
         var oldValue:Object = this._1503698282eniesTitle;
         if(oldValue !== value)
         {
            this._1503698282eniesTitle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eniesTitle",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalHpStore() : int
      {
         return this._1652828373totalHpStore;
      }
      
      public function set actionPointTimes(value:int) : void
      {
         var oldValue:Object = this._1985170028actionPointTimes;
         if(oldValue !== value)
         {
            this._1985170028actionPointTimes = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionPointTimes",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get TitleName() : String
      {
         return this._131971869TitleName;
      }
      
      [Bindable(event="propertyChange")]
      public function get legionName() : String
      {
         return this._811608859legionName;
      }
      
      public function set superTavern(value:int) : void
      {
         var oldValue:Object = this._2055221133superTavern;
         if(oldValue !== value)
         {
            this._2055221133superTavern = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"superTavern",oldValue,value));
         }
      }
      
      public function set copyId(value:int) : void
      {
         var oldValue:Object = this._1354715280copyId;
         if(oldValue !== value)
         {
            this._1354715280copyId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"copyId",oldValue,value));
         }
      }
      
      public function set totalPrestigeText(value:String) : void
      {
         var oldValue:Object = this._1912055156totalPrestigeText;
         if(oldValue !== value)
         {
            this._1912055156totalPrestigeText = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPrestigeText",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get heroAmount() : int
      {
         return this._1678682354heroAmount;
      }
      
      public function set roleHead(value:String) : void
      {
         var oldValue:Object = this._266954890roleHead;
         if(oldValue !== value)
         {
            this._266954890roleHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roleHead",oldValue,value));
         }
      }
      
      public function set freeCopyTime(value:int) : void
      {
         var oldValue:Object = this._608895598freeCopyTime;
         if(oldValue !== value)
         {
            this._608895598freeCopyTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"freeCopyTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actionPoint() : int
      {
         return this._1569741050actionPoint;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
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
      
      public function set smallHead(value:String) : void
      {
         var oldValue:Object = this._1623590009smallHead;
         if(oldValue !== value)
         {
            this._1623590009smallHead = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallHead",oldValue,value));
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
      
      public function set leitaiFigure(value:String) : void
      {
         var oldValue:Object = this._361119344leitaiFigure;
         if(oldValue !== value)
         {
            this._361119344leitaiFigure = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leitaiFigure",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isOfferReward() : Boolean
      {
         return this._1078543071isOfferReward;
      }
      
      [Bindable(event="propertyChange")]
      public function get middleHead() : String
      {
         return this._818394859middleHead;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalActionPoint() : int
      {
         return this._464768234totalActionPoint;
      }
      
      public function set gatewayNmae(value:String) : void
      {
         var oldValue:Object = this._435511673gatewayNmae;
         if(oldValue !== value)
         {
            this._435511673gatewayNmae = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gatewayNmae",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juniorTavern() : int
      {
         return this._834817825juniorTavern;
      }
      
      public function resolveHpStore(info:Object) : void
      {
         if(info.result.hasOwnProperty("pool"))
         {
            hpStore = info.result.pool;
         }
         DataManager.Instance.pool.dealHpArea();
      }
      
      public function set exploit(value:int) : void
      {
         var oldValue:Object = this._1309148789exploit;
         if(oldValue !== value)
         {
            this._1309148789exploit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exploit",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isRankReward() : Boolean
      {
         return this._927091899isRankReward;
      }
      
      [Bindable(event="propertyChange")]
      public function get nation() : String
      {
         return this._1052618937nation;
      }
      
      public function set totalPrestige(value:int) : void
      {
         var oldValue:Object = this._1249765465totalPrestige;
         if(oldValue !== value)
         {
            this._1249765465totalPrestige = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalPrestige",oldValue,value));
         }
      }
      
      public function set freeTavern(value:int) : void
      {
         var oldValue:Object = this._884097372freeTavern;
         if(oldValue !== value)
         {
            this._884097372freeTavern = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"freeTavern",oldValue,value));
         }
      }
      
      public function set nextPositionLevel(value:String) : void
      {
         var oldValue:Object = this._1929598040nextPositionLevel;
         if(oldValue !== value)
         {
            this._1929598040nextPositionLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPositionLevel",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function resolveRoleData(info:Object) : void
      {
         areaTitle = info.result.area_title;
         gateway = info.result.server_url;
         gatewayNmae = info.result.server_name;
         serverId = info.result.server_id;
         HttpServerManager.getInstance().setServerAdress2(gateway);
         var role:Object = info.result;
         actionItem = role.ap_wand;
         name = role.name;
         isNewPresent = role.create_reward_get;
         actionPointTimes = role.ap_charge;
         isTeamReplaced = role.is_team_replaced;
         DataManager.Instance.diamond = role.diamond;
         isRankReward = role.arena_reward_get;
         isOfferReward = role.prestige_reward_get;
         isLegionReward = role.legion_reward_get;
         isEnergy = role.action_point_reward_get;
         if(role.lobby_title)
         {
            eniesTitle = role.lobby_title;
            TitleName = titleArr[eniesTitle - 1];
         }
         resolvePrestigeLevel(info);
         hpStore = role.pool;
         DataManager.Instance.pool.dealHpArea();
         food = role.barn;
         nationId = role.nation;
         nation = Global.nationNames[nationId];
         actionPoint = role.action_point;
         totalActionPoint = role.ap_max;
         roleId = role.role_id;
         vip.setVipLevel(role.vip_level);
         vip.charge = role.vip_charge;
         legionId = role.legion_id;
         legionName = role.legion_name;
         leitaiRank = role.arena_rank;
         juniorTavern = role.junior_token;
         highTavern = role.middle_token;
         superTavern = role.advance_token;
         freeTavern = role.free_token;
         step = role.step;
         if(main.inst.testStep)
         {
            step = 14;
         }
         smallHead = "../assets/images/Head/Small/" + role.face + ".swf";
         middleHead = "../assets/images/Head/Middle/" + role.face + ".swf";
         bigFigure = "../assets/images/Head/Big/" + role.face + ".swf";
         leitaiFigure = "../assets/images/Head/Leitai/" + role.face + ".swf";
         roleHead = "../assets/images/Head/Role/" + role.face + ".swf";
         face = role.face;
         resolveActionPoint(info);
         resolveExploit(info);
         control.refreshControl(step);
         NameGetor.setOneName(roleId,name);
         if(role.raid_sweep_id)
         {
            DataManager.Instance.raidId = role.raid_sweep_id;
            DataManager.Instance.showCopySweep();
         }
         if(Boolean(role.is_in_team) && DataManager.Instance.isTeamWarBegin)
         {
            DataManager.Instance.showArmyId = role.cfg_team_id;
            DataManager.Instance.showTeamId = role.role_team_id;
            DataManager.Instance.showArmySweep();
         }
         if(role.army_bot_id)
         {
            DataManager.Instance.isCombo = true;
            DataManager.Instance.warId = role.camp_bot_id;
            DataManager.Instance.showComboSweep();
         }
         if(role.bot_general_start)
         {
            DataManager.Instance.showHangSweep();
         }
         if(role.is_hunting)
         {
            DataManager.Instance.showHighHangSweep();
         }
         DataManager.Instance.dailyOnlineDays = role.login_days;
         doAction();
         copyId = role.cfg_raid_id;
         setFreeCopy(role.raid_count);
      }
      
      [Bindable(event="propertyChange")]
      public function get control() : GuideControl
      {
         return this._951543133control;
      }
      
      [Bindable(event="propertyChange")]
      public function get highTavern() : int
      {
         return this._336738982highTavern;
      }
      
      [Bindable(event="propertyChange")]
      public function get isLegionReward() : Boolean
      {
         return this._1085107539isLegionReward;
      }
      
      [Bindable(event="propertyChange")]
      public function get eniesTitle() : int
      {
         return this._1503698282eniesTitle;
      }
      
      public function resolveActionPoint(info:Object) : void
      {
         if(info.result.hasOwnProperty("action_point"))
         {
            actionPoint = info.result.action_point;
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_CHARGE_AP))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function set hpStore(value:int) : void
      {
         var oldValue:Object = this._1097785529hpStore;
         if(oldValue !== value)
         {
            this._1097785529hpStore = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpStore",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalPrestigeText() : String
      {
         return this._1912055156totalPrestigeText;
      }
      
      public function refreshHero(h:HeroData) : void
      {
         hero = h;
         job = Global.jobs[hero.job];
      }
      
      [Bindable(event="propertyChange")]
      public function get copyId() : int
      {
         return this._1354715280copyId;
      }
      
      public function set job(value:JobData) : void
      {
         var oldValue:Object = this._105405job;
         if(oldValue !== value)
         {
            this._105405job = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"job",oldValue,value));
         }
      }
      
      public function set serverId(value:int) : void
      {
         var oldValue:Object = this._1379103678serverId;
         if(oldValue !== value)
         {
            this._1379103678serverId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get roleHead() : String
      {
         return this._266954890roleHead;
      }
      
      public function set currentJobId(value:int) : void
      {
         var oldValue:Object = this._1449361343currentJobId;
         if(oldValue !== value)
         {
            this._1449361343currentJobId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentJobId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get smallHead() : String
      {
         return this._1623590009smallHead;
      }
      
      public function set isNewPresent(value:Boolean) : void
      {
         var oldValue:Object = this._1847242811isNewPresent;
         if(oldValue !== value)
         {
            this._1847242811isNewPresent = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNewPresent",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get exploit() : int
      {
         return this._1309148789exploit;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get leitaiFigure() : String
      {
         return this._361119344leitaiFigure;
      }
      
      public function set nationId(value:int) : void
      {
         var oldValue:Object = this._2045485762nationId;
         if(oldValue !== value)
         {
            this._2045485762nationId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nationId",oldValue,value));
         }
      }
      
      public function set areaTitle(value:int) : void
      {
         var oldValue:Object = this._111103541areaTitle;
         if(oldValue !== value)
         {
            this._111103541areaTitle = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaTitle",oldValue,value));
         }
      }
      
      public function set step(value:int) : void
      {
         var oldValue:Object = this._3540684step;
         if(oldValue !== value)
         {
            this._3540684step = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"step",oldValue,value));
         }
      }
      
      public function set totalFood(value:int) : void
      {
         var oldValue:Object = this._577693246totalFood;
         if(oldValue !== value)
         {
            this._577693246totalFood = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalFood",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalPrestige() : int
      {
         return this._1249765465totalPrestige;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextPositionLevel() : String
      {
         return this._1929598040nextPositionLevel;
      }
      
      public function set leitaiRank(value:int) : void
      {
         var oldValue:Object = this._853656104leitaiRank;
         if(oldValue !== value)
         {
            this._853656104leitaiRank = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leitaiRank",oldValue,value));
         }
      }
      
      public function set totalHpStore(value:int) : void
      {
         var oldValue:Object = this._1652828373totalHpStore;
         if(oldValue !== value)
         {
            this._1652828373totalHpStore = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalHpStore",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get job() : JobData
      {
         return this._105405job;
      }
      
      [Bindable(event="propertyChange")]
      public function get serverId() : int
      {
         return this._1379103678serverId;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentJobId() : int
      {
         return this._1449361343currentJobId;
      }
      
      [Bindable(event="propertyChange")]
      public function get isNewPresent() : Boolean
      {
         return this._1847242811isNewPresent;
      }
      
      private function dealAction(e:ResultEvent) : void
      {
         var role:Object = e.result;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.isDailyOnline = role.daily_login;
            DataManager.Instance.isFirstCharge = role.pay_first;
         }
      }
      
      public function set legionName(value:String) : void
      {
         var oldValue:Object = this._811608859legionName;
         if(oldValue !== value)
         {
            this._811608859legionName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get areaTitle() : int
      {
         return this._111103541areaTitle;
      }
      
      public function set TitleName(value:String) : void
      {
         var oldValue:Object = this._131971869TitleName;
         if(oldValue !== value)
         {
            this._131971869TitleName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"TitleName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leitaiRank() : int
      {
         return this._853656104leitaiRank;
      }
      
      public function set heroAmount(value:int) : void
      {
         var oldValue:Object = this._1678682354heroAmount;
         if(oldValue !== value)
         {
            this._1678682354heroAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroAmount",oldValue,value));
         }
      }
      
      public function set legionId(value:int) : void
      {
         var oldValue:Object = this._1737700853legionId;
         if(oldValue !== value)
         {
            this._1737700853legionId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legionId",oldValue,value));
         }
      }
      
      public function set isTeamReplaced(value:Boolean) : void
      {
         var oldValue:Object = this._1467772937isTeamReplaced;
         if(oldValue !== value)
         {
            this._1467772937isTeamReplaced = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTeamReplaced",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalFood() : int
      {
         return this._577693246totalFood;
      }
      
      public function set actionPoint(value:int) : void
      {
         var oldValue:Object = this._1569741050actionPoint;
         if(oldValue !== value)
         {
            this._1569741050actionPoint = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionPoint",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legionId() : int
      {
         return this._1737700853legionId;
      }
      
      [Bindable(event="propertyChange")]
      public function get isTeamReplaced() : Boolean
      {
         return this._1467772937isTeamReplaced;
      }
      
      [Bindable(event="propertyChange")]
      public function get hero() : HeroData
      {
         return this._3198970hero;
      }
      
      public function set hero(value:HeroData) : void
      {
         var oldValue:Object = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      public function resolveExploit(info:Object) : void
      {
         if(info.result.hasOwnProperty("exploit"))
         {
            exploit = info.result.exploit;
         }
      }
   }
}


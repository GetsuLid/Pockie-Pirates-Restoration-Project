package Scene
{
   import Draw.Data.BaseFrame;
   import Draw.PlayListManager;
   import Scene.AStar.MapGrid;
   import Scene.AStar.MapNode;
   import Scene.Config.SceneConfig;
   import Scene.Data.ChangeSceneData;
   import Scene.Data.DialogData;
   import Scene.Data.NPCChangeSceneData;
   import Scene.Data.NPCDialogSelectData;
   import Scene.Data.Person;
   import Sound.SoundManager;
   import Util.NameGetor;
   import constant.Global;
   import data.autoWar.AutoWarData;
   import data.map.MapPointData;
   import data.npc.NPCData;
   import data.soul.SoulData;
   import events.NavigationEvent;
   import events.SendDataEvent;
   import events.TopUIEvent;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class SceneManager extends Sprite
   {
      
      private static var _me:SceneManager;
      
      private var NpcNum:int = 0;
      
      private var bossPerson:Person;
      
      public var highBattleDic:Dictionary = new Dictionary();
      
      private var _grid:MapGrid;
      
      private var currentPerson:Person;
      
      private var tempUserId:int;
      
      private var currentPath:Array;
      
      private var _timer:Timer = new Timer(10 * 1000);
      
      private var tempPerson:Person = new Person();
      
      public var lastId:int;
      
      public var highBattleNpcArr:Array = new Array();
      
      public var showAutoGo:Boolean = false;
      
      private var targetNPCChange:NPCChangeSceneData;
      
      private var dynamicPerson:Dictionary = new Dictionary();
      
      public var wHeight:int;
      
      private var direction:int = 0;
      
      public var bgWidth:int;
      
      public var ace:Person;
      
      private var dialogResult:Object;
      
      private var targetScene:ChangeSceneData;
      
      public var wWidth:int;
      
      private var targetNPC:int;
      
      public var targetPoint:MapPointData;
      
      private var autoPath:Array = new Array();
      
      private var showDialog:DialogData = new DialogData();
      
      public var npcChanges:Array;
      
      private var _1729159479sceneName:String;
      
      private var personSpace:int = 100;
      
      private var _266838099userHide:Boolean = false;
      
      public var bgY:int;
      
      private var drawPerson:Array = new Array();
      
      public var bgX:int;
      
      private var persons:Array = new Array();
      
      public var bgSource:Array;
      
      public var wX:int;
      
      public var wY:int;
      
      public var changes:Array = new Array();
      
      private var personMap:Dictionary = new Dictionary();
      
      public var drawManager:PlayListManager = new PlayListManager(1000,600);
      
      private var targetNPCId:int;
      
      public var bgHeight:int;
      
      public var isAutoRun:Boolean;
      
      private var waitingPersons:Array = new Array();
      
      public var sceneUsers:Array = new Array();
      
      public var isAutoCampagin:Boolean;
      
      private var _324771598currentSceneId:int;
      
      private var clicks:Array = new Array();
      
      private var _1180624969isBoss:Boolean;
      
      public var highHangSceneId:int;
      
      public const DISTANCE:int = 12;
      
      public var myself:Person;
      
      public var BossTime:int;
      
      public function SceneManager()
      {
         super();
      }
      
      public static function getInstance() : SceneManager
      {
         if(!_me)
         {
            _me = new SceneManager();
         }
         return _me;
      }
      
      public function autoGotoScene(id:int) : void
      {
         var point:MapPointData = null;
         var result:Array = SceneConfig.findPath(currentSceneId,id);
         if(result != null)
         {
            if(result.length > 2)
            {
               point = Global.scenePointConfig[result[result.length - 2]];
               targetPoint = point;
               isAutoRun = true;
            }
            isAutoCampagin = true;
            autoGo(result);
         }
      }
      
      public function refreshSecretScene() : void
      {
         var person:Person = personMap[DataManager.Instance.role.roleId];
         person.currentX = 190;
         person.currentY = 100;
      }
      
      public function enterSercetScene() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","mausoleumEnter",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function setTargetNPCId(NPCId:int) : void
      {
         targetNPCId = NPCId;
         targetScene = null;
         targetNPCChange = null;
      }
      
      private function sortOnTargetY(a:Person, b:Person) : Number
      {
         var aY:int = a.currentY;
         var bY:int = b.currentY;
         if(aY > bY)
         {
            return 1;
         }
         if(aY < bY)
         {
            return -1;
         }
         if(a.userId > b.userId)
         {
            return 1;
         }
         return -1;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentSceneId() : int
      {
         return this._324771598currentSceneId;
      }
      
      public function autoGo(path:Array = null, npcId:int = 0) : void
      {
         if(path != null)
         {
            autoPath = path;
            targetNPC = npcId;
         }
         if(autoPath.length == 0)
         {
            return;
         }
         if(autoPath[0] == currentSceneId)
         {
            if(autoPath.length == 1)
            {
               if(targetNPC)
               {
                  gotoNPC(targetNPC);
                  showAutoGo = true;
               }
               else
               {
                  canelAutoGo();
               }
            }
            else
            {
               autoChangeScene(autoPath[1]);
               showAutoGo = true;
            }
         }
      }
      
      private function updatePosition(x:int, y:int) : void
      {
         x += wX;
         y += wY;
         if(x <= 400)
         {
            bgX = 0;
         }
         else if(x >= bgWidth - 400)
         {
            bgX = 1000 - bgWidth;
         }
         else if(x >= 600 - bgX)
         {
            bgX = 600 - x;
         }
         else if(x <= 400 - bgX)
         {
            bgX = 400 - x;
         }
         if(y < 400)
         {
            bgY = 0;
         }
         else if(y > bgHeight - 200)
         {
            bgY = 600 - bgHeight;
         }
         else
         {
            bgY = 400 - y;
         }
      }
      
      private function dealHang(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            openWin("hang");
         }
      }
      
      private function refreshPersonNames(e:ResultEvent) : void
      {
         var data:Object = null;
         var name:String = null;
         var person:Person = null;
         NameGetor.setName(e.result.name_list);
         for(var i:int = 0; i < waitingPersons.length; )
         {
            data = waitingPersons[i];
            name = NameGetor.getName(data.role_id);
            if(name != null)
            {
               person = addPerson(data.face,data.role_id,data.scene_x,data.scene_y,name,data.figure,-1,data.nation);
               person.changeSoul(findSoul(data.main_soul));
               dynamicPerson[person.userId] = person;
               if(person.userId == DataManager.Instance.role.roleId)
               {
                  myself = person;
               }
               waitingPersons.splice(i,1);
            }
            else
            {
               i++;
            }
         }
      }
      
      public function searchNPC(npcId:int) : void
      {
         var npc:NPCData = null;
         var point:MapPointData = null;
         canelAutoGo();
         var person:Person = personMap[npcId];
         if(person)
         {
            gotoNPC(npcId);
         }
         else
         {
            npc = Global.npcs[npcId];
            if(npc != null && npc.sceneId != 0)
            {
               point = Global.scenePointConfig[npc.sceneId];
               if(point != null)
               {
                  targetPoint = point;
                  isAutoRun = true;
                  HttpServerManager.getInstance().callServer("sceneService","change",resolveChangeScene,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentSceneId,0,0]);
               }
            }
         }
      }
      
      public function set currentSceneId(value:int) : void
      {
         var oldValue:Object = this._324771598currentSceneId;
         if(oldValue !== value)
         {
            this._324771598currentSceneId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentSceneId",oldValue,value));
         }
      }
      
      private function onSoulHeroFight(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.playBattle(e);
            DataManager.Instance.secretMoney = e.result.result_data.copper;
            DataManager.Instance.secretPrestige = e.result.result_data.prestige;
         }
      }
      
      private function checkAutoGo() : void
      {
         if(autoPath.length > 0 && autoPath[0] == currentSceneId)
         {
            autoGo();
         }
         if(autoPath.length > 1 && autoPath[1] == currentSceneId)
         {
            autoPath.shift();
            autoGo();
         }
      }
      
      public function enterQuarryBattle() : void
      {
         HttpServerManager.getInstance().callServer("legionService","legionBattleEntry",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function resolveChangeScene(e:Object) : void
      {
         var tempId:int = 0;
         var tempArray:Array = null;
         var sceneX:int = 0;
         var sceneY:int = 0;
         var tempId2:int = 0;
         var tempArray2:Array = null;
         var sceneX2:int = 0;
         var sceneY2:int = 0;
         if(e.result.error_code == -1)
         {
            if(currentSceneId == 3001 || currentSceneId == 3002)
            {
               changeView("ui/map/MapPanel.swf");
               return;
            }
            if(currentSceneId == 4002)
            {
               if(DataManager.Instance.isHanging)
               {
                  return;
               }
               tempId = 2001;
               if(Boolean(lastId) && lastId != 4001)
               {
                  tempId = lastId;
               }
               if(DataManager.Instance.isHighHangBegin)
               {
                  if(DataManager.Instance.role.officialRanklevel < 60)
                  {
                     tempId = 4003;
                  }
                  else if(DataManager.Instance.role.officialRanklevel >= 60 && DataManager.Instance.role.officialRanklevel < 80)
                  {
                     tempId = 4004;
                  }
                  else if(DataManager.Instance.role.officialRanklevel >= 80)
                  {
                     tempId = 4005;
                  }
               }
               tempArray = SceneConfig.getSceneInfo(tempId);
               sceneX = int(((tempArray[9] as Array)[0] as Array)[3]);
               sceneY = int(((tempArray[9] as Array)[0] as Array)[4]);
               HttpServerManager.getInstance().callServer("sceneService","change",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempId,sceneX,sceneY]);
               return;
            }
            if(currentSceneId == 4003 || currentSceneId == 4004 || currentSceneId == 4005)
            {
               tempId2 = 2001;
               if(Boolean(lastId) && lastId != 4001)
               {
                  tempId2 = lastId;
               }
               tempArray2 = SceneConfig.getSceneInfo(tempId2);
               sceneX2 = int(((tempArray2[9] as Array)[0] as Array)[3]);
               sceneY2 = int(((tempArray2[9] as Array)[0] as Array)[4]);
               HttpServerManager.getInstance().callServer("sceneService","change",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempId2,sceneX2,sceneY2]);
               return;
            }
            switch(e.result.entry)
            {
               case 1:
                  canelAutoGo();
                  if(isAutoRun)
                  {
                     if(targetPoint.sceneId == currentSceneId)
                     {
                        changeView("ui/campagin/CampaginPanel.swf");
                     }
                     else
                     {
                        changeView("ui/map/MapPanel.swf");
                     }
                  }
                  else
                  {
                     changeView("ui/campagin/CampaginPanel.swf");
                  }
                  break;
               case 2:
                  canelAutoGo();
                  changeView("ui/campagin/CampaginPanel.swf");
            }
         }
      }
      
      private function openWin(url:String, _type:int = 0) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         DataManager.Instance.dispatchEvent(event);
      }
      
      [Bindable(event="propertyChange")]
      public function get sceneName() : String
      {
         return this._1729159479sceneName;
      }
      
      public function resolveNPCState(e:ResultEvent) : void
      {
         var info:Object = null;
         var npc:Person = null;
         for each(info in e.result.npc_list)
         {
            npc = personMap[info.npc_id];
            if(npc)
            {
               npc.headState = info.npc_status;
            }
         }
      }
      
      private function operateLogic() : void
      {
         var change:ChangeSceneData = null;
         var person:Person = null;
         var _person:Person = null;
         var _host:Person = null;
         var tempMoveto:MapNode = null;
         var tempLx:int = 0;
         var tempLy:int = 0;
         var dis:int = 0;
         var l:Number = NaN;
         var moveDistance:Number = NaN;
         var moveto:MapNode = null;
         var lx:int = 0;
         var ly:int = 0;
         var click:BaseFrame = null;
         for each(change in changes)
         {
            if(change.isShow)
            {
               change.change.addFrame();
               change.change.loopFrame();
            }
         }
         ++NpcNum;
         for each(person in persons)
         {
            person.addFrame();
            person.loopFrame();
            if(person.userId == 49)
            {
               bossPerson = person;
            }
            if(person.userId >= 64 && person.userId <= 91)
            {
               if(highBattleNpcArr.indexOf(person.userId) != -1)
               {
                  highBattleDic[person.userId] = person;
               }
               else
               {
                  delete highBattleDic[person.userId];
               }
            }
            if(person.userId == DataManager.Instance.role.roleId && currentSceneId == 4001)
            {
               if(Boolean(bossPerson) && BossTime <= 0)
               {
                  if(personCheckHit(bossPerson,person))
                  {
                     HttpServerManager.getInstance().callServer("battleService","battle",onSoulHeroFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,0,9]);
                     BossTime = 1;
                     person.changeState(SceneConfig.STAND,person.direction);
                     person.isRun = false;
                  }
               }
            }
            if(person.userId == DataManager.Instance.role.roleId && currentSceneId == 4006 && !DataManager.Instance.highBattleWait)
            {
               for each(_person in highBattleDic)
               {
                  if(personCheckHit(_person,person))
                  {
                     tempPerson = person;
                     tempUserId = _person.userId;
                     HttpServerManager.getInstance().callServer("sceneService","warBattle",onHighFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,_person.userId]);
                     break;
                  }
               }
            }
            if(NpcNum == 100)
            {
               if(person.userId == 49)
               {
                  dealNpcRun(person);
               }
               else if(person.userId >= 64 && person.userId <= 91)
               {
                  if(highBattleNpcArr.indexOf(person.userId) != -1)
                  {
                     dealNpcRun(person);
                  }
               }
            }
            if(person.isBeast)
            {
               _host = personMap[person.userId % 100000];
               if(Boolean(_host && currentPath) && Boolean(currentPath.length > _grid.leftNodeNum) && _host.userId == DataManager.Instance.role.roleId)
               {
                  tempMoveto = currentPath[0];
                  tempLx = tempMoveto.x * Global.tile_width + Global.tile_width / 2;
                  tempLy = tempMoveto.y * Global.tile_height + Global.tile_height / 2 + 10;
                  if(tempLx >= person.currentX)
                  {
                     direction = 1;
                  }
                  else
                  {
                     direction = 0;
                  }
                  if(direction == 0)
                  {
                     person.moveToPosition(_host.currentX + 120,_host.currentY);
                  }
                  else
                  {
                     person.moveToPosition(_host.currentX - 120,_host.currentY);
                  }
               }
               else if(_host)
               {
                  person.moveToPosition(_host.currentX + 120,_host.currentY);
               }
            }
            if(person.isRun)
            {
               dis = 0;
               if(person.isBeast)
               {
                  dis = DISTANCE * (100 + person.speed) / 120;
               }
               else
               {
                  dis = DISTANCE * (100 + person.speed) / 100;
               }
               l = Math.sqrt(Math.pow(person.targetX - person.currentX,2) + Math.pow(person.targetY - person.currentY,2));
               if(l > dis)
               {
                  moveDistance = dis / l;
                  person.currentX += int(moveDistance * (person.targetX - person.currentX));
                  person.currentY += int(moveDistance * (person.targetY - person.currentY));
               }
               else if(Boolean(currentPath) && Boolean(currentPath.length > _grid.leftNodeNum) && (Boolean(person.userId == DataManager.Instance.role.roleId) || Boolean(ace && person.userId == ace.userId)))
               {
                  moveto = currentPath.shift();
                  lx = moveto.x * Global.tile_width + Global.tile_width / 2;
                  ly = moveto.y * Global.tile_height + Global.tile_height / 2 + 10;
                  if(lx >= person.currentX)
                  {
                     direction = 1;
                  }
                  else
                  {
                     direction = 0;
                  }
                  if(currentPath.length > _grid.leftNodeNum || _grid.leftNodeNum != 0)
                  {
                     if(Boolean(ace) && person.userId == ace.userId)
                     {
                        if(direction == 0)
                        {
                           person.moveToPosition(lx + personSpace,ly);
                        }
                        else
                        {
                           person.moveToPosition(lx - personSpace,ly);
                        }
                     }
                     else
                     {
                        person.moveToPosition(lx,ly);
                     }
                  }
                  else if(Boolean(ace) && person.userId == ace.userId)
                  {
                     if(direction == 0)
                     {
                        person.moveToPosition(_grid.targetX + personSpace,_grid.targetY);
                     }
                     else
                     {
                        person.moveToPosition(_grid.targetX - personSpace,_grid.targetY);
                     }
                  }
                  else
                  {
                     person.moveToPosition(_grid.targetX,_grid.targetY);
                  }
               }
               else
               {
                  if(person.userId == DataManager.Instance.role.roleId)
                  {
                     if(targetScene != null)
                     {
                        if(currentSceneId == 4003 || currentSceneId == 4004 || currentSceneId == 4005)
                        {
                           HttpServerManager.getInstance().callServer("sceneService","change",resolveChangeScene,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,targetScene.targetId,targetScene.targetX,targetScene.targetY]);
                        }
                        else
                        {
                           HttpServerManager.getInstance().callServer("sceneService","change",resolveChangeScene,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentSceneId,targetScene.targetX,targetScene.targetY]);
                        }
                        targetScene = null;
                     }
                     if(targetNPCChange != null)
                     {
                        HttpServerManager.getInstance().callServer("sceneService","change",resolveChangeScene,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,currentSceneId,targetNPCChange.targetX,targetNPCChange.targetY]);
                        targetNPCChange = null;
                     }
                     if(targetNPCId != 0)
                     {
                        HttpServerManager.getInstance().callServer("sceneService","word",resolveNPCWord,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,targetNPCId]);
                        targetNPCId = 0;
                        canelAutoGo();
                     }
                  }
                  ++person.waitingRate;
                  if(person.waitingRate > 1)
                  {
                     person.changeState(SceneConfig.STAND,person.direction);
                     person.isRun = false;
                  }
                  if(person.targetX != person.currentX || person.targetY != person.currentY)
                  {
                     person.atPosition();
                  }
               }
            }
         }
         if(NpcNum > 100)
         {
            NpcNum = 0;
         }
         for(var i:* = 0; i < clicks.length; i++)
         {
            click = clicks[i] as BaseFrame;
            click.addFrame();
            if(click.checkLoop())
            {
               clicks.splice(i,1);
               i--;
            }
         }
         if(myself)
         {
            updatePosition(myself.currentX,myself.currentY);
         }
      }
      
      public function getDialogNextEffect(index:int) : int
      {
         var dialog:Object = null;
         var temp:DialogData = null;
         for each(dialog in dialogResult.words)
         {
            if(dialog.cfg_word_id == index)
            {
               temp = new DialogData();
               temp.resolveDialog(dialog,dialogResult.npc_id);
               if(temp.taskOptions.length)
               {
                  return NPCDialogSelectData(temp.taskOptions[0]).effect;
               }
               return 0;
            }
         }
         return 0;
      }
      
      private function findSoul(soulId:int) : int
      {
         var soul:SoulData = Global.souls[soulId] as SoulData;
         if(soul)
         {
            return soul.icon;
         }
         return 0;
      }
      
      private function canelAutoGo() : void
      {
         autoPath.splice(0);
         showAutoGo = false;
      }
      
      public function startTime() : void
      {
         var point:MapPointData = null;
         _timer.addEventListener(TimerEvent.TIMER,getSceneInfo);
         _timer.start();
         getSceneInfo(null);
         if(currentSceneId != 0)
         {
            point = Global.scenePointConfig[currentSceneId];
            if(Boolean(point) && Boolean(point.music))
            {
               SoundManager.getInstance().playMusic("scene1");
            }
         }
      }
      
      private function addPerson(_face:int, userId:int, x:int, y:int, name:String, body:int, npcType:int, nationId:int = 0, colorType:int = 0, word:String = "", aceType:Boolean = false, beastType:Boolean = false, vipLevel:int = 0) : Person
      {
         var node:MapNode = null;
         if(_grid)
         {
            node = _grid.getFirstWalkableNode(x,y);
         }
         if(node)
         {
            x = node.x * Global.tile_width + Global.tile_width / 2;
            y = node.y * Global.tile_height + Global.tile_height / 2 + 10;
         }
         var person:Person = personMap[userId];
         if(userId >= 64 && userId <= 91)
         {
            if(highBattleNpcArr.indexOf(userId) == -1)
            {
               delete highBattleDic[userId];
               return person;
            }
         }
         if(person == null)
         {
            person = new Person();
            personMap[userId] = person;
            persons.push(person);
            person.setPerson(_face,userId,x,y,name,body,npcType,nationId,colorType,aceType,beastType,vipLevel);
            if(npcType == -1)
            {
               sceneUsers.push(person);
            }
         }
         else if(userId != DataManager.Instance.role.roleId)
         {
            person.moveToPosition(x,y);
         }
         if(userId == DataManager.Instance.role.roleId)
         {
            myself = person;
         }
         if(word != "")
         {
            person.makeWord(word);
         }
         return person;
      }
      
      public function set userHide(value:Boolean) : void
      {
         var oldValue:Object = this._266838099userHide;
         if(oldValue !== value)
         {
            this._266838099userHide = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userHide",oldValue,value));
         }
      }
      
      public function portTaskStart(id:int) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","word",resolveNPCWord,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id]);
      }
      
      public function checkClick(x:int, y:int, _isDouble:Boolean) : void
      {
         var event:NavigationEvent = null;
         DataManager.Instance.autoWar = new AutoWarData();
         if(!_isDouble && showAutoGo)
         {
            return;
         }
         isAutoCampagin = false;
         if(currentPerson != null)
         {
            if(currentPerson.isNPC == true)
            {
               if(currentPerson.userId >= 50 && currentPerson.userId <= 53)
               {
                  openWin("hang");
               }
               else if(currentPerson.userId >= 60 && currentPerson.userId <= 62)
               {
                  openWin("highHang");
               }
               else
               {
                  main.inst.uiContainer.dispatchEvent(new SendDataEvent("closeActionOtherPanel",""));
                  searchNPC(currentPerson.userId);
               }
            }
            else if(currentPerson.userId != DataManager.Instance.role.roleId && !currentPerson.isAce && !currentPerson.isBeast)
            {
               event = new NavigationEvent(NavigationEvent.OPENWINDOW);
               event.url = "actionOther";
               event.data = [currentPerson.userId,mouseX,mouseY,currentPerson.name,currentPerson.nationId,currentPerson.face];
               DataManager.Instance.dispatchEvent(event);
            }
         }
         else
         {
            main.inst.uiContainer.dispatchEvent(new SendDataEvent("closeActionOtherPanel",""));
            checkMove(mouseX,mouseY);
         }
      }
      
      public function addChangeScene(infos:Object) : void
      {
         var info:Array = null;
         var change:ChangeSceneData = null;
         changes.splice(0);
         for each(info in infos)
         {
            change = new ChangeSceneData(info);
            changes.push(change);
         }
      }
      
      public function set sceneName(value:String) : void
      {
         var oldValue:Object = this._1729159479sceneName;
         if(oldValue !== value)
         {
            this._1729159479sceneName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sceneName",oldValue,value));
         }
      }
      
      private function onHighFight(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            tempPerson.currentX = 100;
            tempPerson.currentY = 100;
            tempPerson.changeState(SceneConfig.STAND,tempPerson.direction);
            tempPerson.isRun = false;
            DataManager.Instance.playBattle(e);
            DataManager.Instance.secretMoney = e.result.result_data.copper;
            DataManager.Instance.secretPrestige = e.result.result_data.prestige;
         }
         else if(e.result.error_code == 547)
         {
            delete highBattleDic[tempUserId];
         }
      }
      
      private function stageToCoordinate(sX:int, sY:int) : Point
      {
         var result:Point = new Point();
         result.x = sX - wX - bgX;
         result.y = sY - wY - bgY;
         return result;
      }
      
      public function mapAutoRunEnd() : void
      {
         isAutoRun = false;
         targetPoint = null;
      }
      
      public function moveToPosition(userId:int, x:int, y:int) : void
      {
         var person:Person = personMap[userId];
         if(person != null)
         {
            person.moveToPosition(x,y);
         }
      }
      
      private function dealNpcRun(person:Person) : void
      {
         person.speed = -50;
         var _arr:Array = SceneConfig.getPersonImageInfo(person.face.toString());
         var x0:int = int(_arr[12][0]);
         var y0:int = int(_arr[12][1]);
         var x1:int = int(_arr[12][2]);
         var y1:int = int(_arr[12][3]);
         person.moveToPosition(x0 + Math.random() * (x1 - x0),y0 + Math.random() * (y1 - y0));
      }
      
      public function DiaryClear() : void
      {
         var npc:NPCData = null;
         personMap = new Dictionary();
         persons.splice(0);
         sceneUsers.splice(0);
         drawPerson.splice(0);
         myself = null;
         dynamicPerson = new Dictionary();
         var point:MapPointData = Global.scenePointConfig[currentSceneId];
         if(point != null)
         {
            for each(npc in point.npcs)
            {
               addPerson(0,npc.id,npc.posX,npc.posY,npc.name,npc.body,npc.type,0,0,npc.word);
            }
            sceneName = point.sceneName;
            if(point.music)
            {
               SoundManager.getInstance().playMusic("scene1");
            }
         }
      }
      
      private function getPersonName() : void
      {
         var data:Object = null;
         var gets:Array = new Array();
         for each(data in waitingPersons)
         {
            gets.push(data.role_id);
         }
         NameGetor.getPersonName(gets,refreshPersonNames);
      }
      
      public function addWords(userId:int, words:String) : void
      {
      }
      
      private function autoChangeScene(sceneId:int) : void
      {
         var change:ChangeSceneData = null;
         var npc:NPCChangeSceneData = null;
         for(var i:int = 0; i < changes.length; i++)
         {
            change = changes[i];
            if(change.targetId == sceneId)
            {
               setTargetScene(change);
               pathToPosition(DataManager.Instance.role.roleId,change.currentX + 66 - wX,change.currentY + 70 - wY);
            }
         }
         if(npcChanges)
         {
            for each(npc in npcChanges)
            {
               if(npc.targetId == sceneId)
               {
                  if(pathToPosition(DataManager.Instance.role.roleId,npc.currentX,npc.currentY,1))
                  {
                     setTargetNPCChange(npc);
                  }
               }
            }
         }
      }
      
      public function enterframe(past:int) : void
      {
         var change:ChangeSceneData = null;
         var person:Person = null;
         var click:BaseFrame = null;
         var picture:Point = null;
         var testPoint:Point = null;
         var times:* = int(Math.floor(past / 40));
         times = int(Math.max(times,1));
         while(times > 0)
         {
            operateLogic();
            times--;
         }
         for each(change in changes)
         {
            if(change.isShow)
            {
               change.setDrawContent(drawManager,this);
            }
         }
         if(currentPerson)
         {
            currentPerson.select = false;
            currentPerson = null;
            Mouse.show();
            isBoss = false;
         }
         for each(person in persons)
         {
            picture = coordinateToStage(person.currentX,person.currentY);
            testPoint = new Point(mouseX - picture.x,mouseY - picture.y);
            if(person.hitTest(testPoint))
            {
               if((currentPerson == null || sortOnTargetY(currentPerson,person) < 0) && (userHide == false || person.isNPC == true || person.userId == DataManager.Instance.role.roleId) && person.nameData != null)
               {
                  currentPerson = person;
                  person.select = true;
                  if(currentPerson.userId == 49)
                  {
                     Mouse.hide();
                     isBoss = true;
                  }
                  else
                  {
                     Mouse.show();
                     isBoss = false;
                  }
               }
            }
            if(!person.isDrawing)
            {
               if(picture.x > -50 && picture.x < 1050 && picture.y > 0 && picture.y < 700 && drawPerson.length < 80 || person.isHouse || person.isNPC || person == myself)
               {
                  person.isDrawing = true;
                  drawPerson.push(person);
               }
            }
            else if(!(picture.x > -50 && picture.x < 1050 && picture.y > 0 && picture.y < 700) && !person.isHouse && !person.isNPC)
            {
               person.isDrawing = false;
               drawPerson.splice(drawPerson.indexOf(person),1);
            }
         }
         for each(click in clicks)
         {
            click.addToList(drawManager,click.currentX + bgX + wX,click.currentY + bgY + wY);
         }
         drawPerson.sort(sortOnTargetY);
         for each(person in drawPerson)
         {
            person.setDrawContent(drawManager,this);
         }
      }
      
      public function changeDialogIndex(index:int) : void
      {
         var dialog:Object = null;
         var event:TopUIEvent = null;
         var found:Boolean = false;
         for each(dialog in dialogResult.words)
         {
            if(dialog.cfg_word_id == index)
            {
               showDialog.resolveDialog(dialog,dialogResult.npc_id);
               found = true;
               break;
            }
         }
         event = new TopUIEvent();
         event.actionTarget = "dialog";
         if(found)
         {
            event.action = "show";
            event.args = [showDialog,dialogResult.npc_id];
         }
         else
         {
            event.action = "hide";
         }
         main.inst.topContainer.dispatchEvent(event);
      }
      
      public function leaveSercetScene() : void
      {
         HttpServerManager.getInstance().callServer("sceneService","mausoleumLeave",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function setTargetNPCChange(npc:NPCChangeSceneData) : void
      {
         targetNPCId = 0;
         targetScene = null;
         targetNPCChange = npc;
      }
      
      private function gotoNPC(npcId:int) : void
      {
         var npc:Person = personMap[npcId];
         if(npc)
         {
            if(pathToPosition(DataManager.Instance.role.roleId,npc.currentX,npc.currentY,1))
            {
               setTargetNPCId(npcId);
            }
         }
      }
      
      public function set isBoss(value:Boolean) : void
      {
         var oldValue:Object = this._1180624969isBoss;
         if(oldValue !== value)
         {
            this._1180624969isBoss = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isBoss",oldValue,value));
         }
      }
      
      public function getSceneInfo(event:TimerEvent = null) : void
      {
         var tempX:int = 0;
         var tempY:int = 0;
         if(myself)
         {
            tempX = Math.max(myself.currentX,0);
            tempY = Math.max(myself.currentY,0);
         }
         if(!DataManager.Instance.isHighHanging)
         {
            HttpServerManager.getInstance().callServer("sceneService","scene",resolveSceneInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,tempX,tempY]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userHide() : Boolean
      {
         return this._266838099userHide;
      }
      
      private function changeView(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.CHANGEVIEW);
         event.url = url;
         DataManager.Instance.dispatchEvent(event);
      }
      
      private function coordinateToStage(cX:int, cY:int) : Point
      {
         var result:Point = new Point();
         result.x = cX + wX + bgX;
         result.y = cY + wY + bgY;
         return result;
      }
      
      public function addLandScrop(x:int, y:int, body:String) : void
      {
         var person:Person = new Person();
         person.currentX = person.targetX = x;
         person.currentY = person.targetY = y;
         person.changeSuit([body]);
         person.isNPC = true;
         person.isHouse = true;
         persons.push(person);
      }
      
      public function stopAutoGo() : void
      {
         canelAutoGo();
         setTargetNPCId(0);
      }
      
      public function setTargetScene(scene:ChangeSceneData) : void
      {
         targetNPCId = 0;
         targetNPCChange = null;
         targetScene = scene;
      }
      
      public function pathToPosition(userId:int, x:int, y:int, left:int = 0) : Boolean
      {
         var sx:int = 0;
         var sy:int = 0;
         var ex:int = 0;
         var ey:int = 0;
         var moveto:MapNode = null;
         var lx:int = 0;
         var ly:int = 0;
         var person:Person = personMap[userId];
         if(person != null)
         {
            if(_grid)
            {
               sx = Math.floor(person.currentX / Global.tile_width);
               sy = Math.floor(person.currentY / Global.tile_height);
               ex = Math.floor(x / Global.tile_width);
               ey = Math.floor(y / Global.tile_height);
               if(sx < 0)
               {
                  sx = 0;
               }
               if(sy < 0)
               {
                  sy = 0;
               }
               if(ex < 0)
               {
                  ex = 0;
               }
               if(ey < 0)
               {
                  ey = 0;
               }
               _grid.startNode = _grid.getNode(sx,sy);
               _grid.endNode = _grid.getNode(ex,ey);
               _grid.leftNodeNum = left;
               if(Boolean(_grid.startNode) && Boolean(_grid.endNode) && _grid.endNode.walkable)
               {
                  _grid.targetX = x;
                  _grid.targetY = y;
                  currentPath = _grid.findPath();
                  if(currentPath)
                  {
                     currentPath.shift();
                     if(currentPath.length > _grid.leftNodeNum)
                     {
                        moveto = currentPath.shift();
                        lx = moveto.x * Global.tile_width + Global.tile_width / 2;
                        ly = moveto.y * Global.tile_height + Global.tile_height / 2 + 10;
                        if(lx < person.currentX)
                        {
                           direction = 0;
                        }
                        else
                        {
                           direction = 1;
                        }
                        person.moveToPosition(lx,ly);
                        if(ace)
                        {
                           if(direction == 0)
                           {
                              ace.moveToPosition(lx + personSpace,ly);
                           }
                           else
                           {
                              ace.moveToPosition(lx - personSpace,ly);
                           }
                        }
                     }
                     else if(currentPath.length == _grid.leftNodeNum && _grid.leftNodeNum == 0)
                     {
                        if(x < person.currentX)
                        {
                           direction = 0;
                        }
                        else
                        {
                           direction = 1;
                        }
                        person.moveToPosition(x,y);
                        if(ace)
                        {
                           if(direction == 0)
                           {
                              ace.moveToPosition(x + personSpace,y);
                           }
                           else
                           {
                              ace.moveToPosition(x - personSpace,y);
                           }
                        }
                     }
                     else
                     {
                        person.moveToPosition(person.currentX,person.currentY);
                     }
                     return true;
                  }
                  return false;
               }
               return false;
            }
            person.moveToPosition(x,y);
            return true;
         }
         return false;
      }
      
      private function clickPosition(x:int, y:int) : void
      {
         var click:BaseFrame = new BaseFrame();
         click.setInfo("../assets/images/Scene/Click",[21,1,0,50,0],true,[85,70]);
         click.needHorizontalCenter = true;
         click.currentX = x;
         click.currentY = y;
         clicks.push(click);
      }
      
      public function resolveSceneInfo(e:Object) : void
      {
         var data:Object = null;
         var remove:Person = null;
         var name:String = null;
         var npcType:int = 0;
         var person:Person = null;
         var _pet:Object = null;
         var petX:int = 0;
         var petPerson:Person = null;
         var tempX:int = 0;
         var acePerson:Person = null;
         var result:Object = e.result;
         if(!result.scene_id)
         {
            trace("收到场景ID为0");
            return;
         }
         if(Boolean(result.scene_id && result.scene_id != 4002 && result.scene_id != 4003 && result.scene_id != 4004 && result.scene_id != 4005) && Boolean(result.scene_id != 4006) && result.scene_id != 4007)
         {
            lastId = result.scene_id;
         }
         if(result.scene_id == 4003 || result.scene_id == 4004 || result.scene_id == 4005)
         {
            highHangSceneId = result.scene_id;
         }
         if(currentSceneId != result.scene_id)
         {
            currentSceneId = result.scene_id;
            onEnterScene();
         }
         var old:Dictionary = dynamicPerson;
         dynamicPerson = new Dictionary();
         for each(data in result.persons)
         {
            if(!(DataManager.Instance.role.roleId != data.role_id && data.scene_x > 1750 && currentSceneId != 4006))
            {
               name = data.name;
               if(!name)
               {
                  name = NameGetor.getName(data.role_id);
               }
               if(name != null)
               {
                  npcType = data.is_npc ? 0 : -1;
                  person = addPerson(data.face,data.role_id,data.scene_x,data.scene_y,name,data.figure,npcType,data.nation,0,"",false,false,data.vip_level);
                  if(Boolean(data.pet) && Boolean(data.pet.cfg_pet_id))
                  {
                     _pet = Global.pet[data.pet.cfg_pet_id];
                     petX = data.scene_x + personSpace;
                     if(petX < 200)
                     {
                        petX = petX + personSpace + 100;
                     }
                     else
                     {
                        petX = petX - personSpace - 100;
                     }
                     petPerson = addPerson(_pet.face,data.pet.pet_id * 100000 + data.role_id,petX,data.scene_y,_pet.name,_pet.figure,-1,0,data.pet.quality + 1,"",false,true);
                  }
                  person.changeSoul(findSoul(data.main_soul));
                  person.showLeizhu(data.is_leizhu);
                  if(data.area_title == 1)
                  {
                     person.showStride(1,true);
                  }
                  else if(data.area_title == 2)
                  {
                     person.showStride(2,true);
                  }
                  person.setTitle(data.lobby_title);
                  delete old[person.userId];
                  dynamicPerson[person.userId] = person;
                  if(person.userId == DataManager.Instance.role.roleId)
                  {
                     myself = person;
                     if(Boolean(result.lufei_follows) && !personMap[10061201])
                     {
                        tempX = data.scene_x + personSpace;
                        if(tempX < 200)
                        {
                           tempX = tempX + personSpace + 100;
                        }
                        else
                        {
                           tempX = tempX - personSpace - 100;
                        }
                        acePerson = addPerson(10024,10061201,tempX,data.scene_y,"",10024,-1,0,0,"",true);
                        ace = acePerson;
                     }
                     else if(!result.lufei_follows)
                     {
                        if(personMap[10061201])
                        {
                           delete personMap[10061201];
                           persons.splice(persons.indexOf(ace),1);
                           sceneUsers.splice(sceneUsers.indexOf(ace),1);
                           drawPerson.splice(drawPerson.indexOf(ace),1);
                           ace = null;
                        }
                     }
                  }
               }
               else
               {
                  waitingPersons.push(data);
               }
            }
         }
         if(waitingPersons.length > 0)
         {
            getPersonName();
         }
         for each(remove in old)
         {
            delete personMap[remove.userId];
            persons.splice(persons.indexOf(remove),1);
            sceneUsers.splice(sceneUsers.indexOf(remove),1);
            if(remove.isDrawing)
            {
               drawPerson.splice(drawPerson.indexOf(remove),1);
            }
         }
         checkAutoGo();
      }
      
      [Bindable(event="propertyChange")]
      public function get isBoss() : Boolean
      {
         return this._1180624969isBoss;
      }
      
      public function onEnterScene() : void
      {
         var obj:Array = null;
         var point:MapPointData = null;
         var npc:NPCData = null;
         personMap = new Dictionary();
         persons.splice(0);
         sceneUsers.splice(0);
         drawPerson.splice(0);
         myself = null;
         dynamicPerson = new Dictionary();
         var info:Array = SceneConfig.getSceneInfo(currentSceneId);
         bgWidth = info.shift();
         bgHeight = info.shift();
         wX = info.shift();
         wY = info.shift();
         wWidth = info.shift();
         wHeight = info.shift();
         bgSource = info.shift();
         var w:int = wWidth / Global.tile_width;
         var h:int = wHeight / Global.tile_height;
         _grid = new MapGrid(w,h);
         var mapdata:String = info.shift();
         _grid.setNodes(mapdata.split(","));
         for each(obj in info.shift())
         {
            addLandScrop(obj.shift(),obj.shift(),obj.shift());
         }
         addChangeScene(info.shift());
         npcChanges = info.shift();
         point = Global.scenePointConfig[currentSceneId];
         if(point != null)
         {
            for each(npc in point.npcs)
            {
               addPerson(npc.head,npc.id,npc.posX,npc.posY,npc.name,npc.body,npc.type,0,0,npc.word);
            }
            sceneName = point.sceneName;
            if(point.music)
            {
               SoundManager.getInstance().playMusic("scene1");
            }
         }
         HttpServerManager.getInstance().callServer("sceneService","npc",resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function personCheckHit(person1:Person, person2:Person) : Boolean
      {
         if(person1.currentX - 60 < person2.currentX && person1.currentX + 60 > person2.currentX && person1.currentY - 60 < person2.currentY && person1.currentY + 60 > person2.currentY)
         {
            return true;
         }
         return false;
      }
      
      public function refreshChangeScene() : void
      {
         var change:ChangeSceneData = null;
         for each(change in changes)
         {
            change.refreshChange();
         }
      }
      
      public function stopTime() : void
      {
         _timer.removeEventListener(TimerEvent.TIMER,getSceneInfo);
         _timer.stop();
      }
      
      private function checkMove(tX:int, tY:int) : void
      {
         var i:int = 0;
         var change:ChangeSceneData = null;
         var p:Point = null;
         canelAutoGo();
         setTargetNPCId(0);
         var temp:Point = stageToCoordinate(tX,tY);
         var targetX:int = temp.x;
         var targetY:int = temp.y;
         var positionX:int = tX - bgX;
         var positionY:int = tY - bgY;
         for(i = 0; i < changes.length; i++)
         {
            change = changes[i];
            if(change.isShow && change.isContain(positionX,positionY))
            {
               p = change.position;
               if(p.x != -1)
               {
                  targetX = p.x;
               }
               if(p.y != -1)
               {
                  targetY = p.y;
               }
               setTargetScene(change);
               break;
            }
         }
         if(i >= changes.length)
         {
            if(targetY < 0)
            {
               targetY = 0;
            }
            if(targetY >= wHeight)
            {
               targetY = wHeight;
            }
            if(targetX < 0)
            {
               targetX = 0;
            }
            if(targetX >= wWidth)
            {
               targetX = wWidth;
            }
         }
         if(pathToPosition(DataManager.Instance.role.roleId,targetX,targetY))
         {
            clickPosition(targetX,targetY);
         }
      }
      
      public function autoGotoBranch(id:int) : void
      {
         var change:ChangeSceneData = changes[0];
         setTargetScene(change);
         var info:Array = SceneConfig.getSceneInfo(id);
         var _x:int = int(info[9][0][0]);
         var _y:int = int(info[9][0][1]);
         pathToPosition(DataManager.Instance.role.roleId,_x - wX,_y + 50 - wY);
         var point:MapPointData = Global.scenePointConfig[id];
         targetPoint = point;
         showAutoGo = true;
         if(targetPoint.sceneId != currentSceneId)
         {
            isAutoRun = true;
         }
         else
         {
            mapAutoRunEnd();
         }
      }
      
      private function resolveNPCWord(e:ResultEvent) : void
      {
         dialogResult = e.result;
         if(Boolean(dialogResult.words) && Boolean(dialogResult.words.length))
         {
            changeDialogIndex(dialogResult.words[0].cfg_word_id);
         }
      }
   }
}


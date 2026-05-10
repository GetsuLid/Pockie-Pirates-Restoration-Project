package data.role
{
   import ExtendComp.ShowResult;
   import Util.NameGetor;
   import events.NavigationEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import lang.UILang;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class FriendList
   {
      
      private var waitingPerson:Array = new Array();
      
      private var timer:Timer = new Timer(20 * 1000);
      
      public var updates:Array = new Array();
      
      public var isAdd:Boolean;
      
      public var friendList:ArrayCollection = new ArrayCollection();
      
      private var personDic:Dictionary = new Dictionary();
      
      public function FriendList()
      {
         super();
      }
      
      public function addFriendByName(name:String) : void
      {
         HttpServerManager.getInstance().callServer("chatService","friendAdd",resolveAddFriend,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,name]);
      }
      
      public function startTimer() : void
      {
         timer.addEventListener(TimerEvent.TIMER,refreshFriendContent);
         timer.start();
      }
      
      public function refreshUpdate() : void
      {
         DataManager.Instance.newPrivateMessage = false;
         HttpServerManager.getInstance().callServer("chatService","checkPrivateMessage",resolveUpdate,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function resolveAddFriend(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            isAdd = true;
            ShowResult.inst.showResult(-2,UILang.AddSucc);
         }
         resolveFriendList(e);
      }
      
      public function deleteUpdate(friend:FriendData) : void
      {
         if(updates.indexOf(friend) != -1)
         {
            updates.splice(updates.indexOf(friend),1);
         }
         if(updates.length == 0)
         {
            DataManager.Instance.hasFriendUrl = "";
         }
      }
      
      public function resolveUpdate(e:ResultEvent) : void
      {
         var msg:Object = null;
         var targetId:int = 0;
         var friend:FriendData = null;
         var gets:Array = new Array();
         for each(msg in e.result.private_message_list)
         {
            if(msg.receiverId == DataManager.Instance.role.roleId)
            {
               targetId = int(msg.senderId);
            }
            else
            {
               targetId = int(msg.receiverId);
            }
            friend = personDic[targetId];
            if(!friend)
            {
               friend = new FriendData();
               personDic[targetId] = friend;
               friend.id = targetId;
               friend.name = NameGetor.getName(friend.id);
               if(friend.name == null)
               {
                  gets.push(friend.id);
                  waitingPerson.push(friend);
               }
            }
            friend.resolveContent(msg);
            if(!friend.isShow && updates.indexOf(friend) == -1)
            {
               updates.push(friend);
            }
         }
         if(updates.length > 0 && DataManager.Instance.role.control.friendBtn)
         {
            DataManager.Instance.hasFriendUrl = "../assets/images/UI/ShareBtn/friendBtn.swf";
         }
         if(gets.length)
         {
            NameGetor.getPersonName(gets,resolveNames);
         }
         if(updates.length)
         {
            DataManager.Instance.dispatchEvent(showFriend());
         }
      }
      
      public function getFriendBy(id:int) : FriendData
      {
         var friend:FriendData = findFriend(id);
         checkPersonName();
         return friend;
      }
      
      public function addFriend(id:int) : void
      {
         isAdd = false;
         HttpServerManager.getInstance().callServer("chatService","friendAction",resolveAddFriend,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id,1]);
      }
      
      private function refreshFriendContent(event:Timer) : void
      {
         refreshUpdate();
      }
      
      public function resolveFriendList(e:ResultEvent) : void
      {
         var info:Object = null;
         var send:Object = null;
         var remove:FriendData = null;
         var friend:FriendData = null;
         var obj:Object = null;
         while(friendList.length)
         {
            remove = friendList.removeItemAt(0) as FriendData;
            remove.isFriend = false;
         }
         for each(info in e.result.fiend_list)
         {
            friend = findFriend(info.friend_id);
            friend.url = "../assets/images/Head/Small/" + info.face + ".swf";
            friendList.addItem(friend);
            friend.isFriend = true;
            friend.isMessage = false;
         }
         for each(send in friendList)
         {
            for each(obj in e.result.send_list)
            {
               if(obj.send_id == send.id)
               {
                  send.isMessage = true;
                  break;
               }
            }
         }
         checkPersonName();
         friendList.refresh();
         refreshUpdate();
      }
      
      private function checkPersonName() : void
      {
         var gets:Array = null;
         var friend:FriendData = null;
         if(waitingPerson.length)
         {
            gets = new Array();
            for each(friend in waitingPerson)
            {
               gets.push(friend.id);
            }
            NameGetor.getPersonName(gets,resolveNames);
         }
      }
      
      public function deleteFriend(id:int) : void
      {
         HttpServerManager.getInstance().callServer("chatService","friendAction",resolveDeleteFriend,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,id,2]);
      }
      
      private function resolveDeleteFriend(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.DelSucc);
         }
         resolveFriendList(e);
      }
      
      private function findFriend(id:int) : FriendData
      {
         var friend:FriendData = personDic[id];
         if(!friend)
         {
            friend = new FriendData();
            personDic[id] = friend;
            friend.id = id;
            friend.name = NameGetor.getName(id);
            if(friend.name == null)
            {
               waitingPerson.push(friend);
            }
         }
         return friend;
      }
      
      public function showFriend() : NavigationEvent
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         if(!updates.length)
         {
            event.url = "friend";
         }
         else
         {
            event.url = "talk";
            event.data = updates.shift();
         }
         return event;
      }
      
      private function resolveNames(e:ResultEvent) : void
      {
         var friend:FriendData = null;
         NameGetor.setName(e.result.name_list);
         while(waitingPerson.length)
         {
            friend = waitingPerson.shift();
            friend.name = NameGetor.getName(friend.id);
            friend.nameInit();
         }
      }
   }
}


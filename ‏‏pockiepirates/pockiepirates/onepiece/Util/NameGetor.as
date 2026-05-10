package Util
{
   import flash.utils.Dictionary;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import server.HttpServerManager;
   
   public class NameGetor
   {
      
      private static var personNames:Dictionary = new Dictionary();
      
      public function NameGetor()
      {
         super();
      }
      
      public static function getName(id:int) : String
      {
         return personNames[id];
      }
      
      public static function getPersonName(gets:Array, fun:Function) : void
      {
         HttpServerManager.getInstance().callServer("sceneService","sceneGetName",fun,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,gets]);
      }
      
      public static function setName(names:ArrayCollection) : void
      {
         var nameData:Object = null;
         for each(nameData in names)
         {
            personNames[nameData.role_id] = nameData.name;
         }
      }
      
      public static function setOneName(id:int, name:String) : void
      {
         personNames[id] = name;
      }
   }
}


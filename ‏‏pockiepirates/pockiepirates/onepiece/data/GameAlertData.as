package data
{
   import flash.utils.Dictionary;
   
   public class GameAlertData
   {
      
      public var alertDic:Dictionary = new Dictionary();
      
      public function GameAlertData()
      {
         super();
      }
      
      public function getDic(alertNum:int) : int
      {
         if(alertDic[alertNum])
         {
            return alertDic[alertNum];
         }
         return 0;
      }
      
      public function setdic(alertNum:int, attribute:int) : void
      {
         alertDic[alertNum] = attribute;
      }
   }
}


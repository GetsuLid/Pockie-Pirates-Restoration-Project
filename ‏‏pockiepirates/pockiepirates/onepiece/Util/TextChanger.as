package Util
{
   import constant.Global;
   import data.Item.ItemBase;
   import data.map.MapPointData;
   import data.npc.NPCData;
   import flash.events.TextEvent;
   import manager.DataManager;
   
   public class TextChanger
   {
      
      public function TextChanger()
      {
         super();
      }
      
      public static function changeBasicDescript(content:String) : String
      {
         var type:int = 0;
         var cont:String = null;
         var contents:Array = content.split("#");
         var result:String = "";
         while(contents.length >= 2)
         {
            type = contents.shift();
            cont = contents.shift();
            switch(type)
            {
               case 1:
                  result += cont + "<br>";
                  break;
               case 2:
                  result += "<font color=\'#fb56ee\'>类型：" + cont + "</font><br>";
                  break;
               case 3:
                  result += "<font color=\'#f1cc02\'>需求：" + cont + "</font><br>";
                  break;
               case 4:
                  result += "<font color=\'#85ff00\'>使用：" + cont + "</font><br>";
            }
         }
         return result;
      }
      
      public static function link(event:TextEvent) : void
      {
         var target:String = event.text;
         var kind:String = target.substr(0,1);
         var contentId:int = parseInt(target.substring(1));
         var _loc5_:String = kind;
         switch(0)
         {
         }
      }
      
      public static function changeAdvanceText(content:String) : String
      {
         var msg:String = null;
         var detail:Array = null;
         var addType:int = 0;
         var action:String = null;
         var showName:String = null;
         var color:String = null;
         var kind:String = null;
         var contentId:int = 0;
         var npc:NPCData = null;
         var scene:MapPointData = null;
         var item:ItemBase = null;
         if(content == null)
         {
            return "未知";
         }
         var result:String = "";
         var msgs:Array = content.split("$");
         var type:int = 2;
         for each(msg in msgs)
         {
            if(type == 2)
            {
               result = result + "<font color=\'#f2942f\'>" + msg + "</font>";
               type = 1;
            }
            else
            {
               detail = msg.split("_");
               addType = 1;
               action = detail.shift();
               showName = "";
               color = "";
               if(detail.length > 0)
               {
                  showName = detail.shift();
               }
               kind = action.substr(0,1);
               contentId = parseInt(action.substring(1));
               switch(kind)
               {
                  case "R":
                     color = "#fa4855";
                     break;
                  case "G":
                     color = "#74e80d";
                     break;
                  case "B":
                     color = "#6cdeff";
                     break;
                  case "P":
                     addType = 2;
                     break;
                  case "I":
                     if(showName == "")
                     {
                        item = Global.getItemConfig(contentId);
                        if(item != null)
                        {
                           showName = item.name;
                        }
                     }
                     addType = 3;
                     break;
                  case "N":
                     if(showName == "")
                     {
                        npc = Global.npcs[contentId] as NPCData;
                        if(npc != null)
                        {
                           showName = npc.name;
                        }
                     }
                     addType = 3;
                     break;
                  case "T":
                     npc = Global.npcs[contentId] as NPCData;
                     if(npc != null)
                     {
                        if(showName == "")
                        {
                           showName = npc.name;
                        }
                        result = result + "<font color=\'#00ff00\'><a href = \'event:N" + contentId + "\'>" + showName + "</a></font>";
                        result = result + "(<font color=\'#ffe900\'><a href = \'event:C" + npc.sceneId + "\'>" + npc.sceneName + "</a></font>)";
                     }
                     addType = 0;
                     break;
                  case "S":
                     if(showName == "")
                     {
                        scene = Global.scenePointConfig[contentId];
                        if(scene != null)
                        {
                           showName = scene.sceneName;
                        }
                     }
                     addType = 3;
                     break;
                  case "h":
                     showName = msg;
                     addType = 3;
                     break;
                  case "C":
                     scene = Global.scenePointConfig[contentId];
                     if(scene != null)
                     {
                        if(showName == "")
                        {
                           showName = scene.sceneName;
                        }
                        result = result + "<font color=\'#00ff00\'><a href = \'event:S" + contentId + "\'>" + showName + "</a></font>";
                        result = result + "(<font color=\'#ffe900\'><a href = \'event:C" + contentId + "\'>" + scene.sceneName + "</a></font>)";
                     }
                     addType = 0;
               }
               switch(addType)
               {
                  case 1:
                     result = result + "<font color=\'" + color + "\'>" + showName + "</font>";
                     break;
                  case 2:
                     result = result + "<font color=\'#ffffff\'>" + DataManager.Instance.role.name + "</font>";
                     break;
                  case 3:
                     result = result + "<font color=\'#00ff00\'><a href = \'event:" + msg + "\'>" + showName + "</a></font>";
               }
               type = 2;
            }
         }
         return result;
      }
   }
}


package Scene.Data
{
   import Draw.Data.BaseBitmapData;
   import Draw.Data.BaseFrame;
   import Draw.Data.TextBitmapDataCreator;
   import Draw.PlayListManager;
   import Scene.Config.SceneConfig;
   import Scene.SceneManager;
   import constant.Global;
   import data.map.MapPointData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ChangeSceneData
   {
      
      public var isShow:Boolean = true;
      
      public var targetId:int;
      
      private var positionX:int;
      
      private var positionY:int;
      
      public var currentY:int;
      
      public var nameData:TextBitmapDataCreator;
      
      private var rect:Rectangle;
      
      public var targetX:int;
      
      public var targetY:int;
      
      public var change:BaseFrame;
      
      private var changeBack:BaseBitmapData;
      
      public var sceneName:String;
      
      public var currentX:int;
      
      public function ChangeSceneData(info:Array)
      {
         super();
         currentX = info.shift();
         currentY = info.shift();
         rect = new Rectangle(currentX,currentY,100,140);
         targetId = info.shift();
         targetX = info.shift();
         targetY = info.shift();
         positionX = info.shift();
         positionY = info.shift();
         refreshChange();
         var scene:MapPointData = MapPointData(Global.scenePointConfig[targetId]);
         var showText:String = "";
         if(scene)
         {
            showText = "";
            sceneName = scene.sceneName;
         }
         else
         {
            showText = "未知";
            sceneName = "未知";
         }
         nameData = new TextBitmapDataCreator();
         nameData.createText(showText,14,15461571,"normal",184,0,"center");
         nameData.needHorizontalCenter = false;
      }
      
      public function isContain(pX:int, pY:int) : Boolean
      {
         if(rect.contains(pX,pY))
         {
            return true;
         }
         return false;
      }
      
      public function setDrawContent(list:PlayListManager, scene:SceneManager) : void
      {
         if(change)
         {
            change.addToList(list,currentX + scene.bgX - 40,currentY + scene.bgY - 25);
         }
         if(nameData)
         {
            nameData.addToList(list,currentX + scene.bgX - 40,currentY + scene.bgY - 45);
         }
      }
      
      public function get position() : Point
      {
         return new Point(positionX,positionY);
      }
      
      public function refreshChange() : void
      {
         var sceneType:int = SceneConfig.getSceneType(targetId);
         switch(sceneType)
         {
            case 1:
            case 2:
            case 3:
               isShow = true;
               change = new BaseFrame();
               change.setInfo("../assets/images/Scene/attackChange",[42,2,0,15,0],true,[140,160]);
               break;
            default:
               isShow = false;
         }
      }
   }
}


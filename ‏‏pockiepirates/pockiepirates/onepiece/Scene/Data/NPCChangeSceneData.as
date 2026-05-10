package Scene.Data
{
   public class NPCChangeSceneData
   {
      
      public var currentY:int;
      
      public var targetX:int;
      
      public var targetY:int;
      
      public var targetId:int;
      
      public var sceneId:int;
      
      public var npcId:int;
      
      public var currentX:int;
      
      public function NPCChangeSceneData()
      {
         super();
      }
      
      public function resolveNPCChangeScene(info:Object) : void
      {
         npcId = info.cfgNpcId;
         targetId = info.cfgSceneId;
         targetX = info.sceneX;
         targetY = info.sceneY;
      }
   }
}


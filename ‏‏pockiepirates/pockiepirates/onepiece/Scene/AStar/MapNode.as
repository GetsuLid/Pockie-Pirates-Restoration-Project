package Scene.AStar
{
   public class MapNode
   {
      
      public var walkable:Boolean;
      
      public var f:Number;
      
      public var g:Number;
      
      public var h:Number;
      
      public var parent:MapNode;
      
      public var x:int;
      
      public var y:int;
      
      public function MapNode(i:int, j:int)
      {
         super();
         x = i;
         y = j;
      }
   }
}


package Scene.AStar
{
   import constant.Global;
   
   public class MapGrid
   {
      
      private static const _line:Number = 1;
      
      private static const _trangle:Number = Math.SQRT2;
      
      public var startNode:MapNode;
      
      public var Row:int;
      
      private var _closed:Array;
      
      public var leftNodeNum:int;
      
      public var Col:int;
      
      private var _grid:Array;
      
      public var targetX:int;
      
      public var targetY:int;
      
      private var _open:Array;
      
      public var endNode:MapNode;
      
      public function MapGrid(col:int, row:int)
      {
         super();
         Col = col;
         Row = row;
         _grid = new Array(col);
         for(var i:int = 0; i < col; i++)
         {
            _grid[i] = new Array(row);
         }
      }
      
      private function buildPath() : Array
      {
         var path:Array = [];
         path.push(endNode);
         var node:MapNode = endNode;
         while(node != startNode)
         {
            node = node.parent;
            path.unshift(node);
         }
         return path;
      }
      
      private function isOpen(node:MapNode) : Boolean
      {
         return _open.indexOf(node) != -1 ? true : false;
      }
      
      private function evaluate(node:MapNode) : Number
      {
         var w:int = Math.abs(node.x - endNode.x);
         var h:int = Math.abs(node.y - endNode.y);
         return Math.sqrt(Math.pow(w,2) + Math.pow(h,2));
      }
      
      private function findWalkableNode(x:int, y:int, nodes:Array) : MapNode
      {
         var i:int = 0;
         var j:int = 0;
         var node:MapNode = nodes[x][y];
         nodes[x][y] = null;
         if(node)
         {
            if(node.walkable)
            {
               return node;
            }
            for(i = x - 1; i <= x + 1; i++)
            {
               if(i >= 0)
               {
                  for(j = y - 1; j <= y + 1; j++)
                  {
                     if(!(j == y && i == x || j < 0))
                     {
                        node = findWalkableNode(i,j,nodes);
                        if(Boolean(node) && node.walkable)
                        {
                           break;
                        }
                     }
                  }
                  if(Boolean(node) && node.walkable)
                  {
                     break;
                  }
               }
            }
            return node;
         }
         return null;
      }
      
      public function getFirstWalkableNode(x:int, y:int) : MapNode
      {
         var nodes:Array = null;
         var i:int = 0;
         var node:MapNode = getNodeByPosition(x,y);
         if(Boolean(node) && node.walkable)
         {
            return null;
         }
         nodes = new Array();
         for(i = 0; i < _grid.length; i++)
         {
            nodes[i] = (_grid[i] as Array).concat();
         }
         if(node)
         {
            return findWalkableNode(node.x,node.y,nodes);
         }
         return findWalkableNode(1,1,nodes);
      }
      
      public function setNodes(info:Array) : void
      {
         var j:int = 0;
         for(var i:int = 0; i < Col; i++)
         {
            for(j = 0; j < Row; j++)
            {
               _grid[i][j] = new MapNode(i,j);
               _grid[i][j].walkable = Boolean(int(info.shift()));
            }
         }
      }
      
      private function isClosed(node:MapNode) : Boolean
      {
         return _closed.indexOf(node) != -1 ? true : false;
      }
      
      public function getNodeByPosition(x:int, y:int) : MapNode
      {
         var sx:int = Math.floor(x / Global.tile_width);
         var sy:int = Math.floor(y / Global.tile_height);
         return getNode(sx,sy);
      }
      
      public function findPath() : Array
      {
         var startx:int = 0;
         var endx:int = 0;
         var starty:int = 0;
         var endy:int = 0;
         var i:int = 0;
         var j:int = 0;
         var test:MapNode = null;
         var cost:Number = NaN;
         var g:Number = NaN;
         var h:Number = NaN;
         var f:Number = NaN;
         _open = [];
         _closed = [];
         startNode.g = 0;
         startNode.h = evaluate(startNode);
         startNode.f = startNode.h + startNode.g;
         var node:MapNode = startNode;
         while(node != endNode)
         {
            startx = Math.max(node.x - 1,0);
            endx = Math.min(node.x + 1,Col - 1);
            starty = Math.max(node.y - 1,0);
            endy = Math.min(node.y + 1,Row - 1);
            for(i = startx; i <= endx; i++)
            {
               for(j = starty; j <= endy; j++)
               {
                  test = _grid[i][j];
                  if(!(test == node || !test.walkable))
                  {
                     cost = _line;
                     if(test.x != node.x && test.y != node.y)
                     {
                        cost = _trangle;
                     }
                     g = cost + node.g;
                     h = evaluate(test);
                     f = g + h;
                     if(isOpen(test) || isClosed(test))
                     {
                        if(test.f > f)
                        {
                           test.g = g;
                           test.h = h;
                           test.f = f;
                           test.parent = node;
                        }
                     }
                     else
                     {
                        test.g = g;
                        test.h = h;
                        test.f = f;
                        test.parent = node;
                        _open.push(test);
                     }
                  }
               }
            }
            _closed.push(node);
            if(_open.length == 0)
            {
               return null;
            }
            _open.sortOn("f",Array.NUMERIC);
            node = _open.shift();
         }
         return buildPath();
      }
      
      public function getNode(x:int, y:int) : MapNode
      {
         if(x >= Col || y >= Row)
         {
            return null;
         }
         return _grid[x][y];
      }
   }
}


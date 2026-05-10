package navigation.aStar
{
   public class SearchRoad
   {
      
      private static var findA:Array;
      
      private static var endY:uint;
      
      private static var _num:int;
      
      private static var isPathFind:Boolean;
      
      private static var closeA:Array;
      
      private static var walkA:Array;
      
      private static var endX:uint;
      
      private static var openA:Array;
      
      private static var dirA:Array = [[1,0,10],[0,1,10],[-1,0,10],[0,-1,10],[1,1,14],[-1,1,14],[-1,-1,14],[1,-1,14]];
      
      public function SearchRoad()
      {
         super();
      }
      
      private static function setFindA(mapArr:Array) : void
      {
         var i:String = null;
         var j:String = null;
         findA = new Array();
         for(i in mapArr)
         {
            findA[i] = new Array();
            for(j in mapArr[i])
            {
               if(mapArr[i][j] == 0)
               {
                  findA[i][j] = 1;
               }
               else
               {
                  findA[i][j] = 0;
               }
            }
         }
      }
      
      public static function startSearch(mapArr:Array, ex:uint, ey:uint, sx:uint, sy:uint) : Array
      {
         var emptyArray:Array = null;
         endX = ex;
         endY = ey;
         isPathFind = false;
         setFindA(mapArr);
         openA = new Array();
         closeA = new Array();
         searchPath(sx,sy,sx,sy,0);
         if(isPathFind)
         {
            return getPath();
         }
         return emptyArray;
      }
      
      private static function searchPath(nx:uint, ny:uint, px:uint, py:uint, g:uint) : void
      {
         var hval:uint = 0;
         var gval:uint = 0;
         var min:uint = 0;
         var len:uint = 0;
         var n:uint = 0;
         var adjX:uint = 0;
         var adjY:uint = 0;
         var j:uint = 0;
         var m:int = 0;
         var moveToCloseA:Array = null;
         while(true)
         {
            hval = 0;
            gval = 0;
            min = 0;
            len = 0;
            findA[ny][nx] = 1;
            closeA.push([nx,ny,px,py]);
            for(n = 0; n < 8; n++)
            {
               adjX = nx + dirA[n][0];
               adjY = ny + dirA[n][1];
               if(!(adjX < 0 || adjX >= findA[0].length || adjY < 0 || adjY >= findA.length))
               {
                  if(adjX == endX && adjY == endY)
                  {
                     closeA.push([adjX,adjY,nx,ny]);
                     isPathFind = true;
                     return;
                  }
                  if(findA[adjY][adjX] == 0)
                  {
                     hval = 10 * (Math.abs(endX - adjX) + Math.abs(endY - adjY));
                     gval = g + dirA[n][2];
                     findA[adjY][adjX] = gval;
                     openA.push([adjX,adjY,nx,ny,gval + hval,gval]);
                  }
                  else if(findA[adjY][adjX] > 1)
                  {
                     gval = g + dirA[n][2];
                     if(gval < findA[adjY][adjX])
                     {
                        hval = 10 * (Math.abs(endX - adjX) + Math.abs(endY - adjY));
                        for(j = 1; j < openA.length; j++)
                        {
                           if(openA[j][0] == adjX && openA[j][1] == adjY)
                           {
                              openA[j] = [adjX,adjY,nx,ny,gval + hval,gval];
                              findA[adjY][adjX] = gval;
                              break;
                           }
                        }
                     }
                  }
               }
            }
            if(openA.length < 1)
            {
               break;
            }
            len = openA.length;
            for(m = 0; m < len; m++)
            {
               if(openA[min][4] > openA[m][4])
               {
                  min = uint(m);
               }
            }
            moveToCloseA = openA.splice(min,1);
            nx = uint(moveToCloseA[0][0]);
            ny = uint(moveToCloseA[0][1]);
            px = uint(moveToCloseA[0][2]);
            py = uint(moveToCloseA[0][3]);
            g = uint(moveToCloseA[0][5]);
         }
         isPathFind = false;
      }
      
      private static function getPath() : Array
      {
         var i:uint = closeA.length - 1;
         var n:uint = 0;
         walkA = new Array();
         walkA[0] = new Array(2);
         walkA[0][0] = closeA[i][0];
         walkA[0][1] = closeA[i][1];
         var px:uint = uint(closeA[i][2]);
         var py:uint = uint(closeA[i][3]);
         for(var j:* = int(i - 1); j >= 0; j--)
         {
            if(px == closeA[j][0] && py == closeA[j][1])
            {
               n++;
               walkA[n] = new Array(2);
               walkA[n][0] = closeA[j][0];
               walkA[n][1] = closeA[j][1];
               px = uint(closeA[j][2]);
               py = uint(closeA[j][3]);
            }
         }
         walkA.reverse();
         return walkA;
      }
   }
}


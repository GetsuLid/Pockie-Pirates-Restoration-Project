package mx.formatters
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class StringFormatter
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var reqFormat:String;
      
      private var extractToken:Function;
      
      private var patternInfo:Array;
      
      public function StringFormatter(format:String, tokens:String, extractTokenFunc:Function)
      {
         super();
         formatPattern(format,tokens);
         extractToken = extractTokenFunc;
      }
      
      public function formatValue(value:Object) : String
      {
         var curTokenInfo:Object = patternInfo[0];
         var result:String = reqFormat.substring(0,curTokenInfo.begin) + extractToken(value,curTokenInfo);
         var lastTokenInfo:Object = curTokenInfo;
         var n:int = int(patternInfo.length);
         for(var i:int = 1; i < n; i++)
         {
            curTokenInfo = patternInfo[i];
            result += reqFormat.substring(lastTokenInfo.end,curTokenInfo.begin) + extractToken(value,curTokenInfo);
            lastTokenInfo = curTokenInfo;
         }
         if(lastTokenInfo.end > 0 && lastTokenInfo.end != reqFormat.length)
         {
            result += reqFormat.substring(lastTokenInfo.end);
         }
         return result;
      }
      
      private function compareValues(a:Object, b:Object) : int
      {
         if(a.begin > b.begin)
         {
            return 1;
         }
         if(a.begin < b.begin)
         {
            return -1;
         }
         return 0;
      }
      
      private function formatPattern(format:String, tokens:String) : void
      {
         var start:int = 0;
         var finish:int = 0;
         var index:int = 0;
         var tokenArray:Array = tokens.split(",");
         reqFormat = format;
         patternInfo = [];
         var n:int = int(tokenArray.length);
         for(var i:int = 0; i < n; i++)
         {
            start = reqFormat.indexOf(tokenArray[i]);
            if(start >= 0 && start < reqFormat.length)
            {
               finish = reqFormat.lastIndexOf(tokenArray[i]);
               finish = finish >= 0 ? int(finish + 1) : int(start + 1);
               patternInfo.splice(index,0,{
                  "token":tokenArray[i],
                  "begin":start,
                  "end":finish
               });
               index++;
            }
         }
         patternInfo.sort(compareValues);
      }
   }
}


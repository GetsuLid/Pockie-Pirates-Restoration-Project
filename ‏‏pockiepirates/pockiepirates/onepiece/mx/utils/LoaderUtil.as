package mx.utils
{
   import flash.display.LoaderInfo;
   
   public class LoaderUtil
   {
      
      public function LoaderUtil()
      {
         super();
      }
      
      public static function normalizeURL(loaderInfo:LoaderInfo) : String
      {
         var url:String = loaderInfo.url;
         var results:Array = url.split("/[[DYNAMIC]]/");
         return results[0];
      }
      
      public static function createAbsoluteURL(rootURL:String, url:String) : String
      {
         var lastIndex:int = 0;
         var parentIndex:int = 0;
         var absoluteURL:String = url;
         if(!(url.indexOf(":") > -1 || url.indexOf("/") == 0 || url.indexOf("\\") == 0))
         {
            if(rootURL)
            {
               lastIndex = Math.max(rootURL.lastIndexOf("\\"),rootURL.lastIndexOf("/"));
               if(lastIndex <= 8)
               {
                  rootURL += "/";
                  lastIndex = rootURL.length - 1;
               }
               if(url.indexOf("./") == 0)
               {
                  url = url.substring(2);
               }
               else
               {
                  while(url.indexOf("../") == 0)
                  {
                     url = url.substring(3);
                     parentIndex = Math.max(rootURL.lastIndexOf("\\",lastIndex - 1),rootURL.lastIndexOf("/",lastIndex - 1));
                     if(parentIndex <= 8)
                     {
                        parentIndex = lastIndex;
                     }
                     lastIndex = parentIndex;
                  }
               }
               if(lastIndex != -1)
               {
                  absoluteURL = rootURL.substr(0,lastIndex + 1) + url;
               }
            }
         }
         return absoluteURL;
      }
   }
}


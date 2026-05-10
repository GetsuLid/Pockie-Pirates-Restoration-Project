package mx.messaging.config
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class LoaderConfig
   {
      
      mx_internal static var _parameters:Object;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      mx_internal static var _url:String = null;
      
      public function LoaderConfig()
      {
         super();
      }
      
      public static function get url() : String
      {
         return _url;
      }
      
      public static function get parameters() : Object
      {
         return _parameters;
      }
   }
}


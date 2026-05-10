package data
{
   import flash.net.LocalConnection;
   
   public class Recycle
   {
      
      public function Recycle()
      {
         super();
      }
      
      public static function recycle() : void
      {
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
         }
         catch(err:Error)
         {
            trace("======gc memery");
         }
      }
   }
}


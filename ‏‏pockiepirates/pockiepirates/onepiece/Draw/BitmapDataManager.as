package Draw
{
   import Draw.Data.BitmapDataStore;
   import flash.utils.Dictionary;
   
   public class BitmapDataManager
   {
      
      public static const STATE_NOLOAD:int = 0;
      
      public static const STATE_ONLOADING:int = 1;
      
      public static const STATE_LOADED:int = 2;
      
      private static var _me:BitmapDataManager = new BitmapDataManager();
      
      private var stores:Dictionary = new Dictionary();
      
      public function BitmapDataManager()
      {
         super();
      }
      
      public static function getInstance() : BitmapDataManager
      {
         return _me;
      }
      
      public function getStoreDataByUrl(url:String, isSpecial:Boolean, size:Array) : BitmapDataStore
      {
         var bs:BitmapDataStore = null;
         if(stores.hasOwnProperty(url))
         {
            bs = stores[url];
            bs.active();
            return bs;
         }
         bs = new BitmapDataStore(url,isSpecial,size);
         stores[url] = bs;
         return bs;
      }
   }
}


package Draw.Data
{
   import Draw.BitmapDataManager;
   import constant.Global;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   
   public class BitmapDataStore
   {
      
      private var makeCount:int = 0;
      
      private var datas:Array = new Array();
      
      public var state:int;
      
      private var mc:MovieClip;
      
      public var loadFinish:Boolean = false;
      
      public var inuse:Boolean = true;
      
      private var dataLoader:URLLoader;
      
      public var fail:Boolean = false;
      
      private var load:Loader;
      
      private var _size:Array;
      
      private var totalframe:int;
      
      private var _isSpecial:Boolean;
      
      private var _url:String;
      
      private var rawData:ByteArray;
      
      public function BitmapDataStore(url:String, isSpecial:Boolean, size:Array)
      {
         super();
         _isSpecial = isSpecial;
         _size = size;
         _url = url;
         dataLoader = new URLLoader();
         dataLoader.dataFormat = URLLoaderDataFormat.BINARY;
         dataLoader.addEventListener(Event.COMPLETE,onDataLoaded);
         dataLoader.addEventListener(IOErrorEvent.IO_ERROR,error);
         dataLoader.load(new URLRequest(Global.resourceServer + url + ".swf"));
         load = new Loader();
         load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,error);
         state = BitmapDataManager.STATE_NOLOAD;
      }
      
      public function active() : void
      {
         if(Boolean(!loadFinish) && Boolean(rawData) && state == BitmapDataManager.STATE_NOLOAD)
         {
            state = BitmapDataManager.STATE_ONLOADING;
            load.loadBytes(rawData);
         }
      }
      
      private function makeBitmapData(index:int) : void
      {
         var bitMapData:BitmapData = null;
         var bd:BitmapData = null;
         var matrix:Matrix = null;
         if(index <= totalframe)
         {
            mc.gotoAndStop(index);
            if(_isSpecial)
            {
               bitMapData = new BitmapData(_size[0],_size[1],true,0);
            }
            else
            {
               bitMapData = new BitmapData(mc.width,mc.height,true,0);
            }
            bitMapData.draw(mc);
         }
         else
         {
            bd = datas[index - totalframe - 1];
            if(bd == null)
            {
               makeBitmapData(index - totalframe);
               bd = datas[index - totalframe - 1];
            }
            matrix = new Matrix(-1,0,0,1,bd.width,0);
            bitMapData = new BitmapData(bd.width,bd.height,true,0);
            bitMapData.draw(bd,matrix);
         }
         datas[index - 1] = bitMapData;
         ++makeCount;
         if(makeCount >= totalframe * 2)
         {
            mc = null;
         }
      }
      
      private function error(e:IOErrorEvent) : void
      {
         fail = true;
      }
      
      private function onDataLoaded(e:Event) : void
      {
         rawData = dataLoader.data;
         dataLoader.removeEventListener(Event.COMPLETE,onDataLoaded);
         dataLoader.removeEventListener(IOErrorEvent.IO_ERROR,error);
         active();
      }
      
      public function getBitmapdata(currentframe:int) : BitmapData
      {
         var result:BitmapData = datas[currentframe - 1];
         if(result == null)
         {
            if(loadFinish == true)
            {
               makeBitmapData(currentframe);
               result = datas[currentframe - 1];
            }
            else
            {
               active();
            }
         }
         return result;
      }
      
      public function dropBitmapdata() : void
      {
         var bitmapdata:BitmapData = null;
         for each(bitmapdata in datas)
         {
            bitmapdata.dispose();
         }
         datas.length = 0;
         makeCount = 0;
         state = BitmapDataManager.STATE_NOLOAD;
         loadFinish = false;
         inuse = false;
         mc = null;
      }
      
      private function loadComplete(e:Event) : void
      {
         mc = load.content as MovieClip;
         totalframe = mc.totalFrames;
         load.unload();
         loadFinish = true;
         state = BitmapDataManager.STATE_LOADED;
      }
   }
}


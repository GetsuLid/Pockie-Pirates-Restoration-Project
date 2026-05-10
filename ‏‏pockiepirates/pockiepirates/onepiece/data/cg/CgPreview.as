package data.cg
{
   import ExtendComp.ForcibleLoader;
   import constant.Global;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import manager.DataManager;
   
   public class CgPreview
   {
      
      public var isLoad:Boolean;
      
      public var mc:MovieClip;
      
      private var fLoader:ForcibleLoader;
      
      public function CgPreview()
      {
         super();
      }
      
      private function gg2(e:Event) : void
      {
         mc = new MovieClip();
         mc = e.target.content as MovieClip;
         mc.gotoAndStop(1);
         isLoad = false;
         trace("CG加载完毕");
      }
      
      public function startLoader() : void
      {
         isLoad = true;
         var loader:Loader = new Loader();
         fLoader = new ForcibleLoader(loader);
         fLoader.load(new URLRequest(Global.resourceServer + "../assets/images/Movie/" + DataManager.Instance.movieTask + ".swf"));
         fLoader.addEventListener("over",gg);
      }
      
      private function gg(e:Event) : void
      {
         fLoader.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,gg2);
      }
   }
}


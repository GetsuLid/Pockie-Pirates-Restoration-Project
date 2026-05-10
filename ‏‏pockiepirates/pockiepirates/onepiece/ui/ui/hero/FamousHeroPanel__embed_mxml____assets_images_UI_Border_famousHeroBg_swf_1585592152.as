package ui.hero
{
   import flash.utils.ByteArray;
   import mx.core.MovieClipLoaderAsset;
   
   public class FamousHeroPanel__embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152 extends MovieClipLoaderAsset
   {
      
      private static var bytes:ByteArray = null;
      
      public var dataClass:Class = FamousHeroPanel__embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152_dataClass;
      
      public function FamousHeroPanel__embed_mxml____assets_images_UI_Border_famousHeroBg_swf_1585592152()
      {
         super();
         initialWidth = 13280 / 20;
         initialHeight = 10360 / 20;
      }
      
      override public function get movieClipData() : ByteArray
      {
         if(bytes == null)
         {
            bytes = ByteArray(new dataClass());
         }
         return bytes;
      }
   }
}


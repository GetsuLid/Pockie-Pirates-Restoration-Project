package ui
{
   import mx.modules.Module;
   
   public class SceneModuleBase extends Module
   {
      
      private var _moduleIndex:int;
      
      public var url:String;
      
      public var isOnly:Boolean = true;
      
      public var isRemeber:Boolean = true;
      
      public function SceneModuleBase()
      {
         super();
         width = 1000;
         height = 600;
         layout = "absolute";
         verticalScrollPolicy = "off";
         horizontalScrollPolicy = "off";
      }
      
      public function hide() : void
      {
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      public function set moduleIndex(idx:int) : void
      {
         _moduleIndex = idx;
      }
      
      public function get moduleIndex() : int
      {
         return _moduleIndex;
      }
      
      public function refresh() : void
      {
      }
      
      public function show() : void
      {
      }
   }
}


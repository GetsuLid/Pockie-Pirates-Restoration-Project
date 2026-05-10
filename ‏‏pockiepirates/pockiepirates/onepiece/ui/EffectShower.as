package ui
{
   import flash.display.MovieClip;
   
   public class EffectShower
   {
      
      public var autoHide:Boolean = true;
      
      private var _func:Function;
      
      public var mc:MovieClip;
      
      public var index:int;
      
      public function EffectShower(func:Function = null, _index:int = 0)
      {
         super();
         _func = func;
         index = _index;
      }
      
      public function removeShower() : void
      {
         if(Boolean(mc) && Boolean(mc.parent))
         {
            mc.parent.removeChild(mc);
         }
         mc = null;
      }
      
      public function stop() : void
      {
         if(_func != null)
         {
            _func(this);
         }
         if(autoHide)
         {
            removeShower();
         }
      }
   }
}


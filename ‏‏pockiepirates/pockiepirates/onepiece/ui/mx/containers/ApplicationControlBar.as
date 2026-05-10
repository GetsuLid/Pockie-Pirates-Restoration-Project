package mx.containers
{
   import flash.events.Event;
   import mx.core.Application;
   import mx.core.mx_internal;
   import mx.styles.IStyleClient;
   
   use namespace mx_internal;
   
   public class ApplicationControlBar extends ControlBar
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var dockChanged:Boolean = false;
      
      private var _dock:Boolean = false;
      
      public function ApplicationControlBar()
      {
         super();
      }
      
      public function set dock(value:Boolean) : void
      {
         if(_dock != value)
         {
            _dock = value;
            dockChanged = true;
            invalidateProperties();
            dispatchEvent(new Event("dockChanged"));
         }
      }
      
      public function resetDock(value:Boolean) : void
      {
         _dock = !value;
         dock = value;
      }
      
      [Bindable("dockChanged")]
      public function get dock() : Boolean
      {
         return _dock;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(dockChanged)
         {
            dockChanged = false;
            if(parent is Application)
            {
               Application(parent).mx_internal::dockControlBar(this,_dock);
            }
         }
      }
      
      override public function set enabled(value:Boolean) : void
      {
         var oldBlocker:Object = mx_internal::blocker;
         super.enabled = value;
         if(Boolean(mx_internal::blocker) && mx_internal::blocker != oldBlocker)
         {
            if(mx_internal::blocker is IStyleClient)
            {
               IStyleClient(mx_internal::blocker).setStyle("borderStyle","applicationControlBar");
            }
         }
      }
   }
}


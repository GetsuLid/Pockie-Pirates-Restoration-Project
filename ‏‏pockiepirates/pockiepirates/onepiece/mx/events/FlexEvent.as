package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class FlexEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const ADD:String = "add";
      
      public static const APPLICATION_COMPLETE:String = "applicationComplete";
      
      public static const BUTTON_DOWN:String = "buttonDown";
      
      public static const CREATION_COMPLETE:String = "creationComplete";
      
      public static const CURSOR_UPDATE:String = "cursorUpdate";
      
      public static const DATA_CHANGE:String = "dataChange";
      
      public static const ENTER:String = "enter";
      
      public static const ENTER_FRAME:String = "flexEventEnterFrame";
      
      public static const ENTER_STATE:String = "enterState";
      
      public static const EXIT_STATE:String = "exitState";
      
      public static const HIDE:String = "hide";
      
      public static const IDLE:String = "idle";
      
      public static const INIT_COMPLETE:String = "initComplete";
      
      public static const INIT_PROGRESS:String = "initProgress";
      
      public static const INITIALIZE:String = "initialize";
      
      public static const INVALID:String = "invalid";
      
      public static const LOADING:String = "loading";
      
      public static const PREINITIALIZE:String = "preinitialize";
      
      public static const PRELOADER_DONE:String = "preloaderDone";
      
      public static const RENDER:String = "flexEventRender";
      
      public static const REMOVE:String = "remove";
      
      public static const REPEAT:String = "repeat";
      
      public static const REPEAT_END:String = "repeatEnd";
      
      public static const REPEAT_START:String = "repeatStart";
      
      public static const SHOW:String = "show";
      
      public static const TRANSFORM_CHANGE:String = "transformChange";
      
      public static const UPDATE_COMPLETE:String = "updateComplete";
      
      public static const URL_CHANGED:String = "urlChanged";
      
      public static const VALID:String = "valid";
      
      public static const VALUE_COMMIT:String = "valueCommit";
      
      public function FlexEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new FlexEvent(type,bubbles,cancelable);
      }
   }
}


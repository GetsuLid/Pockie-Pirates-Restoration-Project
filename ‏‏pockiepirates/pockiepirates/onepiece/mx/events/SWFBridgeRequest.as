package mx.events
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class SWFBridgeRequest extends Event
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const ACTIVATE_POP_UP_REQUEST:String = "activatePopUpRequest";
      
      public static const CAN_ACTIVATE_POP_UP_REQUEST:String = "canActivateRequestPopUpRequest";
      
      public static const DEACTIVATE_POP_UP_REQUEST:String = "deactivatePopUpRequest";
      
      public static const GET_VISIBLE_RECT_REQUEST:String = "getVisibleRectRequest";
      
      public static const IS_BRIDGE_CHILD_REQUEST:String = "isBridgeChildRequest";
      
      public static const INVALIDATE_REQUEST:String = "invalidateRequest";
      
      public static const HIDE_MOUSE_CURSOR_REQUEST:String = "hideMouseCursorRequest";
      
      public static const SHOW_MOUSE_CURSOR_REQUEST:String = "showMouseCursorRequest";
      
      public static const RESET_MOUSE_CURSOR_REQUEST:String = "resetMouseCursorRequest";
      
      public static const ACTIVATE_FOCUS_REQUEST:String = "activateFocusRequest";
      
      public static const DEACTIVATE_FOCUS_REQUEST:String = "deactivateFocusRequest";
      
      public static const MOVE_FOCUS_REQUEST:String = "moveFocusRequest";
      
      public static const CREATE_MODAL_WINDOW_REQUEST:String = "createModalWindowRequest";
      
      public static const SHOW_MODAL_WINDOW_REQUEST:String = "showModalWindowRequest";
      
      public static const HIDE_MODAL_WINDOW_REQUEST:String = "hideModalWindowRequest";
      
      public static const ADD_POP_UP_REQUEST:String = "addPopUpRequest";
      
      public static const REMOVE_POP_UP_REQUEST:String = "removePopUpRequest";
      
      public static const ADD_POP_UP_PLACE_HOLDER_REQUEST:String = "addPopUpPlaceHolderRequest";
      
      public static const REMOVE_POP_UP_PLACE_HOLDER_REQUEST:String = "removePopUpPlaceHolderRequest";
      
      public static const GET_SIZE_REQUEST:String = "getSizeRequest";
      
      public static const SET_ACTUAL_SIZE_REQUEST:String = "setActualSizeRequest";
      
      public static const SET_SHOW_FOCUS_INDICATOR_REQUEST:String = "setShowFocusIndicatorRequest";
      
      public var requestor:IEventDispatcher;
      
      public var data:Object;
      
      public function SWFBridgeRequest(type:String, bubbles:Boolean = false, cancelable:Boolean = false, requestor:IEventDispatcher = null, data:Object = null)
      {
         super(type,bubbles,cancelable);
         this.requestor = requestor;
         this.data = data;
      }
      
      public static function marshal(event:Event) : SWFBridgeRequest
      {
         var eventObj:Object = event;
         return new SWFBridgeRequest(eventObj.type,eventObj.bubbles,eventObj.cancelable,eventObj.requestor,eventObj.data);
      }
      
      override public function clone() : Event
      {
         return new SWFBridgeRequest(type,bubbles,cancelable,requestor,data);
      }
   }
}


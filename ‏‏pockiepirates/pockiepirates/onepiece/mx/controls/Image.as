package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.IDataRenderer;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class Image extends SWFLoader implements IDataRenderer, IDropInListItemRenderer, IListItemRenderer
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _listData:BaseListData;
      
      private var sourceSet:Boolean;
      
      private var _data:Object;
      
      private var settingBrokenImage:Boolean;
      
      private var makeContentVisible:Boolean = false;
      
      public function Image()
      {
         super();
         tabChildren = false;
         tabEnabled = true;
         showInAutomationHierarchy = true;
      }
      
      override mx_internal function contentLoaderInfo_completeEventHandler(event:Event) : void
      {
         var obj:DisplayObject = DisplayObject(event.target.loader);
         super.mx_internal::contentLoaderInfo_completeEventHandler(event);
         obj.visible = false;
         makeContentVisible = true;
         invalidateDisplayList();
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      public function set data(value:Object) : void
      {
         _data = value;
         if(!sourceSet)
         {
            source = listData ? listData.label : data;
            sourceSet = false;
         }
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      override public function invalidateSize() : void
      {
         if(Boolean(data) && settingBrokenImage)
         {
            return;
         }
         super.invalidateSize();
      }
      
      [Bindable("sourceChanged")]
      override public function set source(value:Object) : void
      {
         settingBrokenImage = value == getStyle("brokenImageSkin");
         sourceSet = !settingBrokenImage;
         super.source = value;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(makeContentVisible && Boolean(contentHolder))
         {
            contentHolder.visible = true;
            makeContentVisible = false;
         }
      }
   }
}


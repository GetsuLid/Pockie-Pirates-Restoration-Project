package mx.controls.listClasses
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IToolTip;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.InterManagerRequest;
   import mx.events.ToolTipEvent;
   import mx.managers.ISystemManager;
   
   use namespace mx_internal;
   
   public class ListItemRenderer extends UIComponent implements IDataRenderer, IDropInListItemRenderer, IListItemRenderer, IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _listData:ListData;
      
      private var _data:Object;
      
      protected var label:IUITextField;
      
      private var listOwner:ListBase;
      
      protected var icon:IFlexDisplayObject;
      
      public function ListItemRenderer()
      {
         super();
         addEventListener(ToolTipEvent.TOOL_TIP_SHOW,toolTipShowHandler);
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      mx_internal function getLabel() : IUITextField
      {
         return label;
      }
      
      override protected function commitProperties() : void
      {
         var iconClass:Class = null;
         super.commitProperties();
         var childIndex:int = -1;
         if(hasFontContextChanged() && label != null)
         {
            childIndex = getChildIndex(DisplayObject(label));
            removeChild(DisplayObject(label));
            label = null;
         }
         if(!label)
         {
            label = IUITextField(createInFontContext(UITextField));
            label.styleName = this;
            if(childIndex == -1)
            {
               addChild(DisplayObject(label));
            }
            else
            {
               addChildAt(DisplayObject(label),childIndex);
            }
         }
         if(icon)
         {
            removeChild(DisplayObject(icon));
            icon = null;
         }
         if(_data != null)
         {
            listOwner = ListBase(_listData.owner);
            if(_listData.icon)
            {
               iconClass = _listData.icon;
               icon = new iconClass();
               addChild(DisplayObject(icon));
            }
            label.text = _listData.label ? _listData.label : " ";
            label.multiline = listOwner.variableRowHeight;
            label.wordWrap = listOwner.wordWrap;
            if(listOwner.showDataTips)
            {
               if(label.textWidth > label.width || listOwner.dataTipFunction != null)
               {
                  toolTip = listOwner.itemToDataTip(_data);
               }
               else
               {
                  toolTip = null;
               }
            }
            else
            {
               toolTip = null;
            }
         }
         else
         {
            label.text = " ";
            toolTip = null;
         }
      }
      
      protected function toolTipShowHandler(event:ToolTipEvent) : void
      {
         var screen:Rectangle = null;
         var request:InterManagerRequest = null;
         var toolTip:IToolTip = event.toolTip;
         var sm:ISystemManager = systemManager.topLevelSystemManager;
         var sbRoot:DisplayObject = sm.getSandboxRoot();
         var pt:Point = new Point(0,0);
         pt = label.localToGlobal(pt);
         pt = sbRoot.globalToLocal(pt);
         toolTip.move(pt.x,pt.y + (height - toolTip.height) / 2);
         if(sm != sbRoot)
         {
            request = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"getVisibleApplicationRect");
            sbRoot.dispatchEvent(request);
            screen = Rectangle(request.value);
         }
         else
         {
            screen = sm.getVisibleApplicationRect();
         }
         var screenRight:Number = screen.x + screen.width;
         pt.x = toolTip.x;
         pt.y = toolTip.y;
         pt = sbRoot.localToGlobal(pt);
         if(pt.x + toolTip.width > screenRight)
         {
            toolTip.move(toolTip.x - (pt.x + toolTip.width - screenRight),toolTip.y);
         }
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = ListData(value);
         invalidateProperties();
      }
      
      public function set data(value:Object) : void
      {
         _data = value;
         invalidateProperties();
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            if(!label)
            {
               return 0;
            }
            return label.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return label.y + label.baselinePosition;
      }
      
      override protected function measure() : void
      {
         super.measure();
         var w:Number = 0;
         if(icon)
         {
            w = icon.measuredWidth;
         }
         if(label.width < 4 || label.height < 4)
         {
            label.width = 4;
            label.height = 16;
         }
         if(isNaN(explicitWidth))
         {
            w += label.getExplicitOrMeasuredWidth();
            measuredWidth = w;
            measuredHeight = label.getExplicitOrMeasuredHeight();
         }
         else
         {
            measuredWidth = explicitWidth;
            label.setActualSize(Math.max(explicitWidth - w,4),label.height);
            measuredHeight = label.getExplicitOrMeasuredHeight();
            if(Boolean(icon) && icon.measuredHeight > measuredHeight)
            {
               measuredHeight = icon.measuredHeight;
            }
         }
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!label)
         {
            label = IUITextField(createInFontContext(UITextField));
            label.styleName = this;
            addChild(DisplayObject(label));
         }
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var labelColor:Number = NaN;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var startX:Number = 0;
         if(icon)
         {
            icon.x = startX;
            startX = icon.x + icon.measuredWidth;
            icon.setActualSize(icon.measuredWidth,icon.measuredHeight);
         }
         label.x = startX;
         label.setActualSize(unscaledWidth - startX,measuredHeight);
         var verticalAlign:String = getStyle("verticalAlign");
         if(verticalAlign == "top")
         {
            label.y = 0;
            if(icon)
            {
               icon.y = 0;
            }
         }
         else if(verticalAlign == "bottom")
         {
            label.y = unscaledHeight - label.height + 2;
            if(icon)
            {
               icon.y = unscaledHeight - icon.height;
            }
         }
         else
         {
            label.y = (unscaledHeight - label.height) / 2;
            if(icon)
            {
               icon.y = (unscaledHeight - icon.height) / 2;
            }
         }
         if(Boolean(data) && Boolean(parent))
         {
            if(!enabled)
            {
               labelColor = getStyle("disabledColor");
            }
            else if(listOwner.isItemHighlighted(listData.uid))
            {
               labelColor = getStyle("textRollOverColor");
            }
            else if(listOwner.isItemSelected(listData.uid))
            {
               labelColor = getStyle("textSelectedColor");
            }
            else
            {
               labelColor = getStyle("color");
            }
            label.setColor(labelColor);
         }
      }
   }
}


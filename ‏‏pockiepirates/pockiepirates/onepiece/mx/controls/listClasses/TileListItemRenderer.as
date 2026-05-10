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
   
   public class TileListItemRenderer extends UIComponent implements IDataRenderer, IDropInListItemRenderer, IListItemRenderer, IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var iconOnly:Boolean = false;
      
      private var _listData:ListData;
      
      private var _data:Object;
      
      protected var label:IUITextField;
      
      private var listOwner:TileBase;
      
      protected var icon:IFlexDisplayObject;
      
      private var iconClass:Class;
      
      public function TileListItemRenderer()
      {
         super();
         addEventListener(ToolTipEvent.TOOL_TIP_SHOW,toolTipShowHandler);
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var startY:Number = NaN;
         var labelColor:Number = NaN;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var verticalGap:Number = iconOnly ? 0 : Number(getStyle("verticalGap"));
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingRight:Number = getStyle("paddingRight");
         if(icon)
         {
            icon.width = Math.min(unscaledWidth - (paddingLeft + paddingRight),icon.measuredWidth);
            icon.height = Math.min(Math.max(unscaledHeight - verticalGap - label.getExplicitOrMeasuredHeight(),0),icon.measuredHeight);
            icon.x = paddingLeft + (unscaledWidth - paddingLeft - paddingRight - icon.width) / 2;
         }
         label.width = unscaledWidth - (paddingLeft + paddingRight);
         label.height = Math.min(label.getExplicitOrMeasuredHeight(),icon ? Math.max(unscaledHeight - verticalGap - icon.height,0) : unscaledHeight);
         label.x = paddingLeft;
         if(Boolean(listOwner) && listOwner.showDataTips)
         {
            if(Boolean(label.textWidth > label.width) || Boolean(listOwner.dataTipField && listOwner.dataTipField != "label") || listOwner.dataTipFunction != null)
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
         var totalHeight:Number = Number(label.height);
         if(icon)
         {
            totalHeight += icon.height + verticalGap;
         }
         var verticalAlign:String = getStyle("verticalAlign");
         if(verticalAlign == "top")
         {
            startY = 0;
            if(icon)
            {
               icon.y = startY;
               startY += verticalGap + icon.height;
            }
            label.y = startY;
         }
         else if(verticalAlign == "bottom")
         {
            startY = unscaledHeight - label.height;
            label.y = startY;
            if(icon)
            {
               startY -= verticalGap + icon.height;
               icon.y = startY;
            }
         }
         else
         {
            startY = (unscaledHeight - totalHeight) / 2;
            if(icon)
            {
               icon.y = startY;
               startY += verticalGap + icon.height;
            }
            label.y = startY;
         }
         if(Boolean(data) && Boolean(parent))
         {
            if(!enabled)
            {
               labelColor = getStyle("disabledColor");
            }
            else if(listOwner.isItemSelected(listData.uid))
            {
               labelColor = getStyle("textSelectedColor");
            }
            else if(listOwner.isItemHighlighted(listData.uid))
            {
               labelColor = getStyle("textRollOverColor");
            }
            else
            {
               labelColor = getStyle("color");
            }
            label.setColor(labelColor);
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
      
      mx_internal function getLabel() : IUITextField
      {
         return label;
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = ListData(value);
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var index:int = 0;
         var newIconClass:Class = null;
         super.commitProperties();
         if(hasFontContextChanged() && label != null)
         {
            index = getChildIndex(DisplayObject(label));
            removeLabel();
            createLabel(index);
         }
         if(Boolean(icon) && !_data)
         {
            removeChild(DisplayObject(icon));
            icon = null;
            iconClass = null;
         }
         if(_data)
         {
            listOwner = TileBase(_listData.owner);
            if(_listData.icon)
            {
               newIconClass = _listData.icon;
               if(iconClass != newIconClass)
               {
                  iconClass = newIconClass;
                  if(icon)
                  {
                     removeChild(DisplayObject(icon));
                  }
                  icon = new iconClass();
                  addChild(DisplayObject(icon));
               }
            }
            label.text = _listData.label;
            label.multiline = listOwner.variableRowHeight;
            label.wordWrap = listOwner.wordWrap;
         }
         else
         {
            label.text = " ";
            toolTip = null;
         }
      }
      
      public function set data(value:Object) : void
      {
         _data = value;
         invalidateProperties();
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      mx_internal function createLabel(childIndex:int) : void
      {
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
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            super.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return label.y + label.baselinePosition;
      }
      
      override protected function measure() : void
      {
         var paddingLeft:Number = NaN;
         var paddingRight:Number = NaN;
         super.measure();
         var h:Number = 0;
         if(icon)
         {
            h += icon.measuredHeight;
         }
         if(label.text == "" || label.text == " " || label.text == null)
         {
            label.explicitHeight = 0;
            iconOnly = true;
         }
         else
         {
            label.explicitHeight = NaN;
            h += getStyle("verticalGap");
            iconOnly = false;
         }
         measuredHeight = label.getExplicitOrMeasuredHeight() + h;
         paddingLeft = getStyle("paddingLeft");
         paddingRight = getStyle("paddingRight");
         measuredWidth = label.getExplicitOrMeasuredWidth() + paddingLeft + paddingRight;
         if(Boolean(icon) && icon.measuredWidth + paddingLeft + paddingRight > measuredWidth)
         {
            measuredWidth = icon.measuredWidth + paddingLeft + paddingRight;
         }
      }
      
      mx_internal function removeLabel() : void
      {
         if(label)
         {
            removeChild(DisplayObject(label));
            label = null;
         }
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         createLabel(-1);
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
   }
}


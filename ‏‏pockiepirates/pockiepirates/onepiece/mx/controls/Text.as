package mx.controls
{
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class Text extends Label
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var widthChanged:Boolean = true;
      
      private var lastUnscaledWidth:Number = NaN;
      
      public function Text()
      {
         super();
         selectable = true;
         truncateToFit = false;
         addEventListener(FlexEvent.UPDATE_COMPLETE,updateCompleteHandler);
      }
      
      private function measureUsingWidth(w:Number) : void
      {
         var paddingLeft:Number = NaN;
         var paddingTop:Number = NaN;
         var paddingBottom:Number = NaN;
         var oldWordWrap:Boolean = false;
         paddingLeft = getStyle("paddingLeft");
         paddingTop = getStyle("paddingTop");
         var paddingRight:Number = getStyle("paddingRight");
         paddingBottom = getStyle("paddingBottom");
         textField.validateNow();
         textField.autoSize = "left";
         if(!isNaN(w))
         {
            textField.width = w - paddingLeft - paddingRight;
            measuredWidth = Math.ceil(textField.textWidth) + UITextField.TEXT_WIDTH_PADDING;
            measuredHeight = Math.ceil(textField.textHeight) + UITextField.TEXT_HEIGHT_PADDING;
         }
         else
         {
            oldWordWrap = textField.wordWrap;
            textField.wordWrap = false;
            measuredWidth = Math.ceil(textField.textWidth) + UITextField.TEXT_WIDTH_PADDING;
            measuredHeight = Math.ceil(textField.textHeight) + UITextField.TEXT_HEIGHT_PADDING;
            textField.wordWrap = oldWordWrap;
         }
         textField.autoSize = "none";
         measuredWidth += paddingLeft + paddingRight;
         measuredHeight += paddingTop + paddingBottom;
         if(isNaN(explicitWidth))
         {
            measuredMinWidth = DEFAULT_MEASURED_MIN_WIDTH;
            measuredMinHeight = DEFAULT_MEASURED_MIN_HEIGHT;
         }
         else
         {
            measuredMinWidth = measuredWidth;
            measuredMinHeight = measuredHeight;
         }
      }
      
      override public function set percentWidth(value:Number) : void
      {
         if(value != percentWidth)
         {
            widthChanged = true;
            invalidateProperties();
            invalidateSize();
         }
         super.percentWidth = value;
      }
      
      override public function set explicitWidth(value:Number) : void
      {
         if(value != explicitWidth)
         {
            widthChanged = true;
            invalidateProperties();
            invalidateSize();
         }
         super.explicitWidth = value;
      }
      
      private function updateCompleteHandler(event:FlexEvent) : void
      {
         lastUnscaledWidth = NaN;
      }
      
      override protected function childrenCreated() : void
      {
         super.childrenCreated();
         textField.wordWrap = true;
         textField.multiline = true;
         textField.mouseWheelEnabled = false;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(widthChanged)
         {
            textField.wordWrap = !isNaN(percentWidth) || !isNaN(explicitWidth);
            widthChanged = false;
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var firstTime:Boolean = false;
         if(isSpecialCase())
         {
            firstTime = isNaN(lastUnscaledWidth) || lastUnscaledWidth != unscaledWidth;
            lastUnscaledWidth = unscaledWidth;
            if(firstTime)
            {
               invalidateSize();
               return;
            }
         }
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingTop:Number = getStyle("paddingTop");
         var paddingRight:Number = getStyle("paddingRight");
         var paddingBottom:Number = getStyle("paddingBottom");
         textField.setActualSize(unscaledWidth - paddingLeft - paddingRight,unscaledHeight - paddingTop - paddingBottom);
         textField.x = paddingLeft;
         textField.y = paddingTop;
         if(Math.floor(width) < Math.floor(measuredWidth))
         {
            textField.wordWrap = true;
         }
      }
      
      override protected function measure() : void
      {
         if(isSpecialCase())
         {
            if(!isNaN(lastUnscaledWidth))
            {
               measureUsingWidth(lastUnscaledWidth);
            }
            else
            {
               measuredWidth = 0;
               measuredHeight = 0;
            }
            return;
         }
         measureUsingWidth(explicitWidth);
      }
      
      private function isSpecialCase() : Boolean
      {
         var left:Number = getStyle("left");
         var right:Number = getStyle("right");
         return (!isNaN(percentWidth) || !isNaN(left) && !isNaN(right)) && isNaN(explicitHeight) && isNaN(percentHeight);
      }
   }
}


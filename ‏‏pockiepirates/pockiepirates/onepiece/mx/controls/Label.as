package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextLineMetrics;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class Label extends UIComponent implements IDataRenderer, IDropInListItemRenderer, IListItemRenderer, IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _selectable:Boolean = false;
      
      private var _text:String = "";
      
      private var _data:Object;
      
      mx_internal var htmlTextChanged:Boolean = false;
      
      private var _tabIndex:int = -1;
      
      private var _textWidth:Number;
      
      private var explicitHTMLText:String = null;
      
      private var enabledChanged:Boolean = false;
      
      private var condenseWhiteChanged:Boolean = false;
      
      private var _listData:BaseListData;
      
      private var _textHeight:Number;
      
      protected var textField:IUITextField;
      
      private var _htmlText:String = "";
      
      private var _condenseWhite:Boolean = false;
      
      mx_internal var textChanged:Boolean = false;
      
      public var truncateToFit:Boolean = true;
      
      private var textSet:Boolean;
      
      private var selectableChanged:Boolean;
      
      private var toolTipSet:Boolean = false;
      
      public function Label()
      {
         super();
         tabChildren = true;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         if(value == enabled)
         {
            return;
         }
         super.enabled = value;
         enabledChanged = true;
         invalidateProperties();
      }
      
      private function textField_textFieldStyleChangeHandler(event:Event) : void
      {
         textFieldChanged(true);
      }
      
      override public function get baselinePosition() : Number
      {
         var t:String = null;
         var lineMetrics:TextLineMetrics = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            if(!textField)
            {
               return NaN;
            }
            validateNow();
            t = isHTML ? explicitHTMLText : text;
            if(t == "")
            {
               t = " ";
            }
            lineMetrics = isHTML ? measureHTMLText(t) : measureText(t);
            return textField.y + lineMetrics.ascent;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return textField.y + textField.baselinePosition;
      }
      
      public function set condenseWhite(value:Boolean) : void
      {
         if(value == _condenseWhite)
         {
            return;
         }
         _condenseWhite = value;
         condenseWhiteChanged = true;
         if(isHTML)
         {
            htmlTextChanged = true;
         }
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("condenseWhiteChanged"));
      }
      
      public function get textWidth() : Number
      {
         return _textWidth;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!textField)
         {
            createTextField(-1);
         }
      }
      
      mx_internal function getTextField() : IUITextField
      {
         return textField;
      }
      
      private function measureTextFieldBounds(s:String) : Rectangle
      {
         var lineMetrics:TextLineMetrics = isHTML ? measureHTMLText(s) : measureText(s);
         return new Rectangle(0,0,lineMetrics.width + UITextField.TEXT_WIDTH_PADDING,lineMetrics.height + UITextField.TEXT_HEIGHT_PADDING);
      }
      
      mx_internal function getMinimumText(t:String) : String
      {
         if(!t || t.length < 2)
         {
            t = "Wj";
         }
         return t;
      }
      
      private function textFieldChanged(styleChangeOnly:Boolean) : void
      {
         var changed1:Boolean = false;
         var changed2:Boolean = false;
         if(!styleChangeOnly)
         {
            changed1 = _text != textField.text;
            _text = textField.text;
         }
         changed2 = _htmlText != textField.htmlText;
         _htmlText = textField.htmlText;
         if(changed1)
         {
            dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
         }
         if(changed2)
         {
            dispatchEvent(new Event("htmlTextChanged"));
         }
         _textWidth = textField.textWidth;
         _textHeight = textField.textHeight;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      [Bindable("valueCommit")]
      public function get text() : String
      {
         return _text;
      }
      
      mx_internal function removeTextField() : void
      {
         if(textField)
         {
            textField.removeEventListener("textFieldStyleChange",textField_textFieldStyleChangeHandler);
            textField.removeEventListener("textInsert",textField_textModifiedHandler);
            textField.removeEventListener("textReplace",textField_textModifiedHandler);
            removeChild(DisplayObject(textField));
            textField = null;
         }
      }
      
      public function get textHeight() : Number
      {
         return _textHeight;
      }
      
      mx_internal function get styleSheet() : StyleSheet
      {
         return textField.styleSheet;
      }
      
      public function set selectable(value:Boolean) : void
      {
         if(value == selectable)
         {
            return;
         }
         _selectable = value;
         selectableChanged = true;
         invalidateProperties();
      }
      
      override public function get tabIndex() : int
      {
         return _tabIndex;
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      override public function set toolTip(value:String) : void
      {
         super.toolTip = value;
         toolTipSet = value != null;
      }
      
      mx_internal function createTextField(childIndex:int) : void
      {
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.enabled = enabled;
            textField.ignorePadding = true;
            textField.selectable = selectable;
            textField.styleName = this;
            textField.addEventListener("textFieldStyleChange",textField_textFieldStyleChangeHandler);
            textField.addEventListener("textInsert",textField_textModifiedHandler);
            textField.addEventListener("textReplace",textField_textModifiedHandler);
            if(childIndex == -1)
            {
               addChild(DisplayObject(textField));
            }
            else
            {
               addChildAt(DisplayObject(textField),childIndex);
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(hasFontContextChanged() && textField != null)
         {
            removeTextField();
            condenseWhiteChanged = true;
            enabledChanged = true;
            selectableChanged = true;
            textChanged = true;
         }
         if(!textField)
         {
            createTextField(-1);
         }
         if(condenseWhiteChanged)
         {
            textField.condenseWhite = _condenseWhite;
            condenseWhiteChanged = false;
         }
         textField.tabIndex = tabIndex;
         if(enabledChanged)
         {
            textField.enabled = enabled;
            enabledChanged = false;
         }
         if(selectableChanged)
         {
            textField.selectable = _selectable;
            selectableChanged = false;
         }
         if(textChanged || htmlTextChanged)
         {
            if(isHTML)
            {
               textField.htmlText = explicitHTMLText;
            }
            else
            {
               textField.text = _text;
            }
            textFieldChanged(false);
            textChanged = false;
            htmlTextChanged = false;
         }
      }
      
      [Bindable("condenseWhiteChanged")]
      public function get condenseWhite() : Boolean
      {
         return _condenseWhite;
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
      
      private function get isHTML() : Boolean
      {
         return explicitHTMLText != null;
      }
      
      public function get selectable() : Boolean
      {
         return _selectable;
      }
      
      public function set text(value:String) : void
      {
         textSet = true;
         if(!value)
         {
            value = "";
         }
         if(!isHTML && value == _text)
         {
            return;
         }
         _text = value;
         textChanged = true;
         _htmlText = null;
         explicitHTMLText = null;
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      public function set data(value:Object) : void
      {
         var newText:* = undefined;
         _data = value;
         if(_listData)
         {
            newText = _listData.label;
         }
         else if(_data != null)
         {
            if(_data is String)
            {
               newText = String(_data);
            }
            else
            {
               newText = _data.toString();
            }
         }
         if(newText !== undefined && !textSet)
         {
            text = newText;
            textSet = false;
         }
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      override protected function measure() : void
      {
         super.measure();
         var t:String = isHTML ? explicitHTMLText : text;
         t = getMinimumText(t);
         var textFieldBounds:Rectangle = measureTextFieldBounds(t);
         measuredMinWidth = measuredWidth = textFieldBounds.width + getStyle("paddingLeft") + getStyle("paddingRight");
         measuredMinHeight = measuredHeight = textFieldBounds.height + getStyle("paddingTop") + getStyle("paddingBottom");
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      private function textField_textModifiedHandler(event:Event) : void
      {
         textFieldChanged(false);
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      mx_internal function set styleSheet(value:StyleSheet) : void
      {
         textField.styleSheet = value;
      }
      
      public function set htmlText(value:String) : void
      {
         textSet = true;
         if(!value)
         {
            value = "";
         }
         if(isHTML && value == explicitHTMLText)
         {
            return;
         }
         _htmlText = value;
         htmlTextChanged = true;
         _text = null;
         explicitHTMLText = value;
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("htmlTextChanged"));
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var truncated:Boolean = false;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingTop:Number = getStyle("paddingTop");
         var paddingRight:Number = getStyle("paddingRight");
         var paddingBottom:Number = getStyle("paddingBottom");
         textField.setActualSize(unscaledWidth - paddingLeft - paddingRight,unscaledHeight - paddingTop - paddingBottom);
         textField.x = paddingLeft;
         textField.y = paddingTop;
         var t:String = isHTML ? explicitHTMLText : text;
         var textFieldBounds:Rectangle = measureTextFieldBounds(t);
         if(truncateToFit)
         {
            if(isHTML)
            {
               truncated = textFieldBounds.width > textField.width;
            }
            else
            {
               textField.text = _text;
               truncated = textField.truncateToFit();
            }
            if(!toolTipSet)
            {
               super.toolTip = truncated ? text : null;
            }
         }
      }
      
      [Bindable("htmlTextChanged")]
      public function get htmlText() : String
      {
         return _htmlText;
      }
      
      public function getLineMetrics(lineIndex:int) : TextLineMetrics
      {
         return textField ? textField.getLineMetrics(lineIndex) : null;
      }
      
      override public function set tabIndex(value:int) : void
      {
         _tabIndex = value;
         invalidateProperties();
      }
   }
}


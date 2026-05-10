package mx.controls
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.system.IME;
   import flash.system.IMEConversionMode;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IIMESupport;
   import mx.core.IInvalidating;
   import mx.core.IRectangularBorder;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class TextInput extends UIComponent implements IDataRenderer, IDropInListItemRenderer, IFocusManagerComponent, IIMESupport, IListItemRenderer, IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _text:String = "";
      
      private var _textWidth:Number;
      
      private var _restrict:String;
      
      private var htmlTextChanged:Boolean = false;
      
      mx_internal var border:IFlexDisplayObject;
      
      private var enabledChanged:Boolean = false;
      
      private var _maxChars:int = 0;
      
      private var _condenseWhite:Boolean = false;
      
      private var accessibilityPropertiesChanged:Boolean = false;
      
      private var _textHeight:Number;
      
      private var displayAsPasswordChanged:Boolean = false;
      
      private var prevMode:String = "UNKNOWN";
      
      private var selectableChanged:Boolean = false;
      
      private var restrictChanged:Boolean = false;
      
      private var selectionChanged:Boolean = false;
      
      private var _data:Object;
      
      private var maxCharsChanged:Boolean = false;
      
      private var _tabIndex:int = -1;
      
      private var errorCaught:Boolean = false;
      
      private var _selectionBeginIndex:int = 0;
      
      private var explicitHTMLText:String = null;
      
      private var editableChanged:Boolean = false;
      
      mx_internal var parentDrawsFocus:Boolean = false;
      
      private var tabIndexChanged:Boolean = false;
      
      private var _horizontalScrollPosition:Number = 0;
      
      private var _editable:Boolean = true;
      
      private var _imeMode:String = null;
      
      private var condenseWhiteChanged:Boolean = false;
      
      protected var textField:IUITextField;
      
      private var _listData:BaseListData;
      
      private var _displayAsPassword:Boolean = false;
      
      private var textChanged:Boolean = false;
      
      private var _htmlText:String = "";
      
      private var _accessibilityProperties:AccessibilityProperties;
      
      private var _selectionEndIndex:int = 0;
      
      private var textSet:Boolean;
      
      private var horizontalScrollPositionChanged:Boolean = false;
      
      private var _selectable:Boolean = true;
      
      public function TextInput()
      {
         super();
         tabChildren = true;
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      public function set imeMode(value:String) : void
      {
         _imeMode = value;
      }
      
      override protected function focusOutHandler(event:FocusEvent) : void
      {
         super.focusOutHandler(event);
         if(_imeMode != null && _editable)
         {
            if(IME.conversionMode != IMEConversionMode.UNKNOWN && prevMode != IMEConversionMode.UNKNOWN)
            {
               IME.conversionMode = prevMode;
            }
            IME.enabled = false;
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      override public function drawFocus(isFocused:Boolean) : void
      {
         if(parentDrawsFocus)
         {
            IFocusManagerComponent(parent).drawFocus(isFocused);
            return;
         }
         super.drawFocus(isFocused);
      }
      
      mx_internal function getTextField() : IUITextField
      {
         return textField;
      }
      
      private function textField_textInputHandler(event:TextEvent) : void
      {
         event.stopImmediatePropagation();
         var newEvent:TextEvent = new TextEvent(TextEvent.TEXT_INPUT,false,true);
         newEvent.text = event.text;
         dispatchEvent(newEvent);
         if(newEvent.isDefaultPrevented())
         {
            event.preventDefault();
         }
      }
      
      override public function get accessibilityProperties() : AccessibilityProperties
      {
         return _accessibilityProperties;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         createBorder();
         createTextField(-1);
      }
      
      private function textFieldChanged(styleChangeOnly:Boolean, dispatchValueCommitEvent:Boolean) : void
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
            dispatchEvent(new Event("textChanged"));
            if(dispatchValueCommitEvent)
            {
               dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
            }
         }
         if(changed2)
         {
            dispatchEvent(new Event("htmlTextChanged"));
         }
         _textWidth = textField.textWidth;
         _textHeight = textField.textHeight;
      }
      
      [NonCommittingChangeEvent("change")]
      [Bindable("textChanged")]
      public function get text() : String
      {
         return _text;
      }
      
      mx_internal function createTextField(childIndex:int) : void
      {
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.autoSize = TextFieldAutoSize.NONE;
            textField.enabled = enabled;
            textField.ignorePadding = false;
            textField.multiline = false;
            textField.tabEnabled = true;
            textField.wordWrap = false;
            if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               textField.styleName = this;
            }
            textField.addEventListener(Event.CHANGE,textField_changeHandler);
            textField.addEventListener(TextEvent.TEXT_INPUT,textField_textInputHandler);
            textField.addEventListener(Event.SCROLL,textField_scrollHandler);
            textField.addEventListener("textFieldStyleChange",textField_textFieldStyleChangeHandler);
            textField.addEventListener("textFormatChange",textField_textFormatChangeHandler);
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
      
      override public function get tabIndex() : int
      {
         return _tabIndex;
      }
      
      override public function set accessibilityProperties(value:AccessibilityProperties) : void
      {
         if(value == _accessibilityProperties)
         {
            return;
         }
         _accessibilityProperties = value;
         accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      public function setSelection(beginIndex:int, endIndex:int) : void
      {
         _selectionBeginIndex = beginIndex;
         _selectionEndIndex = endIndex;
         selectionChanged = true;
         invalidateProperties();
      }
      
      [Bindable("condenseWhiteChanged")]
      public function get condenseWhite() : Boolean
      {
         return _condenseWhite;
      }
      
      override protected function isOurFocus(target:DisplayObject) : Boolean
      {
         return target == textField || Boolean(super.isOurFocus(target));
      }
      
      [Bindable("displayAsPasswordChanged")]
      public function get displayAsPassword() : Boolean
      {
         return _displayAsPassword;
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
      
      public function get selectionBeginIndex() : int
      {
         return textField ? textField.selectionBeginIndex : _selectionBeginIndex;
      }
      
      mx_internal function get selectable() : Boolean
      {
         return _selectable;
      }
      
      protected function createBorder() : void
      {
         var borderClass:Class = null;
         if(!border)
         {
            borderClass = getStyle("borderSkin");
            if(borderClass != null)
            {
               border = new borderClass();
               if(border is ISimpleStyleClient)
               {
                  ISimpleStyleClient(border).styleName = this;
               }
               addChildAt(DisplayObject(border),0);
               invalidateDisplayList();
            }
         }
      }
      
      [Bindable("horizontalScrollPositionChanged")]
      public function get horizontalScrollPosition() : Number
      {
         return _horizontalScrollPosition;
      }
      
      override protected function measure() : void
      {
         var w:Number = NaN;
         var h:Number = NaN;
         var lineMetrics:TextLineMetrics = null;
         super.measure();
         var bm:EdgeMetrics = Boolean(border) && border is IRectangularBorder ? IRectangularBorder(border).borderMetrics : EdgeMetrics.EMPTY;
         measuredWidth = DEFAULT_MEASURED_WIDTH;
         if(maxChars)
         {
            measuredWidth = Math.min(measuredWidth,measureText("W").width * maxChars + bm.left + bm.right + 8);
         }
         if(!text || text == "")
         {
            w = DEFAULT_MEASURED_MIN_WIDTH;
            h = measureText(" ").height + bm.top + bm.bottom + UITextField.TEXT_HEIGHT_PADDING;
            if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
            {
               h += getStyle("paddingTop") + getStyle("paddingBottom");
            }
         }
         else
         {
            lineMetrics = measureText(text);
            w = lineMetrics.width + bm.left + bm.right + 8;
            h = lineMetrics.height + bm.top + bm.bottom + UITextField.TEXT_HEIGHT_PADDING;
            if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
            {
               w += getStyle("paddingLeft") + getStyle("paddingRight");
               h += getStyle("paddingTop") + getStyle("paddingBottom");
            }
         }
         measuredWidth = Math.max(w,measuredWidth);
         measuredHeight = Math.max(h,DEFAULT_MEASURED_HEIGHT);
         measuredMinWidth = DEFAULT_MEASURED_MIN_WIDTH;
         measuredMinHeight = DEFAULT_MEASURED_MIN_HEIGHT;
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
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
         dispatchEvent(new Event("textChanged"));
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      public function get selectionEndIndex() : int
      {
         return textField ? textField.selectionEndIndex : _selectionEndIndex;
      }
      
      [Bindable("editableChanged")]
      public function get editable() : Boolean
      {
         return _editable;
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         switch(event.keyCode)
         {
            case Keyboard.ENTER:
               dispatchEvent(new FlexEvent(FlexEvent.ENTER));
         }
      }
      
      override protected function focusInHandler(event:FocusEvent) : void
      {
         var fm:IFocusManager;
         var message:String = null;
         if(event.target == this)
         {
            systemManager.stage.focus = TextField(textField);
         }
         fm = focusManager;
         if(editable && Boolean(fm))
         {
            fm.showFocusIndicator = true;
            if(textField.selectable && _selectionBeginIndex == _selectionEndIndex)
            {
               textField.setSelection(0,textField.length);
            }
         }
         super.focusInHandler(event);
         if(_imeMode != null && _editable)
         {
            IME.enabled = true;
            prevMode = IME.conversionMode;
            try
            {
               if(!errorCaught && IME.conversionMode != IMEConversionMode.UNKNOWN)
               {
                  IME.conversionMode = _imeMode;
               }
               errorCaught = false;
            }
            catch(e:Error)
            {
               errorCaught = true;
               message = resourceManager.getString("controls","unsupportedMode",[_imeMode]);
               throw new Error(message);
            }
         }
      }
      
      [NonCommittingChangeEvent("change")]
      [Bindable("htmlTextChanged")]
      public function get htmlText() : String
      {
         return _htmlText;
      }
      
      override public function set tabIndex(value:int) : void
      {
         if(value == _tabIndex)
         {
            return;
         }
         _tabIndex = value;
         tabIndexChanged = true;
         invalidateProperties();
      }
      
      public function set restrict(value:String) : void
      {
         if(value == _restrict)
         {
            return;
         }
         _restrict = value;
         restrictChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("restrictChanged"));
      }
      
      private function textField_textFieldStyleChangeHandler(event:Event) : void
      {
         textFieldChanged(true,false);
      }
      
      private function textField_changeHandler(event:Event) : void
      {
         textFieldChanged(false,false);
         textChanged = false;
         htmlTextChanged = false;
         event.stopImmediatePropagation();
         dispatchEvent(new Event(Event.CHANGE));
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
         if(Boolean(border) && border is IInvalidating)
         {
            IInvalidating(border).invalidateDisplayList();
         }
      }
      
      override public function get baselinePosition() : Number
      {
         var t:String = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            t = text;
            if(t == "")
            {
               t = " ";
            }
            return (Boolean(border) && border is IRectangularBorder ? IRectangularBorder(border).borderMetrics.top : 0) + measureText(t).ascent;
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
      
      public function set displayAsPassword(value:Boolean) : void
      {
         if(value == _displayAsPassword)
         {
            return;
         }
         _displayAsPassword = value;
         displayAsPasswordChanged = true;
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("displayAsPasswordChanged"));
      }
      
      mx_internal function removeTextField() : void
      {
         if(textField)
         {
            textField.removeEventListener(Event.CHANGE,textField_changeHandler);
            textField.removeEventListener(TextEvent.TEXT_INPUT,textField_textInputHandler);
            textField.removeEventListener(Event.SCROLL,textField_scrollHandler);
            textField.removeEventListener("textFieldStyleChange",textField_textFieldStyleChangeHandler);
            textField.removeEventListener("textFormatChange",textField_textFormatChangeHandler);
            textField.removeEventListener("textInsert",textField_textModifiedHandler);
            textField.removeEventListener("textReplace",textField_textModifiedHandler);
            removeChild(DisplayObject(textField));
            textField = null;
         }
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      public function set maxChars(value:int) : void
      {
         if(value == _maxChars)
         {
            return;
         }
         _maxChars = value;
         maxCharsChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("maxCharsChanged"));
      }
      
      public function set horizontalScrollPosition(value:Number) : void
      {
         if(value == _horizontalScrollPosition)
         {
            return;
         }
         _horizontalScrollPosition = value;
         horizontalScrollPositionChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("horizontalScrollPositionChanged"));
      }
      
      override public function setFocus() : void
      {
         textField.setFocus();
      }
      
      [Bindable("restrictChanged")]
      public function get restrict() : String
      {
         return _restrict;
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      public function set selectionBeginIndex(value:int) : void
      {
         _selectionBeginIndex = value;
         selectionChanged = true;
         invalidateProperties();
      }
      
      public function set selectionEndIndex(value:int) : void
      {
         _selectionEndIndex = value;
         selectionChanged = true;
         invalidateProperties();
      }
      
      private function textField_scrollHandler(event:Event) : void
      {
         _horizontalScrollPosition = textField.scrollH;
      }
      
      public function get textHeight() : Number
      {
         return _textHeight;
      }
      
      public function set editable(value:Boolean) : void
      {
         if(value == _editable)
         {
            return;
         }
         _editable = value;
         editableChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("editableChanged"));
      }
      
      override protected function commitProperties() : void
      {
         var childIndex:int = 0;
         super.commitProperties();
         if(hasFontContextChanged() && textField != null)
         {
            childIndex = getChildIndex(DisplayObject(textField));
            removeTextField();
            createTextField(childIndex);
            accessibilityPropertiesChanged = true;
            condenseWhiteChanged = true;
            displayAsPasswordChanged = true;
            enabledChanged = true;
            maxCharsChanged = true;
            restrictChanged = true;
            tabIndexChanged = true;
            textChanged = true;
            selectionChanged = true;
            horizontalScrollPositionChanged = true;
         }
         if(accessibilityPropertiesChanged)
         {
            textField.accessibilityProperties = _accessibilityProperties;
            accessibilityPropertiesChanged = false;
         }
         if(condenseWhiteChanged)
         {
            textField.condenseWhite = _condenseWhite;
            condenseWhiteChanged = false;
         }
         if(displayAsPasswordChanged)
         {
            textField.displayAsPassword = _displayAsPassword;
            displayAsPasswordChanged = false;
         }
         if(enabledChanged || editableChanged)
         {
            textField.type = enabled && _editable ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
            if(enabledChanged)
            {
               if(textField.enabled != enabled)
               {
                  textField.enabled = enabled;
               }
               enabledChanged = false;
            }
            selectableChanged = true;
            editableChanged = false;
         }
         if(selectableChanged)
         {
            if(_editable)
            {
               textField.selectable = enabled;
            }
            else
            {
               textField.selectable = enabled && _selectable;
            }
            selectableChanged = false;
         }
         if(maxCharsChanged)
         {
            textField.maxChars = _maxChars;
            maxCharsChanged = false;
         }
         if(restrictChanged)
         {
            textField.restrict = _restrict;
            restrictChanged = false;
         }
         if(tabIndexChanged)
         {
            textField.tabIndex = _tabIndex;
            tabIndexChanged = false;
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
            textFieldChanged(false,true);
            textChanged = false;
            htmlTextChanged = false;
         }
         if(selectionChanged)
         {
            textField.setSelection(_selectionBeginIndex,_selectionEndIndex);
            selectionChanged = false;
         }
         if(horizontalScrollPositionChanged)
         {
            textField.scrollH = _horizontalScrollPosition;
            horizontalScrollPositionChanged = false;
         }
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var allStyles:Boolean = styleProp == null || styleProp == "styleName";
         super.styleChanged(styleProp);
         if(allStyles || styleProp == "borderSkin")
         {
            if(border)
            {
               removeChild(DisplayObject(border));
               border = null;
               createBorder();
            }
         }
      }
      
      private function get isHTML() : Boolean
      {
         return explicitHTMLText != null;
      }
      
      [Bindable("maxCharsChanged")]
      public function get maxChars() : int
      {
         return _maxChars;
      }
      
      public function get maxHorizontalScrollPosition() : Number
      {
         return textField ? textField.maxScrollH : 0;
      }
      
      mx_internal function set selectable(value:Boolean) : void
      {
         if(_selectable == value)
         {
            return;
         }
         _selectable = value;
         selectableChanged = true;
         invalidateProperties();
      }
      
      public function get length() : int
      {
         return text != null ? text.length : -1;
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
      
      private function textField_textModifiedHandler(event:Event) : void
      {
         textFieldChanged(false,true);
      }
      
      private function textField_textFormatChangeHandler(event:Event) : void
      {
         textFieldChanged(true,false);
      }
      
      public function set htmlText(value:String) : void
      {
         textSet = true;
         if(!value)
         {
            value = "";
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
         var bm:EdgeMetrics = null;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(border)
         {
            border.setActualSize(unscaledWidth,unscaledHeight);
            bm = border is IRectangularBorder ? IRectangularBorder(border).borderMetrics : EdgeMetrics.EMPTY;
         }
         else
         {
            bm = EdgeMetrics.EMPTY;
         }
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingRight:Number = getStyle("paddingRight");
         var paddingTop:Number = getStyle("paddingTop");
         var paddingBottom:Number = getStyle("paddingBottom");
         var widthPad:Number = bm.left + bm.right;
         var heightPad:Number = bm.top + bm.bottom + 1;
         textField.x = bm.left;
         textField.y = bm.top;
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            textField.x += paddingLeft;
            textField.y += paddingTop;
            widthPad += paddingLeft + paddingRight;
            heightPad += paddingTop + paddingBottom;
         }
         textField.width = Math.max(0,unscaledWidth - widthPad);
         textField.height = Math.max(0,unscaledHeight - heightPad);
      }
      
      public function getLineMetrics(lineIndex:int) : TextLineMetrics
      {
         return textField ? textField.getLineMetrics(lineIndex) : null;
      }
   }
}


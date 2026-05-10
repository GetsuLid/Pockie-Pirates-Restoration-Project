package mx.controls
{
   import flash.accessibility.AccessibilityProperties;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.system.IME;
   import flash.system.IMEConversionMode;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextLineMetrics;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IIMESupport;
   import mx.core.IInvalidating;
   import mx.core.IUITextField;
   import mx.core.ScrollControlBase;
   import mx.core.ScrollPolicy;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.events.ScrollEventDirection;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerComponent;
   
   use namespace mx_internal;
   
   public class TextArea extends ScrollControlBase implements IDataRenderer, IDropInListItemRenderer, IFocusManagerComponent, IIMESupport, IListItemRenderer, IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _text:String = "";
      
      private var _selectable:Boolean = true;
      
      private var _textWidth:Number;
      
      private var _restrict:String = null;
      
      private var htmlTextChanged:Boolean = false;
      
      private var _maxChars:int = 0;
      
      private var enabledChanged:Boolean = false;
      
      private var _condenseWhite:Boolean = false;
      
      private var accessibilityPropertiesChanged:Boolean = false;
      
      private var _hScrollPosition:Number;
      
      private var _textHeight:Number;
      
      private var displayAsPasswordChanged:Boolean = false;
      
      private var prevMode:String = "UNKNOWN";
      
      private var selectableChanged:Boolean = false;
      
      private var restrictChanged:Boolean = false;
      
      private var selectionChanged:Boolean = false;
      
      private var maxCharsChanged:Boolean = false;
      
      private var _tabIndex:int = -1;
      
      private var errorCaught:Boolean = false;
      
      private var _selectionBeginIndex:int = 0;
      
      private var wordWrapChanged:Boolean = false;
      
      private var _data:Object;
      
      private var explicitHTMLText:String = null;
      
      private var styleSheetChanged:Boolean = false;
      
      private var tabIndexChanged:Boolean = false;
      
      private var editableChanged:Boolean = false;
      
      private var _editable:Boolean = true;
      
      private var allowScrollEvent:Boolean = true;
      
      private var _imeMode:String = null;
      
      private var condenseWhiteChanged:Boolean = false;
      
      protected var textField:IUITextField;
      
      private var _listData:BaseListData;
      
      private var _displayAsPassword:Boolean = false;
      
      private var _wordWrap:Boolean = true;
      
      private var _styleSheet:StyleSheet;
      
      private var textChanged:Boolean = false;
      
      private var _accessibilityProperties:AccessibilityProperties;
      
      private var _selectionEndIndex:int = 0;
      
      private var _htmlText:String = "";
      
      private var _vScrollPosition:Number;
      
      private var textSet:Boolean;
      
      public function TextArea()
      {
         super();
         tabChildren = true;
         mx_internal::_horizontalScrollPolicy = ScrollPolicy.AUTO;
         mx_internal::_verticalScrollPolicy = ScrollPolicy.AUTO;
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
         var fm:IFocusManager = focusManager;
         if(fm)
         {
            fm.defaultButtonEnabled = true;
         }
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
         createTextField(-1);
      }
      
      private function adjustScrollBars() : void
      {
         var visibleRows:Number = textField.bottomScrollV - textField.scrollV + 1;
         var rows:Number = textField.numLines;
         setScrollBarProperties(textField.width + textField.maxScrollH,textField.width,textField.numLines,visibleRows);
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
      
      private function textField_ioErrorHandler(event:IOErrorEvent) : void
      {
      }
      
      [NonCommittingChangeEvent("change")]
      [Bindable("textChanged")]
      public function get text() : String
      {
         return _text;
      }
      
      public function get styleSheet() : StyleSheet
      {
         return _styleSheet;
      }
      
      mx_internal function createTextField(childIndex:int) : void
      {
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.autoSize = TextFieldAutoSize.NONE;
            textField.enabled = enabled;
            textField.ignorePadding = true;
            textField.multiline = true;
            textField.selectable = true;
            textField.styleName = this;
            textField.tabEnabled = true;
            textField.type = TextFieldType.INPUT;
            textField.useRichTextClipboard = true;
            textField.wordWrap = true;
            textField.addEventListener(Event.CHANGE,textField_changeHandler);
            textField.addEventListener(Event.SCROLL,textField_scrollHandler);
            textField.addEventListener(IOErrorEvent.IO_ERROR,textField_ioErrorHandler);
            textField.addEventListener(TextEvent.TEXT_INPUT,textField_textInputHandler);
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
      
      public function get selectionBeginIndex() : int
      {
         return textField ? textField.selectionBeginIndex : _selectionBeginIndex;
      }
      
      public function get selectable() : Boolean
      {
         return _selectable;
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      override public function set verticalScrollPosition(value:Number) : void
      {
         super.verticalScrollPosition = value;
         _vScrollPosition = value;
         if(textField)
         {
            textField.scrollV = value + 1;
            textField.background = false;
         }
         else
         {
            invalidateProperties();
         }
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
      
      public function set styleSheet(value:StyleSheet) : void
      {
         _styleSheet = value;
         styleSheetChanged = true;
         htmlTextChanged = true;
         invalidateProperties();
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredMinWidth = DEFAULT_MEASURED_MIN_WIDTH;
         measuredWidth = DEFAULT_MEASURED_WIDTH;
         measuredMinHeight = measuredHeight = 2 * DEFAULT_MEASURED_MIN_HEIGHT;
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
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
         }
         if(fm)
         {
            fm.defaultButtonEnabled = false;
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
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      [Bindable("wordWrapChanged")]
      public function get wordWrap() : Boolean
      {
         return _wordWrap;
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
      
      [NonCommittingChangeEvent("change")]
      [Bindable("htmlTextChanged")]
      public function get htmlText() : String
      {
         return _htmlText;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         if(value == enabled)
         {
            return;
         }
         super.enabled = value;
         enabledChanged = true;
         if(verticalScrollBar)
         {
            verticalScrollBar.enabled = value;
         }
         if(horizontalScrollBar)
         {
            horizontalScrollBar.enabled = value;
         }
         invalidateProperties();
         if(Boolean(border) && border is IInvalidating)
         {
            IInvalidating(border).invalidateDisplayList();
         }
      }
      
      private function textField_textFieldStyleChangeHandler(event:Event) : void
      {
         textFieldChanged(true,false);
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
      
      override public function get baselinePosition() : Number
      {
         var t:String = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            t = text;
            if(!t || t == "")
            {
               t = " ";
            }
            return viewMetrics.top + measureText(t).ascent;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return textField.y + textField.baselinePosition;
      }
      
      private function textField_changeHandler(event:Event) : void
      {
         textFieldChanged(false,false);
         adjustScrollBars();
         textChanged = false;
         htmlTextChanged = false;
         event.stopImmediatePropagation();
         dispatchEvent(new Event(Event.CHANGE));
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
      
      override public function get horizontalScrollPolicy() : String
      {
         return height <= 40 ? ScrollPolicy.OFF : _horizontalScrollPolicy;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      override public function get maxVerticalScrollPosition() : Number
      {
         return textField ? textField.maxScrollV - 1 : 0;
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
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      override public function set horizontalScrollPosition(value:Number) : void
      {
         super.horizontalScrollPosition = value;
         _hScrollPosition = value;
         if(textField)
         {
            textField.scrollH = value;
            textField.background = false;
         }
         else
         {
            invalidateProperties();
         }
      }
      
      override public function setFocus() : void
      {
         var vScrollPos:int = verticalScrollPosition;
         allowScrollEvent = false;
         textField.setFocus();
         verticalScrollPosition = vScrollPos;
         allowScrollEvent = true;
      }
      
      public function set selectionBeginIndex(value:int) : void
      {
         _selectionBeginIndex = value;
         selectionChanged = true;
         invalidateProperties();
      }
      
      [Bindable("restrictChanged")]
      public function get restrict() : String
      {
         return _restrict;
      }
      
      override protected function scrollHandler(event:Event) : void
      {
         if(event is ScrollEvent)
         {
            if(!liveScrolling && ScrollEvent(event).detail == ScrollEventDetail.THUMB_TRACK)
            {
               return;
            }
            super.scrollHandler(event);
            textField.scrollH = horizontalScrollPosition;
            textField.scrollV = verticalScrollPosition + 1;
            _vScrollPosition = textField.scrollV - 1;
            _hScrollPosition = textField.scrollH;
         }
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      mx_internal function removeTextField() : void
      {
         if(textField)
         {
            textField.removeEventListener(Event.CHANGE,textField_changeHandler);
            textField.removeEventListener(Event.SCROLL,textField_scrollHandler);
            textField.removeEventListener(IOErrorEvent.IO_ERROR,textField_ioErrorHandler);
            textField.removeEventListener(TextEvent.TEXT_INPUT,textField_textInputHandler);
            textField.removeEventListener("textFieldStyleChange",textField_textFieldStyleChangeHandler);
            textField.removeEventListener("textFormatChange",textField_textFormatChangeHandler);
            textField.removeEventListener("textInsert",textField_textModifiedHandler);
            textField.removeEventListener("textReplace",textField_textModifiedHandler);
            removeChild(DisplayObject(textField));
            textField = null;
         }
      }
      
      public function set selectionEndIndex(value:int) : void
      {
         _selectionEndIndex = value;
         selectionChanged = true;
         invalidateProperties();
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
         super.commitProperties();
         if(hasFontContextChanged() && textField != null)
         {
            removeTextField();
            createTextField(-1);
            accessibilityPropertiesChanged = true;
            condenseWhiteChanged = true;
            displayAsPasswordChanged = true;
            editableChanged = true;
            enabledChanged = true;
            maxCharsChanged = true;
            restrictChanged = true;
            selectableChanged = true;
            tabIndexChanged = true;
            wordWrapChanged = true;
            textChanged = true;
            selectionChanged = true;
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
         if(editableChanged)
         {
            textField.type = _editable && enabled ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
            editableChanged = false;
         }
         if(enabledChanged)
         {
            textField.enabled = enabled;
            enabledChanged = false;
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
         if(selectableChanged)
         {
            textField.selectable = _selectable;
            selectableChanged = false;
         }
         if(styleSheetChanged)
         {
            textField.styleSheet = _styleSheet;
            styleSheetChanged = false;
         }
         if(tabIndexChanged)
         {
            textField.tabIndex = _tabIndex;
            tabIndexChanged = false;
         }
         if(wordWrapChanged)
         {
            textField.wordWrap = _wordWrap;
            wordWrapChanged = false;
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
         if(!isNaN(_hScrollPosition))
         {
            horizontalScrollPosition = _hScrollPosition;
         }
         if(!isNaN(_vScrollPosition))
         {
            verticalScrollPosition = _vScrollPosition;
         }
      }
      
      private function get isHTML() : Boolean
      {
         return explicitHTMLText != null;
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
      
      [Bindable("maxCharsChanged")]
      public function get maxChars() : int
      {
         return _maxChars;
      }
      
      override public function get maxHorizontalScrollPosition() : Number
      {
         return textField ? textField.maxScrollH : 0;
      }
      
      override protected function mouseWheelHandler(event:MouseEvent) : void
      {
         event.stopPropagation();
      }
      
      private function textField_scrollHandler(event:Event) : void
      {
         var deltaX:int = 0;
         var deltaY:int = 0;
         var scrollEvent:ScrollEvent = null;
         if(initialized && allowScrollEvent)
         {
            deltaX = textField.scrollH - horizontalScrollPosition;
            deltaY = textField.scrollV - 1 - verticalScrollPosition;
            horizontalScrollPosition = textField.scrollH;
            verticalScrollPosition = textField.scrollV - 1;
            if(deltaX)
            {
               scrollEvent = new ScrollEvent(ScrollEvent.SCROLL,false,false,null,horizontalScrollPosition,ScrollEventDirection.HORIZONTAL,deltaX);
               dispatchEvent(scrollEvent);
            }
            if(deltaY)
            {
               scrollEvent = new ScrollEvent(ScrollEvent.SCROLL,false,false,null,verticalScrollPosition,ScrollEventDirection.VERTICAL,deltaY);
               dispatchEvent(scrollEvent);
            }
         }
      }
      
      public function set wordWrap(value:Boolean) : void
      {
         if(value == _wordWrap)
         {
            return;
         }
         _wordWrap = value;
         wordWrapChanged = true;
         invalidateProperties();
         invalidateDisplayList();
         dispatchEvent(new Event("wordWrapChanged"));
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
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var vm:EdgeMetrics = viewMetrics;
         vm.left += getStyle("paddingLeft");
         vm.top += getStyle("paddingTop");
         vm.right += getStyle("paddingRight");
         vm.bottom += getStyle("paddingBottom");
         textField.move(vm.left,vm.top);
         var w:Number = unscaledWidth - vm.left - vm.right;
         var h:Number = unscaledHeight - vm.top - vm.bottom;
         if(vm.top + vm.bottom > 0)
         {
            h++;
         }
         textField.setActualSize(Math.max(4,w),Math.max(4,h));
         if(!initialized)
         {
            callLater(invalidateDisplayList);
         }
         else
         {
            callLater(adjustScrollBars);
         }
         if(isNaN(_hScrollPosition))
         {
            _hScrollPosition = 0;
         }
         if(isNaN(_vScrollPosition))
         {
            _vScrollPosition = 0;
         }
         var p:Number = Math.min(textField.maxScrollH,_hScrollPosition);
         if(p != textField.scrollH)
         {
            horizontalScrollPosition = p;
         }
         p = Math.min(textField.maxScrollV - 1,_vScrollPosition);
         if(p != textField.scrollV - 1)
         {
            verticalScrollPosition = p;
         }
      }
      
      public function getLineMetrics(lineIndex:int) : TextLineMetrics
      {
         return textField ? textField.getLineMetrics(lineIndex) : null;
      }
      
      override public function get verticalScrollPolicy() : String
      {
         return height <= 40 ? ScrollPolicy.OFF : _verticalScrollPolicy;
      }
      
      public function get length() : int
      {
         return text != null ? text.length : -1;
      }
   }
}


package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import mx.collections.ArrayCollection;
   import mx.collections.CursorBookmark;
   import mx.collections.ICollectionView;
   import mx.collections.IList;
   import mx.collections.IViewCursor;
   import mx.collections.ListCollectionView;
   import mx.collections.XMLListCollection;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.IIMESupport;
   import mx.core.IRectangularBorder;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.FlexEvent;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.StyleProxy;
   import mx.utils.UIDUtil;
   
   use namespace mx_internal;
   
   public class ComboBase extends UIComponent implements IIMESupport, IFocusManagerComponent
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static var _textInputStyleFilters:Object = {
         "backgroundAlpha":"backgroundAlpha",
         "backgroundColor":"backgroundColor",
         "backgroundImage":"backgroundImage",
         "backgroundDisabledColor":"backgroundDisabledColor",
         "backgroundSize":"backgroundSize",
         "borderAlpha":"borderAlpha",
         "borderColor":"borderColor",
         "borderSides":"borderSides",
         "borderSkin":"borderSkin",
         "borderStyle":"borderStyle",
         "borderThickness":"borderThickness",
         "dropShadowColor":"dropShadowColor",
         "dropShadowEnabled":"dropShadowEnabled",
         "embedFonts":"embedFonts",
         "focusAlpha":"focusAlpha",
         "focusBlendMode":"focusBlendMode",
         "focusRoundedCorners":"focusRoundedCorners",
         "focusThickness":"focusThickness",
         "leading":"leading",
         "paddingLeft":"paddingLeft",
         "paddingRight":"paddingRight",
         "shadowDirection":"shadowDirection",
         "shadowDistance":"shadowDistance",
         "textDecoration":"textDecoration"
      };
      
      private var _enabled:Boolean = false;
      
      mx_internal var useFullDropdownSkin:Boolean = false;
      
      mx_internal var selectedItemChanged:Boolean = false;
      
      mx_internal var selectionChanged:Boolean = false;
      
      mx_internal var downArrowButton:Button;
      
      private var _restrict:String;
      
      protected var collection:ICollectionView;
      
      private var _text:String = "";
      
      mx_internal var border:IFlexDisplayObject;
      
      private var _selectedItem:Object;
      
      mx_internal var editableChanged:Boolean = true;
      
      private var enabledChanged:Boolean = false;
      
      private var selectedUID:String;
      
      mx_internal var selectedIndexChanged:Boolean = false;
      
      mx_internal var oldBorderStyle:String;
      
      protected var textInput:TextInput;
      
      private var _editable:Boolean = false;
      
      mx_internal var collectionIterator:IViewCursor;
      
      mx_internal var textChanged:Boolean;
      
      private var _imeMode:String = null;
      
      protected var iterator:IViewCursor;
      
      mx_internal var wrapDownArrowButton:Boolean = true;
      
      private var _selectedIndex:int = -1;
      
      public function ComboBase()
      {
         super();
         tabEnabled = true;
      }
      
      protected function collectionChangeHandler(event:Event) : void
      {
         var requiresValueCommit:Boolean = false;
         var len:Number = NaN;
         var ind:Object = null;
         var ce:CollectionEvent = null;
         var i:int = 0;
         var uid:String = null;
         if(event is CollectionEvent)
         {
            requiresValueCommit = false;
            ce = CollectionEvent(event);
            if(ce.kind == CollectionEventKind.ADD)
            {
               if(selectedIndex >= ce.location)
               {
                  ++_selectedIndex;
               }
            }
            if(ce.kind == CollectionEventKind.REMOVE)
            {
               for(i = 0; i < ce.items.length; i++)
               {
                  uid = itemToUID(ce.items[i]);
                  if(selectedUID == uid)
                  {
                     selectionChanged = true;
                  }
               }
               if(selectionChanged)
               {
                  if(_selectedIndex >= collection.length)
                  {
                     _selectedIndex = collection.length - 1;
                  }
                  selectedIndexChanged = true;
                  requiresValueCommit = true;
                  invalidateDisplayList();
               }
               else if(selectedIndex >= ce.location)
               {
                  --_selectedIndex;
                  selectedIndexChanged = true;
                  requiresValueCommit = true;
                  invalidateDisplayList();
               }
            }
            if(ce.kind == CollectionEventKind.REFRESH)
            {
               selectedItemChanged = true;
               requiresValueCommit = true;
            }
            invalidateDisplayList();
            if(requiresValueCommit)
            {
               dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
            }
         }
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         _enabled = value;
         enabledChanged = true;
         invalidateProperties();
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      override protected function focusOutHandler(event:FocusEvent) : void
      {
         super.focusOutHandler(event);
         var fm:IFocusManager = focusManager;
         if(fm)
         {
            fm.defaultButtonEnabled = true;
         }
         if(_editable)
         {
            dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
         }
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return textInput.y + textInput.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return textInput.y + textInput.baselinePosition;
      }
      
      public function set imeMode(value:String) : void
      {
         _imeMode = value;
         if(textInput)
         {
            textInput.imeMode = _imeMode;
         }
      }
      
      protected function itemToUID(data:Object) : String
      {
         if(!data)
         {
            return "null";
         }
         return UIDUtil.getUID(data);
      }
      
      protected function downArrowButton_buttonDownHandler(event:FlexEvent) : void
      {
      }
      
      override protected function createChildren() : void
      {
         var borderClass:Class = null;
         var textInputStyleName:Object = null;
         super.createChildren();
         if(!border)
         {
            borderClass = getStyle("borderSkin");
            if(borderClass)
            {
               border = new borderClass();
               if(border is IFocusManagerComponent)
               {
                  IFocusManagerComponent(border).focusEnabled = false;
               }
               if(border is ISimpleStyleClient)
               {
                  ISimpleStyleClient(border).styleName = this;
               }
               addChild(DisplayObject(border));
            }
         }
         if(!downArrowButton)
         {
            downArrowButton = new Button();
            downArrowButton.styleName = new StyleProxy(this,arrowButtonStyleFilters);
            downArrowButton.focusEnabled = false;
            addChild(downArrowButton);
            downArrowButton.addEventListener(FlexEvent.BUTTON_DOWN,downArrowButton_buttonDownHandler);
         }
         if(!textInput)
         {
            textInputStyleName = getStyle("textInputStyleName");
            if(!textInputStyleName)
            {
               textInputStyleName = new StyleProxy(this,textInputStyleFilters);
            }
            textInput = new TextInput();
            textInput.editable = _editable;
            editableChanged = true;
            textInput.restrict = "^\x1b";
            textInput.focusEnabled = false;
            textInput.imeMode = _imeMode;
            textInput.styleName = textInputStyleName;
            textInput.addEventListener(Event.CHANGE,textInput_changeHandler);
            textInput.addEventListener(FlexEvent.ENTER,textInput_enterHandler);
            textInput.addEventListener(FocusEvent.FOCUS_IN,focusInHandler);
            textInput.addEventListener(FocusEvent.FOCUS_OUT,focusOutHandler);
            textInput.addEventListener(FlexEvent.VALUE_COMMIT,textInput_valueCommitHandler);
            addChild(textInput);
            textInput.move(0,0);
            textInput.parentDrawsFocus = true;
         }
      }
      
      public function set selectedItem(data:Object) : void
      {
         setSelectedItem(data);
      }
      
      override protected function initializeAccessibility() : void
      {
         if(ComboBase.createAccessibilityImplementation != null)
         {
            ComboBase.createAccessibilityImplementation(this);
         }
      }
      
      private function textInput_enterHandler(event:FlexEvent) : void
      {
         dispatchEvent(event);
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      protected function calculatePreferredSizeFromData(numItems:int) : Object
      {
         return null;
      }
      
      override public function setFocus() : void
      {
         if(Boolean(textInput) && _editable)
         {
            textInput.setFocus();
         }
         else
         {
            super.setFocus();
         }
      }
      
      private function textInput_valueCommitHandler(event:FlexEvent) : void
      {
         _text = textInput.text;
         dispatchEvent(event);
      }
      
      [NonCommittingChangeEvent("change")]
      [Bindable("valueCommit")]
      [Bindable("collectionChange")]
      public function get text() : String
      {
         return _text;
      }
      
      [Bindable("collectionChange")]
      public function get dataProvider() : Object
      {
         return collection;
      }
      
      protected function get arrowButtonStyleFilters() : Object
      {
         return null;
      }
      
      public function set editable(value:Boolean) : void
      {
         _editable = value;
         editableChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("editableChanged"));
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         if(downArrowButton)
         {
            downArrowButton.styleChanged(styleProp);
         }
         if(textInput)
         {
            textInput.styleChanged(styleProp);
         }
         if(Boolean(border) && border is ISimpleStyleClient)
         {
            ISimpleStyleClient(border).styleChanged(styleProp);
         }
         super.styleChanged(styleProp);
      }
      
      [Bindable("restrictChanged")]
      public function get restrict() : String
      {
         return _restrict;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedItem() : Object
      {
         return _selectedItem;
      }
      
      mx_internal function get ComboDownArrowButton() : Button
      {
         return downArrowButton;
      }
      
      private function setSelectedItem(data:Object, clearFirst:Boolean = true) : void
      {
         if(!collection || collection.length == 0)
         {
            _selectedItem = value;
            selectedItemChanged = true;
            invalidateDisplayList();
            return;
         }
         var found:Boolean = false;
         var listCursor:IViewCursor = collection.createCursor();
         var i:int = 0;
         do
         {
            if(data == listCursor.current)
            {
               _selectedIndex = i;
               _selectedItem = data;
               selectedUID = itemToUID(data);
               selectionChanged = true;
               found = true;
               break;
            }
            i++;
         }
         while(listCursor.moveNext());
         if(!found)
         {
            selectedIndex = -1;
            _selectedItem = null;
            selectedUID = null;
         }
         invalidateDisplayList();
      }
      
      override protected function commitProperties() : void
      {
         var e:Boolean = false;
         super.commitProperties();
         textInput.restrict = _restrict;
         if(textChanged)
         {
            textInput.text = _text;
            textChanged = false;
         }
         if(enabledChanged)
         {
            textInput.enabled = _enabled;
            editableChanged = true;
            downArrowButton.enabled = _enabled;
            enabledChanged = false;
         }
         if(editableChanged)
         {
            editableChanged = false;
            e = _editable;
            if(wrapDownArrowButton == false)
            {
               if(e)
               {
                  if(oldBorderStyle)
                  {
                     setStyle("borderStyle",oldBorderStyle);
                  }
               }
               else
               {
                  oldBorderStyle = getStyle("borderStyle");
                  setStyle("borderStyle","comboNonEdit");
               }
            }
            if(useFullDropdownSkin)
            {
               downArrowButton.upSkinName = e ? "editableUpSkin" : "upSkin";
               downArrowButton.overSkinName = e ? "editableOverSkin" : "overSkin";
               downArrowButton.downSkinName = e ? "editableDownSkin" : "downSkin";
               downArrowButton.disabledSkinName = e ? "editableDisabledSkin" : "disabledSkin";
               downArrowButton.changeSkins();
               downArrowButton.invalidateDisplayList();
            }
            if(textInput)
            {
               textInput.editable = e;
               textInput.selectable = e;
               if(e)
               {
                  textInput.removeEventListener(MouseEvent.MOUSE_DOWN,textInput_mouseEventHandler);
                  textInput.removeEventListener(MouseEvent.MOUSE_UP,textInput_mouseEventHandler);
                  textInput.removeEventListener(MouseEvent.ROLL_OVER,textInput_mouseEventHandler);
                  textInput.removeEventListener(MouseEvent.ROLL_OUT,textInput_mouseEventHandler);
                  textInput.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
               }
               else
               {
                  textInput.addEventListener(MouseEvent.MOUSE_DOWN,textInput_mouseEventHandler);
                  textInput.addEventListener(MouseEvent.MOUSE_UP,textInput_mouseEventHandler);
                  textInput.addEventListener(MouseEvent.ROLL_OVER,textInput_mouseEventHandler);
                  textInput.addEventListener(MouseEvent.ROLL_OUT,textInput_mouseEventHandler);
                  textInput.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
               }
            }
         }
      }
      
      protected function get textInputStyleFilters() : Object
      {
         return _textInputStyleFilters;
      }
      
      public function set text(value:String) : void
      {
         _text = value;
         textChanged = true;
         invalidateProperties();
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      override protected function isOurFocus(target:DisplayObject) : Boolean
      {
         return target == textInput || Boolean(super.isOurFocus(target));
      }
      
      [Bindable("editableChanged")]
      public function get editable() : Boolean
      {
         return _editable;
      }
      
      override protected function measure() : void
      {
         var prefSize:Object = null;
         var bm:EdgeMetrics = null;
         var textWidth:Number = NaN;
         var textHeight:Number = NaN;
         var padding:Number = NaN;
         super.measure();
         var buttonWidth:Number = getStyle("arrowButtonWidth");
         var buttonHeight:Number = downArrowButton.getExplicitOrMeasuredHeight();
         if(Boolean(collection) && collection.length > 0)
         {
            prefSize = calculatePreferredSizeFromData(collection.length);
            bm = borderMetrics;
            textWidth = prefSize.width + bm.left + bm.right + 8;
            textHeight = prefSize.height + bm.top + bm.bottom + UITextField.TEXT_HEIGHT_PADDING;
            measuredMinWidth = measuredWidth = textWidth + buttonWidth;
            measuredMinHeight = measuredHeight = Math.max(textHeight,buttonHeight);
         }
         else
         {
            measuredMinWidth = DEFAULT_MEASURED_MIN_WIDTH;
            measuredWidth = DEFAULT_MEASURED_WIDTH;
            measuredMinHeight = DEFAULT_MEASURED_MIN_HEIGHT;
            measuredHeight = DEFAULT_MEASURED_HEIGHT;
         }
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            padding = getStyle("paddingTop") + getStyle("paddingBottom");
            measuredMinHeight += padding;
            measuredHeight += padding;
         }
      }
      
      protected function textInput_changeHandler(event:Event) : void
      {
         _text = textInput.text;
         if(_selectedIndex != -1)
         {
            _selectedIndex = -1;
            _selectedItem = null;
            selectedUID = null;
         }
      }
      
      mx_internal function getTextInput() : TextInput
      {
         return textInput;
      }
      
      override protected function focusInHandler(event:FocusEvent) : void
      {
         super.focusInHandler(event);
         var fm:IFocusManager = focusManager;
         if(fm)
         {
            fm.defaultButtonEnabled = false;
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get value() : Object
      {
         if(_editable)
         {
            return text;
         }
         var item:Object = selectedItem;
         if(item == null || typeof item != "object")
         {
            return item;
         }
         return item.data != null ? item.data : item.label;
      }
      
      private function textInput_mouseEventHandler(event:Event) : void
      {
         downArrowButton.dispatchEvent(event);
      }
      
      public function set selectedIndex(value:int) : void
      {
         var bookmark:CursorBookmark = null;
         var len:int = 0;
         var data:Object = null;
         var uid:String = null;
         _selectedIndex = value;
         if(value == -1)
         {
            _selectedItem = null;
            selectedUID = null;
         }
         if(!collection || collection.length == 0)
         {
            selectedIndexChanged = true;
         }
         else if(value != -1)
         {
            value = Math.min(value,collection.length - 1);
            bookmark = iterator.bookmark;
            len = value;
            iterator.seek(CursorBookmark.FIRST,len);
            data = iterator.current;
            uid = itemToUID(data);
            iterator.seek(bookmark,0);
            _selectedIndex = value;
            _selectedItem = data;
            selectedUID = uid;
         }
         selectionChanged = true;
         invalidateDisplayList();
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      public function set dataProvider(value:Object) : void
      {
         var tmp:Array = null;
         if(value is Array)
         {
            collection = new ArrayCollection(value as Array);
         }
         else if(value is ICollectionView)
         {
            collection = ICollectionView(value);
         }
         else if(value is IList)
         {
            collection = new ListCollectionView(IList(value));
         }
         else if(value is XMLList)
         {
            collection = new XMLListCollection(value as XMLList);
         }
         else
         {
            tmp = [value];
            collection = new ArrayCollection(tmp);
         }
         iterator = collection.createCursor();
         collectionIterator = collection.createCursor();
         collection.addEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangeHandler,false,0,true);
         var event:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
         event.kind = CollectionEventKind.RESET;
         collectionChangeHandler(event);
         dispatchEvent(event);
         invalidateSize();
         invalidateDisplayList();
      }
      
      protected function get borderMetrics() : EdgeMetrics
      {
         if(Boolean(border) && border is IRectangularBorder)
         {
            return IRectangularBorder(border).borderMetrics;
         }
         return EdgeMetrics.EMPTY;
      }
      
      public function set restrict(value:String) : void
      {
         _restrict = value;
         invalidateProperties();
         dispatchEvent(new Event("restrictChanged"));
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var vm:EdgeMetrics = null;
         var wh:Number = NaN;
         var paddingTop:Number = NaN;
         var paddingBottom:Number = NaN;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var w:Number = unscaledWidth;
         var h:Number = unscaledHeight;
         var arrowWidth:Number = getStyle("arrowButtonWidth");
         var textInputHeight:Number = textInput.getExplicitOrMeasuredHeight();
         if(isNaN(arrowWidth))
         {
            arrowWidth = 0;
         }
         if(wrapDownArrowButton)
         {
            vm = borderMetrics;
            wh = h - vm.top - vm.bottom;
            downArrowButton.setActualSize(wh,wh);
            downArrowButton.move(w - arrowWidth - vm.right,vm.top);
            border.setActualSize(w,h);
            textInput.setActualSize(w - arrowWidth,textInputHeight);
         }
         else if(!_editable && useFullDropdownSkin)
         {
            paddingTop = getStyle("paddingTop");
            paddingBottom = getStyle("paddingBottom");
            downArrowButton.move(0,0);
            border.setActualSize(w,h);
            textInput.setActualSize(w - arrowWidth,textInputHeight);
            textInput.border.visible = false;
            if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
            {
               textInput.move(textInput.x,(h - textInputHeight - paddingTop - paddingBottom) / 2 + paddingTop);
            }
            downArrowButton.setActualSize(unscaledWidth,unscaledHeight);
         }
         else
         {
            downArrowButton.move(w - arrowWidth,0);
            border.setActualSize(w - arrowWidth,h);
            textInput.setActualSize(w - arrowWidth,h);
            downArrowButton.setActualSize(arrowWidth,unscaledHeight);
            textInput.border.visible = true;
         }
         if(selectedIndexChanged)
         {
            selectedIndex = selectedIndex;
            selectedIndexChanged = false;
         }
         if(selectedItemChanged)
         {
            selectedItem = selectedItem;
            selectedItemChanged = false;
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedIndex() : int
      {
         return _selectedIndex;
      }
   }
}


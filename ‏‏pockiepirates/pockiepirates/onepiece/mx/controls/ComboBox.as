package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import mx.collections.ArrayCollection;
   import mx.collections.CursorBookmark;
   import mx.controls.dataGridClasses.DataGridListData;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.controls.listClasses.ListBase;
   import mx.controls.listClasses.ListData;
   import mx.core.ClassFactory;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IFactory;
   import mx.core.ScrollPolicy;
   import mx.core.UIComponent;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.effects.Tween;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.FlexMouseEvent;
   import mx.events.InterManagerRequest;
   import mx.events.ListEvent;
   import mx.events.SandboxMouseEvent;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.managers.ISystemManager;
   import mx.managers.PopUpManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class ComboBox extends ComboBase implements IDataRenderer, IDropInListItemRenderer, IListItemRenderer
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _labelField:String = "label";
      
      private var dropdownBorderStyle:String = "solid";
      
      private var implicitSelectedIndex:Boolean = false;
      
      private var _selectedIndexOnDropdown:int = -1;
      
      private var preferredDropdownWidth:Number;
      
      private var collectionChanged:Boolean = false;
      
      private var labelFunctionChanged:Boolean;
      
      private var selectedItemSet:Boolean;
      
      private var _dropdownWidth:Number = 100;
      
      private var inTween:Boolean = false;
      
      private var _oldIndex:int;
      
      private var tweenUp:Boolean = false;
      
      private var tween:Tween = null;
      
      private var labelFieldChanged:Boolean;
      
      private var _dropdown:ListBase;
      
      private var _dropdownFactory:IFactory = new ClassFactory(List);
      
      private var explicitText:Boolean;
      
      private var _prompt:String;
      
      private var _data:Object;
      
      private var bInKeyDown:Boolean = false;
      
      private var promptChanged:Boolean = false;
      
      private var _rowCount:int = 5;
      
      private var bRemoveDropdown:Boolean = false;
      
      private var _showingDropdown:Boolean = false;
      
      private var triggerEvent:Event;
      
      private var _listData:BaseListData;
      
      private var _itemRenderer:IFactory;
      
      private var _labelFunction:Function;
      
      public function ComboBox()
      {
         super();
         dataProvider = new ArrayCollection();
         mx_internal::useFullDropdownSkin = true;
         mx_internal::wrapDownArrowButton = false;
         addEventListener("unload",unloadHandler);
         addEventListener(Event.REMOVED_FROM_STAGE,removedFromStageHandler);
      }
      
      override protected function calculatePreferredSizeFromData(count:int) : Object
      {
         var lineMetrics:TextLineMetrics = null;
         var data:Object = null;
         var txt:String = null;
         var maxW:Number = 0;
         var maxH:Number = 0;
         var bookmark:CursorBookmark = iterator ? iterator.bookmark : null;
         iterator.seek(CursorBookmark.FIRST,0);
         var more:Boolean = iterator != null;
         for(var i:int = 0; i < count; i++)
         {
            if(more)
            {
               data = iterator ? iterator.current : null;
            }
            else
            {
               data = null;
            }
            txt = itemToLabel(data);
            lineMetrics = measureText(txt);
            maxW = Math.max(maxW,lineMetrics.width);
            maxH = Math.max(maxH,lineMetrics.height);
            if(iterator)
            {
               iterator.moveNext();
            }
         }
         if(prompt)
         {
            lineMetrics = measureText(prompt);
            maxW = Math.max(maxW,lineMetrics.width);
            maxH = Math.max(maxH,lineMetrics.height);
         }
         maxW += getStyle("paddingLeft") + getStyle("paddingRight");
         if(iterator)
         {
            iterator.seek(bookmark,0);
         }
         return {
            "width":maxW,
            "height":maxH
         };
      }
      
      private function dropdown_scrollHandler(event:Event) : void
      {
         var se:ScrollEvent = null;
         if(event is ScrollEvent)
         {
            se = ScrollEvent(event);
            if(se.detail == ScrollEventDetail.THUMB_TRACK || se.detail == ScrollEventDetail.THUMB_POSITION || se.detail == ScrollEventDetail.LINE_UP || se.detail == ScrollEventDetail.LINE_DOWN)
            {
               dispatchEvent(se);
            }
         }
      }
      
      public function get dropdown() : ListBase
      {
         return getDropdown();
      }
      
      public function get selectedLabel() : String
      {
         var item:Object = selectedItem;
         return itemToLabel(item);
      }
      
      override protected function focusOutHandler(event:FocusEvent) : void
      {
         if(_showingDropdown && Boolean(_dropdown))
         {
            if(!event.relatedObject || !_dropdown.contains(event.relatedObject))
            {
               close();
            }
         }
         super.focusOutHandler(event);
      }
      
      private function popup_moveHandler(event:Event) : void
      {
         destroyDropdown();
      }
      
      private function destroyDropdown() : void
      {
         if(Boolean(_dropdown) && !_showingDropdown)
         {
            if(inTween)
            {
               tween.endTween();
            }
            else
            {
               PopUpManager.removePopUp(_dropdown);
               _dropdown = null;
            }
         }
      }
      
      [Bindable("dropdownWidthChanged")]
      public function get dropdownWidth() : Number
      {
         return _dropdownWidth;
      }
      
      private function unloadHandler(event:Event) : void
      {
         if(inTween)
         {
            UIComponent.resumeBackgroundProcessing();
            inTween = false;
         }
         if(_dropdown)
         {
            _dropdown.parent.removeChild(_dropdown);
         }
      }
      
      public function open() : void
      {
         displayDropdown(true);
      }
      
      public function set data(value:Object) : void
      {
         var newSelectedItem:* = undefined;
         _data = value;
         if(Boolean(_listData) && _listData is DataGridListData)
         {
            newSelectedItem = _data[DataGridListData(_listData).dataField];
         }
         else if(_listData is ListData && ListData(_listData).labelField in _data)
         {
            newSelectedItem = _data[ListData(_listData).labelField];
         }
         else
         {
            newSelectedItem = _data;
         }
         if(newSelectedItem !== undefined && !selectedItemSet)
         {
            selectedItem = newSelectedItem;
            selectedItemSet = false;
         }
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      [Bindable("resize")]
      public function get rowCount() : int
      {
         return Math.max(1,Math.min(collection.length,_rowCount));
      }
      
      override protected function textInput_changeHandler(event:Event) : void
      {
         super.textInput_changeHandler(event);
         dispatchChangeEvent(event,-1,-2);
      }
      
      private function dropdown_itemRollOutHandler(event:Event) : void
      {
         dispatchEvent(event);
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredMinWidth = Math.max(measuredWidth,DEFAULT_MEASURED_MIN_WIDTH);
         var textHeight:Number = measureText("M").height + 6;
         var bm:EdgeMetrics = borderMetrics;
         measuredMinHeight = measuredHeight = Math.max(textHeight + bm.top + bm.bottom,DEFAULT_MEASURED_MIN_HEIGHT);
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            measuredMinHeight = measuredHeight = measuredHeight + (getStyle("paddingTop") + getStyle("paddingBottom"));
         }
      }
      
      private function dropdown_itemRollOverHandler(event:Event) : void
      {
         dispatchEvent(event);
      }
      
      public function get prompt() : String
      {
         return _prompt;
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         var oldIndex:int = 0;
         if(!enabled)
         {
            return;
         }
         if(event.target == textInput)
         {
            return;
         }
         if(event.ctrlKey && event.keyCode == Keyboard.DOWN)
         {
            displayDropdown(true,event);
            event.stopPropagation();
         }
         else if(event.ctrlKey && event.keyCode == Keyboard.UP)
         {
            close(event);
            event.stopPropagation();
         }
         else if(event.keyCode == Keyboard.ESCAPE)
         {
            if(_showingDropdown)
            {
               if(_oldIndex != _dropdown.selectedIndex)
               {
                  selectedIndex = _oldIndex;
               }
               displayDropdown(false);
               event.stopPropagation();
            }
         }
         else if(event.keyCode == Keyboard.ENTER)
         {
            if(_showingDropdown)
            {
               close();
               event.stopPropagation();
            }
         }
         else if(!editable || event.keyCode == Keyboard.UP || event.keyCode == Keyboard.DOWN || event.keyCode == Keyboard.PAGE_UP || event.keyCode == Keyboard.PAGE_DOWN)
         {
            oldIndex = selectedIndex;
            bInKeyDown = _showingDropdown;
            dropdown.dispatchEvent(event.clone());
            event.stopPropagation();
            bInKeyDown = false;
         }
      }
      
      public function set dropdownWidth(value:Number) : void
      {
         _dropdownWidth = value;
         preferredDropdownWidth = value;
         if(_dropdown)
         {
            _dropdown.setActualSize(value,_dropdown.height);
         }
         dispatchEvent(new Event("dropdownWidthChanged"));
      }
      
      [Bindable("labelFieldChanged")]
      public function get labelField() : String
      {
         return _labelField;
      }
      
      public function set dropdownFactory(value:IFactory) : void
      {
         _dropdownFactory = value;
         dispatchEvent(new Event("dropdownFactoryChanged"));
      }
      
      [Bindable("collectionChange")]
      override public function set dataProvider(value:Object) : void
      {
         selectionChanged = true;
         super.dataProvider = value;
         destroyDropdown();
         _showingDropdown = false;
         invalidateProperties();
         invalidateSize();
      }
      
      mx_internal function get isShowingDropdown() : Boolean
      {
         return _showingDropdown;
      }
      
      override protected function collectionChangeHandler(event:Event) : void
      {
         var ce:CollectionEvent = null;
         var curSelectedIndex:int = selectedIndex;
         super.collectionChangeHandler(event);
         if(event is CollectionEvent)
         {
            ce = CollectionEvent(event);
            if(collection.length == 0)
            {
               if(!selectedIndexChanged && !selectedItemChanged)
               {
                  if(super.selectedIndex != -1)
                  {
                     super.selectedIndex = -1;
                  }
                  implicitSelectedIndex = true;
                  invalidateDisplayList();
               }
               if(Boolean(textInput) && !editable)
               {
                  textInput.text = "";
               }
            }
            else if(ce.kind == CollectionEventKind.ADD)
            {
               if(collection.length != ce.items.length)
               {
                  return;
               }
               if(selectedIndex == -1 && _prompt == null)
               {
                  selectedIndex = 0;
               }
            }
            else if(ce.kind == CollectionEventKind.UPDATE)
            {
               if(ce.location == selectedIndex || ce.items[0].source == selectedItem)
               {
                  selectionChanged = true;
               }
            }
            else
            {
               if(ce.kind == CollectionEventKind.REPLACE)
               {
                  return;
               }
               if(ce.kind == CollectionEventKind.RESET)
               {
                  collectionChanged = true;
                  if(!selectedIndexChanged && !selectedItemChanged)
                  {
                     selectedIndex = prompt ? -1 : 0;
                  }
                  invalidateProperties();
               }
            }
            invalidateDisplayList();
            destroyDropdown();
            _showingDropdown = false;
         }
      }
      
      mx_internal function onTweenEnd(value:Number) : void
      {
         if(_dropdown)
         {
            _dropdown.scrollRect = null;
            inTween = false;
            _dropdown.enabled = true;
            _dropdown.visible = _showingDropdown;
         }
         if(bRemoveDropdown)
         {
            _dropdown.removeEventListener(FlexMouseEvent.MOUSE_DOWN_OUTSIDE,dropdown_mouseOutsideHandler);
            _dropdown.removeEventListener(FlexMouseEvent.MOUSE_WHEEL_OUTSIDE,dropdown_mouseOutsideHandler);
            _dropdown.removeEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,dropdown_mouseOutsideHandler);
            _dropdown.removeEventListener(SandboxMouseEvent.MOUSE_WHEEL_SOMEWHERE,dropdown_mouseOutsideHandler);
            PopUpManager.removePopUp(_dropdown);
            _dropdown = null;
            bRemoveDropdown = false;
         }
         UIComponent.resumeBackgroundProcessing();
         var cbdEvent:DropdownEvent = new DropdownEvent(_showingDropdown ? DropdownEvent.OPEN : DropdownEvent.CLOSE);
         cbdEvent.triggerEvent = triggerEvent;
         dispatchEvent(cbdEvent);
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      private function getDropdown() : ListBase
      {
         var dropDownStyleName:String = null;
         var styleDecl:CSSStyleDeclaration = null;
         if(!initialized)
         {
            return null;
         }
         if(!hasDropdown())
         {
            dropDownStyleName = getStyle("dropDownStyleName");
            if(dropDownStyleName == null)
            {
               dropDownStyleName = getStyle("dropdownStyleName");
            }
            _dropdown = dropdownFactory.newInstance();
            _dropdown.visible = false;
            _dropdown.focusEnabled = false;
            _dropdown.owner = this;
            if(itemRenderer)
            {
               _dropdown.itemRenderer = itemRenderer;
            }
            if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               _dropdown.styleName = this;
            }
            if(dropDownStyleName)
            {
               if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
               {
                  styleDecl = StyleManager.getStyleDeclaration("." + dropDownStyleName);
                  if(styleDecl)
                  {
                     _dropdown.styleDeclaration = styleDecl;
                  }
               }
               else
               {
                  _dropdown.styleName = dropDownStyleName;
               }
            }
            else if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               _dropdown.setStyle("cornerRadius",0);
            }
            PopUpManager.addPopUp(_dropdown,this);
            _dropdown.setStyle("selectionDuration",0);
            if(Boolean(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0) && Boolean(dropdownBorderStyle) && dropdownBorderStyle != "")
            {
               _dropdown.setStyle("borderStyle",dropdownBorderStyle);
            }
            if(!dataProvider)
            {
               dataProvider = new ArrayCollection();
            }
            _dropdown.dataProvider = dataProvider;
            _dropdown.rowCount = rowCount;
            _dropdown.width = _dropdownWidth;
            _dropdown.selectedIndex = selectedIndex;
            _oldIndex = selectedIndex;
            _dropdown.verticalScrollPolicy = ScrollPolicy.AUTO;
            _dropdown.labelField = _labelField;
            _dropdown.labelFunction = _labelFunction;
            _dropdown.allowDragSelection = true;
            _dropdown.addEventListener("change",dropdown_changeHandler);
            _dropdown.addEventListener(ScrollEvent.SCROLL,dropdown_scrollHandler);
            _dropdown.addEventListener(ListEvent.ITEM_ROLL_OVER,dropdown_itemRollOverHandler);
            _dropdown.addEventListener(ListEvent.ITEM_ROLL_OUT,dropdown_itemRollOutHandler);
            _dropdown.addEventListener(ListEvent.ITEM_CLICK,dropdown_itemClickHandler);
            UIComponentGlobals.layoutManager.validateClient(_dropdown,true);
            _dropdown.setActualSize(_dropdownWidth,_dropdown.getExplicitOrMeasuredHeight());
            _dropdown.validateDisplayList();
            _dropdown.cacheAsBitmap = true;
            systemManager.addEventListener(Event.RESIZE,stage_resizeHandler,false,0,true);
         }
         _dropdown.scaleX = scaleX;
         _dropdown.scaleY = scaleY;
         return _dropdown;
      }
      
      private function stage_resizeHandler(event:Event) : void
      {
         if(_dropdown)
         {
            _dropdown.$visible = false;
            _showingDropdown = false;
         }
      }
      
      override protected function downArrowButton_buttonDownHandler(event:FlexEvent) : void
      {
         if(_showingDropdown)
         {
            close(event);
         }
         else
         {
            displayDropdown(true,event);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("collectionChange")]
      [Bindable("change")]
      override public function set selectedItem(value:Object) : void
      {
         selectedItemSet = true;
         super.selectedItem = value;
      }
      
      override protected function initializeAccessibility() : void
      {
         if(ComboBox.createAccessibilityImplementation != null)
         {
            ComboBox.createAccessibilityImplementation(this);
         }
      }
      
      public function itemToLabel(item:Object) : String
      {
         if(item == null)
         {
            return "";
         }
         if(labelFunction != null)
         {
            return labelFunction(item);
         }
         if(typeof item == "object")
         {
            try
            {
               if(item[labelField] != null)
               {
                  item = item[labelField];
               }
            }
            catch(e:Error)
            {
            }
         }
         else if(typeof item == "xml")
         {
            try
            {
               if(item[labelField].length() != 0)
               {
                  item = item[labelField];
               }
            }
            catch(e:Error)
            {
            }
         }
         if(typeof item == "string")
         {
            return String(item);
         }
         try
         {
            return item.toString();
         }
         catch(e:Error)
         {
         }
         return " ";
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      mx_internal function onTweenUpdate(value:Number) : void
      {
         if(_dropdown)
         {
            _dropdown.scrollRect = new Rectangle(0,value,_dropdown.width,_dropdown.height);
         }
      }
      
      private function removedFromStageHandler(event:Event) : void
      {
         destroyDropdown();
      }
      
      private function dropdown_mouseOutsideHandler(event:Event) : void
      {
         var mouseEvent:MouseEvent = null;
         if(event is MouseEvent)
         {
            mouseEvent = MouseEvent(event);
            if(mouseEvent.target != _dropdown)
            {
               return;
            }
            if(!hitTestPoint(mouseEvent.stageX,mouseEvent.stageY,true))
            {
               close(event);
            }
         }
         else if(event is SandboxMouseEvent)
         {
            close(event);
         }
      }
      
      [Bindable("dropdownFactoryChanged")]
      public function get dropdownFactory() : IFactory
      {
         return _dropdownFactory;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         destroyDropdown();
         super.styleChanged(styleProp);
      }
      
      public function set prompt(value:String) : void
      {
         _prompt = value;
         promptChanged = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         explicitText = textChanged;
         super.commitProperties();
         if(collectionChanged)
         {
            if(selectedIndex == -1 && implicitSelectedIndex && _prompt == null)
            {
               selectedIndex = 0;
            }
            selectedIndexChanged = true;
            collectionChanged = false;
         }
         if(promptChanged && prompt != null && selectedIndex == -1)
         {
            promptChanged = false;
            textInput.text = prompt;
         }
      }
      
      mx_internal function hasDropdown() : Boolean
      {
         return _dropdown != null;
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
      
      public function set labelField(value:String) : void
      {
         _labelField = value;
         labelFieldChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("labelFieldChanged"));
      }
      
      public function set labelFunction(value:Function) : void
      {
         _labelFunction = value;
         labelFunctionChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("labelFunctionChanged"));
      }
      
      protected function get dropDownStyleFilters() : Object
      {
         return null;
      }
      
      public function set rowCount(value:int) : void
      {
         _rowCount = value;
         if(_dropdown)
         {
            _dropdown.rowCount = value;
         }
      }
      
      private function dropdown_changeHandler(event:Event) : void
      {
         var prevValue:int = selectedIndex;
         if(_dropdown)
         {
            selectedIndex = _dropdown.selectedIndex;
         }
         if(!_showingDropdown)
         {
            dispatchChangeEvent(event,prevValue,selectedIndex);
         }
         else if(!bInKeyDown)
         {
            close();
         }
      }
      
      private function dropdown_itemClickHandler(event:ListEvent) : void
      {
         if(_showingDropdown)
         {
            close();
         }
      }
      
      [Bindable("labelFunctionChanged")]
      public function get labelFunction() : Function
      {
         return _labelFunction;
      }
      
      [Bindable("valueCommit")]
      [Bindable("collectionChange")]
      [Bindable("change")]
      override public function set selectedIndex(value:int) : void
      {
         super.selectedIndex = value;
         if(value >= 0)
         {
            selectionChanged = true;
         }
         implicitSelectedIndex = false;
         invalidateDisplayList();
         if(Boolean(textInput) && Boolean(!textChanged) && value >= 0)
         {
            textInput.text = selectedLabel;
         }
         else if(Boolean(textInput) && Boolean(prompt))
         {
            textInput.text = prompt;
         }
      }
      
      private function dispatchChangeEvent(oldEvent:Event, prevValue:int, newValue:int) : void
      {
         var newEvent:Event = null;
         if(prevValue != newValue)
         {
            newEvent = oldEvent is ListEvent ? oldEvent : new ListEvent("change");
            dispatchEvent(newEvent);
         }
      }
      
      private function displayDropdown(show:Boolean, trigger:Event = null) : void
      {
         var initY:Number = NaN;
         var endY:Number = NaN;
         var duration:Number = NaN;
         var easingFunction:Function = null;
         var screen:Rectangle = null;
         var request:InterManagerRequest = null;
         var sel:int = 0;
         var pos:Number = NaN;
         if(!initialized || show == _showingDropdown)
         {
            return;
         }
         var point:Point = new Point(0,unscaledHeight);
         point = localToGlobal(point);
         var sm:ISystemManager = systemManager.topLevelSystemManager;
         var sbRoot:DisplayObject = sm.getSandboxRoot();
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
         if(show)
         {
            _selectedIndexOnDropdown = selectedIndex;
            getDropdown();
            _dropdown.addEventListener(FlexMouseEvent.MOUSE_DOWN_OUTSIDE,dropdown_mouseOutsideHandler);
            _dropdown.addEventListener(FlexMouseEvent.MOUSE_WHEEL_OUTSIDE,dropdown_mouseOutsideHandler);
            _dropdown.addEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,dropdown_mouseOutsideHandler);
            _dropdown.addEventListener(SandboxMouseEvent.MOUSE_WHEEL_SOMEWHERE,dropdown_mouseOutsideHandler);
            if(_dropdown.parent == null)
            {
               PopUpManager.addPopUp(_dropdown,this);
            }
            else
            {
               PopUpManager.bringToFront(_dropdown);
            }
            if(point.y + _dropdown.height > screen.bottom && point.y > screen.top + _dropdown.height)
            {
               point.y -= unscaledHeight + _dropdown.height;
               initY = -_dropdown.height;
               tweenUp = true;
            }
            else
            {
               initY = _dropdown.height;
               tweenUp = false;
            }
            point = _dropdown.parent.globalToLocal(point);
            sel = _dropdown.selectedIndex;
            if(sel == -1)
            {
               sel = 0;
            }
            pos = _dropdown.verticalScrollPosition;
            pos = sel - 1;
            pos = Math.min(Math.max(pos,0),_dropdown.maxVerticalScrollPosition);
            _dropdown.verticalScrollPosition = pos;
            if(_dropdown.x != point.x || _dropdown.y != point.y)
            {
               _dropdown.move(point.x,point.y);
            }
            _dropdown.scrollRect = new Rectangle(0,initY,_dropdown.width,_dropdown.height);
            if(!_dropdown.visible)
            {
               _dropdown.visible = true;
            }
            bRemoveDropdown = false;
            _showingDropdown = show;
            duration = getStyle("openDuration");
            endY = 0;
            easingFunction = getStyle("openEasingFunction") as Function;
         }
         else if(_dropdown)
         {
            endY = point.y + _dropdown.height > screen.bottom || tweenUp ? -_dropdown.height : _dropdown.height;
            _showingDropdown = show;
            initY = 0;
            duration = getStyle("closeDuration");
            easingFunction = getStyle("closeEasingFunction") as Function;
            _dropdown.resetDragScrolling();
         }
         inTween = true;
         UIComponentGlobals.layoutManager.validateNow();
         UIComponent.suspendBackgroundProcessing();
         if(_dropdown)
         {
            _dropdown.enabled = false;
         }
         duration = Math.max(1,duration);
         tween = new Tween(this,initY,endY,duration);
         if(easingFunction != null && Boolean(tween))
         {
            tween.easingFunction = easingFunction;
         }
         triggerEvent = trigger;
      }
      
      public function get itemRenderer() : IFactory
      {
         return _itemRenderer;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(Boolean(_dropdown) && !inTween)
         {
            destroyDropdown();
         }
         else if(!_showingDropdown && inTween)
         {
            bRemoveDropdown = true;
         }
         var ddw:Number = preferredDropdownWidth;
         if(isNaN(ddw))
         {
            ddw = _dropdownWidth = unscaledWidth;
         }
         if(labelFieldChanged)
         {
            if(_dropdown)
            {
               _dropdown.labelField = _labelField;
            }
            selectionChanged = true;
            if(!explicitText)
            {
               textInput.text = selectedLabel;
            }
            labelFieldChanged = false;
         }
         if(labelFunctionChanged)
         {
            if(_dropdown)
            {
               _dropdown.labelFunction = _labelFunction;
            }
            selectionChanged = true;
            if(!explicitText)
            {
               textInput.text = selectedLabel;
            }
            labelFunctionChanged = false;
         }
         if(selectionChanged)
         {
            if(!textChanged)
            {
               if(selectedIndex == -1 && Boolean(prompt))
               {
                  textInput.text = prompt;
               }
               else if(!explicitText)
               {
                  textInput.text = selectedLabel;
               }
            }
            textInput.invalidateDisplayList();
            textInput.validateNow();
            if(editable)
            {
               textInput.getTextField().setSelection(0,textInput.text.length);
               textInput.getTextField().scrollH = 0;
            }
            if(_dropdown)
            {
               _dropdown.selectedIndex = selectedIndex;
            }
            selectionChanged = false;
         }
         if(Boolean(_dropdown) && _dropdown.rowCount != rowCount)
         {
            _dropdown.rowCount = rowCount;
         }
      }
      
      public function close(trigger:Event = null) : void
      {
         if(_showingDropdown)
         {
            if(Boolean(_dropdown) && selectedIndex != _dropdown.selectedIndex)
            {
               selectedIndex = _dropdown.selectedIndex;
            }
            displayDropdown(false,trigger);
            dispatchChangeEvent(new Event("dummy"),_selectedIndexOnDropdown,selectedIndex);
         }
      }
      
      public function set itemRenderer(value:IFactory) : void
      {
         _itemRenderer = value;
         if(_dropdown)
         {
            _dropdown.itemRenderer = value;
         }
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("itemRendererChanged"));
      }
      
      override public function set showInAutomationHierarchy(value:Boolean) : void
      {
      }
   }
}


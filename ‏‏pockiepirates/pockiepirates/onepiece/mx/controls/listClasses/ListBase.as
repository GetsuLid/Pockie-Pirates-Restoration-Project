package mx.controls.listClasses
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.collections.ArrayCollection;
   import mx.collections.CursorBookmark;
   import mx.collections.ICollectionView;
   import mx.collections.IList;
   import mx.collections.IViewCursor;
   import mx.collections.ItemResponder;
   import mx.collections.ItemWrapper;
   import mx.collections.ListCollectionView;
   import mx.collections.ModifiedCollectionView;
   import mx.collections.XMLListCollection;
   import mx.collections.errors.CursorError;
   import mx.collections.errors.ItemPendingError;
   import mx.controls.dataGridClasses.DataGridListData;
   import mx.core.DragSource;
   import mx.core.EdgeMetrics;
   import mx.core.EventPriority;
   import mx.core.FlexShape;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IFactory;
   import mx.core.IFlexDisplayObject;
   import mx.core.IInvalidating;
   import mx.core.IUIComponent;
   import mx.core.IUID;
   import mx.core.IUITextField;
   import mx.core.ScrollControlBase;
   import mx.core.ScrollPolicy;
   import mx.core.SpriteAsset;
   import mx.core.mx_internal;
   import mx.effects.IEffect;
   import mx.effects.IEffectTargetHost;
   import mx.effects.Tween;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.DragEvent;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MoveEvent;
   import mx.events.SandboxMouseEvent;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.events.ScrollEventDirection;
   import mx.events.TweenEvent;
   import mx.managers.DragManager;
   import mx.managers.IFocusManagerComponent;
   import mx.managers.ISystemManager;
   import mx.skins.halo.ListDropIndicator;
   import mx.styles.StyleManager;
   import mx.styles.StyleProxy;
   import mx.utils.ObjectUtil;
   import mx.utils.UIDUtil;
   
   use namespace mx_internal;
   
   public class ListBase extends ScrollControlBase implements IDataRenderer, IFocusManagerComponent, IListItemRenderer, IDropInListItemRenderer, IEffectTargetHost
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      mx_internal static const DRAG_THRESHOLD:int = 4;
      
      private static var _listContentStyleFilters:Object = null;
      
      private var _labelField:String = "label";
      
      private var trackedRenderers:Array = [];
      
      mx_internal var bSelectionChanged:Boolean = false;
      
      protected var offscreenExtraColumnsLeft:int = 0;
      
      protected var selectionTweens:Object = {};
      
      protected var caretItemRenderer:IListItemRenderer;
      
      protected var actualIterator:IViewCursor;
      
      protected var iteratorValid:Boolean = true;
      
      private var bSelectItem:Boolean = false;
      
      private var _allowMultipleSelection:Boolean = false;
      
      protected var cachedItemsChangeEffect:IEffect = null;
      
      private var lastSelectionData:ListBaseSelectionData;
      
      protected var iterator:IViewCursor;
      
      protected var rendererChanged:Boolean = false;
      
      protected var unconstrainedRenderers:Dictionary = new Dictionary();
      
      protected var freeItemRenderersByFactory:Dictionary;
      
      private var columnWidthChanged:Boolean = false;
      
      protected var explicitColumnCount:int = -1;
      
      private var _data:Object;
      
      private var bSelectedItemsChanged:Boolean = false;
      
      protected var defaultRowCount:int = 4;
      
      private var _rowCount:int = -1;
      
      protected var offscreenExtraRowsTop:int = 0;
      
      private var _dataTipField:String = "label";
      
      private var cachedPaddingTopInvalid:Boolean = true;
      
      protected var selectedData:Object = {};
      
      private var _labelFunction:Function;
      
      mx_internal var listType:String = "grid";
      
      private var cachedPaddingBottomInvalid:Boolean = true;
      
      protected var runningDataEffect:Boolean = false;
      
      protected var runDataEffectNextUpdate:Boolean = false;
      
      private var bShiftKey:Boolean = false;
      
      private var columnCountChanged:Boolean = true;
      
      protected var rowMap:Object = {};
      
      mx_internal var _selectedIndex:int = -1;
      
      mx_internal var collectionIterator:IViewCursor;
      
      protected var lastDropIndex:int;
      
      private var bCtrlKey:Boolean = false;
      
      private var oldUnscaledHeight:Number;
      
      protected var explicitColumnWidth:Number;
      
      private var _dataTipFunction:Function;
      
      private var _iconFunction:Function;
      
      protected var dataItemWrappersByRenderer:Dictionary = new Dictionary(true);
      
      protected var itemsNeedMeasurement:Boolean = true;
      
      protected var offscreenExtraRowsBottom:int = 0;
      
      protected var modifiedCollectionView:ModifiedCollectionView;
      
      private var _columnCount:int = -1;
      
      private var rowCountChanged:Boolean = true;
      
      protected var wordWrapChanged:Boolean = false;
      
      protected var explicitRowCount:int = -1;
      
      protected var offscreenExtraRows:int = 0;
      
      private var _dragEnabled:Boolean = false;
      
      private var bSortItemPending:Boolean = false;
      
      protected var caretIndicator:Sprite;
      
      protected var caretUID:String;
      
      protected var caretBookmark:CursorBookmark;
      
      public var allowDragSelection:Boolean = false;
      
      mx_internal var allowRendererStealingDuringLayout:Boolean = true;
      
      private var _selectable:Boolean = true;
      
      protected var listContent:ListBaseContentHolder;
      
      private var _showDataTips:Boolean = false;
      
      private var _variableRowHeight:Boolean = false;
      
      private var cachedVerticalAlignInvalid:Boolean = true;
      
      private var _dragMoveEnabled:Boolean = false;
      
      private var _rowHeight:Number;
      
      private var _selectedItem:Object;
      
      public var menuSelectionMode:Boolean = false;
      
      mx_internal var cachedPaddingTop:Number;
      
      private var _selectedIndices:Array;
      
      private var _columnWidth:Number;
      
      protected var defaultColumnCount:int = 4;
      
      private var rendererTrackingSuspended:Boolean = false;
      
      private var oldUnscaledWidth:Number;
      
      private var _nullItemRenderer:IFactory;
      
      mx_internal var bColumnScrolling:Boolean = true;
      
      protected var showCaret:Boolean;
      
      private var firstSelectionData:ListBaseSelectionData;
      
      private var mouseDownItem:IListItemRenderer;
      
      protected var collection:ICollectionView;
      
      protected var offscreenExtraRowsOrColumnsChanged:Boolean = false;
      
      private var _offscreenExtraRowsOrColumns:int = 0;
      
      private var _iconField:String = "icon";
      
      protected var dataEffectCompleted:Boolean = false;
      
      private var bSelectedItemChanged:Boolean = false;
      
      private var _listData:BaseListData;
      
      mx_internal var bSelectOnRelease:Boolean;
      
      protected var actualCollection:ICollectionView;
      
      mx_internal var lastHighlightItemRenderer:IListItemRenderer;
      
      private var _itemRenderer:IFactory;
      
      private var itemMaskFreeList:Array;
      
      protected var keySelectionPending:Boolean = false;
      
      private var mouseDownPoint:Point;
      
      protected var selectionIndicators:Object = {};
      
      protected var highlightUID:String;
      
      mx_internal var dragScrollingInterval:int = 0;
      
      protected var anchorBookmark:CursorBookmark;
      
      protected var caretIndex:int = -1;
      
      protected var offscreenExtraColumnsRight:int = 0;
      
      private var approximate:Boolean = false;
      
      protected var anchorIndex:int = -1;
      
      protected var selectionLayer:Sprite;
      
      protected var freeItemRenderers:Array = [];
      
      mx_internal var bSelectedIndexChanged:Boolean = false;
      
      mx_internal var cachedVerticalAlign:String;
      
      private var lastHighlightItemIndices:Point;
      
      mx_internal var lastHighlightItemRendererAtIndices:IListItemRenderer;
      
      protected var lastSeekPending:ListBaseSeekPending;
      
      private var bSelectedIndicesChanged:Boolean = false;
      
      private var _dropEnabled:Boolean = false;
      
      protected var itemsSizeChanged:Boolean = false;
      
      mx_internal var isPressed:Boolean = false;
      
      private var IS_ITEM_STYLE:Object = {
         "alternatingItemColors":true,
         "backgroundColor":true,
         "backgroundDisabledColor":true,
         "color":true,
         "rollOverColor":true,
         "selectionColor":true,
         "selectionDisabledColor":true,
         "styleName":true,
         "textColor":true,
         "textRollOverColor":true,
         "textSelectedColor":true
      };
      
      mx_internal var cachedPaddingBottom:Number;
      
      protected var highlightIndicator:Sprite;
      
      private var verticalScrollPositionPending:Number;
      
      protected var explicitRowHeight:Number;
      
      protected var highlightItemRenderer:IListItemRenderer;
      
      private var rowHeightChanged:Boolean = false;
      
      mx_internal var lastDragEvent:DragEvent;
      
      private var _wordWrap:Boolean = false;
      
      private var horizontalScrollPositionPending:Number;
      
      mx_internal var dropIndicator:IFlexDisplayObject;
      
      private var _selectedItems:Array;
      
      protected var offscreenExtraColumns:int = 0;
      
      private var lastKey:uint = 0;
      
      protected var factoryMap:Dictionary;
      
      protected var reservedItemRenderers:Object = {};
      
      public function ListBase()
      {
         super();
         tabEnabled = true;
         factoryMap = new Dictionary(true);
         addEventListener(MouseEvent.MOUSE_WHEEL,mouseWheelHandler);
         addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
         addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler);
         addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         addEventListener(MouseEvent.CLICK,mouseClickHandler);
         addEventListener(MouseEvent.DOUBLE_CLICK,mouseDoubleClickHandler);
         invalidateProperties();
      }
      
      [Bindable("iconFieldChanged")]
      public function get iconField() : String
      {
         return _iconField;
      }
      
      public function set iconField(value:String) : void
      {
         _iconField = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("iconFieldChanged"));
      }
      
      mx_internal function getItemUID(data:Object) : String
      {
         return itemToUID(data);
      }
      
      public function measureWidthOfItems(index:int = -1, count:int = 0) : Number
      {
         return NaN;
      }
      
      private function terminateSelectionTracking() : void
      {
         var renderer:IListItemRenderer = null;
         for(var i:int = 0; i < trackedRenderers.length; i++)
         {
            renderer = trackedRenderers[i] as IListItemRenderer;
            renderer.removeEventListener(MoveEvent.MOVE,rendererMoveHandler);
         }
         trackedRenderers = [];
      }
      
      public function get columnWidth() : Number
      {
         return _columnWidth;
      }
      
      public function createItemRenderer(data:Object) : IListItemRenderer
      {
         return null;
      }
      
      protected function clearSelected(transition:Boolean = false) : void
      {
         var uniqueID:String = null;
         var data:Object = null;
         var item:IListItemRenderer = null;
         for(uniqueID in selectedData)
         {
            data = selectedData[uniqueID].data;
            removeSelectionData(uniqueID);
            item = UIDToItemRenderer(itemToUID(data));
            if(item)
            {
               drawItem(item,false,uniqueID == highlightUID,false,transition);
            }
         }
         clearSelectionData();
         _selectedIndex = -1;
         _selectedItem = null;
         caretIndex = -1;
         anchorIndex = -1;
         caretBookmark = null;
         anchorBookmark = null;
      }
      
      protected function addToRowArrays() : void
      {
         listItems.splice(0,0,null);
         rowInfo.splice(0,0,null);
      }
      
      public function get nullItemRenderer() : IFactory
      {
         return _nullItemRenderer;
      }
      
      [Bindable("showDataTipsChanged")]
      public function get showDataTips() : Boolean
      {
         return _showDataTips;
      }
      
      public function set columnWidth(value:Number) : void
      {
         explicitColumnWidth = value;
         if(_columnWidth != value)
         {
            setColumnWidth(value);
            invalidateSize();
            itemsSizeChanged = true;
            invalidateDisplayList();
            dispatchEvent(new Event("columnWidthChanged"));
         }
      }
      
      protected function scrollHorizontally(pos:int, deltaPos:int, scrollUp:Boolean) : void
      {
      }
      
      protected function drawHighlightIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         var g:Graphics = Sprite(indicator).graphics;
         g.clear();
         g.beginFill(color);
         g.drawRect(0,0,width,height);
         g.endFill();
         indicator.x = x;
         indicator.y = y;
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      override public function get verticalScrollPosition() : Number
      {
         if(!isNaN(verticalScrollPositionPending))
         {
            return verticalScrollPositionPending;
         }
         return super.verticalScrollPosition;
      }
      
      protected function drawCaretIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         var g:Graphics = Sprite(indicator).graphics;
         g.clear();
         g.lineStyle(1,color,1);
         g.drawRect(0,0,width - 1,height - 1);
         indicator.x = x;
         indicator.y = y;
      }
      
      private function makeAdditionalRows(rowIndex:int) : void
      {
         var curY:Number;
         var cursorPos:CursorBookmark = null;
         if(iterator)
         {
            cursorPos = iterator.bookmark;
            try
            {
               iterator.seek(CursorBookmark.CURRENT,listItems.length);
            }
            catch(e:ItemPendingError)
            {
               lastSeekPending = new ListBaseSeekPending(CursorBookmark.CURRENT,listItems.length);
               e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
               iteratorValid = false;
            }
         }
         curY = rowInfo[rowIndex].y + rowInfo[rowIndex].height;
         makeRowsAndColumns(0,curY,listContent.width,listContent.height,0,rowIndex + 1);
         seekPositionIgnoreError(iterator,cursorPos);
      }
      
      public function set showDataTips(value:Boolean) : void
      {
         _showDataTips = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("showDataTipsChanged"));
      }
      
      public function set nullItemRenderer(value:IFactory) : void
      {
         _nullItemRenderer = value;
         invalidateSize();
         invalidateDisplayList();
         itemsSizeChanged = true;
         rendererChanged = true;
         dispatchEvent(new Event("nullItemRendererChanged"));
      }
      
      protected function moveIndicatorsHorizontally(uid:String, moveBlockDistance:Number) : void
      {
         if(uid != null)
         {
            if(selectionIndicators[uid])
            {
               selectionIndicators[uid].x += moveBlockDistance;
            }
            if(highlightUID == uid)
            {
               highlightIndicator.x += moveBlockDistance;
            }
            if(caretUID == uid)
            {
               caretIndicator.x += moveBlockDistance;
            }
         }
      }
      
      private function seekPreviousSafely(iterator:IViewCursor, pos:int) : Boolean
      {
         try
         {
            iterator.movePrevious();
         }
         catch(e:ItemPendingError)
         {
            lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,pos);
            e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
            iteratorValid = false;
         }
         return iteratorValid;
      }
      
      public function measureHeightOfItems(index:int = -1, count:int = 0) : Number
      {
         return NaN;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedItem() : Object
      {
         return _selectedItem;
      }
      
      protected function mouseMoveHandler(event:MouseEvent) : void
      {
         var pt:Point = null;
         var item:IListItemRenderer = null;
         var dragEvent:DragEvent = null;
         var rowData:BaseListData = null;
         if(!enabled || !selectable)
         {
            return;
         }
         pt = new Point(event.localX,event.localY);
         pt = DisplayObject(event.target).localToGlobal(pt);
         pt = globalToLocal(pt);
         if(Boolean(isPressed) && Boolean(mouseDownPoint) && (Math.abs(mouseDownPoint.x - pt.x) > DRAG_THRESHOLD || Math.abs(mouseDownPoint.y - pt.y) > DRAG_THRESHOLD))
         {
            if(dragEnabled && !DragManager.isDragging && Boolean(mouseDownPoint))
            {
               dragEvent = new DragEvent(DragEvent.DRAG_START);
               dragEvent.dragInitiator = this;
               dragEvent.localX = mouseDownPoint.x;
               dragEvent.localY = mouseDownPoint.y;
               dragEvent.buttonDown = true;
               dispatchEvent(dragEvent);
            }
         }
         item = mouseEventToItemRenderer(event);
         if(Boolean(item) && Boolean(highlightItemRenderer))
         {
            rowData = rowMap[item.name];
            if(Boolean(highlightItemRenderer) && Boolean(highlightUID) && rowData.uid != highlightUID)
            {
               if(!isPressed)
               {
                  if(Boolean(getStyle("useRollOver")) && highlightItemRenderer.data != null)
                  {
                     clearHighlight(highlightItemRenderer);
                  }
               }
            }
         }
         else if(!item && Boolean(highlightItemRenderer))
         {
            if(!isPressed)
            {
               if(Boolean(getStyle("useRollOver")) && Boolean(highlightItemRenderer.data))
               {
                  clearHighlight(highlightItemRenderer);
               }
            }
         }
         if(Boolean(item) && !highlightItemRenderer)
         {
            mouseOverHandler(event);
         }
      }
      
      public function get selectable() : Boolean
      {
         return _selectable;
      }
      
      protected function seekPendingFailureHandler(data:Object, info:ListBaseSeekPending) : void
      {
      }
      
      override public function set verticalScrollPosition(value:Number) : void
      {
         var deltaPos:int = 0;
         var direction:Boolean = false;
         if(listItems.length == 0 || !dataProvider || !isNaN(verticalScrollPositionPending))
         {
            verticalScrollPositionPending = value;
            if(dataProvider)
            {
               invalidateDisplayList();
            }
            return;
         }
         verticalScrollPositionPending = NaN;
         var oldValue:int = super.verticalScrollPosition;
         super.verticalScrollPosition = value;
         removeClipMask();
         var oldoffscreenExtraRowsTop:int = offscreenExtraRowsTop;
         var oldoffscreenExtraRowsBottom:int = offscreenExtraRowsBottom;
         if(oldValue != value)
         {
            deltaPos = value - oldValue;
            direction = deltaPos > 0;
            deltaPos = Math.abs(deltaPos);
            if(deltaPos >= rowInfo.length - offscreenExtraRows || !iteratorValid)
            {
               clearIndicators();
               clearVisibleData();
               makeRowsAndColumnsWithExtraRows(oldUnscaledWidth,oldUnscaledHeight);
            }
            else
            {
               scrollVertically(value,deltaPos,direction);
               adjustListContent(oldUnscaledWidth,oldUnscaledHeight);
            }
            if(variableRowHeight)
            {
               configureScrollBars();
            }
            drawRowBackgrounds();
         }
         addClipMask(offscreenExtraRowsTop != oldoffscreenExtraRowsTop || offscreenExtraRowsBottom != oldoffscreenExtraRowsBottom);
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      override public function get horizontalScrollPosition() : Number
      {
         if(!isNaN(horizontalScrollPositionPending))
         {
            return horizontalScrollPositionPending;
         }
         return super.horizontalScrollPosition;
      }
      
      protected function itemRendererToIndices(item:IListItemRenderer) : Point
      {
         if(!item || !(item.name in rowMap))
         {
            return null;
         }
         var index:int = int(rowMap[item.name].rowIndex);
         var len:int = int(listItems[index].length);
         for(var i:int = 0; i < len; i++)
         {
            if(listItems[index][i] == item)
            {
               break;
            }
         }
         return new Point(i + horizontalScrollPosition,index + verticalScrollPosition + offscreenExtraRowsTop);
      }
      
      private function reduceRows(rowIndex:int) : void
      {
         var colLen:int = 0;
         var j:int = 0;
         var uid:String = null;
         while(rowIndex >= 0)
         {
            if(rowInfo[rowIndex].y < listContent.height)
            {
               break;
            }
            colLen = int(listItems[rowIndex].length);
            for(j = 0; j < colLen; j++)
            {
               addToFreeItemRenderers(listItems[rowIndex][j]);
            }
            uid = rowInfo[rowIndex].uid;
            delete visibleData[uid];
            removeIndicators(uid);
            listItems.pop();
            rowInfo.pop();
            rowIndex--;
         }
      }
      
      public function get dragMoveEnabled() : Boolean
      {
         return _dragMoveEnabled;
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         var li:IListItemRenderer = null;
         var pt:Point = null;
         var evt:ListEvent = null;
         if(!selectable)
         {
            return;
         }
         if(!iteratorValid)
         {
            return;
         }
         if(!collection)
         {
            return;
         }
         switch(event.keyCode)
         {
            case Keyboard.UP:
            case Keyboard.DOWN:
               moveSelectionVertically(event.keyCode,event.shiftKey,event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.LEFT:
            case Keyboard.RIGHT:
               moveSelectionHorizontally(event.keyCode,event.shiftKey,event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.END:
            case Keyboard.HOME:
            case Keyboard.PAGE_UP:
            case Keyboard.PAGE_DOWN:
               moveSelectionVertically(event.keyCode,event.shiftKey,event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.SPACE:
               if(caretIndex != -1 && caretIndex - verticalScrollPosition >= 0 && caretIndex - verticalScrollPosition < listItems.length)
               {
                  li = listItems[caretIndex - verticalScrollPosition][0];
                  if(selectItem(li,event.shiftKey,event.ctrlKey))
                  {
                     pt = itemRendererToIndices(li);
                     evt = new ListEvent(ListEvent.CHANGE);
                     if(pt)
                     {
                        evt.columnIndex = pt.x;
                        evt.rowIndex = pt.y;
                     }
                     evt.itemRenderer = li;
                     dispatchEvent(evt);
                  }
               }
               break;
            default:
               if(findKey(event.keyCode))
               {
                  event.stopPropagation();
               }
         }
      }
      
      protected function reKeyVisibleData() : void
      {
         var item:Object = null;
         var newVisibleData:Object = {};
         for each(item in visibleData)
         {
            if(item.data)
            {
               newVisibleData[itemToUID(item.data)] = item;
            }
         }
         listContent.visibleData = newVisibleData;
      }
      
      protected function copySelectedItems(useDataField:Boolean = true) : Array
      {
         var tmp:Array = [];
         var curSelectionData:ListBaseSelectionData = firstSelectionData;
         while(curSelectionData != null)
         {
            if(useDataField)
            {
               tmp.push(curSelectionData.data);
            }
            else
            {
               tmp.push(curSelectionData.index);
            }
            curSelectionData = curSelectionData.nextSelectionData;
         }
         return tmp;
      }
      
      public function invalidateList() : void
      {
         itemsSizeChanged = true;
         invalidateDisplayList();
      }
      
      protected function moveIndicatorsVertically(uid:String, moveBlockDistance:Number) : void
      {
         if(uid != null)
         {
            if(selectionIndicators[uid])
            {
               selectionIndicators[uid].y += moveBlockDistance;
            }
            if(highlightUID == uid)
            {
               highlightIndicator.y += moveBlockDistance;
            }
            if(caretUID == uid)
            {
               caretIndicator.y += moveBlockDistance;
            }
         }
      }
      
      public function indexToItemRenderer(index:int) : IListItemRenderer
      {
         var firstItemIndex:int = verticalScrollPosition - offscreenExtraRowsTop;
         if(index < firstItemIndex || index >= firstItemIndex + listItems.length)
         {
            return null;
         }
         return listItems[index - firstItemIndex][0];
      }
      
      protected function get dragImage() : IUIComponent
      {
         var image:ListItemDragProxy = new ListItemDragProxy();
         image.owner = this;
         image.moduleFactory = moduleFactory;
         return image;
      }
      
      protected function copyItemWithUID(item:Object) : Object
      {
         var copyObj:Object = null;
         copyObj = ObjectUtil.copy(item);
         if(copyObj is IUID)
         {
            IUID(copyObj).uid = UIDUtil.createUID();
         }
         else if(copyObj is Object && "mx_internal_uid" in copyObj)
         {
            copyObj.mx_internal_uid = UIDUtil.createUID();
         }
         return copyObj;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedIndices() : Array
      {
         if(bSelectedIndicesChanged)
         {
            return _selectedIndices;
         }
         return copySelectedItems(false);
      }
      
      public function get variableRowHeight() : Boolean
      {
         return _variableRowHeight;
      }
      
      protected function mouseDoubleClickHandler(event:MouseEvent) : void
      {
         var item:IListItemRenderer = null;
         var pt:Point = null;
         var listEvent:ListEvent = null;
         item = mouseEventToItemRenderer(event);
         if(!item)
         {
            return;
         }
         pt = itemRendererToIndices(item);
         if(pt)
         {
            listEvent = new ListEvent(ListEvent.ITEM_DOUBLE_CLICK);
            listEvent.columnIndex = pt.x;
            listEvent.rowIndex = pt.y;
            listEvent.itemRenderer = item;
            dispatchEvent(listEvent);
         }
      }
      
      mx_internal function selectionDataPendingResultHandler(data:Object, info:ListBaseSelectionDataPending) : void
      {
         if(info.bookmark)
         {
            collectionIterator.seek(info.bookmark,info.offset);
         }
         setSelectionDataLoop(info.items,info.index,info.useFind);
      }
      
      public function set selectedItem(data:Object) : void
      {
         if(!collection || collection.length == 0)
         {
            _selectedItem = data;
            bSelectedItemChanged = true;
            bSelectionChanged = true;
            invalidateDisplayList();
            return;
         }
         commitSelectedItem(data);
      }
      
      private function adjustScrollPosition() : void
      {
         var hPos:Number = NaN;
         var vPos:Number = NaN;
         var index:int = 0;
         var positionChanged:Boolean = false;
         if(!isNaN(horizontalScrollPositionPending))
         {
            positionChanged = true;
            hPos = Math.min(horizontalScrollPositionPending,maxHorizontalScrollPosition);
            horizontalScrollPositionPending = NaN;
            super.horizontalScrollPosition = hPos;
         }
         if(!isNaN(verticalScrollPositionPending))
         {
            positionChanged = true;
            vPos = Math.min(verticalScrollPositionPending,maxVerticalScrollPosition);
            verticalScrollPositionPending = NaN;
            super.verticalScrollPosition = vPos;
         }
         if(positionChanged)
         {
            index = scrollPositionToIndex(horizontalScrollPosition,verticalScrollPosition - offscreenExtraRowsTop);
            seekPositionSafely(index);
         }
      }
      
      protected function indexToColumn(index:int) : int
      {
         return 0;
      }
      
      protected function itemToUID(data:Object) : String
      {
         if(data == null)
         {
            return "null";
         }
         return UIDUtil.getUID(data);
      }
      
      protected function dragEnterHandler(event:DragEvent) : void
      {
         if(event.isDefaultPrevented())
         {
            return;
         }
         lastDragEvent = event;
         if(enabled && iteratorValid && event.dragSource.hasFormat("items"))
         {
            DragManager.acceptDragDrop(this);
            DragManager.showFeedback(event.ctrlKey ? DragManager.COPY : DragManager.MOVE);
            showDropFeedback(event);
            return;
         }
         hideDropFeedback(event);
         DragManager.showFeedback(DragManager.NONE);
      }
      
      public function set selectable(value:Boolean) : void
      {
         _selectable = value;
      }
      
      protected function moveRowVertically(i:int, numCols:int, moveBlockDistance:Number) : void
      {
         var r:IListItemRenderer = null;
         for(var j:int = 0; j < numCols; j++)
         {
            r = listItems[i][j];
            r.move(r.x,r.y + moveBlockDistance);
         }
         rowInfo[i].y += moveBlockDistance;
      }
      
      override public function set horizontalScrollPosition(value:Number) : void
      {
         var deltaPos:int = 0;
         var direction:Boolean = false;
         if(listItems.length == 0 || !dataProvider || !isNaN(horizontalScrollPositionPending))
         {
            horizontalScrollPositionPending = value;
            if(dataProvider)
            {
               invalidateDisplayList();
            }
            return;
         }
         horizontalScrollPositionPending = NaN;
         var oldValue:int = super.horizontalScrollPosition;
         super.horizontalScrollPosition = value;
         removeClipMask();
         if(oldValue != value)
         {
            if(itemsSizeChanged)
            {
               return;
            }
            deltaPos = value - oldValue;
            direction = deltaPos > 0;
            deltaPos = Math.abs(deltaPos);
            if(bColumnScrolling && deltaPos >= columnCount)
            {
               clearIndicators();
               clearVisibleData();
               makeRowsAndColumnsWithExtraColumns(oldUnscaledWidth,oldUnscaledHeight);
               drawRowBackgrounds();
            }
            else
            {
               scrollHorizontally(value,deltaPos,direction);
            }
         }
         addClipMask(false);
      }
      
      public function set dragMoveEnabled(value:Boolean) : void
      {
         _dragMoveEnabled = value;
      }
      
      public function isItemHighlighted(data:Object) : Boolean
      {
         if(data == null)
         {
            return false;
         }
         var isSelected:Boolean = Boolean(highlightIndicator) && highlightIndicator.parent.getChildIndex(highlightIndicator) != highlightIndicator.parent.numChildren - 1;
         if(data is String)
         {
            return data == highlightUID && !isSelected;
         }
         return itemToUID(data) == highlightUID && !isSelected;
      }
      
      override protected function mouseWheelHandler(event:MouseEvent) : void
      {
         var oldPosition:Number = NaN;
         var newPos:int = 0;
         var scrollEvent:ScrollEvent = null;
         if(Boolean(verticalScrollBar) && verticalScrollBar.visible)
         {
            event.stopPropagation();
            oldPosition = verticalScrollPosition;
            newPos = verticalScrollPosition;
            newPos -= event.delta * verticalScrollBar.lineScrollSize;
            newPos = Math.max(0,Math.min(newPos,verticalScrollBar.maxScrollPosition));
            verticalScrollPosition = newPos;
            if(oldPosition != verticalScrollPosition)
            {
               scrollEvent = new ScrollEvent(ScrollEvent.SCROLL);
               scrollEvent.direction = ScrollEventDirection.VERTICAL;
               scrollEvent.position = verticalScrollPosition;
               scrollEvent.delta = verticalScrollPosition - oldPosition;
               dispatchEvent(scrollEvent);
            }
         }
      }
      
      protected function restoreRowArrays(modDeltaPos:int) : void
      {
         rowInfo.splice(0,modDeltaPos);
         listItems.splice(0,modDeltaPos);
      }
      
      public function set labelField(value:String) : void
      {
         _labelField = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("labelFieldChanged"));
      }
      
      private function seekPositionIgnoreError(iterator:IViewCursor, cursorPos:CursorBookmark) : void
      {
         if(iterator)
         {
            try
            {
               iterator.seek(cursorPos,0);
            }
            catch(e:ItemPendingError)
            {
            }
         }
      }
      
      protected function finishDataChangeEffect(event:EffectEvent) : void
      {
         collection = actualCollection;
         actualCollection = null;
         modifiedCollectionView = null;
         listContent.iterator = iterator = actualIterator;
         runningDataEffect = false;
         unconstrainedRenderers = new Dictionary();
         terminateSelectionTracking();
         reKeyVisibleData();
         var index:int = scrollPositionToIndex(horizontalScrollPosition - offscreenExtraColumnsLeft,verticalScrollPosition - offscreenExtraRowsTop);
         iterator.seek(CursorBookmark.FIRST,index);
         callLater(cleanupAfterDataChangeEffect);
      }
      
      public function set offscreenExtraRowsOrColumns(value:int) : void
      {
         value = Math.max(value,0);
         if(value % 2)
         {
            value++;
         }
         if(_offscreenExtraRowsOrColumns == value)
         {
            return;
         }
         _offscreenExtraRowsOrColumns = value;
         offscreenExtraRowsOrColumnsChanged = true;
         invalidateProperties();
      }
      
      mx_internal function clearHighlight(item:IListItemRenderer) : void
      {
         var listEvent:ListEvent = null;
         var uid:String = itemToUID(item.data);
         drawItem(UIDToItemRenderer(uid),isItemSelected(item.data),false,uid == caretUID);
         var pt:Point = itemRendererToIndices(item);
         if(Boolean(pt) && Boolean(lastHighlightItemIndices))
         {
            listEvent = new ListEvent(ListEvent.ITEM_ROLL_OUT);
            listEvent.columnIndex = lastHighlightItemIndices.x;
            listEvent.rowIndex = lastHighlightItemIndices.y;
            listEvent.itemRenderer = lastHighlightItemRendererAtIndices;
            dispatchEvent(listEvent);
            lastHighlightItemIndices = null;
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
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("wordWrapChanged"));
      }
      
      private function shiftSelectionLoop(incr:Boolean, index:int, stopData:Object, transition:Boolean, placeHolder:CursorBookmark) : void
      {
         var data:Object = null;
         var uid:String = null;
         try
         {
            do
            {
               data = iterator.current;
               uid = itemToUID(data);
               insertSelectionDataBefore(uid,new ListBaseSelectionData(data,index,approximate),firstSelectionData);
               if(UIDToItemRenderer(uid))
               {
                  drawItem(UIDToItemRenderer(uid),true,uid == highlightUID,false,transition);
               }
               if(data === stopData)
               {
                  if(UIDToItemRenderer(uid))
                  {
                     drawItem(UIDToItemRenderer(uid),true,uid == highlightUID,true,transition);
                  }
                  break;
               }
               if(incr)
               {
                  index++;
               }
               else
               {
                  index--;
               }
            }
            while(incr ? iterator.moveNext() : iterator.movePrevious());
         }
         catch(e:ItemPendingError)
         {
            e.addResponder(new ItemResponder(selectionPendingResultHandler,selectionPendingFailureHandler,new ListBaseSelectionPending(incr,index,stopData,transition,placeHolder,CursorBookmark.CURRENT,0)));
            iteratorValid = false;
         }
         try
         {
            iterator.seek(placeHolder,0);
            if(!iteratorValid)
            {
               iteratorValid = true;
               lastSeekPending = null;
            }
         }
         catch(e2:ItemPendingError)
         {
            lastSeekPending = new ListBaseSeekPending(placeHolder,0);
            e2.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
         }
      }
      
      protected function clearHighlightIndicator(indicator:Sprite, itemRenderer:IListItemRenderer) : void
      {
         if(highlightIndicator)
         {
            Sprite(highlightIndicator).graphics.clear();
         }
      }
      
      protected function truncateRowArrays(numRows:int) : void
      {
         listItems.splice(numRows);
         rowInfo.splice(numRows);
      }
      
      public function get itemRenderer() : IFactory
      {
         return _itemRenderer;
      }
      
      protected function seekPositionSafely(index:int) : Boolean
      {
         try
         {
            iterator.seek(CursorBookmark.FIRST,index);
            if(!iteratorValid)
            {
               iteratorValid = true;
               lastSeekPending = null;
            }
         }
         catch(e:ItemPendingError)
         {
            lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,index);
            e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
            iteratorValid = false;
         }
         return iteratorValid;
      }
      
      mx_internal function set $horizontalScrollPosition(value:Number) : void
      {
         var oldValue:int = super.horizontalScrollPosition;
         if(oldValue != value)
         {
            super.horizontalScrollPosition = value;
         }
      }
      
      protected function applySelectionEffect(indicator:Sprite, uid:String, itemRenderer:IListItemRenderer) : void
      {
         var selectionEasingFunction:Function = null;
         var selectionDuration:Number = getStyle("selectionDuration");
         if(selectionDuration != 0)
         {
            indicator.alpha = 0;
            selectionTweens[uid] = new Tween(indicator,0,1,selectionDuration,5);
            selectionTweens[uid].addEventListener(TweenEvent.TWEEN_UPDATE,selectionTween_updateHandler);
            selectionTweens[uid].addEventListener(TweenEvent.TWEEN_END,selectionTween_endHandler);
            selectionTweens[uid].setTweenHandlers(onSelectionTweenUpdate,onSelectionTweenUpdate);
            selectionEasingFunction = getStyle("selectionEasingFunction") as Function;
            if(selectionEasingFunction != null)
            {
               selectionTweens[uid].easingFunction = selectionEasingFunction;
            }
         }
      }
      
      override public function set showInAutomationHierarchy(value:Boolean) : void
      {
      }
      
      protected function removeFromRowArrays(i:int) : void
      {
         listItems.splice(i,1);
         rowInfo.splice(i,1);
      }
      
      protected function updateList() : void
      {
         removeClipMask();
         var cursorPos:CursorBookmark = iterator ? iterator.bookmark : null;
         clearIndicators();
         clearVisibleData();
         if(iterator)
         {
            if(Boolean(offscreenExtraColumns) || Boolean(offscreenExtraColumnsLeft) || Boolean(offscreenExtraColumnsRight))
            {
               makeRowsAndColumnsWithExtraColumns(unscaledWidth,unscaledHeight);
            }
            else
            {
               makeRowsAndColumnsWithExtraRows(unscaledWidth,unscaledHeight);
            }
            iterator.seek(cursorPos,0);
         }
         else
         {
            makeRowsAndColumns(0,0,listContent.width,listContent.height,0,0);
         }
         drawRowBackgrounds();
         configureScrollBars();
         addClipMask(true);
      }
      
      public function set variableRowHeight(value:Boolean) : void
      {
         _variableRowHeight = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("variableRowHeightChanged"));
      }
      
      protected function isRendererUnconstrained(item:Object) : Boolean
      {
         return unconstrainedRenderers[item] != null;
      }
      
      public function set selectedIndices(indices:Array) : void
      {
         if(!collection || collection.length == 0)
         {
            _selectedIndices = indices;
            bSelectedIndicesChanged = true;
            bSelectionChanged = true;
            invalidateDisplayList();
            return;
         }
         commitSelectedIndices(indices);
      }
      
      protected function mouseUpHandler(event:MouseEvent) : void
      {
         var item:IListItemRenderer = null;
         var pt:Point = null;
         var evt:ListEvent = null;
         mouseDownPoint = null;
         item = mouseEventToItemRenderer(event);
         pt = itemRendererToIndices(item);
         mouseIsUp();
         if(!enabled || !selectable)
         {
            return;
         }
         if(mouseDownItem)
         {
            evt = new ListEvent(ListEvent.CHANGE);
            evt.itemRenderer = mouseDownItem;
            pt = itemRendererToIndices(mouseDownItem);
            if(pt)
            {
               evt.columnIndex = pt.x;
               evt.rowIndex = pt.y;
            }
            dispatchEvent(evt);
            mouseDownItem = null;
         }
         if(!item || !hitTestPoint(event.stageX,event.stageY))
         {
            isPressed = false;
            return;
         }
         if(bSelectOnRelease)
         {
            bSelectOnRelease = false;
            if(selectItem(item,event.shiftKey,event.ctrlKey))
            {
               evt = new ListEvent(ListEvent.CHANGE);
               evt.itemRenderer = item;
               if(pt)
               {
                  evt.columnIndex = pt.x;
                  evt.rowIndex = pt.y;
               }
               dispatchEvent(evt);
            }
         }
         isPressed = false;
      }
      
      public function get allowMultipleSelection() : Boolean
      {
         return _allowMultipleSelection;
      }
      
      public function itemToItemRenderer(item:Object) : IListItemRenderer
      {
         return UIDToItemRenderer(itemToUID(item));
      }
      
      public function isItemSelected(data:Object) : Boolean
      {
         if(data == null)
         {
            return false;
         }
         if(data is String)
         {
            return selectedData[data] != undefined;
         }
         return selectedData[itemToUID(data)] != undefined;
      }
      
      protected function dragScroll() : void
      {
         var scrollInterval:Number = NaN;
         var oldPosition:Number = NaN;
         var d:Number = NaN;
         var scrollEvent:ScrollEvent = null;
         var slop:Number = 0;
         if(dragScrollingInterval == 0)
         {
            return;
         }
         var minScrollInterval:Number = 30;
         oldPosition = verticalScrollPosition;
         if(DragManager.isDragging)
         {
            slop = viewMetrics.top + (variableRowHeight ? getStyle("fontSize") / 4 : rowHeight);
         }
         clearInterval(dragScrollingInterval);
         if(mouseY < slop)
         {
            verticalScrollPosition = Math.max(0,oldPosition - 1);
            if(DragManager.isDragging)
            {
               scrollInterval = 100;
            }
            else
            {
               d = Math.min(0 - mouseY - 30,0);
               scrollInterval = 0.593 * d * d + 1 + minScrollInterval;
            }
            dragScrollingInterval = setInterval(dragScroll,scrollInterval);
            if(oldPosition != verticalScrollPosition)
            {
               scrollEvent = new ScrollEvent(ScrollEvent.SCROLL);
               scrollEvent.detail = ScrollEventDetail.THUMB_POSITION;
               scrollEvent.direction = ScrollEventDirection.VERTICAL;
               scrollEvent.position = verticalScrollPosition;
               scrollEvent.delta = verticalScrollPosition - oldPosition;
               dispatchEvent(scrollEvent);
            }
         }
         else if(mouseY > unscaledHeight - slop)
         {
            verticalScrollPosition = Math.min(maxVerticalScrollPosition,verticalScrollPosition + 1);
            if(DragManager.isDragging)
            {
               scrollInterval = 100;
            }
            else
            {
               d = Math.min(mouseY - unscaledHeight - 30,0);
               scrollInterval = 0.593 * d * d + 1 + minScrollInterval;
            }
            dragScrollingInterval = setInterval(dragScroll,scrollInterval);
            if(oldPosition != verticalScrollPosition)
            {
               scrollEvent = new ScrollEvent(ScrollEvent.SCROLL);
               scrollEvent.detail = ScrollEventDetail.THUMB_POSITION;
               scrollEvent.direction = ScrollEventDirection.VERTICAL;
               scrollEvent.position = verticalScrollPosition;
               scrollEvent.delta = verticalScrollPosition - oldPosition;
               dispatchEvent(scrollEvent);
            }
         }
         else
         {
            dragScrollingInterval = setInterval(dragScroll,15);
         }
         if(Boolean(DragManager.isDragging) && Boolean(lastDragEvent) && oldPosition != verticalScrollPosition)
         {
            dragOverHandler(lastDragEvent);
         }
      }
      
      protected function moveSelectionHorizontally(code:uint, shiftKey:Boolean, ctrlKey:Boolean) : void
      {
      }
      
      private function findStringLoop(str:String, cursorPos:CursorBookmark, i:int, stopIndex:int) : Boolean
      {
         var itmStr:String = null;
         var item:IListItemRenderer = null;
         var pt:Point = null;
         var evt:ListEvent = null;
         var more:Boolean = false;
         while(i != stopIndex)
         {
            itmStr = itemToLabel(iterator.current);
            itmStr = itmStr.substring(0,str.length);
            if(str == itmStr || str.toUpperCase() == itmStr.toUpperCase())
            {
               iterator.seek(cursorPos,0);
               scrollToIndex(i);
               commitSelectedIndex(i);
               item = indexToItemRenderer(i);
               pt = itemRendererToIndices(item);
               evt = new ListEvent(ListEvent.CHANGE);
               evt.itemRenderer = item;
               if(pt)
               {
                  evt.columnIndex = pt.x;
                  evt.rowIndex = pt.y;
               }
               dispatchEvent(evt);
               return true;
            }
            more = iterator.moveNext();
            if(!more && stopIndex != collection.length)
            {
               i = -1;
               iterator.seek(CursorBookmark.FIRST,0);
            }
            i++;
         }
         iterator.seek(cursorPos,0);
         iteratorValid = true;
         return false;
      }
      
      protected function drawRowBackgrounds() : void
      {
      }
      
      private function selectionIndicesPendingResultHandler(data:Object, info:ListBaseSelectionDataPending) : void
      {
         if(info.bookmark)
         {
            iterator.seek(info.bookmark,info.offset);
         }
         setSelectionIndicesLoop(info.index,info.items,info.useFind);
      }
      
      public function itemRendererContains(renderer:IListItemRenderer, object:DisplayObject) : Boolean
      {
         if(!object)
         {
            return false;
         }
         if(!renderer)
         {
            return false;
         }
         return renderer.owns(object);
      }
      
      public function removeDataEffectItem(item:Object) : void
      {
         if(modifiedCollectionView)
         {
            modifiedCollectionView.removeItem(dataItemWrappersByRenderer[item]);
            iterator.seek(CursorBookmark.CURRENT);
            if(invalidateDisplayListFlag)
            {
               callLater(invalidateList);
            }
            else
            {
               invalidateList();
            }
         }
      }
      
      override public function set horizontalScrollPolicy(value:String) : void
      {
         super.horizontalScrollPolicy = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
      }
      
      public function itemRendererToIndex(itemRenderer:IListItemRenderer) : int
      {
         var index:int = 0;
         if(itemRenderer.name in rowMap)
         {
            index = int(rowMap[itemRenderer.name].rowIndex);
            return index + verticalScrollPosition - offscreenExtraRowsTop;
         }
         return int.MIN_VALUE;
      }
      
      public function get dropEnabled() : Boolean
      {
         return _dropEnabled;
      }
      
      private function setSelectionIndicesLoop(index:int, indices:Array, firstTime:Boolean = false) : void
      {
         var data:Object = null;
         var uid:String = null;
         while(indices.length)
         {
            if(index != indices[0])
            {
               try
               {
                  collectionIterator.seek(CursorBookmark.CURRENT,indices[0] - index);
               }
               catch(e:ItemPendingError)
               {
                  e.addResponder(new ItemResponder(selectionIndicesPendingResultHandler,selectionIndicesPendingFailureHandler,new ListBaseSelectionDataPending(firstTime,index,indices,CursorBookmark.CURRENT,indices[0] - index)));
                  return;
               }
            }
            index = int(indices[0]);
            indices.shift();
            data = collectionIterator.current;
            if(firstTime)
            {
               _selectedIndex = index;
               _selectedItem = data;
               caretIndex = index;
               caretBookmark = collectionIterator.bookmark;
               anchorIndex = index;
               anchorBookmark = collectionIterator.bookmark;
               firstTime = false;
            }
            uid = itemToUID(data);
            insertSelectionDataAfter(uid,new ListBaseSelectionData(data,index,false),lastSelectionData);
            if(UIDToItemRenderer(uid))
            {
               drawItem(UIDToItemRenderer(uid),true,uid == highlightUID,caretIndex == index);
            }
         }
         if(initialized)
         {
            updateList();
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      override protected function measure() : void
      {
         super.measure();
         var o:EdgeMetrics = viewMetrics;
         var cc:int = explicitColumnCount < 1 ? defaultColumnCount : explicitColumnCount;
         var rc:int = explicitRowCount < 1 ? defaultRowCount : explicitRowCount;
         if(!isNaN(explicitRowHeight))
         {
            measuredHeight = explicitRowHeight * rc + o.top + o.bottom;
            measuredMinHeight = explicitRowHeight * Math.min(rc,2) + o.top + o.bottom;
         }
         else
         {
            measuredHeight = rowHeight * rc + o.top + o.bottom;
            measuredMinHeight = rowHeight * Math.min(rc,2) + o.top + o.bottom;
         }
         if(!isNaN(explicitColumnWidth))
         {
            measuredWidth = explicitColumnWidth * cc + o.left + o.right;
            measuredMinWidth = explicitColumnWidth * Math.min(cc,1) + o.left + o.right;
         }
         else
         {
            measuredWidth = columnWidth * cc + o.left + o.right;
            measuredMinWidth = columnWidth * Math.min(cc,1) + o.left + o.right;
         }
         if(Boolean(verticalScrollPolicy == ScrollPolicy.AUTO) && Boolean(verticalScrollBar) && verticalScrollBar.visible)
         {
            measuredWidth -= verticalScrollBar.minWidth;
            measuredMinWidth -= verticalScrollBar.minWidth;
         }
         if(Boolean(horizontalScrollPolicy == ScrollPolicy.AUTO) && Boolean(horizontalScrollBar) && horizontalScrollBar.visible)
         {
            measuredHeight -= horizontalScrollBar.minHeight;
            measuredMinHeight -= horizontalScrollBar.minHeight;
         }
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      private function removeSelectionData(uid:String) : void
      {
         var curSelectionData:ListBaseSelectionData = selectedData[uid];
         if(firstSelectionData == curSelectionData)
         {
            firstSelectionData = curSelectionData.nextSelectionData;
         }
         if(lastSelectionData == curSelectionData)
         {
            lastSelectionData = curSelectionData.prevSelectionData;
         }
         if(curSelectionData.prevSelectionData != null)
         {
            curSelectionData.prevSelectionData.nextSelectionData = curSelectionData.nextSelectionData;
         }
         if(curSelectionData.nextSelectionData != null)
         {
            curSelectionData.nextSelectionData.prevSelectionData = curSelectionData.prevSelectionData;
         }
         delete selectedData[uid];
      }
      
      protected function setRowHeight(v:Number) : void
      {
         _rowHeight = v;
      }
      
      public function indicesToIndex(rowIndex:int, colIndex:int) : int
      {
         return rowIndex * columnCount + colIndex;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get value() : Object
      {
         var item:Object = selectedItem;
         if(!item)
         {
            return null;
         }
         if(typeof item != "object")
         {
            return item;
         }
         return item.data != null ? item.data : item.label;
      }
      
      mx_internal function getRowInfo() : Array
      {
         return rowInfo;
      }
      
      private function rendererMoveHandler(event:MoveEvent) : void
      {
         var renderer:IListItemRenderer = null;
         if(!rendererTrackingSuspended)
         {
            renderer = event.currentTarget as IListItemRenderer;
            drawItem(renderer,true);
         }
      }
      
      protected function calculateDropIndicatorY(rowCount:Number, rowNum:int) : Number
      {
         var i:int = 0;
         var yy:Number = 0;
         if(Boolean(rowCount) && Boolean(rowNum < rowCount) && Boolean(listItems[rowNum].length) && Boolean(listItems[rowNum][0]))
         {
            return listItems[rowNum][0].y - 1;
         }
         for(i = 0; i < rowCount; i++)
         {
            if(!listItems[i].length)
            {
               break;
            }
            yy += rowInfo[i].height;
         }
         return yy;
      }
      
      protected function clearCaretIndicator(indicator:Sprite, itemRenderer:IListItemRenderer) : void
      {
         if(caretIndicator)
         {
            Sprite(caretIndicator).graphics.clear();
         }
      }
      
      override public function validateDisplayList() : void
      {
         var sm:ISystemManager = null;
         if(invalidateDisplayListFlag)
         {
            sm = parent as ISystemManager;
            if(sm)
            {
               if(sm == systemManager.topLevelSystemManager && sm.document != this)
               {
                  setActualSize(getExplicitOrMeasuredWidth(),getExplicitOrMeasuredHeight());
               }
            }
            if(runDataEffectNextUpdate)
            {
               runDataEffectNextUpdate = false;
               runningDataEffect = true;
               initiateDataChangeEffect(scaleX == 0 ? 0 : width / scaleX,scaleY == 0 ? 0 : height / scaleY);
            }
            else
            {
               updateDisplayList(scaleX == 0 ? 0 : width / scaleX,scaleY == 0 ? 0 : height / scaleY);
            }
            invalidateDisplayListFlag = false;
         }
      }
      
      mx_internal function getListVisibleData() : Object
      {
         return visibleData;
      }
      
      public function getRendererSemanticValue(target:Object, semanticProperty:String) : Object
      {
         return modifiedCollectionView.getSemantics(dataItemWrappersByRenderer[target]) == semanticProperty;
      }
      
      mx_internal function setColumnCount(value:int) : void
      {
         _columnCount = value;
      }
      
      mx_internal function hasOnlyTextRenderers() : Boolean
      {
         if(listItems.length == 0)
         {
            return true;
         }
         var rowItems:Array = listItems[listItems.length - 1];
         var n:int = int(rowItems.length);
         for(var i:int = 0; i < n; i++)
         {
            if(!(rowItems[i] is IUITextField))
            {
               return false;
            }
         }
         return true;
      }
      
      protected function sumRowHeights(startRowIdx:int, endRowIdx:int) : Number
      {
         var sum:Number = 0;
         for(var i:int = startRowIdx; i <= endRowIdx; i++)
         {
            sum += rowInfo[i].height;
         }
         return sum;
      }
      
      protected function get rowInfo() : Array
      {
         return listContent.rowInfo;
      }
      
      private function selectionPendingFailureHandler(data:Object, info:ListBaseSelectionPending) : void
      {
      }
      
      mx_internal function convertIndexToColumn(index:int) : int
      {
         return indexToColumn(index);
      }
      
      mx_internal function createItemMask(x:Number, y:Number, width:Number, height:Number) : DisplayObject
      {
         var mask:Shape = null;
         var g:Graphics = null;
         if(!itemMaskFreeList)
         {
            itemMaskFreeList = [];
         }
         if(itemMaskFreeList.length > 0)
         {
            mask = itemMaskFreeList.pop();
            if(mask.width != width)
            {
               mask.width = width;
            }
            if(mask.height != height)
            {
               mask.height = height;
            }
         }
         else
         {
            mask = new FlexShape();
            mask.name = "mask";
            g = mask.graphics;
            g.beginFill(16777215);
            g.drawRect(0,0,width,height);
            g.endFill();
            mask.visible = false;
            listContent.addChild(mask);
         }
         if(mask.x != x)
         {
            mask.x = x;
         }
         if(mask.y != y)
         {
            mask.y = y;
         }
         return mask;
      }
      
      mx_internal function convertIndexToRow(index:int) : int
      {
         return indexToRow(index);
      }
      
      protected function get listItems() : Array
      {
         return listContent ? listContent.listItems : [];
      }
      
      override protected function commitProperties() : void
      {
         var extraColumnsLeft:int = 0;
         var extraRowsTop:int = 0;
         var newIndex:int = 0;
         super.commitProperties();
         if(Boolean(listContent) && listContent.iterator != iterator)
         {
            listContent.iterator = iterator;
         }
         if(cachedPaddingTopInvalid)
         {
            cachedPaddingTopInvalid = false;
            cachedPaddingTop = getStyle("paddingTop");
            itemsSizeChanged = true;
            invalidateDisplayList();
         }
         if(cachedPaddingBottomInvalid)
         {
            cachedPaddingBottomInvalid = false;
            cachedPaddingBottom = getStyle("paddingBottom");
            itemsSizeChanged = true;
            invalidateDisplayList();
         }
         if(cachedVerticalAlignInvalid)
         {
            cachedVerticalAlignInvalid = false;
            cachedVerticalAlign = getStyle("verticalAlign");
            itemsSizeChanged = true;
            invalidateDisplayList();
         }
         if(columnCountChanged)
         {
            if(_columnCount < 1)
            {
               _columnCount = defaultColumnCount;
            }
            if(!isNaN(explicitWidth) && isNaN(explicitColumnWidth) && explicitColumnCount > 0)
            {
               setColumnWidth((explicitWidth - viewMetrics.left - viewMetrics.right) / columnCount);
            }
            columnCountChanged = false;
         }
         if(rowCountChanged)
         {
            if(_rowCount < 1)
            {
               _rowCount = defaultRowCount;
            }
            if(!isNaN(explicitHeight) && isNaN(explicitRowHeight) && explicitRowCount > 0)
            {
               setRowHeight((explicitHeight - viewMetrics.top - viewMetrics.bottom) / rowCount);
            }
            rowCountChanged = false;
         }
         if(offscreenExtraRowsOrColumnsChanged)
         {
            adjustOffscreenRowsAndColumns();
            if(iterator)
            {
               extraColumnsLeft = Math.min(offscreenExtraColumns / 2,horizontalScrollPosition);
               extraRowsTop = Math.min(offscreenExtraRows / 2,verticalScrollPosition);
               newIndex = scrollPositionToIndex(horizontalScrollPosition - extraColumnsLeft,verticalScrollPosition - extraRowsTop);
               seekPositionSafely(newIndex);
               invalidateList();
            }
            offscreenExtraRowsOrColumnsChanged = false;
         }
      }
      
      protected function setRowCount(v:int) : void
      {
         _rowCount = v;
      }
      
      public function set labelFunction(value:Function) : void
      {
         _labelFunction = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("labelFunctionChanged"));
      }
      
      protected function adjustAfterAdd(items:Array, location:int) : Boolean
      {
         var length:int = 0;
         var requiresValueCommit:Boolean = false;
         var data:ListBaseSelectionData = null;
         var placeHolder:CursorBookmark = null;
         var p:String = null;
         length = int(items.length);
         requiresValueCommit = false;
         for(p in selectedData)
         {
            data = selectedData[p];
            if(data.index >= location)
            {
               data.index += length;
            }
         }
         if(_selectedIndex >= location)
         {
            _selectedIndex += length;
            requiresValueCommit = true;
         }
         if(anchorIndex >= location)
         {
            anchorIndex += length;
            placeHolder = iterator.bookmark;
            try
            {
               iterator.seek(CursorBookmark.FIRST,anchorIndex);
               anchorBookmark = iterator.bookmark;
            }
            catch(e:ItemPendingError)
            {
               e.addResponder(new ItemResponder(setBookmarkPendingResultHandler,setBookmarkPendingFailureHandler,{
                  "property":"anchorBookmark",
                  "value":anchorIndex
               }));
            }
            iterator.seek(placeHolder);
         }
         if(caretIndex >= location)
         {
            caretIndex += length;
            placeHolder = iterator.bookmark;
            try
            {
               iterator.seek(CursorBookmark.FIRST,caretIndex);
               caretBookmark = iterator.bookmark;
            }
            catch(e:ItemPendingError)
            {
               e.addResponder(new ItemResponder(setBookmarkPendingResultHandler,setBookmarkPendingFailureHandler,{
                  "property":"caretBookmark",
                  "value":caretIndex
               }));
            }
            iterator.seek(placeHolder);
         }
         return requiresValueCommit;
      }
      
      private function mouseLeaveHandler(event:Event) : void
      {
         var evt:ListEvent = null;
         var pt:Point = null;
         mouseDownPoint = null;
         mouseIsUp();
         if(!enabled || !selectable)
         {
            return;
         }
         if(mouseDownItem)
         {
            evt = new ListEvent(ListEvent.CHANGE);
            evt.itemRenderer = mouseDownItem;
            pt = itemRendererToIndices(mouseDownItem);
            if(pt)
            {
               evt.columnIndex = pt.x;
               evt.rowIndex = pt.y;
            }
            dispatchEvent(evt);
            mouseDownItem = null;
         }
         isPressed = false;
      }
      
      public function unconstrainRenderer(item:Object) : void
      {
         unconstrainedRenderers[item] = true;
      }
      
      mx_internal function getIterator() : IViewCursor
      {
         return iterator;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedItems() : Array
      {
         return bSelectedItemsChanged ? _selectedItems : copySelectedItems();
      }
      
      protected function findKey(eventCode:int) : Boolean
      {
         var tmpCode:int = eventCode;
         return tmpCode >= 33 && tmpCode <= 126 && findString(String.fromCharCode(tmpCode));
      }
      
      override public function set verticalScrollPolicy(value:String) : void
      {
         super.verticalScrollPolicy = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
      }
      
      public function set selectedIndex(value:int) : void
      {
         if(!collection || collection.length == 0)
         {
            _selectedIndex = value;
            bSelectionChanged = true;
            bSelectedIndexChanged = true;
            invalidateDisplayList();
            return;
         }
         commitSelectedIndex(value);
      }
      
      public function set itemRenderer(value:IFactory) : void
      {
         _itemRenderer = value;
         invalidateSize();
         invalidateDisplayList();
         itemsSizeChanged = true;
         rendererChanged = true;
         dispatchEvent(new Event("itemRendererChanged"));
      }
      
      public function hideDropFeedback(event:DragEvent) : void
      {
         if(dropIndicator)
         {
            DisplayObject(dropIndicator).parent.removeChild(DisplayObject(dropIndicator));
            dropIndicator = null;
            drawFocus(false);
         }
      }
      
      private function commitSelectedItems(items:Array) : void
      {
         var useFind:Boolean = false;
         clearSelected();
         useFind = collection.sort != null;
         try
         {
            collectionIterator.seek(CursorBookmark.FIRST,0);
         }
         catch(e:ItemPendingError)
         {
            e.addResponder(new ItemResponder(selectionDataPendingResultHandler,selectionDataPendingFailureHandler,new ListBaseSelectionDataPending(useFind,0,items,null,0)));
            return;
         }
         setSelectionDataLoop(items,0,useFind);
      }
      
      public function set dataTipField(value:String) : void
      {
         _dataTipField = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("dataTipFieldChanged"));
      }
      
      private function makeRowsAndColumnsWithExtraColumns(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var currentColumns:int = 0;
         var extraEmptyColumns:int = 0;
         var i:int = 0;
         var j:int = 0;
         var desiredOffscreenColumnsLeft:int = offscreenExtraColumns / 2;
         var desiredOffscreenColumnsRight:int = offscreenExtraColumns / 2;
         if(horizontalScrollPosition > collection.length - columnCount)
         {
            super.horizontalScrollPosition = Math.max(0,collection.length - columnCount);
         }
         offscreenExtraColumnsLeft = Math.min(desiredOffscreenColumnsLeft,horizontalScrollPosition);
         var index:int = scrollPositionToIndex(horizontalScrollPosition - offscreenExtraColumnsLeft,verticalScrollPosition);
         seekPositionSafely(index);
         var cursorPos:CursorBookmark = iterator.bookmark;
         if(offscreenExtraColumnsLeft > 0)
         {
            makeRowsAndColumns(0,0,0,listContent.height,0,0,true,offscreenExtraColumnsLeft);
         }
         var curX:Number = offscreenExtraColumnsLeft ? listItems[0][offscreenExtraColumnsLeft - 1].x + columnWidth : 0;
         var pt:Point = makeRowsAndColumns(curX,0,curX + listContent.widthExcludingOffsets,listContent.height,offscreenExtraColumnsLeft,0);
         if(desiredOffscreenColumnsRight > 0 && !iterator.afterLast)
         {
            if(offscreenExtraColumnsLeft + pt.x - 1 < 0)
            {
               curX = 0;
            }
            else
            {
               curX = listItems[0][offscreenExtraColumnsLeft + pt.x - 1].x + columnWidth;
            }
            currentColumns = int(listItems[0].length);
            pt = makeRowsAndColumns(curX,0,curX,listContent.height,offscreenExtraColumnsLeft + pt.x,0,true,desiredOffscreenColumnsRight);
            if(pt.x < desiredOffscreenColumnsRight)
            {
               extraEmptyColumns = listItems[0].length - (currentColumns + pt.x);
               if(extraEmptyColumns)
               {
                  for(i = 0; i < listItems.length; i++)
                  {
                     for(j = 0; j < extraEmptyColumns; j++)
                     {
                        listItems[i].pop();
                     }
                  }
               }
            }
            offscreenExtraColumnsRight = pt.x;
         }
         else
         {
            offscreenExtraColumnsRight = 0;
         }
         var oldContentWidth:Number = listContent.widthExcludingOffsets;
         listContent.leftOffset = -offscreenExtraColumnsLeft * columnWidth;
         listContent.rightOffset = offscreenExtraColumnsRight > 0 ? listItems[0][listItems[0].length - 1].x + columnWidth - oldContentWidth + listContent.leftOffset : 0;
         iterator.seek(cursorPos,0);
         adjustListContent(unscaledWidth,unscaledHeight);
      }
      
      protected function dragOverHandler(event:DragEvent) : void
      {
         if(event.isDefaultPrevented())
         {
            return;
         }
         lastDragEvent = event;
         if(enabled && iteratorValid && event.dragSource.hasFormat("items"))
         {
            DragManager.showFeedback(event.ctrlKey ? DragManager.COPY : DragManager.MOVE);
            showDropFeedback(event);
            return;
         }
         hideDropFeedback(event);
         DragManager.showFeedback(DragManager.NONE);
      }
      
      private function adjustSelectionSettings(collectionHasItems:Boolean) : void
      {
         if(bSelectionChanged)
         {
            bSelectionChanged = false;
            if(bSelectedIndicesChanged && (collectionHasItems || _selectedIndices == null))
            {
               bSelectedIndicesChanged = false;
               bSelectedIndexChanged = false;
               commitSelectedIndices(_selectedIndices);
            }
            if(bSelectedItemChanged && (collectionHasItems || _selectedItem == null))
            {
               bSelectedItemChanged = false;
               bSelectedIndexChanged = false;
               commitSelectedItem(_selectedItem);
            }
            if(bSelectedItemsChanged && (collectionHasItems || _selectedItems == null))
            {
               bSelectedItemsChanged = false;
               bSelectedIndexChanged = false;
               commitSelectedItems(_selectedItems);
            }
            if(bSelectedIndexChanged && (collectionHasItems || _selectedIndex == -1))
            {
               commitSelectedIndex(_selectedIndex);
               bSelectedIndexChanged = false;
            }
         }
      }
      
      private function clearSelectionData() : void
      {
         selectedData = {};
         firstSelectionData = null;
         lastSelectionData = null;
      }
      
      protected function shiftRow(oldIndex:int, newIndex:int, numCols:int, shiftItems:Boolean) : void
      {
         var r:IListItemRenderer = null;
         for(var j:int = 0; j < numCols; j++)
         {
            r = listItems[oldIndex][j];
            if(shiftItems)
            {
               listItems[newIndex][j] = r;
               rowMap[r.name].rowIndex = newIndex;
            }
            else
            {
               rowMap[r.name].rowIndex = oldIndex;
            }
         }
         if(shiftItems)
         {
            rowInfo[newIndex] = rowInfo[oldIndex];
         }
      }
      
      mx_internal function selectionTween_endHandler(event:TweenEvent) : void
      {
         selectionTween_updateHandler(event);
      }
      
      mx_internal function resetDragScrolling() : void
      {
         if(dragScrollingInterval != 0)
         {
            clearInterval(dragScrollingInterval);
            dragScrollingInterval = 0;
         }
      }
      
      protected function mouseOverHandler(event:MouseEvent) : void
      {
         var evt:ListEvent = null;
         var item:IListItemRenderer = null;
         var pt:Point = null;
         var uid:String = null;
         var lastUID:String = null;
         var rowData:BaseListData = null;
         if(!enabled || !selectable)
         {
            return;
         }
         if(dragScrollingInterval != 0 && !event.buttonDown)
         {
            mouseIsUp();
         }
         isPressed = event.buttonDown;
         item = mouseEventToItemRenderer(event);
         pt = itemRendererToIndices(item);
         if(!item)
         {
            return;
         }
         uid = itemToUID(item.data);
         if(!isPressed || allowDragSelection)
         {
            if(event.relatedObject)
            {
               if(Boolean(lastHighlightItemRenderer) && Boolean(highlightUID))
               {
                  rowData = rowMap[item.name];
                  lastUID = rowData.uid;
               }
               if(itemRendererContains(item,event.relatedObject) || uid == lastUID || event.relatedObject == highlightIndicator)
               {
                  return;
               }
            }
            if(Boolean(getStyle("useRollOver")) && item.data != null)
            {
               if(allowDragSelection)
               {
                  bSelectOnRelease = true;
               }
               drawItem(UIDToItemRenderer(uid),isItemSelected(item.data),true,uid == caretUID);
               if(pt)
               {
                  evt = new ListEvent(ListEvent.ITEM_ROLL_OVER);
                  evt.columnIndex = pt.x;
                  evt.rowIndex = pt.y;
                  evt.itemRenderer = item;
                  dispatchEvent(evt);
                  lastHighlightItemIndices = pt;
                  lastHighlightItemRendererAtIndices = item;
               }
            }
         }
         else
         {
            if(DragManager.isDragging)
            {
               return;
            }
            if(dragScrollingInterval != 0 && allowDragSelection || menuSelectionMode)
            {
               if(selectItem(item,event.shiftKey,event.ctrlKey))
               {
                  evt = new ListEvent(ListEvent.CHANGE);
                  evt.itemRenderer = item;
                  if(pt)
                  {
                     evt.columnIndex = pt.x;
                     evt.rowIndex = pt.y;
                  }
                  dispatchEvent(evt);
               }
            }
         }
      }
      
      protected function mouseClickHandler(event:MouseEvent) : void
      {
         var item:IListItemRenderer = null;
         var pt:Point = null;
         var listEvent:ListEvent = null;
         item = mouseEventToItemRenderer(event);
         if(!item)
         {
            return;
         }
         pt = itemRendererToIndices(item);
         if(pt)
         {
            listEvent = new ListEvent(ListEvent.ITEM_CLICK);
            listEvent.columnIndex = pt.x;
            listEvent.rowIndex = pt.y;
            listEvent.itemRenderer = item;
            dispatchEvent(listEvent);
         }
      }
      
      private function selectionIndicesPendingFailureHandler(data:Object, info:ListBaseSelectionDataPending) : void
      {
      }
      
      protected function finishKeySelection() : void
      {
         var uid:String = null;
         var listItem:IListItemRenderer = null;
         var pt:Point = null;
         var evt:ListEvent = null;
         var rowCount:int = int(listItems.length);
         var onscreenRowCount:int = listItems.length - offscreenExtraRowsTop - offscreenExtraRowsBottom;
         var partialRow:int = rowInfo[rowCount - offscreenExtraRowsBottom - 1].y + rowInfo[rowCount - offscreenExtraRowsBottom - 1].height > listContent.heightExcludingOffsets - listContent.topOffset ? 1 : 0;
         if(lastKey == Keyboard.PAGE_DOWN)
         {
            if(onscreenRowCount - partialRow == 0)
            {
               caretIndex = Math.min(verticalScrollPosition + onscreenRowCount - partialRow,collection.length - 1);
            }
            else
            {
               caretIndex = Math.min(verticalScrollPosition + onscreenRowCount - partialRow - 1,collection.length - 1);
            }
         }
         var bSelChanged:Boolean = false;
         if(bSelectItem && caretIndex - verticalScrollPosition >= 0)
         {
            if(caretIndex - verticalScrollPosition > Math.max(onscreenRowCount - partialRow - 1,0))
            {
               if(lastKey == Keyboard.END && maxVerticalScrollPosition > verticalScrollPosition)
               {
                  caretIndex = caretIndex - 1;
                  moveSelectionVertically(lastKey,bShiftKey,bCtrlKey);
                  return;
               }
               caretIndex = onscreenRowCount - partialRow - 1 + verticalScrollPosition;
            }
            listItem = listItems[caretIndex - verticalScrollPosition + offscreenExtraRowsTop][0];
            if(listItem)
            {
               uid = itemToUID(listItem.data);
               listItem = UIDToItemRenderer(uid);
               if(!bCtrlKey || lastKey == Keyboard.SPACE)
               {
                  selectItem(listItem,bShiftKey,bCtrlKey);
                  bSelChanged = true;
               }
               if(bCtrlKey)
               {
                  drawItem(listItem,selectedData[uid] != null,uid == highlightUID,true);
               }
            }
         }
         if(bSelChanged)
         {
            pt = itemRendererToIndices(listItem);
            evt = new ListEvent(ListEvent.CHANGE);
            if(pt)
            {
               evt.columnIndex = pt.x;
               evt.rowIndex = pt.y;
            }
            evt.itemRenderer = listItem;
            dispatchEvent(evt);
         }
      }
      
      private function selectionDataPendingFailureHandler(data:Object, info:ListBaseSelectionDataPending) : void
      {
      }
      
      mx_internal function addClipMask(layoutChanged:Boolean) : void
      {
         var item:DisplayObject = null;
         var yOffset:Number = NaN;
         if(layoutChanged)
         {
            if(Boolean(horizontalScrollBar && horizontalScrollBar.visible || hasOnlyTextRenderers() || runningDataEffect || listContent.bottomOffset != 0 || listContent.topOffset != 0) || Boolean(listContent.leftOffset != 0) || listContent.rightOffset != 0)
            {
               listContent.mask = maskShape;
               selectionLayer.mask = null;
            }
            else
            {
               listContent.mask = null;
               selectionLayer.mask = maskShape;
            }
         }
         if(listContent.mask)
         {
            return;
         }
         var lastRowIndex:int = listItems.length - 1;
         var lastRowInfo:ListRowInfo = rowInfo[lastRowIndex];
         var lastRowItems:Array = listItems[lastRowIndex];
         if(lastRowInfo.y + lastRowInfo.height <= listContent.height)
         {
            return;
         }
         var numColumns:int = int(lastRowItems.length);
         var rowY:Number = lastRowInfo.y;
         var rowWidth:Number = listContent.width;
         var rowHeight:Number = listContent.height - lastRowInfo.y;
         for(var i:int = 0; i < numColumns; i++)
         {
            item = lastRowItems[i];
            yOffset = item.y - rowY;
            if(item is IUITextField)
            {
               item.height = rowHeight - yOffset;
            }
            else
            {
               item.mask = createItemMask(0,rowY + yOffset,rowWidth,rowHeight - yOffset);
            }
         }
      }
      
      public function set allowMultipleSelection(value:Boolean) : void
      {
         _allowMultipleSelection = value;
      }
      
      protected function scrollVertically(pos:int, deltaPos:int, scrollUp:Boolean) : void
      {
         var i:int = 0;
         var j:int = 0;
         var numRows:int = 0;
         var numCols:int = 0;
         var uid:String = null;
         var curY:Number = NaN;
         var cursorPos:CursorBookmark = null;
         var discardRows:int = 0;
         var desiredoffscreenExtraRowsTop:int = 0;
         var newoffscreenExtraRowsTop:int = 0;
         var offscreenExtraRowsBottomToMake:int = 0;
         var newTopOffset:Number = NaN;
         var fillHeight:Number = NaN;
         var pt:Point = null;
         var rowIdx:int = 0;
         var modDeltaPos:int = 0;
         var desiredPrefixItems:int = 0;
         var actual:Point = null;
         var row:Array = null;
         var rowData:Object = null;
         var desiredSuffixItems:int = 0;
         var newOffscreenRows:int = 0;
         var visibleAreaBottomY:int = 0;
         var rowCount:int = int(rowInfo.length);
         var columnCount:int = int(listItems[0].length);
         var moveBlockDistance:Number = 0;
         var listContentVisibleHeight:Number = listContent.heightExcludingOffsets;
         if(scrollUp)
         {
            discardRows = deltaPos;
            desiredoffscreenExtraRowsTop = offscreenExtraRows / 2;
            newoffscreenExtraRowsTop = Math.min(desiredoffscreenExtraRowsTop,offscreenExtraRowsTop + deltaPos);
            if(offscreenExtraRowsTop < desiredoffscreenExtraRowsTop)
            {
               discardRows = Math.max(0,deltaPos - (desiredoffscreenExtraRowsTop - offscreenExtraRowsTop));
            }
            moveBlockDistance = sumRowHeights(0,discardRows - 1);
            for(i = 0; i < discardRows; i++)
            {
               if(!seekNextSafely(iterator,pos))
               {
                  return;
               }
            }
            for(i = 0; i < rowCount; i++)
            {
               numCols = int(listItems[i].length);
               if(i < discardRows)
               {
                  destroyRow(i,numCols);
               }
               else if(discardRows > 0)
               {
                  moveRowVertically(i,numCols,-moveBlockDistance);
                  moveIndicatorsVertically(rowInfo[i].uid,-moveBlockDistance);
                  shiftRow(i,i - discardRows,numCols,true);
                  if(listItems[i].length == 0)
                  {
                     listItems[i - discardRows].splice(0);
                  }
               }
            }
            if(discardRows)
            {
               truncateRowArrays(rowCount - discardRows);
            }
            curY = rowInfo[rowCount - discardRows - 1].y + rowInfo[rowCount - discardRows - 1].height;
            cursorPos = iterator.bookmark;
            try
            {
               iterator.seek(CursorBookmark.CURRENT,rowCount - discardRows);
               if(!iteratorValid)
               {
                  iteratorValid = true;
                  lastSeekPending = null;
               }
            }
            catch(e1:ItemPendingError)
            {
               lastSeekPending = new ListBaseSeekPending(cursorPos,0);
               e1.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
               iteratorValid = false;
            }
            offscreenExtraRowsBottomToMake = offscreenExtraRows / 2;
            newTopOffset = 0;
            for(i = 0; i < newoffscreenExtraRowsTop; i++)
            {
               newTopOffset -= rowInfo[i].height;
            }
            fillHeight = listContentVisibleHeight - (curY + newTopOffset);
            if(fillHeight > 0)
            {
               pt = makeRowsAndColumns(0,curY,listContent.width,curY + fillHeight,0,rowCount - discardRows);
               rowCount += pt.y;
            }
            else
            {
               rowIdx = rowCount - discardRows - 1;
               fillHeight += rowInfo[rowIdx--].height;
               while(fillHeight < 0)
               {
                  offscreenExtraRowsBottomToMake--;
                  fillHeight += rowInfo[rowIdx--].height;
               }
            }
            if(offscreenExtraRowsBottomToMake > 0)
            {
               if(pt)
               {
                  curY = rowInfo[rowCount - discardRows - 1].y + rowInfo[rowCount - discardRows - 1].height;
               }
               pt = makeRowsAndColumns(0,curY,listContent.width,listContent.height,0,rowCount - discardRows,true,offscreenExtraRowsBottomToMake);
            }
            else
            {
               pt = new Point(0,0);
            }
            try
            {
               iterator.seek(cursorPos,0);
            }
            catch(e2:ItemPendingError)
            {
               lastSeekPending = new ListBaseSeekPending(cursorPos,0);
               e2.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
               iteratorValid = false;
            }
            offscreenExtraRowsTop = newoffscreenExtraRowsTop;
            offscreenExtraRowsBottom = offscreenExtraRows / 2 - offscreenExtraRowsBottomToMake + pt.y;
         }
         else
         {
            curY = 0;
            modDeltaPos = deltaPos;
            desiredPrefixItems = offscreenExtraRows / 2;
            if(pos < desiredPrefixItems)
            {
               modDeltaPos -= desiredPrefixItems - pos;
            }
            for(i = 0; i < modDeltaPos; i++)
            {
               addToRowArrays();
            }
            actual = new Point(0,0);
            if(modDeltaPos > 0)
            {
               try
               {
                  iterator.seek(CursorBookmark.CURRENT,-modDeltaPos);
                  if(!iteratorValid)
                  {
                     iteratorValid = true;
                     lastSeekPending = null;
                  }
               }
               catch(e3:ItemPendingError)
               {
                  lastSeekPending = new ListBaseSeekPending(CursorBookmark.CURRENT,-modDeltaPos);
                  e3.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                  iteratorValid = false;
               }
               cursorPos = iterator.bookmark;
               allowRendererStealingDuringLayout = false;
               actual = makeRowsAndColumns(0,curY,listContent.width,listContent.height,0,0,true,modDeltaPos);
               allowRendererStealingDuringLayout = true;
               try
               {
                  iterator.seek(cursorPos,0);
               }
               catch(e4:ItemPendingError)
               {
                  lastSeekPending = new ListBaseSeekPending(cursorPos,0);
                  e4.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                  iteratorValid = false;
               }
            }
            if(actual.y == 0 && modDeltaPos > 0)
            {
               verticalScrollPosition = 0;
               restoreRowArrays(modDeltaPos);
            }
            moveBlockDistance = sumRowHeights(0,actual.y - 1);
            desiredSuffixItems = offscreenExtraRows / 2;
            newOffscreenRows = 0;
            visibleAreaBottomY = listContentVisibleHeight + sumRowHeights(0,Math.min(desiredPrefixItems,pos) - 1);
            for(i = actual.y; i < listItems.length; i++)
            {
               row = listItems[i];
               rowData = rowInfo[i];
               moveRowVertically(i,listItems[i].length,moveBlockDistance);
               if(rowData.y >= visibleAreaBottomY)
               {
                  newOffscreenRows++;
                  if(newOffscreenRows > desiredSuffixItems)
                  {
                     destroyRow(i,listItems[i].length);
                     removeFromRowArrays(i);
                     i--;
                  }
                  else
                  {
                     shiftRow(i,i + deltaPos,listItems[i].length,false);
                     moveIndicatorsVertically(rowInfo[i].uid,moveBlockDistance);
                  }
               }
               else
               {
                  shiftRow(i,i + deltaPos,listItems[i].length,false);
                  moveIndicatorsVertically(rowInfo[i].uid,moveBlockDistance);
               }
            }
            rowCount = int(listItems.length);
            offscreenExtraRowsTop = Math.min(desiredPrefixItems,pos);
            offscreenExtraRowsBottom = Math.min(newOffscreenRows,desiredSuffixItems);
         }
         listContent.topOffset = -sumRowHeights(0,offscreenExtraRowsTop - 1);
         listContent.bottomOffset = rowInfo[rowInfo.length - 1].y + rowInfo[rowInfo.length - 1].height + listContent.topOffset - listContentVisibleHeight;
         adjustListContent(oldUnscaledWidth,oldUnscaledHeight);
         addClipMask(true);
      }
      
      protected function selectItem(item:IListItemRenderer, shiftKey:Boolean, ctrlKey:Boolean, transition:Boolean = true) : Boolean
      {
         var uid:String;
         var selectionChange:Boolean;
         var placeHolder:CursorBookmark = null;
         var index:int = 0;
         var numSelected:int = 0;
         var curSelectionData:ListBaseSelectionData = null;
         var oldAnchorBookmark:CursorBookmark = null;
         var oldAnchorIndex:int = 0;
         var incr:Boolean = false;
         if(!item || !isItemSelectable(item.data))
         {
            return false;
         }
         selectionChange = false;
         placeHolder = iterator.bookmark;
         index = itemRendererToIndex(item);
         uid = itemToUID(item.data);
         if(!allowMultipleSelection || !shiftKey && !ctrlKey)
         {
            numSelected = 0;
            if(allowMultipleSelection)
            {
               curSelectionData = firstSelectionData;
               if(curSelectionData != null)
               {
                  numSelected++;
                  if(curSelectionData.nextSelectionData)
                  {
                     numSelected++;
                  }
               }
            }
            if(ctrlKey && Boolean(selectedData[uid]))
            {
               selectionChange = true;
               clearSelected(transition);
            }
            else if(_selectedIndex != index || bSelectedIndexChanged || allowMultipleSelection && numSelected != 1)
            {
               selectionChange = true;
               clearSelected(transition);
               insertSelectionDataBefore(uid,new ListBaseSelectionData(item.data,index,approximate),firstSelectionData);
               drawItem(UIDToItemRenderer(uid),true,uid == highlightUID,true,transition);
               _selectedIndex = index;
               _selectedItem = item.data;
               iterator.seek(CursorBookmark.CURRENT,_selectedIndex - indicesToIndex(verticalScrollPosition - offscreenExtraRowsTop,horizontalScrollPosition - offscreenExtraColumnsLeft));
               caretIndex = _selectedIndex;
               caretBookmark = iterator.bookmark;
               anchorIndex = _selectedIndex;
               anchorBookmark = iterator.bookmark;
               iterator.seek(placeHolder,0);
            }
         }
         else if(shiftKey && allowMultipleSelection)
         {
            if(anchorBookmark)
            {
               oldAnchorBookmark = anchorBookmark;
               oldAnchorIndex = anchorIndex;
               incr = anchorIndex < index;
               clearSelected(false);
               caretIndex = index;
               caretBookmark = iterator.bookmark;
               anchorIndex = oldAnchorIndex;
               anchorBookmark = oldAnchorBookmark;
               _selectedIndex = index;
               _selectedItem = item.data;
               try
               {
                  iterator.seek(anchorBookmark,0);
               }
               catch(e:ItemPendingError)
               {
                  e.addResponder(new ItemResponder(selectionPendingResultHandler,selectionPendingFailureHandler,new ListBaseSelectionPending(incr,index,item.data,transition,placeHolder,CursorBookmark.CURRENT,0)));
                  iteratorValid = false;
               }
               shiftSelectionLoop(incr,anchorIndex,item.data,transition,placeHolder);
            }
            selectionChange = true;
         }
         else if(ctrlKey && allowMultipleSelection)
         {
            if(selectedData[uid])
            {
               removeSelectionData(uid);
               drawItem(UIDToItemRenderer(uid),false,uid == highlightUID,true,transition);
               if(item.data == selectedItem)
               {
                  calculateSelectedIndexAndItem();
               }
            }
            else
            {
               insertSelectionDataBefore(uid,new ListBaseSelectionData(item.data,index,approximate),firstSelectionData);
               drawItem(UIDToItemRenderer(uid),true,uid == highlightUID,true,transition);
               _selectedIndex = index;
               _selectedItem = item.data;
            }
            iterator.seek(CursorBookmark.CURRENT,index - indicesToIndex(verticalScrollPosition,horizontalScrollPosition));
            caretIndex = index;
            caretBookmark = iterator.bookmark;
            anchorIndex = index;
            anchorBookmark = iterator.bookmark;
            iterator.seek(placeHolder,0);
            selectionChange = true;
         }
         return selectionChange;
      }
      
      mx_internal function selectionTween_updateHandler(event:TweenEvent) : void
      {
         Sprite(event.target.listener).alpha = Number(event.value);
      }
      
      protected function prepareDataEffect(ce:CollectionEvent) : void
      {
         var dce:Object = null;
         var dceClass:Class = null;
         var firstItemIndex:int = 0;
         var lastItemIndex:int = 0;
         if(!cachedItemsChangeEffect)
         {
            dce = getStyle("itemsChangeEffect");
            dceClass = dce as Class;
            if(dceClass)
            {
               dce = new dceClass();
            }
            cachedItemsChangeEffect = dce as IEffect;
         }
         if(runningDataEffect)
         {
            collection = actualCollection;
            listContent.iterator = iterator = actualIterator;
            cachedItemsChangeEffect.end();
            modifiedCollectionView = null;
         }
         if(Boolean(cachedItemsChangeEffect) && iteratorValid)
         {
            firstItemIndex = iterator.bookmark.getViewIndex();
            lastItemIndex = firstItemIndex + rowCount * columnCount - 1;
            if(!modifiedCollectionView && collection is IList)
            {
               modifiedCollectionView = new ModifiedCollectionView(ICollectionView(collection));
            }
            if(modifiedCollectionView)
            {
               modifiedCollectionView.processCollectionEvent(ce,firstItemIndex,lastItemIndex);
               runDataEffectNextUpdate = true;
               if(invalidateDisplayListFlag)
               {
                  callLater(invalidateList);
               }
               else
               {
                  invalidateList();
               }
            }
         }
      }
      
      protected function drawSelectionIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         var g:Graphics = Sprite(indicator).graphics;
         g.clear();
         g.beginFill(color);
         g.drawRect(0,0,width,height);
         g.endFill();
         indicator.x = x;
         indicator.y = y;
      }
      
      mx_internal function setColumnWidth(value:Number) : void
      {
         _columnWidth = value;
      }
      
      protected function makeRowsAndColumns(left:Number, top:Number, right:Number, bottom:Number, firstColumn:int, firstRow:int, byCount:Boolean = false, rowsNeeded:uint = 0) : Point
      {
         return new Point(0,0);
      }
      
      public function isItemVisible(item:Object) : Boolean
      {
         return itemToItemRenderer(item) != null;
      }
      
      mx_internal function commitSelectedIndices(indices:Array) : void
      {
         clearSelected();
         try
         {
            collectionIterator.seek(CursorBookmark.FIRST,0);
         }
         catch(e:ItemPendingError)
         {
            e.addResponder(new ItemResponder(selectionIndicesPendingResultHandler,selectionIndicesPendingFailureHandler,new ListBaseSelectionDataPending(true,0,indices,CursorBookmark.FIRST,0)));
            return;
         }
         setSelectionIndicesLoop(0,indices,true);
      }
      
      public function calculateDropIndex(event:DragEvent = null) : int
      {
         var item:IListItemRenderer = null;
         var lastItem:IListItemRenderer = null;
         var pt:Point = null;
         var rc:int = 0;
         var i:int = 0;
         if(event)
         {
            pt = new Point(event.localX,event.localY);
            pt = DisplayObject(event.target).localToGlobal(pt);
            pt = listContent.globalToLocal(pt);
            rc = int(listItems.length);
            for(i = 0; i < rc; i++)
            {
               if(listItems[i][0])
               {
                  lastItem = listItems[i][0];
               }
               if(rowInfo[i].y <= pt.y && pt.y < rowInfo[i].y + rowInfo[i].height)
               {
                  item = listItems[i][0];
                  break;
               }
            }
            if(item)
            {
               lastDropIndex = itemRendererToIndex(item);
            }
            else if(lastItem)
            {
               lastDropIndex = itemRendererToIndex(lastItem) + 1;
            }
            else
            {
               lastDropIndex = collection ? collection.length : 0;
            }
         }
         return lastDropIndex;
      }
      
      protected function mouseDownHandler(event:MouseEvent) : void
      {
         var item:IListItemRenderer = null;
         var pt:Point = null;
         if(!enabled || !selectable)
         {
            return;
         }
         if(runningDataEffect)
         {
            cachedItemsChangeEffect.end();
            dataEffectCompleted = true;
            itemsSizeChanged = true;
            invalidateList();
            dataItemWrappersByRenderer = new Dictionary();
            validateDisplayList();
         }
         isPressed = true;
         item = mouseEventToItemRenderer(event);
         if(!item)
         {
            return;
         }
         bSelectOnRelease = false;
         pt = new Point(event.localX,event.localY);
         pt = DisplayObject(event.target).localToGlobal(pt);
         mouseDownPoint = globalToLocal(pt);
         systemManager.getSandboxRoot().addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true,0,true);
         systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,mouseLeaveHandler,false,0,true);
         if(!dragEnabled)
         {
            dragScrollingInterval = setInterval(dragScroll,15);
         }
         if(dragEnabled && Boolean(selectedData[rowMap[item.name].uid]))
         {
            bSelectOnRelease = true;
         }
         else if(selectItem(item,event.shiftKey,event.ctrlKey))
         {
            mouseDownItem = item;
         }
      }
      
      [Bindable("labelFieldChanged")]
      public function get labelField() : String
      {
         return _labelField;
      }
      
      private function onSelectionTweenUpdate(value:Number) : void
      {
      }
      
      protected function clearIndicators() : void
      {
         var uniqueID:String = null;
         for(uniqueID in selectionTweens)
         {
            removeIndicators(uniqueID);
         }
         while(selectionLayer.numChildren > 0)
         {
            selectionLayer.removeChildAt(0);
         }
         selectionTweens = {};
         selectionIndicators = {};
         highlightIndicator = null;
         highlightUID = null;
         caretIndicator = null;
         caretUID = null;
      }
      
      public function get offscreenExtraRowsOrColumns() : int
      {
         return _offscreenExtraRowsOrColumns;
      }
      
      public function get wordWrap() : Boolean
      {
         return _wordWrap;
      }
      
      protected function drawItem(item:IListItemRenderer, selected:Boolean = false, highlighted:Boolean = false, caret:Boolean = false, transition:Boolean = false) : void
      {
         var o:Sprite = null;
         var g:Graphics = null;
         var effectiveRowY:Number = NaN;
         if(!item)
         {
            return;
         }
         var contentHolder:ListBaseContentHolder = DisplayObject(item).parent as ListBaseContentHolder;
         if(!contentHolder)
         {
            return;
         }
         var rowInfo:Array = contentHolder.rowInfo;
         var selectionLayer:Sprite = contentHolder.selectionLayer;
         var rowData:BaseListData = rowMap[item.name];
         if(!rowData)
         {
            return;
         }
         if(highlighted && (!highlightItemRenderer || highlightUID != rowData.uid))
         {
            if(!highlightIndicator)
            {
               o = new SpriteAsset();
               selectionLayer.addChild(DisplayObject(o));
               highlightIndicator = o;
            }
            else if(highlightIndicator.parent != selectionLayer)
            {
               selectionLayer.addChild(highlightIndicator);
            }
            else
            {
               selectionLayer.setChildIndex(DisplayObject(highlightIndicator),selectionLayer.numChildren - 1);
            }
            o = highlightIndicator;
            drawHighlightIndicator(o,item.x,rowInfo[rowData.rowIndex].y,item.width,rowInfo[rowData.rowIndex].height,getStyle("rollOverColor"),item);
            lastHighlightItemRenderer = highlightItemRenderer = item;
            highlightUID = rowData.uid;
         }
         else if(Boolean(!highlighted) && Boolean(highlightItemRenderer) && (Boolean(rowData) && Boolean(highlightUID == rowData.uid)))
         {
            clearHighlightIndicator(highlightIndicator,item);
            highlightItemRenderer = null;
            highlightUID = null;
         }
         if(selected)
         {
            effectiveRowY = runningDataEffect ? item.y - cachedPaddingTop : Number(rowInfo[rowData.rowIndex].y);
            if(!selectionIndicators[rowData.uid])
            {
               o = new SpriteAsset();
               o.mouseEnabled = false;
               selectionLayer.addChild(DisplayObject(o));
               selectionIndicators[rowData.uid] = o;
               drawSelectionIndicator(o,item.x,effectiveRowY,item.width,rowInfo[rowData.rowIndex].height,enabled ? uint(getStyle("selectionColor")) : uint(getStyle("selectionDisabledColor")),item);
               if(transition)
               {
                  applySelectionEffect(o,rowData.uid,item);
               }
            }
            else
            {
               o = selectionIndicators[rowData.uid];
               drawSelectionIndicator(o,item.x,effectiveRowY,item.width,rowInfo[rowData.rowIndex].height,enabled ? uint(getStyle("selectionColor")) : uint(getStyle("selectionDisabledColor")),item);
            }
         }
         else if(!selected)
         {
            if(Boolean(rowData) && Boolean(selectionIndicators[rowData.uid]))
            {
               if(selectionTweens[rowData.uid])
               {
                  selectionTweens[rowData.uid].removeEventListener(TweenEvent.TWEEN_UPDATE,selectionTween_updateHandler);
                  selectionTweens[rowData.uid].removeEventListener(TweenEvent.TWEEN_END,selectionTween_endHandler);
                  if(selectionIndicators[rowData.uid].alpha < 1)
                  {
                     Tween.removeTween(selectionTweens[rowData.uid]);
                  }
                  delete selectionTweens[rowData.uid];
               }
               selectionLayer.removeChild(selectionIndicators[rowData.uid]);
               delete selectionIndicators[rowData.uid];
            }
         }
         if(caret)
         {
            if(showCaret)
            {
               if(!caretIndicator)
               {
                  o = new SpriteAsset();
                  o.mouseEnabled = false;
                  selectionLayer.addChild(DisplayObject(o));
                  caretIndicator = o;
               }
               else if(caretIndicator.parent != selectionLayer)
               {
                  selectionLayer.addChild(caretIndicator);
               }
               else
               {
                  selectionLayer.setChildIndex(DisplayObject(caretIndicator),selectionLayer.numChildren - 1);
               }
               o = caretIndicator;
               drawCaretIndicator(o,item.x,rowInfo[rowData.rowIndex].y,item.width,rowInfo[rowData.rowIndex].height,getStyle("selectionColor"),item);
               caretItemRenderer = item;
               caretUID = rowData.uid;
            }
         }
         else if(Boolean(!caret) && Boolean(caretItemRenderer) && caretUID == rowData.uid)
         {
            clearCaretIndicator(caretIndicator,item);
            caretItemRenderer = null;
            caretUID = "";
         }
         if(item is IFlexDisplayObject)
         {
            if(item is IInvalidating)
            {
               IInvalidating(item).invalidateDisplayList();
               IInvalidating(item).validateNow();
            }
         }
         else if(item is IUITextField)
         {
            IUITextField(item).validateNow();
         }
      }
      
      protected function dragExitHandler(event:DragEvent) : void
      {
         if(event.isDefaultPrevented())
         {
            return;
         }
         lastDragEvent = null;
         hideDropFeedback(event);
         resetDragScrolling();
         DragManager.showFeedback(DragManager.NONE);
      }
      
      protected function adjustAfterRemove(items:Array, location:int, emitEvent:Boolean) : Boolean
      {
         var data:ListBaseSelectionData = null;
         var requiresValueCommit:Boolean = false;
         var i:int = 0;
         var length:int = 0;
         var placeHolder:CursorBookmark = null;
         var s:String = null;
         requiresValueCommit = emitEvent;
         i = 0;
         length = int(items.length);
         for(s in selectedData)
         {
            i++;
            data = selectedData[s];
            if(data.index > location)
            {
               data.index -= length;
            }
         }
         if(_selectedIndex > location)
         {
            _selectedIndex -= length;
            requiresValueCommit = true;
         }
         if(i > 0 && _selectedIndex == -1)
         {
            _selectedIndex = data.index;
            _selectedItem = data.data;
            requiresValueCommit = true;
         }
         if(i == 0)
         {
            _selectedIndex = -1;
            bSelectionChanged = true;
            bSelectedIndexChanged = true;
            invalidateDisplayList();
         }
         if(anchorIndex > location)
         {
            anchorIndex -= length;
            placeHolder = iterator.bookmark;
            try
            {
               iterator.seek(CursorBookmark.FIRST,anchorIndex);
               anchorBookmark = iterator.bookmark;
            }
            catch(e:ItemPendingError)
            {
               e.addResponder(new ItemResponder(setBookmarkPendingResultHandler,setBookmarkPendingFailureHandler,{
                  "property":"anchorBookmark",
                  "value":anchorIndex
               }));
            }
            iterator.seek(placeHolder);
         }
         if(caretIndex > location)
         {
            caretIndex -= length;
            placeHolder = iterator.bookmark;
            try
            {
               iterator.seek(CursorBookmark.FIRST,caretIndex);
               caretBookmark = iterator.bookmark;
            }
            catch(e:ItemPendingError)
            {
               e.addResponder(new ItemResponder(setBookmarkPendingResultHandler,setBookmarkPendingFailureHandler,{
                  "property":"caretBookmark",
                  "value":caretIndex
               }));
            }
            iterator.seek(placeHolder);
         }
         return requiresValueCommit;
      }
      
      public function itemToIcon(data:Object) : Class
      {
         var iconClass:Class = null;
         var icon:* = undefined;
         if(data == null)
         {
            return null;
         }
         if(iconFunction != null)
         {
            return iconFunction(data);
         }
         if(data is XML)
         {
            try
            {
               if(data[iconField].length() != 0)
               {
                  icon = String(data[iconField]);
                  if(icon != null)
                  {
                     iconClass = Class(systemManager.getDefinitionByName(icon));
                     if(iconClass)
                     {
                        return iconClass;
                     }
                     return document[icon];
                  }
               }
            }
            catch(e:Error)
            {
            }
         }
         else if(data is Object)
         {
            try
            {
               if(data[iconField] != null)
               {
                  if(data[iconField] is Class)
                  {
                     return data[iconField];
                  }
                  if(data[iconField] is String)
                  {
                     iconClass = Class(systemManager.getDefinitionByName(data[iconField]));
                     if(iconClass)
                     {
                        return iconClass;
                     }
                     return document[data[iconField]];
                  }
               }
            }
            catch(e:Error)
            {
            }
         }
         return null;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         var ui:IFlexDisplayObject = border as IFlexDisplayObject;
         if(ui)
         {
            if(ui is IUIComponent)
            {
               IUIComponent(ui).enabled = value;
            }
            if(ui is IInvalidating)
            {
               IInvalidating(ui).invalidateDisplayList();
            }
         }
         itemsSizeChanged = true;
         invalidateDisplayList();
      }
      
      public function addDataEffectItem(item:Object) : void
      {
         if(modifiedCollectionView)
         {
            modifiedCollectionView.addItem(dataItemWrappersByRenderer[item]);
         }
         if(iterator.afterLast)
         {
            iterator.seek(CursorBookmark.FIRST);
         }
         else
         {
            iterator.seek(CursorBookmark.CURRENT);
         }
         if(invalidateDisplayListFlag)
         {
            callLater(invalidateList);
         }
         else
         {
            invalidateList();
         }
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return super.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         var isNull:Boolean = dataProvider == null;
         var isEmpty:Boolean = dataProvider != null && dataProvider.length == 0;
         if(isNull || isEmpty)
         {
            dataProvider = [null];
            validateNow();
         }
         if(!listItems || listItems.length == 0)
         {
            return super.baselinePosition;
         }
         var listItem:IUIComponent = listItems[0][0] as IUIComponent;
         if(!listItem)
         {
            return super.baselinePosition;
         }
         var contentHolder:ListBaseContentHolder = ListBaseContentHolder(listItem.parent);
         var result:Number = contentHolder.y + listItem.y + listItem.baselinePosition;
         if(isNull || isEmpty)
         {
            if(isNull)
            {
               dataProvider = null;
            }
            else if(isEmpty)
            {
               dataProvider = [];
            }
            validateNow();
         }
         return result;
      }
      
      private function makeRowsAndColumnsWithExtraRows(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var lastPrefixRow:ListRowInfo = null;
         var lastOnscreenRow:ListRowInfo = null;
         var lastOffscreenRow:ListRowInfo = null;
         var onscreenRowIndex:int = 0;
         var pt:Point = null;
         var currentRows:int = 0;
         var extraEmptyRows:int = 0;
         var i:int = 0;
         var desiredExtraRowsTop:int = offscreenExtraRows / 2;
         var desiredExtraRowsBottom:int = offscreenExtraRows / 2;
         offscreenExtraRowsTop = Math.min(desiredExtraRowsTop,verticalScrollPosition);
         var index:int = scrollPositionToIndex(horizontalScrollPosition,verticalScrollPosition - offscreenExtraRowsTop);
         seekPositionSafely(index);
         var cursorPos:CursorBookmark = iterator.bookmark;
         if(offscreenExtraRowsTop > 0)
         {
            makeRowsAndColumns(0,0,listContent.width,listContent.height,0,0,true,offscreenExtraRowsTop);
         }
         var curY:Number = offscreenExtraRowsTop ? rowInfo[offscreenExtraRowsTop - 1].y + rowHeight : 0;
         pt = makeRowsAndColumns(0,curY,listContent.width,curY + listContent.heightExcludingOffsets,0,offscreenExtraRowsTop);
         if(desiredExtraRowsBottom > 0 && !iterator.afterLast)
         {
            if(offscreenExtraRowsTop + pt.y - 1 < 0)
            {
               curY = 0;
            }
            else
            {
               curY = rowInfo[offscreenExtraRowsTop + pt.y - 1].y + rowInfo[offscreenExtraRowsTop + pt.y - 1].height;
            }
            currentRows = int(listItems.length);
            pt = makeRowsAndColumns(0,curY,listContent.width,curY,0,offscreenExtraRowsTop + pt.y,true,desiredExtraRowsBottom);
            if(pt.y == desiredExtraRowsBottom)
            {
               while(Boolean(pt.y > 0) && Boolean(listItems[listItems.length - 1]) && listItems[listItems.length - 1].length == 0)
               {
                  --pt.y;
                  listItems.pop();
                  rowInfo.pop();
               }
            }
            else if(pt.y < desiredExtraRowsBottom)
            {
               extraEmptyRows = listItems.length - (currentRows + pt.y);
               if(extraEmptyRows)
               {
                  for(i = 0; i < extraEmptyRows; i++)
                  {
                     listItems.pop();
                     rowInfo.pop();
                  }
               }
            }
            offscreenExtraRowsBottom = pt.y;
         }
         else
         {
            offscreenExtraRowsBottom = 0;
         }
         var oldContentHeight:Number = listContent.heightExcludingOffsets;
         listContent.topOffset = -offscreenExtraRowsTop * rowHeight;
         listContent.bottomOffset = offscreenExtraRowsBottom > 0 ? listItems[listItems.length - 1][0].y + rowHeight - oldContentHeight + listContent.topOffset : 0;
         if(iteratorValid)
         {
            iterator.seek(cursorPos,0);
         }
         adjustListContent(unscaledWidth,unscaledHeight);
      }
      
      mx_internal function indicesToItemRenderer(row:int, col:int) : IListItemRenderer
      {
         return listItems[row][col];
      }
      
      mx_internal function getItemRendererForMouseEvent(event:MouseEvent) : IListItemRenderer
      {
         return mouseEventToItemRenderer(event);
      }
      
      mx_internal function set $verticalScrollPosition(value:Number) : void
      {
         var oldValue:int = super.verticalScrollPosition;
         if(oldValue != value)
         {
            super.verticalScrollPosition = value;
         }
      }
      
      protected function mouseOutHandler(event:MouseEvent) : void
      {
         var item:IListItemRenderer = null;
         if(!enabled || !selectable)
         {
            return;
         }
         isPressed = event.buttonDown;
         item = mouseEventToItemRenderer(event);
         if(!item)
         {
            return;
         }
         if(!isPressed)
         {
            if(itemRendererContains(item,event.relatedObject) || event.relatedObject == listContent || event.relatedObject == highlightIndicator || !highlightItemRenderer)
            {
               return;
            }
            if(Boolean(getStyle("useRollOver")) && item.data != null)
            {
               clearHighlight(item);
            }
         }
      }
      
      public function set dropEnabled(value:Boolean) : void
      {
         if(_dropEnabled && !value)
         {
            removeEventListener(DragEvent.DRAG_ENTER,dragEnterHandler,false);
            removeEventListener(DragEvent.DRAG_EXIT,dragExitHandler,false);
            removeEventListener(DragEvent.DRAG_OVER,dragOverHandler,false);
            removeEventListener(DragEvent.DRAG_DROP,dragDropHandler,false);
         }
         _dropEnabled = value;
         if(value)
         {
            addEventListener(DragEvent.DRAG_ENTER,dragEnterHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_EXIT,dragExitHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_OVER,dragOverHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_DROP,dragDropHandler,false,EventPriority.DEFAULT_HANDLER);
         }
      }
      
      protected function get listContentStyleFilters() : Object
      {
         return _listContentStyleFilters;
      }
      
      public function itemToLabel(data:Object) : String
      {
         if(data == null)
         {
            return " ";
         }
         if(labelFunction != null)
         {
            return labelFunction(data);
         }
         if(data is XML)
         {
            try
            {
               if(data[labelField].length() != 0)
               {
                  data = data[labelField];
               }
            }
            catch(e:Error)
            {
            }
         }
         else if(data is Object)
         {
            try
            {
               if(data[labelField] != null)
               {
                  data = data[labelField];
               }
            }
            catch(e:Error)
            {
            }
         }
         if(data is String)
         {
            return String(data);
         }
         try
         {
            return data.toString();
         }
         catch(e:Error)
         {
         }
         return " ";
      }
      
      public function set rowCount(value:int) : void
      {
         explicitRowCount = value;
         if(_rowCount != value)
         {
            setRowCount(value);
            rowCountChanged = true;
            invalidateProperties();
            invalidateSize();
            itemsSizeChanged = true;
            invalidateDisplayList();
            dispatchEvent(new Event("rowCountChanged"));
         }
      }
      
      public function set columnCount(value:int) : void
      {
         explicitColumnCount = value;
         if(_columnCount != value)
         {
            setColumnCount(value);
            columnCountChanged = true;
            invalidateProperties();
            invalidateSize();
            itemsSizeChanged = true;
            invalidateDisplayList();
            dispatchEvent(new Event("columnCountChanged"));
         }
      }
      
      private function partialPurgeItemRenderers() : void
      {
         var p:* = undefined;
         var uid:String = null;
         var freeRenderer:DisplayObject = null;
         var d:Dictionary = null;
         var q:* = undefined;
         dataEffectCompleted = false;
         while(freeItemRenderers.length)
         {
            freeRenderer = DisplayObject(freeItemRenderers.pop());
            if(freeRenderer.parent)
            {
               listContent.removeChild(freeRenderer);
            }
         }
         for(p in freeItemRenderersByFactory)
         {
            d = freeItemRenderersByFactory[p];
            for(q in d)
            {
               freeRenderer = DisplayObject(q);
               delete d[q];
               if(freeRenderer.parent)
               {
                  listContent.removeChild(freeRenderer);
               }
            }
         }
         for(uid in reservedItemRenderers)
         {
            freeRenderer = DisplayObject(reservedItemRenderers[uid]);
            if(freeRenderer.parent)
            {
               listContent.removeChild(freeRenderer);
            }
         }
         reservedItemRenderers = {};
         rowMap = {};
         clearVisibleData();
      }
      
      protected function seekPendingResultHandler(data:Object, info:ListBaseSeekPending) : void
      {
         if(info != lastSeekPending)
         {
            return;
         }
         lastSeekPending = null;
         iteratorValid = true;
         try
         {
            iterator.seek(info.bookmark,info.offset);
         }
         catch(e:ItemPendingError)
         {
            lastSeekPending = new ListBaseSeekPending(info.bookmark,info.offset);
            e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
            iteratorValid = false;
         }
         if(bSortItemPending)
         {
            bSortItemPending = false;
            adjustAfterSort();
         }
         itemsSizeChanged = true;
         invalidateDisplayList();
      }
      
      mx_internal function mouseEventToItemRendererOrEditor(event:MouseEvent) : IListItemRenderer
      {
         var pt:Point = null;
         var yy:Number = NaN;
         var n:int = 0;
         var i:int = 0;
         var m:int = 0;
         var j:int = 0;
         var target:DisplayObject = DisplayObject(event.target);
         if(target == listContent)
         {
            pt = new Point(event.stageX,event.stageY);
            pt = listContent.globalToLocal(pt);
            yy = 0;
            n = int(listItems.length);
            for(i = 0; i < n; i++)
            {
               if(listItems[i].length)
               {
                  if(pt.y < yy + rowInfo[i].height)
                  {
                     m = int(listItems[i].length);
                     if(m == 1)
                     {
                        return listItems[i][0];
                     }
                     j = Math.floor(pt.x / columnWidth);
                     return listItems[i][j];
                  }
               }
               yy += rowInfo[i].height;
            }
         }
         else if(target == highlightIndicator)
         {
            return lastHighlightItemRenderer;
         }
         while(Boolean(target) && target != this)
         {
            if(target is IListItemRenderer && target.parent == listContent)
            {
               if(target.visible)
               {
                  return IListItemRenderer(target);
               }
               break;
            }
            if(target is IUIComponent)
            {
               target = IUIComponent(target).owner;
            }
            else
            {
               target = target.parent;
            }
         }
         return null;
      }
      
      protected function configureScrollBars() : void
      {
      }
      
      protected function clearVisibleData() : void
      {
         listContent.visibleData = {};
      }
      
      private function insertSelectionDataAfter(uid:String, selectionData:ListBaseSelectionData, prevSelectionData:ListBaseSelectionData) : void
      {
         if(prevSelectionData == null)
         {
            firstSelectionData = lastSelectionData = selectionData;
         }
         else
         {
            if(prevSelectionData == lastSelectionData)
            {
               lastSelectionData = selectionData;
            }
            selectionData.prevSelectionData = prevSelectionData;
            selectionData.nextSelectionData = prevSelectionData.nextSelectionData;
            prevSelectionData.nextSelectionData = selectionData;
         }
         selectedData[uid] = selectionData;
      }
      
      protected function moveSelectionVertically(code:uint, shiftKey:Boolean, ctrlKey:Boolean) : void
      {
         var newVerticalScrollPosition:Number = NaN;
         var listItem:IListItemRenderer = null;
         var uid:String = null;
         var len:int = 0;
         var se:ScrollEvent = null;
         var bSelChanged:Boolean = false;
         showCaret = true;
         var rowCount:int = int(listItems.length);
         var onscreenRowCount:int = listItems.length - offscreenExtraRowsTop - offscreenExtraRowsBottom;
         var partialRow:int = rowInfo[rowCount - offscreenExtraRowsBottom - 1].y + rowInfo[rowCount - offscreenExtraRowsBottom - 1].height > listContent.heightExcludingOffsets - listContent.topOffset ? 1 : 0;
         var bUpdateVerticalScrollPosition:Boolean = false;
         bSelectItem = false;
         switch(code)
         {
            case Keyboard.UP:
               if(caretIndex > 0)
               {
                  --caretIndex;
                  bUpdateVerticalScrollPosition = true;
                  bSelectItem = true;
               }
               break;
            case Keyboard.DOWN:
               if(caretIndex < collection.length - 1)
               {
                  ++caretIndex;
                  bUpdateVerticalScrollPosition = true;
                  bSelectItem = true;
               }
               else if(caretIndex == collection.length - 1 && Boolean(partialRow))
               {
                  if(verticalScrollPosition < maxVerticalScrollPosition)
                  {
                     newVerticalScrollPosition = verticalScrollPosition + 1;
                  }
               }
               break;
            case Keyboard.PAGE_UP:
               if(caretIndex > verticalScrollPosition && caretIndex < verticalScrollPosition + onscreenRowCount)
               {
                  caretIndex = verticalScrollPosition;
               }
               else
               {
                  caretIndex = Math.max(caretIndex - Math.max(onscreenRowCount - partialRow,1),0);
                  newVerticalScrollPosition = Math.max(caretIndex,0);
               }
               bSelectItem = true;
               break;
            case Keyboard.PAGE_DOWN:
               if(!(caretIndex >= verticalScrollPosition && caretIndex < verticalScrollPosition + onscreenRowCount - partialRow - 1))
               {
                  if(caretIndex == verticalScrollPosition && onscreenRowCount - partialRow <= 1)
                  {
                     ++caretIndex;
                  }
                  newVerticalScrollPosition = Math.max(Math.min(caretIndex,maxVerticalScrollPosition),0);
               }
               bSelectItem = true;
               break;
            case Keyboard.HOME:
               if(caretIndex > 0)
               {
                  caretIndex = 0;
                  bSelectItem = true;
                  newVerticalScrollPosition = 0;
               }
               break;
            case Keyboard.END:
               if(caretIndex < collection.length - 1)
               {
                  caretIndex = collection.length - 1;
                  bSelectItem = true;
                  newVerticalScrollPosition = maxVerticalScrollPosition;
               }
         }
         if(bUpdateVerticalScrollPosition)
         {
            if(caretIndex >= verticalScrollPosition + onscreenRowCount - partialRow)
            {
               if(onscreenRowCount - partialRow == 0)
               {
                  newVerticalScrollPosition = Math.min(maxVerticalScrollPosition,caretIndex);
               }
               else
               {
                  newVerticalScrollPosition = Math.min(maxVerticalScrollPosition,caretIndex - onscreenRowCount + partialRow + 1);
               }
            }
            else if(caretIndex < verticalScrollPosition)
            {
               newVerticalScrollPosition = Math.max(caretIndex,0);
            }
         }
         if(!isNaN(newVerticalScrollPosition))
         {
            if(verticalScrollPosition != newVerticalScrollPosition)
            {
               se = new ScrollEvent(ScrollEvent.SCROLL);
               se.detail = ScrollEventDetail.THUMB_POSITION;
               se.direction = ScrollEventDirection.VERTICAL;
               se.delta = newVerticalScrollPosition - verticalScrollPosition;
               se.position = newVerticalScrollPosition;
               verticalScrollPosition = newVerticalScrollPosition;
               dispatchEvent(se);
            }
            if(!iteratorValid)
            {
               keySelectionPending = true;
               return;
            }
         }
         bShiftKey = shiftKey;
         bCtrlKey = ctrlKey;
         lastKey = code;
         finishKeySelection();
      }
      
      protected function getReservedOrFreeItemRenderer(data:Object) : IListItemRenderer
      {
         var item:IListItemRenderer = null;
         var uid:String = null;
         var factory:IFactory = null;
         var freeRenderers:Dictionary = null;
         var p:* = undefined;
         if(runningDataEffect)
         {
            item = IListItemRenderer(reservedItemRenderers[uid = itemToUID(data)]);
         }
         if(item)
         {
            delete reservedItemRenderers[uid];
         }
         else
         {
            factory = getItemRendererFactory(data);
            if(freeItemRenderersByFactory)
            {
               if(factory == itemRenderer)
               {
                  if(freeItemRenderers.length)
                  {
                     item = freeItemRenderers.pop();
                     delete freeItemRenderersByFactory[factory][item];
                  }
               }
               else
               {
                  freeRenderers = freeItemRenderersByFactory[factory];
                  if(freeRenderers)
                  {
                     var _loc7_:int = 0;
                     var _loc8_:* = freeRenderers;
                     for(p in _loc8_)
                     {
                        item = p;
                        delete freeItemRenderersByFactory[factory][item];
                     }
                  }
               }
            }
         }
         return item;
      }
      
      protected function addDragData(ds:Object) : void
      {
         ds.addHandler(copySelectedItems,"items");
      }
      
      private function adjustAfterSort() : void
      {
         var p:String = null;
         var index:int = 0;
         var newVerticalScrollPosition:int = 0;
         var newHorizontalScrollPosition:int = 0;
         var pos:int = 0;
         var data:ListBaseSelectionData = null;
         var i:int = 0;
         for(p in selectedData)
         {
            i++;
         }
         index = anchorBookmark ? anchorBookmark.getViewIndex() : -1;
         if(index >= 0)
         {
            if(i == 1)
            {
               _selectedIndex = anchorIndex = caretIndex = index;
               data = selectedData[p];
               data.index = index;
            }
            newVerticalScrollPosition = indexToRow(index);
            if(newVerticalScrollPosition == -1)
            {
               return;
            }
            newVerticalScrollPosition = Math.min(maxVerticalScrollPosition,newVerticalScrollPosition);
            newHorizontalScrollPosition = indexToColumn(index);
            if(newHorizontalScrollPosition == -1)
            {
               return;
            }
            newHorizontalScrollPosition = Math.min(maxHorizontalScrollPosition,newHorizontalScrollPosition);
            pos = scrollPositionToIndex(newHorizontalScrollPosition,newVerticalScrollPosition);
            try
            {
               iterator.seek(CursorBookmark.CURRENT,pos - index);
               if(!iteratorValid)
               {
                  iteratorValid = true;
                  lastSeekPending = null;
               }
            }
            catch(e:ItemPendingError)
            {
               lastSeekPending = new ListBaseSeekPending(CursorBookmark.CURRENT,pos - index);
               e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
               iteratorValid = false;
               return;
            }
            super.verticalScrollPosition = newVerticalScrollPosition;
            if(listType != "vertical")
            {
               super.horizontalScrollPosition = newHorizontalScrollPosition;
            }
         }
         else
         {
            try
            {
               index = scrollPositionToIndex(horizontalScrollPosition,verticalScrollPosition - offscreenExtraRowsTop);
               iterator.seek(CursorBookmark.FIRST,index);
               if(!iteratorValid)
               {
                  iteratorValid = true;
                  lastSeekPending = null;
               }
            }
            catch(e:ItemPendingError)
            {
               lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,index);
               e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
               iteratorValid = false;
               return;
            }
         }
         if(i > 1)
         {
            commitSelectedItems(selectedItems);
         }
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
      
      private function initiateSelectionTracking(renderers:Array) : void
      {
         var renderer:IListItemRenderer = null;
         for(var i:int = 0; i < renderers.length; i++)
         {
            renderer = renderers[i] as IListItemRenderer;
            if(selectedData[itemToUID(renderer.data)])
            {
               renderer.addEventListener(MoveEvent.MOVE,rendererMoveHandler);
               trackedRenderers.push(renderer);
            }
         }
      }
      
      private function setSelectionDataLoop(items:Array, index:int, useFind:Boolean = true) : void
      {
         var uid:String = null;
         var item:Object = null;
         var bookmark:CursorBookmark = null;
         var len:int = 0;
         var data:Object = null;
         var prevSelectionData:ListBaseSelectionData = null;
         var i:int = 0;
         if(useFind)
         {
            while(items.length)
            {
               item = items.pop();
               uid = itemToUID(item);
               try
               {
                  collectionIterator.findAny(item);
               }
               catch(e1:ItemPendingError)
               {
                  items.push(item);
                  e1.addResponder(new ItemResponder(selectionDataPendingResultHandler,selectionDataPendingFailureHandler,new ListBaseSelectionDataPending(useFind,0,items,null,0)));
                  return;
               }
               bookmark = collectionIterator.bookmark;
               index = bookmark.getViewIndex();
               if(index < 0)
               {
                  try
                  {
                     collectionIterator.seek(CursorBookmark.FIRST,0);
                  }
                  catch(e2:ItemPendingError)
                  {
                     e2.addResponder(new ItemResponder(selectionDataPendingResultHandler,selectionDataPendingFailureHandler,new ListBaseSelectionDataPending(false,0,items,CursorBookmark.FIRST,0)));
                     return;
                  }
                  setSelectionDataLoop(items,0,false);
                  return;
               }
               insertSelectionDataBefore(uid,new ListBaseSelectionData(item,index,true),firstSelectionData);
               if(items.length == 0)
               {
                  _selectedIndex = index;
                  _selectedItem = item;
                  caretIndex = index;
                  caretBookmark = collectionIterator.bookmark;
                  anchorIndex = index;
                  anchorBookmark = collectionIterator.bookmark;
               }
            }
         }
         else
         {
            while(Boolean(items.length) && !collectionIterator.afterLast)
            {
               len = int(items.length);
               data = collectionIterator.current;
               prevSelectionData = null;
               for(i = 0; i < len; i++)
               {
                  if(data == items[i])
                  {
                     uid = itemToUID(data);
                     if(prevSelectionData == null)
                     {
                        insertSelectionDataBefore(uid,new ListBaseSelectionData(data,index,false),firstSelectionData);
                     }
                     else
                     {
                        insertSelectionDataAfter(uid,new ListBaseSelectionData(data,index,false),prevSelectionData);
                     }
                     if(i == 0)
                     {
                        _selectedIndex = index;
                        _selectedItem = data;
                        caretIndex = index;
                        caretBookmark = collectionIterator.bookmark;
                        anchorIndex = index;
                        anchorBookmark = collectionIterator.bookmark;
                     }
                     break;
                  }
                  uid = itemToUID(items[i]);
                  if(selectedData[uid] != null)
                  {
                     prevSelectionData = selectedData[uid];
                  }
               }
               collectionIterator.moveNext();
               index++;
            }
         }
         if(initialized)
         {
            updateList();
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      public function set dragEnabled(value:Boolean) : void
      {
         if(_dragEnabled && !value)
         {
            removeEventListener(DragEvent.DRAG_START,dragStartHandler,false);
            removeEventListener(DragEvent.DRAG_COMPLETE,dragCompleteHandler,false);
         }
         _dragEnabled = value;
         if(value)
         {
            addEventListener(DragEvent.DRAG_START,dragStartHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_COMPLETE,dragCompleteHandler,false,EventPriority.DEFAULT_HANDLER);
         }
      }
      
      mx_internal function getListContentHolder() : ListBaseContentHolder
      {
         return listContent;
      }
      
      public function set iconFunction(value:Function) : void
      {
         _iconFunction = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("iconFunctionChanged"));
      }
      
      protected function initiateDataChangeEffect(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var rowItems:Array = null;
         var j:int = 0;
         var target:Object = null;
         actualCollection = collection;
         actualIterator = iterator;
         collection = modifiedCollectionView;
         modifiedCollectionView.showPreservedState = true;
         listContent.iterator = iterator = collection.createCursor();
         var index:int = scrollPositionToIndex(horizontalScrollPosition - offscreenExtraColumnsLeft,verticalScrollPosition - offscreenExtraRowsTop);
         iterator.seek(CursorBookmark.FIRST,index);
         updateDisplayList(unscaledWidth,unscaledHeight);
         var targets:Array = [];
         var targetHash:Dictionary = new Dictionary(true);
         for(var i:int = 0; i < listItems.length; i++)
         {
            rowItems = listItems[i];
            if(Boolean(rowItems) && rowItems.length > 0)
            {
               for(j = 0; j < rowItems.length; j++)
               {
                  target = rowItems[j];
                  if(target)
                  {
                     targets.push(target);
                     targetHash[target] = true;
                  }
               }
            }
         }
         cachedItemsChangeEffect.targets = targets;
         if(cachedItemsChangeEffect.effectTargetHost != this)
         {
            cachedItemsChangeEffect.effectTargetHost = this;
         }
         cachedItemsChangeEffect.captureStartValues();
         modifiedCollectionView.showPreservedState = false;
         iterator.seek(CursorBookmark.FIRST,index);
         itemsSizeChanged = true;
         updateDisplayList(unscaledWidth,unscaledHeight);
         var newTargets:Array = [];
         var oldTargets:Array = cachedItemsChangeEffect.targets;
         for(i = 0; i < listItems.length; i++)
         {
            rowItems = listItems[i];
            if(Boolean(rowItems) && rowItems.length > 0)
            {
               for(j = 0; j < rowItems.length; j++)
               {
                  target = rowItems[j];
                  if(Boolean(target) && !targetHash[target])
                  {
                     oldTargets.push(target);
                     newTargets.push(target);
                  }
               }
            }
         }
         if(newTargets.length > 0)
         {
            cachedItemsChangeEffect.targets = oldTargets;
            cachedItemsChangeEffect.captureMoreStartValues(newTargets);
         }
         cachedItemsChangeEffect.captureEndValues();
         modifiedCollectionView.showPreservedState = true;
         iterator.seek(CursorBookmark.FIRST,index);
         itemsSizeChanged = true;
         updateDisplayList(unscaledWidth,unscaledHeight);
         initiateSelectionTracking(oldTargets);
         cachedItemsChangeEffect.addEventListener(EffectEvent.EFFECT_END,finishDataChangeEffect);
         cachedItemsChangeEffect.play();
      }
      
      [Bindable("labelFunctionChanged")]
      public function get labelFunction() : Function
      {
         return _labelFunction;
      }
      
      [Bindable("dataTipFieldChanged")]
      public function get dataTipField() : String
      {
         return _dataTipField;
      }
      
      protected function adjustListContent(unscaledWidth:Number = -1, unscaledHeight:Number = -1) : void
      {
         if(unscaledHeight < 0)
         {
            unscaledHeight = oldUnscaledHeight;
            unscaledWidth = oldUnscaledWidth;
         }
         var lcx:Number = viewMetrics.left + listContent.leftOffset;
         var lcy:Number = viewMetrics.top + listContent.topOffset;
         listContent.move(lcx,lcy);
         var ww:Number = Math.max(0,listContent.rightOffset) - lcx - viewMetrics.right;
         var hh:Number = Math.max(0,listContent.bottomOffset) - lcy - viewMetrics.bottom;
         listContent.setActualSize(unscaledWidth + ww,unscaledHeight + hh);
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedIndex() : int
      {
         return _selectedIndex;
      }
      
      mx_internal function setBookmarkPendingFailureHandler(data:Object, info:Object) : void
      {
      }
      
      private function insertSelectionDataBefore(uid:String, selectionData:ListBaseSelectionData, nextSelectionData:ListBaseSelectionData) : void
      {
         if(nextSelectionData == null)
         {
            firstSelectionData = lastSelectionData = selectionData;
         }
         else
         {
            if(nextSelectionData == firstSelectionData)
            {
               firstSelectionData = selectionData;
            }
            selectionData.nextSelectionData = nextSelectionData;
            selectionData.prevSelectionData = nextSelectionData.prevSelectionData;
            nextSelectionData.prevSelectionData = selectionData;
         }
         selectedData[uid] = selectionData;
      }
      
      mx_internal function getCaretIndex() : int
      {
         return caretIndex;
      }
      
      mx_internal function removeClipMask() : void
      {
         var item:DisplayObject = null;
         if(Boolean(listContent) && Boolean(listContent.mask))
         {
            return;
         }
         var lastRowIndex:int = listItems.length - 1;
         if(lastRowIndex < 0)
         {
            return;
         }
         var rowHeight:Number = Number(rowInfo[lastRowIndex].height);
         var lastRowInfo:ListRowInfo = rowInfo[lastRowIndex];
         var lastRowItems:Array = listItems[lastRowIndex];
         var numColumns:int = int(lastRowItems.length);
         for(var i:int = 0; i < numColumns; i++)
         {
            item = lastRowItems[i];
            if(item is IUITextField)
            {
               if(item.height != rowHeight - (item.y - lastRowInfo.y))
               {
                  item.height = rowHeight - (item.y - lastRowInfo.y);
               }
            }
            else if(Boolean(item) && Boolean(item.mask))
            {
               itemMaskFreeList.push(item.mask);
               item.mask = null;
            }
         }
      }
      
      mx_internal function reconstructDataFromListItems() : Array
      {
         var items:Array = null;
         var i:int = 0;
         var renderer:IListItemRenderer = null;
         var data:Object = null;
         var data2:Object = null;
         var j:int = 0;
         if(!listItems)
         {
            return [];
         }
         items = [];
         for(i = 0; i < listItems.length; i++)
         {
            if(listItems[i])
            {
               renderer = listItems[i][0] as IListItemRenderer;
               if(renderer)
               {
                  data = renderer.data;
                  items.push(data);
                  for(j = 0; j < listItems[i].length; j++)
                  {
                     renderer = listItems[i][j] as IListItemRenderer;
                     if(renderer)
                     {
                        data2 = renderer.data;
                        if(data2 != data)
                        {
                           items.push(data2);
                        }
                     }
                  }
               }
            }
         }
         return items;
      }
      
      public function set dataTipFunction(value:Function) : void
      {
         _dataTipFunction = value;
         itemsSizeChanged = true;
         invalidateDisplayList();
         dispatchEvent(new Event("dataTipFunctionChanged"));
      }
      
      private function calculateSelectedIndexAndItem() : void
      {
         var p:String = null;
         var num:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = selectedData;
         for(p in _loc4_)
         {
            num = 1;
         }
         if(!num)
         {
            _selectedIndex = -1;
            _selectedItem = null;
            return;
         }
         _selectedIndex = selectedData[p].index;
         _selectedItem = selectedData[p].data;
      }
      
      protected function scrollPositionToIndex(horizontalScrollPosition:int, verticalScrollPosition:int) : int
      {
         return iterator ? verticalScrollPosition : -1;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!listContent)
         {
            listContent = new ListBaseContentHolder(this);
            listContent.styleName = new StyleProxy(this,listContentStyleFilters);
            addChild(listContent);
         }
         if(!selectionLayer)
         {
            selectionLayer = listContent.selectionLayer;
         }
      }
      
      public function findString(str:String) : Boolean
      {
         var stopIndex:int;
         var i:int;
         var cursorPos:CursorBookmark = null;
         var bMovedNext:Boolean = false;
         if(!collection || collection.length == 0)
         {
            return false;
         }
         cursorPos = iterator.bookmark;
         stopIndex = selectedIndex;
         i = stopIndex + 1;
         if(selectedIndex == -1)
         {
            try
            {
               iterator.seek(CursorBookmark.FIRST,0);
            }
            catch(e1:ItemPendingError)
            {
               e1.addResponder(new ItemResponder(findPendingResultHandler,findPendingFailureHandler,new ListBaseFindPending(str,cursorPos,CursorBookmark.FIRST,0,0,collection.length)));
               iteratorValid = false;
               return false;
            }
            stopIndex = collection.length;
            i = 0;
         }
         else
         {
            try
            {
               iterator.seek(CursorBookmark.FIRST,stopIndex);
            }
            catch(e2:ItemPendingError)
            {
               if(anchorIndex == collection.length - 1)
               {
                  e2.addResponder(new ItemResponder(findPendingResultHandler,findPendingFailureHandler,new ListBaseFindPending(str,cursorPos,CursorBookmark.FIRST,0,0,collection.length)));
               }
               else
               {
                  e2.addResponder(new ItemResponder(findPendingResultHandler,findPendingFailureHandler,new ListBaseFindPending(str,cursorPos,anchorBookmark,1,anchorIndex + 1,anchorIndex)));
               }
               iteratorValid = false;
               return false;
            }
            bMovedNext = false;
            try
            {
               bMovedNext = iterator.moveNext();
            }
            catch(e3:ItemPendingError)
            {
               e3.addResponder(new ItemResponder(findPendingResultHandler,findPendingFailureHandler,new ListBaseFindPending(str,cursorPos,anchorBookmark,1,anchorIndex + 1,anchorIndex)));
               iteratorValid = false;
               return false;
            }
            if(!bMovedNext)
            {
               try
               {
                  iterator.seek(CursorBookmark.FIRST,0);
               }
               catch(e4:ItemPendingError)
               {
                  e4.addResponder(new ItemResponder(findPendingResultHandler,findPendingFailureHandler,new ListBaseFindPending(str,cursorPos,CursorBookmark.FIRST,0,0,collection.length)));
                  iteratorValid = false;
                  return false;
               }
               stopIndex = collection.length;
               i = 0;
            }
         }
         return findStringLoop(str,cursorPos,i,stopIndex);
      }
      
      private function commitSelectedItem(data:Object, clearFirst:Boolean = true) : void
      {
         if(clearFirst)
         {
            clearSelected();
         }
         if(data != null)
         {
            commitSelectedItems([data]);
         }
      }
      
      public function showDropFeedback(event:DragEvent) : void
      {
         var dropIndicatorClass:Class = null;
         var vm:EdgeMetrics = null;
         if(!dropIndicator)
         {
            dropIndicatorClass = getStyle("dropIndicatorSkin");
            if(!dropIndicatorClass)
            {
               dropIndicatorClass = ListDropIndicator;
            }
            dropIndicator = IFlexDisplayObject(new dropIndicatorClass());
            vm = viewMetrics;
            drawFocus(true);
            dropIndicator.x = 2;
            dropIndicator.setActualSize(listContent.width - 4,4);
            dropIndicator.visible = true;
            listContent.addChild(DisplayObject(dropIndicator));
            if(collection)
            {
               if(dragScrollingInterval == 0)
               {
                  dragScrollingInterval = setInterval(dragScroll,15);
               }
            }
         }
         var rowCount:int = int(listItems.length);
         var partialRow:int = rowInfo[rowCount - offscreenExtraRowsBottom - 1].y + rowInfo[rowCount - offscreenExtraRowsBottom - 1].height > listContent.heightExcludingOffsets - listContent.topOffset ? 1 : 0;
         var rowNum:Number = calculateDropIndex(event);
         rowNum -= verticalScrollPosition;
         var rc:Number = listItems.length;
         if(rowNum >= rc)
         {
            if(partialRow)
            {
               rowNum = rc - 1;
            }
            else
            {
               rowNum = rc;
            }
         }
         if(rowNum < 0)
         {
            rowNum = 0;
         }
         dropIndicator.y = calculateDropIndicatorY(rc,rowNum + offscreenExtraRowsTop);
      }
      
      mx_internal function commitSelectedIndex(value:int) : void
      {
         var bookmark:CursorBookmark = null;
         var len:int = 0;
         var data:Object = null;
         var selectedBookmark:CursorBookmark = null;
         var uid:String = null;
         if(value != -1)
         {
            value = Math.min(value,collection.length - 1);
            bookmark = iterator.bookmark;
            len = value - scrollPositionToIndex(horizontalScrollPosition - offscreenExtraColumnsLeft,verticalScrollPosition - offscreenExtraRowsTop);
            try
            {
               iterator.seek(CursorBookmark.CURRENT,len);
            }
            catch(e:ItemPendingError)
            {
               iterator.seek(bookmark,0);
               bSelectedIndexChanged = true;
               _selectedIndex = value;
               return;
            }
            data = iterator.current;
            selectedBookmark = iterator.bookmark;
            uid = itemToUID(data);
            iterator.seek(bookmark,0);
            if(!selectedData[uid])
            {
               if(Boolean(listContent) && Boolean(UIDToItemRenderer(uid)))
               {
                  selectItem(UIDToItemRenderer(uid),false,false);
               }
               else
               {
                  clearSelected();
                  insertSelectionDataBefore(uid,new ListBaseSelectionData(data,value,approximate),firstSelectionData);
                  _selectedIndex = value;
                  caretIndex = value;
                  caretBookmark = selectedBookmark;
                  anchorIndex = value;
                  anchorBookmark = selectedBookmark;
                  _selectedItem = data;
               }
            }
         }
         else
         {
            clearSelected();
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      protected function get visibleData() : Object
      {
         return listContent.visibleData;
      }
      
      public function set rowHeight(value:Number) : void
      {
         explicitRowHeight = value;
         if(_rowHeight != value)
         {
            setRowHeight(value);
            invalidateSize();
            itemsSizeChanged = true;
            invalidateDisplayList();
            dispatchEvent(new Event("rowHeightChanged"));
         }
      }
      
      private function seekNextSafely(iterator:IViewCursor, pos:int) : Boolean
      {
         try
         {
            iterator.moveNext();
         }
         catch(e:ItemPendingError)
         {
            lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,pos);
            e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
            iteratorValid = false;
         }
         return iteratorValid;
      }
      
      public function set data(value:Object) : void
      {
         _data = value;
         if(Boolean(_listData) && _listData is DataGridListData)
         {
            selectedItem = _data[DataGridListData(_listData).dataField];
         }
         else if(_listData is ListData && ListData(_listData).labelField in _data)
         {
            selectedItem = _data[ListData(_listData).labelField];
         }
         else
         {
            selectedItem = _data;
         }
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      public function get rowCount() : int
      {
         return _rowCount;
      }
      
      mx_internal function get rendererArray() : Array
      {
         return listItems;
      }
      
      public function get columnCount() : int
      {
         return _columnCount;
      }
      
      protected function purgeItemRenderers() : void
      {
         var p:* = undefined;
         var row:Array = null;
         var item:IListItemRenderer = null;
         var freeRenderer:DisplayObject = null;
         var d:Dictionary = null;
         var q:* = undefined;
         rendererChanged = false;
         while(listItems.length)
         {
            row = listItems.pop();
            while(row.length)
            {
               item = IListItemRenderer(row.pop());
               if(item)
               {
                  listContent.removeChild(DisplayObject(item));
                  if(dataItemWrappersByRenderer[item])
                  {
                     delete visibleData[itemToUID(dataItemWrappersByRenderer[item])];
                  }
                  else
                  {
                     delete visibleData[itemToUID(item.data)];
                  }
               }
            }
         }
         while(freeItemRenderers.length)
         {
            freeRenderer = DisplayObject(freeItemRenderers.pop());
            if(freeRenderer.parent)
            {
               listContent.removeChild(freeRenderer);
            }
         }
         for(p in freeItemRenderersByFactory)
         {
            d = freeItemRenderersByFactory[p];
            for(q in d)
            {
               freeRenderer = DisplayObject(q);
               delete d[q];
               if(freeRenderer.parent)
               {
                  listContent.removeChild(freeRenderer);
               }
            }
         }
         rowMap = {};
         listContent.rowInfo = [];
      }
      
      protected function mouseEventToItemRenderer(event:MouseEvent) : IListItemRenderer
      {
         return mouseEventToItemRendererOrEditor(event);
      }
      
      protected function UIDToItemRenderer(uid:String) : IListItemRenderer
      {
         if(!listContent)
         {
            return null;
         }
         return visibleData[uid];
      }
      
      public function get dragEnabled() : Boolean
      {
         return _dragEnabled;
      }
      
      private function findPendingResultHandler(data:Object, info:ListBaseFindPending) : void
      {
         iterator.seek(info.bookmark,info.offset);
         findStringLoop(info.searchString,info.startingBookmark,info.currentIndex,info.stopIndex);
      }
      
      protected function set allowItemSizeChangeNotification(value:Boolean) : void
      {
         listContent.allowItemSizeChangeNotification = value;
      }
      
      [Bindable("iconFunctionChanged")]
      public function get iconFunction() : Function
      {
         return _iconFunction;
      }
      
      protected function collectionChangeHandler(event:Event) : void
      {
         var len:int = 0;
         var index:int = 0;
         var i:int = 0;
         var data:ListBaseSelectionData = null;
         var p:String = null;
         var selectedUID:String = null;
         var ce:CollectionEvent = null;
         var emitEvent:Boolean = false;
         var oldUID:String = null;
         var sd:ListBaseSelectionData = null;
         var requiresValueCommit:Boolean = false;
         var firstUID:String = null;
         var uid:String = null;
         var deletedItems:Array = null;
         var fakeRemove:CollectionEvent = null;
         if(event is CollectionEvent)
         {
            ce = CollectionEvent(event);
            if(ce.kind == CollectionEventKind.ADD)
            {
               prepareDataEffect(ce);
               if(ce.location == 0 && verticalScrollPosition == 0)
               {
                  try
                  {
                     iterator.seek(CursorBookmark.FIRST);
                     if(!iteratorValid)
                     {
                        iteratorValid = true;
                        lastSeekPending = null;
                     }
                  }
                  catch(e:ItemPendingError)
                  {
                     lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,0);
                     e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                     iteratorValid = false;
                  }
               }
               else if(listType == "vertical" && verticalScrollPosition >= ce.location)
               {
                  super.verticalScrollPosition += ce.items.length;
               }
               emitEvent = adjustAfterAdd(ce.items,ce.location);
               if(emitEvent)
               {
                  dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
               }
            }
            else if(ce.kind == CollectionEventKind.REPLACE)
            {
               selectedUID = selectedItem ? itemToUID(selectedItem) : null;
               len = int(ce.items.length);
               for(i = 0; i < len; i++)
               {
                  oldUID = itemToUID(ce.items[i].oldValue);
                  sd = selectedData[oldUID];
                  if(sd)
                  {
                     sd.data = ce.items[i].newValue;
                     delete selectedData[oldUID];
                     selectedData[itemToUID(sd.data)] = sd;
                     if(selectedUID == oldUID)
                     {
                        _selectedItem = sd.data;
                        dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
                     }
                  }
               }
               prepareDataEffect(ce);
            }
            else if(ce.kind == CollectionEventKind.REMOVE)
            {
               prepareDataEffect(ce);
               requiresValueCommit = false;
               if(Boolean(listItems.length) && Boolean(listItems[0].length))
               {
                  firstUID = rowMap[listItems[0][0].name].uid;
                  selectedUID = selectedItem ? itemToUID(selectedItem) : null;
                  for(i = 0; i < ce.items.length; i++)
                  {
                     uid = itemToUID(ce.items[i]);
                     if(uid == firstUID && verticalScrollPosition == 0)
                     {
                        try
                        {
                           iterator.seek(CursorBookmark.FIRST);
                           if(!iteratorValid)
                           {
                              iteratorValid = true;
                              lastSeekPending = null;
                           }
                        }
                        catch(e1:ItemPendingError)
                        {
                           lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,0);
                           e1.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                           iteratorValid = false;
                        }
                     }
                     if(selectedData[uid])
                     {
                        removeSelectionData(uid);
                     }
                     if(selectedUID == uid)
                     {
                        _selectedItem = null;
                        _selectedIndex = -1;
                        requiresValueCommit = true;
                     }
                     removeIndicators(uid);
                  }
                  if(listType == "vertical" && verticalScrollPosition >= ce.location)
                  {
                     if(verticalScrollPosition > ce.location)
                     {
                        super.verticalScrollPosition = verticalScrollPosition - Math.min(ce.items.length,verticalScrollPosition - ce.location);
                     }
                     else if(verticalScrollPosition >= collection.length)
                     {
                        super.verticalScrollPosition = Math.max(collection.length - 1,0);
                     }
                     try
                     {
                        offscreenExtraRowsTop = Math.min(offscreenExtraRowsTop,verticalScrollPosition);
                        index = scrollPositionToIndex(horizontalScrollPosition,verticalScrollPosition - offscreenExtraRowsTop);
                        iterator.seek(CursorBookmark.FIRST,index);
                        if(!iteratorValid)
                        {
                           iteratorValid = true;
                           lastSeekPending = null;
                        }
                     }
                     catch(e2:ItemPendingError)
                     {
                        lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,index);
                        e2.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                        iteratorValid = false;
                     }
                  }
                  emitEvent = adjustAfterRemove(ce.items,ce.location,requiresValueCommit);
                  if(emitEvent)
                  {
                     dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
                  }
               }
            }
            else if(ce.kind == CollectionEventKind.MOVE)
            {
               if(ce.oldLocation < ce.location)
               {
                  for(p in selectedData)
                  {
                     data = selectedData[p];
                     if(data.index > ce.oldLocation && data.index < ce.location)
                     {
                        --data.index;
                     }
                     else if(data.index == ce.oldLocation)
                     {
                        data.index = ce.location;
                     }
                  }
                  if(_selectedIndex > ce.oldLocation && _selectedIndex < ce.location)
                  {
                     --_selectedIndex;
                  }
                  else if(_selectedIndex == ce.oldLocation)
                  {
                     _selectedIndex = ce.location;
                  }
               }
               else if(ce.location < ce.oldLocation)
               {
                  for(p in selectedData)
                  {
                     data = selectedData[p];
                     if(data.index > ce.location && data.index < ce.oldLocation)
                     {
                        ++data.index;
                     }
                     else if(data.index == ce.oldLocation)
                     {
                        data.index = ce.location;
                     }
                  }
                  if(_selectedIndex > ce.location && _selectedIndex < ce.oldLocation)
                  {
                     ++_selectedIndex;
                  }
                  else if(_selectedIndex == ce.oldLocation)
                  {
                     _selectedIndex = ce.location;
                  }
               }
               if(ce.oldLocation == verticalScrollPosition)
               {
                  if(ce.location > maxVerticalScrollPosition)
                  {
                     iterator.seek(CursorBookmark.CURRENT,maxVerticalScrollPosition - ce.location);
                  }
                  super.verticalScrollPosition = Math.min(ce.location,maxVerticalScrollPosition);
               }
               else if(ce.location >= verticalScrollPosition && ce.oldLocation < verticalScrollPosition)
               {
                  seekNextSafely(iterator,verticalScrollPosition);
               }
               else if(ce.location <= verticalScrollPosition && ce.oldLocation > verticalScrollPosition)
               {
                  seekPreviousSafely(iterator,verticalScrollPosition);
               }
            }
            else if(ce.kind == CollectionEventKind.REFRESH)
            {
               if(anchorBookmark)
               {
                  try
                  {
                     iterator.seek(anchorBookmark,0);
                     if(!iteratorValid)
                     {
                        iteratorValid = true;
                        lastSeekPending = null;
                     }
                  }
                  catch(e:ItemPendingError)
                  {
                     bSortItemPending = true;
                     lastSeekPending = new ListBaseSeekPending(anchorBookmark,0);
                     e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                     iteratorValid = false;
                  }
                  catch(cursorError:CursorError)
                  {
                     clearSelected();
                  }
                  adjustAfterSort();
               }
               else
               {
                  try
                  {
                     index = scrollPositionToIndex(horizontalScrollPosition,verticalScrollPosition);
                     iterator.seek(CursorBookmark.FIRST,index);
                     if(!iteratorValid)
                     {
                        iteratorValid = true;
                        lastSeekPending = null;
                     }
                  }
                  catch(e:ItemPendingError)
                  {
                     bSortItemPending = true;
                     lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,index);
                     e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                     iteratorValid = false;
                  }
               }
            }
            else if(ce.kind == CollectionEventKind.RESET)
            {
               if(collection.length == 0 || runningDataEffect && actualCollection.length == 0)
               {
                  deletedItems = reconstructDataFromListItems();
                  if(deletedItems.length)
                  {
                     fakeRemove = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
                     fakeRemove.kind = CollectionEventKind.REMOVE;
                     fakeRemove.items = deletedItems;
                     fakeRemove.location = 0;
                     prepareDataEffect(fakeRemove);
                  }
               }
               try
               {
                  iterator.seek(CursorBookmark.FIRST);
                  if(!iteratorValid)
                  {
                     iteratorValid = true;
                     lastSeekPending = null;
                  }
                  collectionIterator.seek(CursorBookmark.FIRST);
               }
               catch(e:ItemPendingError)
               {
                  lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,0);
                  e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                  iteratorValid = false;
               }
               if(bSelectedIndexChanged || bSelectedItemChanged || bSelectedIndicesChanged || bSelectedItemsChanged)
               {
                  bSelectionChanged = true;
               }
               else
               {
                  commitSelectedIndex(-1);
               }
               if(isNaN(verticalScrollPositionPending))
               {
                  verticalScrollPositionPending = 0;
                  super.verticalScrollPosition = 0;
               }
               if(isNaN(horizontalScrollPositionPending))
               {
                  horizontalScrollPositionPending = 0;
                  super.horizontalScrollPosition = 0;
               }
               invalidateSize();
            }
            else if(ce.kind == CollectionEventKind.UPDATE)
            {
               selectedUID = selectedItem ? itemToUID(selectedItem) : null;
               len = int(ce.items.length);
               for(i = 0; i < len; i++)
               {
                  if(ce.items[i].property == "uid")
                  {
                     oldUID = ce.items[i].oldValue;
                     sd = selectedData[oldUID];
                     if(sd)
                     {
                        sd.data = ce.items[i].target;
                        delete selectedData[oldUID];
                        selectedData[ce.items[i].newValue] = sd;
                        if(selectedUID == oldUID)
                        {
                           _selectedItem = sd.data;
                           dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
                        }
                     }
                  }
               }
            }
         }
         itemsSizeChanged = true;
         invalidateDisplayList();
      }
      
      public function set dataProvider(value:Object) : void
      {
         var xl:XMLList = null;
         var tmp:Array = null;
         if(collection)
         {
            collection.removeEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangeHandler);
         }
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
         else if(value is XML)
         {
            xl = new XMLList();
            xl += value;
            collection = new XMLListCollection(xl);
         }
         else
         {
            tmp = [];
            if(value != null)
            {
               tmp.push(value);
            }
            collection = new ArrayCollection(tmp);
         }
         iterator = collection.createCursor();
         collectionIterator = collection.createCursor();
         collection.addEventListener(CollectionEvent.COLLECTION_CHANGE,collectionChangeHandler,false,0,true);
         clearSelectionData();
         var event:CollectionEvent = new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
         event.kind = CollectionEventKind.RESET;
         collectionChangeHandler(event);
         dispatchEvent(event);
         itemsNeedMeasurement = true;
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
      }
      
      protected function destroyRow(i:int, numCols:int) : void
      {
         var r:IListItemRenderer = null;
         var uid:String = rowInfo[i].uid;
         removeIndicators(uid);
         for(var j:int = 0; j < numCols; j++)
         {
            r = listItems[i][j];
            if(r.data)
            {
               delete visibleData[uid];
            }
            addToFreeItemRenderers(r);
         }
      }
      
      protected function dragDropHandler(event:DragEvent) : void
      {
         var items:Array = null;
         var dropIndex:* = 0;
         var indices:Array = null;
         var i:* = 0;
         if(event.isDefaultPrevented())
         {
            return;
         }
         hideDropFeedback(event);
         lastDragEvent = null;
         resetDragScrolling();
         if(enabled && event.dragSource.hasFormat("items"))
         {
            if(!dataProvider)
            {
               dataProvider = [];
            }
            items = event.dragSource.dataForFormat("items") as Array;
            dropIndex = calculateDropIndex(event);
            if(event.action == DragManager.MOVE && dragMoveEnabled)
            {
               if(event.dragInitiator == this)
               {
                  indices = selectedIndices;
                  indices.sort(Array.NUMERIC);
                  for(i = int(indices.length - 1); i >= 0; i--)
                  {
                     collectionIterator.seek(CursorBookmark.FIRST,indices[i]);
                     if(indices[i] < dropIndex)
                     {
                        dropIndex--;
                     }
                     collectionIterator.remove();
                  }
                  clearSelected(false);
               }
            }
            collectionIterator.seek(CursorBookmark.FIRST,dropIndex);
            for(i = int(items.length - 1); i >= 0; i--)
            {
               if(event.action == DragManager.COPY)
               {
                  collectionIterator.insert(copyItemWithUID(items[i]));
               }
               else if(event.action == DragManager.MOVE)
               {
                  collectionIterator.insert(items[i]);
               }
            }
         }
         lastDragEvent = null;
      }
      
      [Bindable("dataTipFunctionChanged")]
      public function get dataTipFunction() : Function
      {
         return _dataTipFunction;
      }
      
      public function scrollToIndex(index:int) : Boolean
      {
         var newVPos:int = 0;
         if(index >= verticalScrollPosition + listItems.length - offscreenExtraRowsBottom || index < verticalScrollPosition)
         {
            newVPos = Math.min(index,maxVerticalScrollPosition);
            verticalScrollPosition = newVPos;
            return true;
         }
         return false;
      }
      
      protected function addToFreeItemRenderers(item:IListItemRenderer) : void
      {
         DisplayObject(item).visible = false;
         var factory:IFactory = factoryMap[item];
         var oldWrapper:ItemWrapper = dataItemWrappersByRenderer[item];
         var UID:String = oldWrapper ? itemToUID(oldWrapper) : itemToUID(item.data);
         if(visibleData[UID] == item)
         {
            delete visibleData[UID];
         }
         if(oldWrapper)
         {
            reservedItemRenderers[itemToUID(oldWrapper)] = item;
         }
         else
         {
            if(!freeItemRenderersByFactory)
            {
               freeItemRenderersByFactory = new Dictionary(true);
            }
            if(freeItemRenderersByFactory[factory] == undefined)
            {
               freeItemRenderersByFactory[factory] = new Dictionary(true);
            }
            freeItemRenderersByFactory[factory][item] = 1;
            if(factory == itemRenderer)
            {
               freeItemRenderers.push(item);
            }
         }
         delete rowMap[item.name];
      }
      
      override protected function initializeAccessibility() : void
      {
         if(ListBase.createAccessibilityImplementation != null)
         {
            ListBase.createAccessibilityImplementation(this);
         }
      }
      
      public function isItemSelectable(data:Object) : Boolean
      {
         if(!selectable)
         {
            return false;
         }
         if(data == null)
         {
            return false;
         }
         return true;
      }
      
      private function findPendingFailureHandler(data:Object, info:ListBaseFindPending) : void
      {
      }
      
      public function get rowHeight() : Number
      {
         return _rowHeight;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      mx_internal function adjustOffscreenRowsAndColumns() : void
      {
         offscreenExtraColumns = 0;
         offscreenExtraRows = offscreenExtraRowsOrColumns;
      }
      
      protected function indexToRow(index:int) : int
      {
         return index;
      }
      
      protected function get dragImageOffsets() : Point
      {
         var pt:Point = new Point();
         var n:int = int(listItems.length);
         for(var i:int = 0; i < n; i++)
         {
            if(selectedData[rowInfo[i].uid])
            {
               pt.x = listItems[i][0].x;
               pt.y = listItems[i][0].y;
            }
         }
         return pt;
      }
      
      [Bindable("collectionChange")]
      public function get dataProvider() : Object
      {
         if(actualCollection)
         {
            return actualCollection;
         }
         return collection;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var n:int = 0;
         var i:int = 0;
         var m:int = 0;
         var j:int = 0;
         if(IS_ITEM_STYLE[styleProp])
         {
            itemsSizeChanged = true;
            invalidateDisplayList();
         }
         else if(styleProp == "paddingTop")
         {
            cachedPaddingTopInvalid = true;
            invalidateProperties();
         }
         else if(styleProp == "paddingBottom")
         {
            cachedPaddingBottomInvalid = true;
            invalidateProperties();
         }
         else if(styleProp == "verticalAlign")
         {
            cachedVerticalAlignInvalid = true;
            invalidateProperties();
         }
         else if(styleProp == "itemsChangeEffect")
         {
            cachedItemsChangeEffect = null;
         }
         else if(Boolean(listContent) && Boolean(listItems))
         {
            n = int(listItems.length);
            for(i = 0; i < n; i++)
            {
               m = int(listItems[i].length);
               for(j = 0; j < m; j++)
               {
                  if(listItems[i][j])
                  {
                     listItems[i][j].styleChanged(styleProp);
                  }
               }
            }
         }
         super.styleChanged(styleProp);
         if(invalidateSizeFlag)
         {
            itemsNeedMeasurement = true;
            invalidateProperties();
         }
         if(StyleManager.isSizeInvalidatingStyle(styleProp))
         {
            scrollAreaChanged = true;
         }
      }
      
      private function selectionPendingResultHandler(data:Object, info:ListBaseSelectionPending) : void
      {
         iterator.seek(info.bookmark,info.offset);
         shiftSelectionLoop(info.incrementing,info.index,info.stopData,info.transition,info.placeHolder);
      }
      
      public function set selectedItems(items:Array) : void
      {
         if(!collection || collection.length == 0)
         {
            _selectedItems = items;
            bSelectedItemsChanged = true;
            bSelectionChanged = true;
            invalidateDisplayList();
            return;
         }
         commitSelectedItems(items);
      }
      
      public function itemToDataTip(data:Object) : String
      {
         if(data == null)
         {
            return " ";
         }
         if(dataTipFunction != null)
         {
            return dataTipFunction(data);
         }
         if(data is XML)
         {
            try
            {
               if(data[dataTipField].length() != 0)
               {
                  data = data[dataTipField];
               }
            }
            catch(e:Error)
            {
            }
         }
         else if(data is Object)
         {
            try
            {
               if(data[dataTipField] != null)
               {
                  data = data[dataTipField];
               }
               else if(data.label != null)
               {
                  data = data.label;
               }
            }
            catch(e:Error)
            {
            }
         }
         if(data is String)
         {
            return String(data);
         }
         try
         {
            return data.toString();
         }
         catch(e:Error)
         {
         }
         return " ";
      }
      
      protected function dragStartHandler(event:DragEvent) : void
      {
         var dragSource:DragSource = null;
         if(event.isDefaultPrevented())
         {
            return;
         }
         dragSource = new DragSource();
         addDragData(dragSource);
         DragManager.doDrag(this,dragSource,event,dragImage,0,0,0.5,dragMoveEnabled);
      }
      
      private function cleanupAfterDataChangeEffect() : void
      {
         if(runningDataEffect || runDataEffectNextUpdate)
         {
            return;
         }
         var index:int = scrollPositionToIndex(horizontalScrollPosition - offscreenExtraColumnsLeft,verticalScrollPosition - offscreenExtraRowsTop);
         iterator.seek(CursorBookmark.FIRST,index);
         dataEffectCompleted = true;
         itemsSizeChanged = true;
         invalidateList();
         dataItemWrappersByRenderer = new Dictionary();
      }
      
      mx_internal function setBookmarkPendingResultHandler(data:Object, info:Object) : void
      {
         var placeHolder:CursorBookmark = null;
         placeHolder = iterator.bookmark;
         try
         {
            iterator.seek(CursorBookmark.FIRST,info.value);
            this[info.property] = iterator.bookmark;
         }
         catch(e:ItemPendingError)
         {
            e.addResponder(new ItemResponder(setBookmarkPendingResultHandler,setBookmarkPendingFailureHandler,info));
         }
         iterator.seek(placeHolder);
      }
      
      protected function removeIndicators(uid:String) : void
      {
         if(selectionTweens[uid])
         {
            selectionTweens[uid].removeEventListener(TweenEvent.TWEEN_UPDATE,selectionTween_updateHandler);
            selectionTweens[uid].removeEventListener(TweenEvent.TWEEN_END,selectionTween_endHandler);
            if(selectionIndicators[uid].alpha < 1)
            {
               Tween.removeTween(selectionTweens[uid]);
            }
            delete selectionTweens[uid];
         }
         if(selectionIndicators[uid])
         {
            selectionIndicators[uid].parent.removeChild(selectionIndicators[uid]);
            selectionIndicators[uid] = null;
         }
         if(uid == highlightUID)
         {
            highlightItemRenderer = null;
            highlightUID = null;
            clearHighlightIndicator(highlightIndicator,UIDToItemRenderer(uid));
         }
         if(uid == caretUID)
         {
            caretItemRenderer = null;
            caretUID = null;
            clearCaretIndicator(caretIndicator,UIDToItemRenderer(uid));
         }
      }
      
      private function mouseIsUp() : void
      {
         systemManager.getSandboxRoot().removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         systemManager.getSandboxRoot().removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,mouseLeaveHandler);
         if(!dragEnabled && dragScrollingInterval != 0)
         {
            clearInterval(dragScrollingInterval);
            dragScrollingInterval = 0;
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var cursorPos:CursorBookmark = null;
         var rowIndex:int = 0;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(oldUnscaledWidth == unscaledWidth && oldUnscaledHeight == unscaledHeight && !itemsSizeChanged && !bSelectionChanged && !scrollAreaChanged)
         {
            return;
         }
         if(oldUnscaledWidth != unscaledWidth)
         {
            itemsSizeChanged = true;
         }
         removeClipMask();
         var g:Graphics = selectionLayer.graphics;
         g.clear();
         if(listContent.width > 0 && listContent.height > 0)
         {
            g.beginFill(8421504,0);
            g.drawRect(0,0,listContent.width,listContent.height);
            g.endFill();
         }
         if(rendererChanged)
         {
            purgeItemRenderers();
         }
         else if(dataEffectCompleted)
         {
            partialPurgeItemRenderers();
         }
         adjustListContent(unscaledWidth,unscaledHeight);
         var collectionHasItems:Boolean = Boolean(collection) && collection.length > 0;
         if(collectionHasItems)
         {
            adjustScrollPosition();
         }
         if(Boolean(oldUnscaledWidth == unscaledWidth && !scrollAreaChanged && !itemsSizeChanged && listItems.length > 0) && Boolean(iterator) && columnCount == 1)
         {
            rowIndex = listItems.length - 1;
            if(oldUnscaledHeight > unscaledHeight)
            {
               reduceRows(rowIndex);
            }
            else
            {
               makeAdditionalRows(rowIndex);
            }
         }
         else
         {
            if(iterator)
            {
               cursorPos = iterator.bookmark;
            }
            clearIndicators();
            rendererTrackingSuspended = true;
            if(iterator)
            {
               if(Boolean(offscreenExtraColumns) || Boolean(offscreenExtraColumnsLeft) || Boolean(offscreenExtraColumnsRight))
               {
                  makeRowsAndColumnsWithExtraColumns(unscaledWidth,unscaledHeight);
               }
               else
               {
                  makeRowsAndColumnsWithExtraRows(unscaledWidth,unscaledHeight);
               }
            }
            else
            {
               makeRowsAndColumns(0,0,listContent.width,listContent.height,0,0);
            }
            rendererTrackingSuspended = false;
            seekPositionIgnoreError(iterator,cursorPos);
         }
         oldUnscaledWidth = unscaledWidth;
         oldUnscaledHeight = unscaledHeight;
         configureScrollBars();
         addClipMask(true);
         itemsSizeChanged = false;
         wordWrapChanged = false;
         adjustSelectionSettings(collectionHasItems);
         if(keySelectionPending && iteratorValid)
         {
            keySelectionPending = false;
            finishKeySelection();
         }
      }
      
      protected function dragCompleteHandler(event:DragEvent) : void
      {
         var indices:Array = null;
         var n:int = 0;
         var i:* = 0;
         isPressed = false;
         if(event.isDefaultPrevented())
         {
            return;
         }
         if(event.action == DragManager.MOVE && dragMoveEnabled)
         {
            if(event.relatedObject != this)
            {
               indices = selectedIndices;
               indices.sort(Array.NUMERIC);
               n = int(indices.length);
               for(i = int(n - 1); i >= 0; i--)
               {
                  collectionIterator.seek(CursorBookmark.FIRST,indices[i]);
                  collectionIterator.remove();
               }
               clearSelected(false);
            }
         }
         lastDragEvent = null;
         resetDragScrolling();
      }
      
      public function getItemRendererFactory(data:Object) : IFactory
      {
         if(data == null)
         {
            return nullItemRenderer;
         }
         return itemRenderer;
      }
   }
}


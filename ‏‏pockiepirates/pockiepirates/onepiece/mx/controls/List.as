package mx.controls
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import mx.collections.CursorBookmark;
   import mx.collections.IList;
   import mx.collections.ItemResponder;
   import mx.collections.ItemWrapper;
   import mx.collections.ModifiedCollectionView;
   import mx.collections.errors.ItemPendingError;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.controls.listClasses.ListBase;
   import mx.controls.listClasses.ListBaseSeekPending;
   import mx.controls.listClasses.ListData;
   import mx.controls.listClasses.ListItemRenderer;
   import mx.controls.listClasses.ListRowInfo;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.core.ClassFactory;
   import mx.core.EdgeMetrics;
   import mx.core.EventPriority;
   import mx.core.FlexShape;
   import mx.core.FlexSprite;
   import mx.core.FlexVersion;
   import mx.core.IFactory;
   import mx.core.IIMESupport;
   import mx.core.IInvalidating;
   import mx.core.IPropertyChangeNotifier;
   import mx.core.ScrollPolicy;
   import mx.core.UIComponent;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.ListEvent;
   import mx.events.ListEventReason;
   import mx.events.SandboxMouseEvent;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class List extends ListBase implements IIMESupport
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public var editorXOffset:Number = 0;
      
      public var itemEditorInstance:IListItemRenderer;
      
      public var rendererIsEditor:Boolean = false;
      
      private var dontEdit:Boolean = false;
      
      public var editorYOffset:Number = 0;
      
      public var editorWidthOffset:Number = 0;
      
      private var lastEditedItemPosition:*;
      
      public var itemEditor:IFactory = new ClassFactory(TextInput);
      
      public var editable:Boolean = false;
      
      private var losingFocus:Boolean = false;
      
      public var editorUsesEnterKey:Boolean = false;
      
      public var editorDataField:String = "text";
      
      private var bEditedItemPositionChanged:Boolean = false;
      
      mx_internal var _lockedRowCount:int = 0;
      
      private var inEndEdit:Boolean = false;
      
      public var editorHeightOffset:Number = 0;
      
      private var _editedItemPosition:Object;
      
      private var _imeMode:String;
      
      private var actualRowIndex:int;
      
      private var _proposedEditedItemPosition:*;
      
      private var actualColIndex:int = 0;
      
      protected var measuringObjects:Dictionary;
      
      public function List()
      {
         super();
         mx_internal::listType = "vertical";
         mx_internal::bColumnScrolling = false;
         itemRenderer = new ClassFactory(ListItemRenderer);
         mx_internal::_horizontalScrollPolicy = ScrollPolicy.OFF;
         mx_internal::_verticalScrollPolicy = ScrollPolicy.AUTO;
         defaultColumnCount = 1;
         defaultRowCount = 7;
         addEventListener(ListEvent.ITEM_EDIT_BEGINNING,itemEditorItemEditBeginningHandler,false,EventPriority.DEFAULT_HANDLER);
         addEventListener(ListEvent.ITEM_EDIT_BEGIN,itemEditorItemEditBeginHandler,false,EventPriority.DEFAULT_HANDLER);
         addEventListener(ListEvent.ITEM_EDIT_END,itemEditorItemEditEndHandler,false,EventPriority.DEFAULT_HANDLER);
      }
      
      override public function measureWidthOfItems(index:int = -1, count:int = 0) : Number
      {
         var i:int;
         var paddingRight:Number;
         var more:Boolean;
         var bookmark:CursorBookmark;
         var w:Number;
         var paddingLeft:Number;
         var item:IListItemRenderer = null;
         var rw:Number = NaN;
         var data:Object = null;
         var factory:IFactory = null;
         if(count == 0)
         {
            count = collection ? collection.length : 0;
         }
         if(Boolean(collection) && collection.length == 0)
         {
            count = 0;
         }
         w = 0;
         bookmark = iterator ? iterator.bookmark : null;
         if(index != -1 && Boolean(iterator))
         {
            try
            {
               iterator.seek(CursorBookmark.FIRST,index);
            }
            catch(e:ItemPendingError)
            {
               return 0;
            }
         }
         more = iterator != null;
         for(i = 0; i < count; i++)
         {
            if(more)
            {
               data = iterator.current;
               factory = getItemRendererFactory(data);
               item = measuringObjects[factory];
               if(!item)
               {
                  item = getMeasuringRenderer(data);
               }
               item.explicitWidth = NaN;
               setupRendererFromData(item,data);
               rw = Number(item.measuredWidth);
               w = Math.max(w,rw);
            }
            if(more)
            {
               try
               {
                  more = iterator.moveNext();
               }
               catch(e:ItemPendingError)
               {
                  more = false;
               }
            }
         }
         if(iterator)
         {
            iterator.seek(bookmark,0);
         }
         if(w == 0)
         {
            if(explicitWidth)
            {
               return explicitWidth;
            }
            return DEFAULT_MEASURED_WIDTH;
         }
         paddingLeft = getStyle("paddingLeft");
         paddingRight = getStyle("paddingRight");
         w += paddingLeft + paddingRight;
         return w;
      }
      
      private function findNextEnterItemRenderer(event:KeyboardEvent) : void
      {
         if(_proposedEditedItemPosition !== undefined)
         {
            return;
         }
         _editedItemPosition = lastEditedItemPosition;
         var rowIndex:int = int(_editedItemPosition.rowIndex);
         var columnIndex:int = int(_editedItemPosition.columnIndex);
         var newIndex:int = _editedItemPosition.rowIndex + (event.shiftKey ? -1 : 1);
         if(newIndex < collection.length && newIndex >= 0)
         {
            rowIndex = newIndex;
         }
         var listEvent:ListEvent = new ListEvent(ListEvent.ITEM_EDIT_BEGINNING,false,true);
         listEvent.rowIndex = rowIndex;
         listEvent.columnIndex = 0;
         dispatchEvent(listEvent);
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      private function mouseFocusChangeHandler(event:MouseEvent) : void
      {
         if(Boolean(itemEditorInstance) && Boolean(!event.isDefaultPrevented()) && itemRendererContains(itemEditorInstance,DisplayObject(event.target)))
         {
            event.preventDefault();
         }
      }
      
      public function set imeMode(value:String) : void
      {
         _imeMode = value;
      }
      
      override protected function mouseUpHandler(event:MouseEvent) : void
      {
         var listEvent:ListEvent = null;
         var r:IListItemRenderer = null;
         var s:Sprite = null;
         var n:int = 0;
         var i:int = 0;
         var pos:Point = null;
         r = mouseEventToItemRenderer(event);
         super.mouseUpHandler(event);
         if(Boolean(r) && Boolean(r.data) && r != itemEditorInstance)
         {
            pos = itemRendererToIndices(r);
            if(editable && !dontEdit)
            {
               listEvent = new ListEvent(ListEvent.ITEM_EDIT_BEGINNING,false,true);
               listEvent.rowIndex = pos.y;
               listEvent.columnIndex = 0;
               listEvent.itemRenderer = r;
               dispatchEvent(listEvent);
            }
         }
      }
      
      private function itemEditorItemEditEndHandler(event:ListEvent) : void
      {
         var bChanged:Boolean = false;
         var bFieldChanged:Boolean = false;
         var newData:Object = null;
         var data:Object = null;
         var editCollection:IList = null;
         var listData:BaseListData = null;
         var fm:IFocusManager = null;
         if(!event.isDefaultPrevented())
         {
            bChanged = false;
            bFieldChanged = false;
            newData = itemEditorInstance[editorDataField];
            data = event.itemRenderer.data;
            if(data is String)
            {
               if(!(newData is String))
               {
                  newData = newData.toString();
               }
            }
            else if(data is uint)
            {
               if(!(newData is uint))
               {
                  newData = uint(newData);
               }
            }
            else if(data is int)
            {
               if(!(newData is int))
               {
                  newData = int(newData);
               }
            }
            else if(data is Number)
            {
               if(!(newData is int))
               {
                  newData = Number(newData);
               }
            }
            else
            {
               bFieldChanged = true;
               try
               {
                  data[labelField] = newData;
                  if(!(data is IPropertyChangeNotifier))
                  {
                     if(actualCollection)
                     {
                        actualCollection.itemUpdated(data,labelField);
                     }
                     else
                     {
                        collection.itemUpdated(data,labelField);
                     }
                  }
               }
               catch(e:Error)
               {
                  trace("attempt to write to",labelField,"failed.  You may need a custom ITEM_EDIT_END handler");
               }
            }
            if(!bFieldChanged)
            {
               if(data !== newData)
               {
                  bChanged = true;
                  data = newData;
               }
               if(bChanged)
               {
                  editCollection = actualCollection ? actualCollection as IList : collection as IList;
                  if(editCollection)
                  {
                     IList(editCollection).setItemAt(data,event.rowIndex);
                  }
                  else
                  {
                     trace("attempt to update collection failed.  You may need a custom ITEM_EDIT_END handler");
                  }
               }
            }
            if(event.itemRenderer is IDropInListItemRenderer)
            {
               listData = BaseListData(IDropInListItemRenderer(event.itemRenderer).listData);
               listData.label = itemToLabel(data);
               IDropInListItemRenderer(event.itemRenderer).listData = listData;
            }
            delete visibleData[itemToUID(event.itemRenderer.data)];
            event.itemRenderer.data = data;
            visibleData[itemToUID(data)] = event.itemRenderer;
         }
         else if(event.reason != ListEventReason.OTHER)
         {
            if(Boolean(itemEditorInstance) && Boolean(_editedItemPosition))
            {
               if(selectedIndex != _editedItemPosition.rowIndex)
               {
                  selectedIndex = _editedItemPosition.rowIndex;
               }
               fm = focusManager;
               if(itemEditorInstance is IFocusManagerComponent)
               {
                  fm.setFocus(IFocusManagerComponent(itemEditorInstance));
               }
            }
         }
         if(event.reason == ListEventReason.OTHER || !event.isDefaultPrevented())
         {
            destroyItemEditor();
         }
      }
      
      private function itemEditorItemEditBeginningHandler(event:ListEvent) : void
      {
         if(!event.isDefaultPrevented())
         {
            setEditedItemPosition({
               "columnIndex":event.columnIndex,
               "rowIndex":event.rowIndex
            });
         }
         else if(!itemEditorInstance)
         {
            _editedItemPosition = null;
            editable = false;
            setFocus();
            editable = true;
         }
      }
      
      override public function createItemRenderer(data:Object) : IListItemRenderer
      {
         var factory:IFactory = null;
         var renderer:IListItemRenderer = null;
         var d:Dictionary = null;
         var p:* = undefined;
         factory = getItemRendererFactory(data);
         if(!factory)
         {
            if(data == null)
            {
               factory = nullItemRenderer;
            }
            if(!factory)
            {
               factory = itemRenderer;
            }
         }
         if(factory == itemRenderer)
         {
            if(Boolean(freeItemRenderers) && Boolean(freeItemRenderers.length))
            {
               renderer = freeItemRenderers.pop();
               delete freeItemRenderersByFactory[factory][renderer];
            }
         }
         else if(freeItemRenderersByFactory)
         {
            d = freeItemRenderersByFactory[factory];
            if(d)
            {
               var _loc6_:int = 0;
               var _loc7_:* = d;
               for(p in _loc7_)
               {
                  renderer = IListItemRenderer(p);
                  delete d[p];
               }
            }
         }
         if(!renderer)
         {
            renderer = factory.newInstance();
            renderer.styleName = this;
            factoryMap[renderer] = factory;
         }
         renderer.owner = this;
         return renderer;
      }
      
      override protected function focusOutHandler(event:FocusEvent) : void
      {
         if(event.target == this)
         {
            super.focusOutHandler(event);
         }
         if(event.relatedObject == this && itemRendererContains(itemEditorInstance,DisplayObject(event.target)))
         {
            return;
         }
         if(event.relatedObject == null && itemRendererContains(editedItemRenderer,DisplayObject(event.target)))
         {
            return;
         }
         if(event.relatedObject == null && itemRendererContains(itemEditorInstance,DisplayObject(event.target)))
         {
            return;
         }
         if(Boolean(itemEditorInstance) && (!event.relatedObject || !itemRendererContains(itemEditorInstance,event.relatedObject)))
         {
            endEdit(ListEventReason.OTHER);
            removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
            removeEventListener(MouseEvent.MOUSE_DOWN,mouseFocusChangeHandler);
         }
      }
      
      override protected function scrollHorizontally(pos:int, deltaPos:int, scrollUp:Boolean) : void
      {
         var n:int = int(listItems.length);
         var paddingLeft:Number = getStyle("paddingLeft");
         for(var i:int = 0; i < n; i++)
         {
            if(listItems[i].length)
            {
               listItems[i][0].x = -pos + paddingLeft;
            }
         }
      }
      
      override protected function drawHighlightIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         super.drawHighlightIndicator(indicator,0,y,unscaledWidth - viewMetrics.left - viewMetrics.right,height,color,itemRenderer);
      }
      
      [Bindable("itemFocusIn")]
      public function get editedItemPosition() : Object
      {
         if(_editedItemPosition)
         {
            return {
               "rowIndex":_editedItemPosition.rowIndex,
               "columnIndex":0
            };
         }
         return _editedItemPosition;
      }
      
      private function setEditedItemPosition(coord:Object) : void
      {
         bEditedItemPositionChanged = true;
         _proposedEditedItemPosition = coord;
         invalidateDisplayList();
      }
      
      override protected function drawRowBackgrounds() : void
      {
         var colors:Array = null;
         var n:int = 0;
         var rowBGs:Sprite = Sprite(listContent.getChildByName("rowBGs"));
         if(!rowBGs)
         {
            rowBGs = new FlexSprite();
            rowBGs.mouseEnabled = false;
            rowBGs.name = "rowBGs";
            listContent.addChildAt(rowBGs,0);
         }
         colors = getStyle("alternatingItemColors");
         if(!colors || colors.length == 0)
         {
            while(rowBGs.numChildren > n)
            {
               rowBGs.removeChildAt(rowBGs.numChildren - 1);
            }
            return;
         }
         StyleManager.getColorNames(colors);
         var curRow:int = 0;
         var actualRow:int = verticalScrollPosition;
         var i:* = 0;
         n = int(listItems.length);
         while(curRow < n)
         {
            drawRowBackground(rowBGs,i++,rowInfo[curRow].y,rowInfo[curRow].height,colors[actualRow % colors.length],actualRow);
            curRow++;
            actualRow++;
         }
         while(rowBGs.numChildren > n)
         {
            rowBGs.removeChildAt(rowBGs.numChildren - 1);
         }
      }
      
      override protected function drawCaretIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         super.drawCaretIndicator(indicator,0,y,unscaledWidth - viewMetrics.left - viewMetrics.right,height,color,itemRenderer);
      }
      
      private function deactivateHandler(event:Event) : void
      {
         if(itemEditorInstance)
         {
            endEdit(ListEventReason.OTHER);
            losingFocus = true;
            setFocus();
         }
      }
      
      protected function layoutEditor(x:int, y:int, w:int, h:int) : void
      {
         itemEditorInstance.move(x,y);
         itemEditorInstance.setActualSize(w,h);
      }
      
      private function editorKeyDownHandler(event:KeyboardEvent) : void
      {
         if(event.keyCode == Keyboard.ESCAPE)
         {
            endEdit(ListEventReason.CANCELLED);
         }
         else if(event.ctrlKey && event.charCode == 46)
         {
            endEdit(ListEventReason.CANCELLED);
         }
         else if(event.charCode == Keyboard.ENTER && event.keyCode != 229)
         {
            if(editorUsesEnterKey)
            {
               return;
            }
            if(endEdit(ListEventReason.NEW_ROW))
            {
               if(!dontEdit)
               {
                  findNextEnterItemRenderer(event);
               }
            }
         }
      }
      
      private function itemEditorItemEditBeginHandler(event:ListEvent) : void
      {
         var fm:IFocusManager = null;
         if(root)
         {
            systemManager.addEventListener(Event.DEACTIVATE,deactivateHandler,false,0,true);
         }
         if(!event.isDefaultPrevented() && listItems[actualRowIndex][actualColIndex].data != null)
         {
            createItemEditor(event.columnIndex,event.rowIndex);
            if(editedItemRenderer is IDropInListItemRenderer && itemEditorInstance is IDropInListItemRenderer)
            {
               IDropInListItemRenderer(itemEditorInstance).listData = IDropInListItemRenderer(editedItemRenderer).listData;
            }
            if(!rendererIsEditor)
            {
               itemEditorInstance.data = editedItemRenderer.data;
            }
            if(itemEditorInstance is IInvalidating)
            {
               IInvalidating(itemEditorInstance).validateNow();
            }
            if(itemEditorInstance is IIMESupport)
            {
               IIMESupport(itemEditorInstance).imeMode = imeMode;
            }
            fm = focusManager;
            if(itemEditorInstance is IFocusManagerComponent)
            {
               fm.setFocus(IFocusManagerComponent(itemEditorInstance));
            }
            fm.defaultButtonEnabled = false;
            event = new ListEvent(ListEvent.ITEM_FOCUS_IN);
            event.rowIndex = _editedItemPosition.rowIndex;
            event.itemRenderer = itemEditorInstance;
            dispatchEvent(event);
         }
      }
      
      private function editingTemporarilyPrevented(coord:Object) : Boolean
      {
         var rowIndex:int = 0;
         var item:IListItemRenderer = null;
         if(runningDataEffect && Boolean(coord))
         {
            rowIndex = coord.rowIndex - verticalScrollPosition + offscreenExtraRowsTop;
            if(rowIndex < 0 || rowIndex >= listItems.length)
            {
               return false;
            }
            item = listItems[rowIndex][0];
            if(Boolean(item) && (Boolean(getRendererSemanticValue(item,"replaced")) || Boolean(getRendererSemanticValue(item,"removed"))))
            {
               return true;
            }
         }
         return false;
      }
      
      override public function measureHeightOfItems(index:int = -1, count:int = 0) : Number
      {
         var ww:Number;
         var paddingTop:Number;
         var rh:Number;
         var i:int;
         var h:Number;
         var more:Boolean;
         var paddingBottom:Number;
         var bookmark:CursorBookmark;
         var data:Object = null;
         var item:IListItemRenderer = null;
         if(count == 0)
         {
            count = collection ? collection.length : 0;
         }
         paddingTop = getStyle("paddingTop");
         paddingBottom = getStyle("paddingBottom");
         ww = 200;
         if(listContent.width)
         {
            ww = listContent.width;
         }
         h = 0;
         bookmark = iterator ? iterator.bookmark : null;
         if(index != -1 && Boolean(iterator))
         {
            iterator.seek(CursorBookmark.FIRST,index);
         }
         rh = rowHeight;
         more = iterator != null;
         for(i = 0; i < count; i++)
         {
            if(more)
            {
               rh = rowHeight;
               data = iterator.current;
               item = getMeasuringRenderer(data);
               item.explicitWidth = ww;
               setupRendererFromData(item,data);
               if(variableRowHeight)
               {
                  rh = item.getExplicitOrMeasuredHeight() + paddingTop + paddingBottom;
               }
            }
            h += rh;
            if(more)
            {
               try
               {
                  more = iterator.moveNext();
               }
               catch(e:ItemPendingError)
               {
                  more = false;
               }
            }
         }
         if(iterator)
         {
            iterator.seek(bookmark,0);
         }
         return h;
      }
      
      mx_internal function callSetupRendererFromData(item:IListItemRenderer, data:Object) : void
      {
         setupRendererFromData(item,data);
      }
      
      override protected function drawSelectionIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         super.drawSelectionIndicator(indicator,0,y,unscaledWidth - viewMetrics.left - viewMetrics.right,height,color,itemRenderer);
      }
      
      private function keyFocusChangeHandler(event:FocusEvent) : void
      {
         if(event.keyCode == Keyboard.TAB && !event.isDefaultPrevented() && findNextItemRenderer(event.shiftKey))
         {
            event.preventDefault();
         }
      }
      
      public function set editedItemPosition(value:Object) : void
      {
         var newValue:Object = {
            "rowIndex":value.rowIndex,
            "columnIndex":0
         };
         setEditedItemPosition(newValue);
      }
      
      override protected function makeRowsAndColumns(left:Number, top:Number, right:Number, bottom:Number, firstCol:int, firstRow:int, byCount:Boolean = false, rowsNeeded:uint = 0) : Point
      {
         var paddingRight:Number;
         var xx:Number;
         var rowsMade:int;
         var bSelected:Boolean;
         var paddingLeft:Number;
         var bCaret:Boolean;
         var rowNum:int;
         var colNum:int;
         var ww:Number;
         var more:Boolean;
         var bHighlight:Boolean;
         var valid:Boolean;
         var yy:Number = NaN;
         var hh:Number = NaN;
         var i:int = 0;
         var j:int = 0;
         var item:IListItemRenderer = null;
         var oldItem:IListItemRenderer = null;
         var rowData:BaseListData = null;
         var data:Object = null;
         var wrappedData:Object = null;
         var uid:String = null;
         var rh:Number = NaN;
         var ld:BaseListData = null;
         var rr:Array = null;
         var rowInfo:ListRowInfo = null;
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dw:Number = NaN;
         var dh:Number = NaN;
         listContent.allowItemSizeChangeNotification = false;
         paddingLeft = getStyle("paddingLeft");
         paddingRight = getStyle("paddingRight");
         xx = left + paddingLeft - horizontalScrollPosition;
         ww = right - paddingLeft - paddingRight;
         bSelected = false;
         bHighlight = false;
         bCaret = false;
         colNum = 0;
         rowNum = lockedRowCount;
         rowsMade = 0;
         more = true;
         valid = true;
         yy = top;
         rowNum = firstRow;
         more = iterator != null && !iterator.afterLast && iteratorValid;
         while(!byCount && yy < bottom || byCount && rowsNeeded > 0)
         {
            if(byCount)
            {
               rowsNeeded--;
            }
            valid = more;
            wrappedData = more ? iterator.current : null;
            data = wrappedData is ItemWrapper ? wrappedData.data : wrappedData;
            uid = null;
            if(!listItems[rowNum])
            {
               listItems[rowNum] = [];
            }
            if(valid)
            {
               item = listItems[rowNum][colNum];
               uid = itemToUID(wrappedData);
               if(!item || (runningDataEffect && Boolean(dataItemWrappersByRenderer[item]) ? Boolean(dataItemWrappersByRenderer[item] != wrappedData) : Boolean(item.data != data)))
               {
                  if(allowRendererStealingDuringLayout)
                  {
                     item = visibleData[uid];
                     if(!item && wrappedData != data)
                     {
                        item = visibleData[itemToUID(data)];
                     }
                  }
                  if(item)
                  {
                     ld = BaseListData(rowMap[item.name]);
                     if(Boolean(ld) && ld.rowIndex > rowNum)
                     {
                        listItems[ld.rowIndex] = [];
                     }
                     else
                     {
                        item = null;
                     }
                  }
                  if(!item)
                  {
                     item = getReservedOrFreeItemRenderer(wrappedData);
                  }
                  if(!item)
                  {
                     item = createItemRenderer(data);
                     item.owner = this;
                     item.styleName = listContent;
                     listContent.addChild(DisplayObject(item));
                  }
                  oldItem = listItems[rowNum][colNum];
                  if(oldItem)
                  {
                     addToFreeItemRenderers(oldItem);
                  }
                  listItems[rowNum][colNum] = item;
               }
               rowData = makeListData(data,uid,rowNum);
               rowMap[item.name] = rowData;
               if(item is IDropInListItemRenderer)
               {
                  if(data != null)
                  {
                     IDropInListItemRenderer(item).listData = rowData;
                  }
                  else
                  {
                     IDropInListItemRenderer(item).listData = null;
                  }
               }
               item.data = data;
               item.enabled = enabled;
               item.visible = true;
               if(uid != null)
               {
                  visibleData[uid] = item;
               }
               if(wrappedData != data)
               {
                  dataItemWrappersByRenderer[item] = wrappedData;
               }
               item.explicitWidth = ww;
               if(item is IInvalidating && (wordWrapChanged || variableRowHeight))
               {
                  IInvalidating(item).invalidateSize();
               }
               UIComponentGlobals.layoutManager.validateClient(item,true);
               hh = Math.ceil(variableRowHeight ? item.getExplicitOrMeasuredHeight() + cachedPaddingTop + cachedPaddingBottom : rowHeight);
               rh = Number(item.getExplicitOrMeasuredHeight());
               item.setActualSize(ww,variableRowHeight ? rh : rowHeight - cachedPaddingTop - cachedPaddingBottom);
               item.move(xx,yy + cachedPaddingTop);
            }
            else
            {
               hh = rowNum > 0 ? Number(rowInfo[rowNum - 1].height) : rowHeight;
               if(hh == 0)
               {
                  hh = rowHeight;
               }
               oldItem = listItems[rowNum][colNum];
               if(oldItem)
               {
                  addToFreeItemRenderers(oldItem);
                  listItems[rowNum].splice(colNum,1);
               }
            }
            bSelected = selectedData[uid] != null;
            if(wrappedData != data)
            {
               bSelected ||= Boolean(selectedData[itemToUID(data)]);
               bSelected = bSelected && !getRendererSemanticValue(item,ModifiedCollectionView.REPLACEMENT) && !getRendererSemanticValue(item,ModifiedCollectionView.ADDED);
            }
            bHighlight = highlightUID == uid;
            bCaret = caretUID == uid;
            rowInfo[rowNum] = new ListRowInfo(yy,hh,uid,data);
            if(valid)
            {
               drawItem(item,bSelected,bHighlight,bCaret);
            }
            yy += hh;
            rowNum++;
            rowsMade++;
            if(Boolean(iterator) && more)
            {
               try
               {
                  more = iterator.moveNext();
               }
               catch(e:ItemPendingError)
               {
                  lastSeekPending = new ListBaseSeekPending(CursorBookmark.CURRENT,0);
                  e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                  more = false;
                  iteratorValid = false;
               }
            }
         }
         if(!byCount)
         {
            while(rowNum < listItems.length)
            {
               rr = listItems.pop();
               rowInfo.pop();
               while(rr.length)
               {
                  item = rr.pop();
                  addToFreeItemRenderers(item);
               }
            }
         }
         if(itemEditorInstance)
         {
            listContent.setChildIndex(DisplayObject(itemEditorInstance),listContent.numChildren - 1);
            item = listItems[actualRowIndex][actualColIndex];
            rowInfo = rowInfo[actualRowIndex];
            if(Boolean(item) && !rendererIsEditor)
            {
               dx = editorXOffset;
               dy = editorYOffset;
               dw = editorWidthOffset;
               dh = editorHeightOffset;
               layoutEditor(item.x + dx,rowInfo.y + dy,Math.min(item.width + dw,listContent.width - listContent.x - itemEditorInstance.x),Math.min(rowInfo.height + dh,listContent.height - listContent.y - itemEditorInstance.y));
            }
         }
         listContent.allowItemSizeChangeNotification = variableRowHeight;
         return new Point(colNum,rowsMade);
      }
      
      override protected function measure() : void
      {
         super.measure();
         var o:EdgeMetrics = viewMetrics;
         measuredMinWidth = DEFAULT_MEASURED_MIN_WIDTH;
         if(initialized && variableRowHeight && explicitRowCount < 1 && isNaN(explicitRowHeight))
         {
            measuredHeight = height;
         }
      }
      
      private function findNextItemRenderer(shiftKey:Boolean) : Boolean
      {
         if(!lastEditedItemPosition)
         {
            return false;
         }
         if(_proposedEditedItemPosition !== undefined)
         {
            return true;
         }
         _editedItemPosition = lastEditedItemPosition;
         var rowIndex:int = int(_editedItemPosition.rowIndex);
         var columnIndex:int = int(_editedItemPosition.columnIndex);
         var newIndex:int = _editedItemPosition.rowIndex + (shiftKey ? -1 : 1);
         if(newIndex < collection.length && newIndex >= 0)
         {
            rowIndex = newIndex;
            var listEvent:ListEvent = new ListEvent(ListEvent.ITEM_EDIT_BEGINNING,false,true);
            listEvent.rowIndex = rowIndex;
            listEvent.columnIndex = columnIndex;
            dispatchEvent(listEvent);
            return true;
         }
         setEditedItemPosition(null);
         losingFocus = true;
         setFocus();
         return false;
      }
      
      override protected function mouseDownHandler(event:MouseEvent) : void
      {
         var r:IListItemRenderer = null;
         var s:Sprite = null;
         var pos:Point = null;
         var bEndedEdit:Boolean = false;
         r = mouseEventToItemRenderer(event);
         var isItemEditor:Boolean = itemRendererContains(itemEditorInstance,DisplayObject(event.target));
         if(!isItemEditor)
         {
            if(Boolean(r) && Boolean(r.data))
            {
               pos = itemRendererToIndices(r);
               bEndedEdit = true;
               if(itemEditorInstance)
               {
                  bEndedEdit = endEdit(ListEventReason.NEW_ROW);
               }
               if(!bEndedEdit)
               {
                  return;
               }
            }
            else if(itemEditorInstance)
            {
               endEdit(ListEventReason.OTHER);
            }
            super.mouseDownHandler(event);
         }
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         if(itemEditorInstance)
         {
            return;
         }
         super.keyDownHandler(event);
      }
      
      override protected function focusInHandler(event:FocusEvent) : void
      {
         var foundOne:Boolean = false;
         if(event.target != this)
         {
            return;
         }
         if(losingFocus)
         {
            losingFocus = false;
            return;
         }
         super.focusInHandler(event);
         if(editable && !isPressed)
         {
            _editedItemPosition = lastEditedItemPosition;
            foundOne = editedItemPosition != null;
            if(!_editedItemPosition)
            {
               _editedItemPosition = {
                  "rowIndex":0,
                  "columnIndex":0
               };
               foundOne = Boolean(listItems.length) && listItems[0].length > 0;
            }
            if(foundOne)
            {
               setEditedItemPosition(_editedItemPosition);
            }
         }
         if(editable)
         {
            addEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
            addEventListener(MouseEvent.MOUSE_DOWN,mouseFocusChangeHandler);
         }
      }
      
      override protected function mouseEventToItemRenderer(event:MouseEvent) : IListItemRenderer
      {
         var r:IListItemRenderer = super.mouseEventToItemRenderer(event);
         return r == itemEditorInstance ? null : r;
      }
      
      protected function makeListData(data:Object, uid:String, rowNum:int) : BaseListData
      {
         return new ListData(itemToLabel(data),itemToIcon(data),labelField,uid,this,rowNum);
      }
      
      public function createItemEditor(colIndex:int, rowIndex:int) : void
      {
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dw:Number = NaN;
         var dh:Number = NaN;
         colIndex = 0;
         if(rowIndex > lockedRowCount)
         {
            rowIndex -= verticalScrollPosition;
         }
         var item:IListItemRenderer = listItems[rowIndex][colIndex];
         var rowData:ListRowInfo = rowInfo[rowIndex];
         if(!rendererIsEditor)
         {
            dx = 0;
            dy = -2;
            dw = 0;
            dh = 4;
            if(!itemEditorInstance)
            {
               dx = editorXOffset;
               dy = editorYOffset;
               dw = editorWidthOffset;
               dh = editorHeightOffset;
               itemEditorInstance = itemEditor.newInstance();
               itemEditorInstance.owner = this;
               itemEditorInstance.styleName = this;
               listContent.addChild(DisplayObject(itemEditorInstance));
            }
            listContent.setChildIndex(DisplayObject(itemEditorInstance),listContent.numChildren - 1);
            itemEditorInstance.visible = true;
            layoutEditor(item.x + dx,rowData.y + dy,Math.min(item.width + dw,listContent.width - listContent.x - itemEditorInstance.x),Math.min(rowData.height + dh,listContent.height - listContent.y - itemEditorInstance.y));
            DisplayObject(itemEditorInstance).addEventListener("focusOut",itemEditorFocusOutHandler);
         }
         else
         {
            itemEditorInstance = item;
         }
         DisplayObject(itemEditorInstance).addEventListener(KeyboardEvent.KEY_DOWN,editorKeyDownHandler);
         systemManager.getSandboxRoot().addEventListener(MouseEvent.MOUSE_DOWN,editorMouseDownHandler,true,0,true);
         systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,editorMouseDownHandler,false,0,true);
      }
      
      public function get lockedRowCount() : int
      {
         return _lockedRowCount;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         if(itemEditorInstance)
         {
            endEdit(ListEventReason.OTHER);
         }
         invalidateDisplayList();
      }
      
      protected function endEdit(reason:String) : Boolean
      {
         if(!editedItemRenderer)
         {
            return true;
         }
         inEndEdit = true;
         var listEvent:ListEvent = new ListEvent(ListEvent.ITEM_EDIT_END,false,true);
         listEvent.rowIndex = editedItemPosition.rowIndex;
         listEvent.itemRenderer = editedItemRenderer;
         listEvent.reason = reason;
         dispatchEvent(listEvent);
         dontEdit = itemEditorInstance != null;
         if(!dontEdit && reason == ListEventReason.CANCELLED)
         {
            losingFocus = true;
            setFocus();
         }
         inEndEdit = false;
         return !listEvent.isDefaultPrevented();
      }
      
      override protected function collectionChangeHandler(event:Event) : void
      {
         var ceEvent:CollectionEvent = null;
         if(event is CollectionEvent)
         {
            ceEvent = CollectionEvent(event);
            if(ceEvent.kind == CollectionEventKind.REMOVE)
            {
               if(editedItemPosition)
               {
                  if(collection.length == 0)
                  {
                     if(itemEditorInstance)
                     {
                        endEdit(ListEventReason.CANCELLED);
                     }
                     setEditedItemPosition(null);
                  }
                  else if(ceEvent.location <= editedItemPosition.rowIndex)
                  {
                     if(inEndEdit)
                     {
                        _editedItemPosition = {
                           "columnIndex":editedItemPosition.columnIndex,
                           "rowIndex":Math.max(0,editedItemPosition.rowIndex - ceEvent.items.length)
                        };
                     }
                     else
                     {
                        setEditedItemPosition({
                           "columnIndex":editedItemPosition.columnIndex,
                           "rowIndex":Math.max(0,editedItemPosition.rowIndex - ceEvent.items.length)
                        });
                     }
                  }
               }
            }
         }
         super.collectionChangeHandler(event);
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            if(Boolean(listItems.length) && Boolean(listItems[0].length))
            {
               return borderMetrics.top + cachedPaddingTop + listItems[0][0].baselinePosition;
            }
            return NaN;
         }
         return super.baselinePosition;
      }
      
      private function itemEditorFocusOutHandler(event:FocusEvent) : void
      {
         if(Boolean(event.relatedObject) && contains(event.relatedObject))
         {
            return;
         }
         if(!event.relatedObject)
         {
            return;
         }
         if(itemEditorInstance)
         {
            endEdit(ListEventReason.OTHER);
         }
      }
      
      override public function set dataProvider(value:Object) : void
      {
         if(itemEditorInstance)
         {
            endEdit(ListEventReason.OTHER);
         }
         super.dataProvider = value;
      }
      
      override protected function initializeAccessibility() : void
      {
         if(createAccessibilityImplementation != null)
         {
            createAccessibilityImplementation(this);
         }
      }
      
      override protected function configureScrollBars() : void
      {
         var yy:Number = NaN;
         var i:int = 0;
         var rowCount:* = int(listItems.length);
         if(rowCount == 0)
         {
            return;
         }
         var n:* = int(listItems.length);
         while(rowCount > 1 && rowInfo[n - 1].y + rowInfo[n - 1].height > listContent.height - listContent.bottomOffset)
         {
            rowCount--;
            n--;
         }
         var offset:int = verticalScrollPosition - lockedRowCount - 1;
         var fillerRows:int = 0;
         while(Boolean(rowCount) && listItems[rowCount - 1].length == 0)
         {
            if(!(Boolean(collection) && rowCount + offset >= collection.length))
            {
               break;
            }
            rowCount--;
            fillerRows++;
         }
         if(verticalScrollPosition > 0 && fillerRows > 0 && !runningDataEffect)
         {
            if(adjustVerticalScrollPositionDownward(Math.max(rowCount,1)))
            {
               return;
            }
         }
         if(listContent.topOffset)
         {
            yy = Math.abs(listContent.topOffset);
            i = 0;
            while(rowInfo[i].y + rowInfo[i].height <= yy)
            {
               rowCount--;
               if(++i == rowCount)
               {
                  break;
               }
            }
         }
         var colCount:int = int(listItems[0].length);
         var oldHorizontalScrollBar:Object = horizontalScrollBar;
         var oldVerticalScrollBar:Object = verticalScrollBar;
         var roundedWidth:int = Math.round(unscaledWidth);
         var length:int = collection ? int(collection.length - lockedRowCount) : 0;
         var numRows:int = rowCount - lockedRowCount;
         setScrollBarProperties(isNaN(_maxHorizontalScrollPosition) ? int(Math.round(listContent.width)) : int(Math.round(_maxHorizontalScrollPosition + roundedWidth)),roundedWidth,length,numRows);
         maxVerticalScrollPosition = Math.max(length - numRows,0);
      }
      
      override protected function mouseWheelHandler(event:MouseEvent) : void
      {
         if(itemEditorInstance)
         {
            endEdit(ListEventReason.OTHER);
         }
         super.mouseWheelHandler(event);
      }
      
      override public function set maxHorizontalScrollPosition(value:Number) : void
      {
         super.maxHorizontalScrollPosition = value;
         scrollAreaChanged = true;
         invalidateDisplayList();
      }
      
      override protected function scrollHandler(event:Event) : void
      {
         var scrollBar:ScrollBar = null;
         var pos:Number = NaN;
         var delta:int = 0;
         var o:EdgeMetrics = null;
         var bookmark:CursorBookmark = null;
         if(event is ScrollEvent)
         {
            if(itemEditorInstance)
            {
               endEdit(ListEventReason.OTHER);
            }
            if(!liveScrolling && ScrollEvent(event).detail == ScrollEventDetail.THUMB_TRACK)
            {
               return;
            }
            scrollBar = ScrollBar(event.target);
            pos = scrollBar.scrollPosition;
            removeClipMask();
            if(scrollBar == verticalScrollBar)
            {
               delta = pos - verticalScrollPosition;
               super.scrollHandler(event);
               if(Math.abs(delta) >= listItems.length - lockedRowCount || !iteratorValid)
               {
                  try
                  {
                     if(!iteratorValid)
                     {
                        iterator.seek(CursorBookmark.FIRST,pos);
                     }
                     else
                     {
                        iterator.seek(CursorBookmark.CURRENT,delta);
                     }
                     if(!iteratorValid)
                     {
                        iteratorValid = true;
                        lastSeekPending = null;
                     }
                  }
                  catch(e:ItemPendingError)
                  {
                     lastSeekPending = new ListBaseSeekPending(CursorBookmark.FIRST,pos);
                     e.addResponder(new ItemResponder(seekPendingResultHandler,seekPendingFailureHandler,lastSeekPending));
                     iteratorValid = false;
                  }
                  bookmark = iterator.bookmark;
                  clearIndicators();
                  clearVisibleData();
                  makeRowsAndColumns(0,0,listContent.width,listContent.height,0,0);
                  iterator.seek(bookmark,0);
               }
               else if(delta != 0)
               {
                  scrollVertically(pos,Math.abs(delta),Boolean(delta > 0));
               }
               if(variableRowHeight)
               {
                  configureScrollBars();
               }
               drawRowBackgrounds();
            }
            else
            {
               delta = pos - _horizontalScrollPosition;
               super.scrollHandler(event);
               scrollHorizontally(pos,Math.abs(delta),Boolean(delta > 0));
            }
            addClipMask(false);
         }
      }
      
      public function get editedItemRenderer() : IListItemRenderer
      {
         if(!itemEditorInstance)
         {
            return null;
         }
         return listItems[actualRowIndex][actualColIndex];
      }
      
      private function commitEditedItemPosition(coord:Object) : void
      {
         var reason:String = null;
         if(!enabled || !editable)
         {
            return;
         }
         if(Boolean(itemEditorInstance && coord) && Boolean(itemEditorInstance is IFocusManagerComponent) && _editedItemPosition.rowIndex == coord.rowIndex)
         {
            IFocusManagerComponent(itemEditorInstance).setFocus();
            return;
         }
         if(itemEditorInstance)
         {
            if(!coord)
            {
               reason = ListEventReason.OTHER;
            }
            else
            {
               reason = ListEventReason.NEW_ROW;
            }
            if(!endEdit(reason) && reason != ListEventReason.OTHER)
            {
               return;
            }
         }
         _editedItemPosition = coord;
         if(!coord || dontEdit)
         {
            return;
         }
         var rowIndex:int = int(coord.rowIndex);
         var colIndex:int = int(coord.columnIndex);
         if(selectedIndex != coord.rowIndex)
         {
            commitSelectedIndex(coord.rowIndex);
         }
         var actualLockedRows:int = lockedRowCount;
         var lastRowIndex:int = verticalScrollPosition + listItems.length - offscreenExtraRowsTop - offscreenExtraRowsBottom - 1;
         var partialRow:int = rowInfo[listItems.length - offscreenExtraRowsBottom - 1].y + rowInfo[listItems.length - offscreenExtraRowsBottom - 1].height > listContent.height ? 1 : 0;
         if(rowIndex > actualLockedRows)
         {
            if(rowIndex < verticalScrollPosition + actualLockedRows)
            {
               verticalScrollPosition = rowIndex - actualLockedRows;
            }
            else
            {
               while(rowIndex > lastRowIndex || Boolean(rowIndex == lastRowIndex && rowIndex > verticalScrollPosition + actualLockedRows) && Boolean(partialRow))
               {
                  if(verticalScrollPosition == maxVerticalScrollPosition)
                  {
                     break;
                  }
                  verticalScrollPosition = Math.min(verticalScrollPosition + (rowIndex > lastRowIndex ? rowIndex - lastRowIndex : partialRow),maxVerticalScrollPosition);
                  lastRowIndex = verticalScrollPosition + listItems.length - offscreenExtraRowsTop - offscreenExtraRowsBottom - 1;
                  partialRow = rowInfo[listItems.length - offscreenExtraRowsBottom - 1].y + rowInfo[listItems.length - offscreenExtraRowsBottom - 1].height > listContent.height ? 1 : 0;
               }
            }
            actualRowIndex = rowIndex - verticalScrollPosition;
         }
         else
         {
            if(rowIndex == actualLockedRows)
            {
               verticalScrollPosition = 0;
            }
            actualRowIndex = rowIndex;
         }
         var bm:EdgeMetrics = borderMetrics;
         actualColIndex = colIndex;
         var item:IListItemRenderer = listItems[actualRowIndex][actualColIndex];
         if(!item)
         {
            commitEditedItemPosition(null);
            return;
         }
         if(!isItemEditable(item.data))
         {
            commitEditedItemPosition(null);
            return;
         }
         var event:ListEvent = new ListEvent(ListEvent.ITEM_EDIT_BEGIN,false,true);
         event.rowIndex = _editedItemPosition.rowIndex;
         event.itemRenderer = item;
         dispatchEvent(event);
         lastEditedItemPosition = _editedItemPosition;
         if(bEditedItemPositionChanged)
         {
            bEditedItemPositionChanged = false;
            commitEditedItemPosition(_proposedEditedItemPosition);
            _proposedEditedItemPosition = undefined;
         }
         if(!itemEditorInstance)
         {
            commitEditedItemPosition(null);
         }
      }
      
      protected function drawRowBackground(s:Sprite, rowIndex:int, y:Number, height:Number, color:uint, dataIndex:int) : void
      {
         var bg:Shape = null;
         if(rowIndex < s.numChildren)
         {
            bg = Shape(s.getChildAt(rowIndex));
         }
         else
         {
            bg = new FlexShape();
            bg.name = "rowBackground";
            s.addChild(bg);
         }
         height = Math.min(rowInfo[rowIndex].height,listContent.height - rowInfo[rowIndex].y);
         bg.y = rowInfo[rowIndex].y;
         var g:Graphics = bg.graphics;
         g.clear();
         g.beginFill(color,getStyle("backgroundAlpha"));
         g.drawRect(0,0,listContent.width,height);
         g.endFill();
      }
      
      override protected function commitProperties() : void
      {
         var paddingTop:Number = NaN;
         var paddingBottom:Number = NaN;
         var item:IListItemRenderer = null;
         var ww:Number = NaN;
         var rh:int = 0;
         super.commitProperties();
         if(itemsNeedMeasurement)
         {
            itemsNeedMeasurement = false;
            if(isNaN(explicitRowHeight))
            {
               if(iterator)
               {
                  paddingTop = getStyle("paddingTop");
                  paddingBottom = getStyle("paddingBottom");
                  item = getMeasuringRenderer(iterator.current);
                  ww = 200;
                  if(listContent.width)
                  {
                     ww = listContent.width;
                  }
                  item.explicitWidth = ww;
                  setupRendererFromData(item,iterator.current);
                  rh = item.getExplicitOrMeasuredHeight() + paddingTop + paddingBottom;
                  setRowHeight(Math.max(rh,20));
               }
               else
               {
                  setRowHeight(20);
               }
            }
            if(isNaN(explicitColumnWidth))
            {
               setColumnWidth(measureWidthOfItems(0,explicitRowCount < 1 ? defaultRowCount : explicitRowCount));
            }
         }
      }
      
      mx_internal function getMeasuringRenderer(data:Object) : IListItemRenderer
      {
         var item:IListItemRenderer = null;
         if(!measuringObjects)
         {
            measuringObjects = new Dictionary(true);
         }
         var factory:IFactory = getItemRendererFactory(data);
         item = measuringObjects[factory];
         if(!item)
         {
            item = createItemRenderer(data);
            item.owner = this;
            item.name = "hiddenItem";
            item.visible = false;
            item.styleName = listContent;
            listContent.addChild(DisplayObject(item));
            measuringObjects[factory] = item;
         }
         return item;
      }
      
      mx_internal function purgeMeasuringRenderers() : void
      {
         var item:IListItemRenderer = null;
         for each(item in measuringObjects)
         {
            if(item.parent)
            {
               item.parent.removeChild(DisplayObject(item));
            }
         }
         if(!measuringObjects)
         {
            measuringObjects = new Dictionary(true);
         }
      }
      
      private function adjustVerticalScrollPositionDownward(rowCount:int) : Boolean
      {
         var item:IListItemRenderer;
         var n:int = 0;
         var j:int = 0;
         var more:Boolean = false;
         var data:Object = null;
         var bookmark:CursorBookmark = iterator.bookmark;
         var h:Number = 0;
         var ch:Number = 0;
         var paddingTop:Number = getStyle("paddingTop");
         var paddingBottom:Number = getStyle("paddingBottom");
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingRight:Number = getStyle("paddingRight");
         h = rowInfo[rowCount - 1].y + rowInfo[rowCount - 1].height;
         h = listContent.heightExcludingOffsets - listContent.topOffset - h;
         var numRows:int = 0;
         try
         {
            if(iterator.afterLast)
            {
               iterator.seek(CursorBookmark.LAST,0);
            }
            else
            {
               more = iterator.movePrevious();
            }
         }
         catch(e:ItemPendingError)
         {
            more = false;
         }
         if(!more)
         {
            super.verticalScrollPosition = 0;
            try
            {
               iterator.seek(CursorBookmark.FIRST,0);
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
               invalidateList();
               return true;
            }
            updateList();
            return true;
         }
         item = getMeasuringRenderer(iterator.current);
         item.explicitWidth = listContent.width - paddingLeft - paddingRight;
         while(h > 0 && more)
         {
            if(more)
            {
               data = iterator.current;
               setupRendererFromData(item,data);
               ch = variableRowHeight ? item.getExplicitOrMeasuredHeight() + paddingBottom + paddingTop : rowHeight;
            }
            h -= ch;
            try
            {
               more = iterator.movePrevious();
               numRows++;
            }
            catch(e:ItemPendingError)
            {
               more = false;
            }
         }
         if(h < 0)
         {
            numRows--;
         }
         iterator.seek(bookmark,0);
         verticalScrollPosition = Math.max(0,verticalScrollPosition - numRows);
         if(numRows > 0 && !variableRowHeight)
         {
            configureScrollBars();
         }
         return numRows > 0;
      }
      
      public function isItemEditable(data:Object) : Boolean
      {
         if(!editable)
         {
            return false;
         }
         if(data == null)
         {
            return false;
         }
         return true;
      }
      
      override protected function adjustListContent(unscaledWidth:Number = -1, unscaledHeight:Number = -1) : void
      {
         var lcx:Number = viewMetrics.left + Math.max(listContent.leftOffset,0);
         var lcy:Number = viewMetrics.top + listContent.topOffset;
         listContent.move(lcx,lcy);
         var ww:Number = Math.max(0,listContent.rightOffset) - lcx - viewMetrics.right;
         var hh:Number = Math.max(0,listContent.bottomOffset) - lcy - viewMetrics.bottom;
         var scrollableWidth:Number = unscaledWidth + ww;
         if(horizontalScrollPolicy == ScrollPolicy.ON || horizontalScrollPolicy == ScrollPolicy.AUTO && !isNaN(_maxHorizontalScrollPosition))
         {
            if(isNaN(_maxHorizontalScrollPosition))
            {
               scrollableWidth *= 2;
            }
            else
            {
               scrollableWidth += _maxHorizontalScrollPosition;
            }
         }
         listContent.setActualSize(scrollableWidth,unscaledHeight + hh);
      }
      
      private function editorMouseDownHandler(event:Event) : void
      {
         if(event is MouseEvent && itemRendererContains(itemEditorInstance,DisplayObject(event.target)))
         {
            return;
         }
         endEdit(ListEventReason.OTHER);
      }
      
      override public function set itemRenderer(value:IFactory) : void
      {
         super.itemRenderer = value;
         purgeMeasuringRenderers();
      }
      
      mx_internal function setupRendererFromData(item:IListItemRenderer, wrappedData:Object) : void
      {
         var data:Object = wrappedData is ItemWrapper ? wrappedData.data : wrappedData;
         if(item is IDropInListItemRenderer)
         {
            if(data != null)
            {
               IDropInListItemRenderer(item).listData = makeListData(data,itemToUID(wrappedData),0);
            }
            else
            {
               IDropInListItemRenderer(item).listData = null;
            }
         }
         item.data = data;
         if(item is IInvalidating)
         {
            IInvalidating(item).invalidateSize();
         }
         UIComponentGlobals.layoutManager.validateClient(item,true);
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         setRowCount(listItems.length);
         if(bEditedItemPositionChanged && !editingTemporarilyPrevented(_proposedEditedItemPosition))
         {
            bEditedItemPositionChanged = false;
            commitEditedItemPosition(_proposedEditedItemPosition);
            _proposedEditedItemPosition = undefined;
         }
         drawRowBackgrounds();
      }
      
      public function destroyItemEditor() : void
      {
         var event:ListEvent = null;
         if(itemEditorInstance)
         {
            DisplayObject(itemEditorInstance).removeEventListener(KeyboardEvent.KEY_DOWN,editorKeyDownHandler);
            systemManager.getSandboxRoot().removeEventListener(MouseEvent.MOUSE_DOWN,editorMouseDownHandler,true);
            systemManager.getSandboxRoot().removeEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,editorMouseDownHandler);
            event = new ListEvent(ListEvent.ITEM_FOCUS_OUT);
            event.rowIndex = _editedItemPosition.rowIndex;
            event.itemRenderer = editedItemRenderer;
            dispatchEvent(event);
            if(!rendererIsEditor)
            {
               if(Boolean(itemEditorInstance) && itemEditorInstance is UIComponent)
               {
                  UIComponent(itemEditorInstance).drawFocus(false);
               }
               listContent.removeChild(DisplayObject(itemEditorInstance));
            }
            itemEditorInstance = null;
            _editedItemPosition = null;
         }
      }
      
      mx_internal function callMakeListData(data:Object, uid:String, rowNum:int) : BaseListData
      {
         return makeListData(data,uid,rowNum);
      }
      
      public function set lockedRowCount(value:int) : void
      {
         _lockedRowCount = value;
         invalidateDisplayList();
      }
   }
}


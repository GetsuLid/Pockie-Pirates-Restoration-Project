package mx.core
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.controls.HScrollBar;
   import mx.controls.ToolTip;
   import mx.controls.VScrollBar;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.events.ScrollEventDirection;
   import mx.managers.ToolTipManager;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class ScrollControlBase extends UIComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var numberOfRows:Number = 0;
      
      private var _scrollTipFunction:Function;
      
      private var scrollTip:ToolTip;
      
      public var showScrollTips:Boolean = false;
      
      private var numberOfCols:Number = 0;
      
      protected var maskShape:Shape;
      
      private var oldTTMEnabled:Boolean;
      
      mx_internal var _maxHorizontalScrollPosition:Number;
      
      protected var border:IFlexDisplayObject;
      
      private var _viewMetrics:EdgeMetrics;
      
      mx_internal var _maxVerticalScrollPosition:Number;
      
      protected var verticalScrollBar:ScrollBar;
      
      mx_internal var _horizontalScrollPosition:Number = 0;
      
      private var propsInited:Boolean;
      
      protected var horizontalScrollBar:ScrollBar;
      
      mx_internal var _horizontalScrollPolicy:String = "off";
      
      mx_internal var _verticalScrollPosition:Number = 0;
      
      private var scrollThumbMidPoint:Number;
      
      mx_internal var _verticalScrollPolicy:String = "auto";
      
      protected var scrollAreaChanged:Boolean;
      
      private var viewableColumns:Number;
      
      public var liveScrolling:Boolean = true;
      
      private var viewableRows:Number;
      
      private var invLayout:Boolean;
      
      public function ScrollControlBase()
      {
         super();
         _viewMetrics = EdgeMetrics.EMPTY;
         addEventListener(MouseEvent.MOUSE_WHEEL,mouseWheelHandler);
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         if(horizontalScrollBar)
         {
            horizontalScrollBar.enabled = value;
         }
         if(verticalScrollBar)
         {
            verticalScrollBar.enabled = value;
         }
      }
      
      [Bindable("scrollTipFunctionChanged")]
      public function get scrollTipFunction() : Function
      {
         return _scrollTipFunction;
      }
      
      public function set scrollTipFunction(value:Function) : void
      {
         _scrollTipFunction = value;
         dispatchEvent(new Event("scrollTipFunctionChanged"));
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         layoutChrome(unscaledWidth,unscaledHeight);
         var w:Number = unscaledWidth;
         var h:Number = unscaledHeight;
         invLayout = false;
         var vm:EdgeMetrics = _viewMetrics = viewMetrics;
         if(Boolean(horizontalScrollBar) && horizontalScrollBar.visible)
         {
            horizontalScrollBar.setActualSize(w - vm.left - vm.right,horizontalScrollBar.minHeight);
            horizontalScrollBar.move(vm.left,h - vm.bottom);
            horizontalScrollBar.enabled = enabled;
         }
         if(Boolean(verticalScrollBar) && verticalScrollBar.visible)
         {
            verticalScrollBar.setActualSize(verticalScrollBar.minWidth,h - vm.top - vm.bottom);
            verticalScrollBar.move(w - vm.right,vm.top);
            verticalScrollBar.enabled = enabled;
         }
         var mask:DisplayObject = maskShape;
         var wd:Number = w - vm.left - vm.right;
         var ht:Number = h - vm.top - vm.bottom;
         mask.width = wd < 0 ? 0 : wd;
         mask.height = ht < 0 ? 0 : ht;
         mask.x = vm.left;
         mask.y = vm.top;
      }
      
      protected function setScrollBarProperties(totalColumns:int, visibleColumns:int, totalRows:int, visibleRows:int) : void
      {
         var shouldBeVisible:Boolean = false;
         var horizontalScrollPolicy:String = this.horizontalScrollPolicy;
         var verticalScrollPolicy:String = this.verticalScrollPolicy;
         scrollAreaChanged = false;
         if(horizontalScrollPolicy == ScrollPolicy.ON || visibleColumns < totalColumns && totalColumns > 0 && horizontalScrollPolicy == ScrollPolicy.AUTO)
         {
            if(!horizontalScrollBar)
            {
               createHScrollBar(false);
               horizontalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollHandler);
               horizontalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollTipHandler);
               horizontalScrollBar.scrollPosition = _horizontalScrollPosition;
            }
            shouldBeVisible = roomForScrollBar(horizontalScrollBar,unscaledWidth,unscaledHeight);
            if(shouldBeVisible != horizontalScrollBar.visible)
            {
               horizontalScrollBar.visible = shouldBeVisible;
               scrollAreaChanged = true;
            }
            if(Boolean(horizontalScrollBar) && Boolean(horizontalScrollBar.visible) && (numberOfCols != totalColumns || viewableColumns != visibleColumns || scrollAreaChanged))
            {
               horizontalScrollBar.setScrollProperties(visibleColumns,0,totalColumns - visibleColumns);
               if(horizontalScrollBar.scrollPosition != _horizontalScrollPosition)
               {
                  horizontalScrollBar.scrollPosition = _horizontalScrollPosition;
               }
               viewableColumns = visibleColumns;
               numberOfCols = totalColumns;
            }
         }
         else if((Boolean(horizontalScrollPolicy == ScrollPolicy.AUTO || horizontalScrollPolicy == ScrollPolicy.OFF)) && Boolean(horizontalScrollBar) && horizontalScrollBar.visible)
         {
            horizontalScrollPosition = 0;
            horizontalScrollBar.setScrollProperties(visibleColumns,0,0);
            horizontalScrollBar.visible = false;
            viewableColumns = NaN;
            scrollAreaChanged = true;
         }
         if(verticalScrollPolicy == ScrollPolicy.ON || visibleRows < totalRows && totalRows > 0 && verticalScrollPolicy == ScrollPolicy.AUTO)
         {
            if(!verticalScrollBar)
            {
               createVScrollBar(false);
               verticalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollHandler);
               verticalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollTipHandler);
               verticalScrollBar.scrollPosition = _verticalScrollPosition;
            }
            shouldBeVisible = roomForScrollBar(verticalScrollBar,unscaledWidth,unscaledHeight);
            if(shouldBeVisible != verticalScrollBar.visible)
            {
               verticalScrollBar.visible = shouldBeVisible;
               scrollAreaChanged = true;
            }
            if(Boolean(verticalScrollBar) && Boolean(verticalScrollBar.visible) && (numberOfRows != totalRows || viewableRows != visibleRows || scrollAreaChanged))
            {
               verticalScrollBar.setScrollProperties(visibleRows,0,totalRows - visibleRows);
               if(verticalScrollBar.scrollPosition != _verticalScrollPosition)
               {
                  verticalScrollBar.scrollPosition = _verticalScrollPosition;
               }
               viewableRows = visibleRows;
               numberOfRows = totalRows;
            }
         }
         else if((Boolean(verticalScrollPolicy == ScrollPolicy.AUTO || verticalScrollPolicy == ScrollPolicy.OFF)) && Boolean(verticalScrollBar) && verticalScrollBar.visible)
         {
            verticalScrollPosition = 0;
            verticalScrollBar.setScrollProperties(visibleRows,0,0);
            verticalScrollBar.visible = false;
            viewableRows = NaN;
            scrollAreaChanged = true;
         }
         if(scrollAreaChanged)
         {
            updateDisplayList(unscaledWidth,unscaledHeight);
         }
      }
      
      private function createHScrollBar(visible:Boolean) : ScrollBar
      {
         horizontalScrollBar = new HScrollBar();
         horizontalScrollBar.visible = visible;
         horizontalScrollBar.enabled = enabled;
         var horizontalScrollBarStyleName:String = getStyle("horizontalScrollBarStyleName");
         horizontalScrollBar.styleName = horizontalScrollBarStyleName;
         addChild(horizontalScrollBar);
         horizontalScrollBar.validateNow();
         return horizontalScrollBar;
      }
      
      [Bindable("horizontalScrollPolicyChanged")]
      public function get horizontalScrollPolicy() : String
      {
         return _horizontalScrollPolicy;
      }
      
      [Bindable("maxVerticalScrollPositionChanged")]
      public function get maxVerticalScrollPosition() : Number
      {
         if(!isNaN(_maxVerticalScrollPosition))
         {
            return _maxVerticalScrollPosition;
         }
         return verticalScrollBar ? verticalScrollBar.maxScrollPosition : 0;
      }
      
      public function set horizontalScrollPosition(value:Number) : void
      {
         _horizontalScrollPosition = value;
         if(horizontalScrollBar)
         {
            horizontalScrollBar.scrollPosition = value;
         }
         dispatchEvent(new Event("viewChanged"));
      }
      
      protected function roomForScrollBar(bar:ScrollBar, unscaledWidth:Number, unscaledHeight:Number) : Boolean
      {
         var bm:EdgeMetrics = borderMetrics;
         return unscaledWidth >= bar.minWidth + bm.left + bm.right && unscaledHeight >= bar.minHeight + bm.top + bm.bottom;
      }
      
      public function set maxHorizontalScrollPosition(value:Number) : void
      {
         _maxHorizontalScrollPosition = value;
         dispatchEvent(new Event("maxHorizontalScrollPositionChanged"));
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      public function get verticalScrollPosition() : Number
      {
         return _verticalScrollPosition;
      }
      
      public function set horizontalScrollPolicy(value:String) : void
      {
         var newPolicy:String = value.toLowerCase();
         if(_horizontalScrollPolicy != newPolicy)
         {
            _horizontalScrollPolicy = newPolicy;
            invalidateDisplayList();
            dispatchEvent(new Event("horizontalScrollPolicyChanged"));
         }
      }
      
      override protected function createChildren() : void
      {
         var g:Graphics = null;
         super.createChildren();
         createBorder();
         if(!maskShape)
         {
            maskShape = new FlexShape();
            maskShape.name = "mask";
            g = maskShape.graphics;
            g.beginFill(16777215);
            g.drawRect(0,0,10,10);
            g.endFill();
            addChild(maskShape);
         }
         maskShape.visible = false;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var horizontalScrollBarStyleName:String = null;
         var verticalScrollBarStyleName:String = null;
         var allStyles:Boolean = styleProp == null || styleProp == "styleName";
         super.styleChanged(styleProp);
         if(allStyles || styleProp == "horizontalScrollBarStyleName")
         {
            if(horizontalScrollBar)
            {
               horizontalScrollBarStyleName = getStyle("horizontalScrollBarStyleName");
               horizontalScrollBar.styleName = horizontalScrollBarStyleName;
            }
         }
         if(allStyles || styleProp == "verticalScrollBarStyleName")
         {
            if(verticalScrollBar)
            {
               verticalScrollBarStyleName = getStyle("verticalScrollBarStyleName");
               verticalScrollBar.styleName = verticalScrollBarStyleName;
            }
         }
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
      
      private function createVScrollBar(visible:Boolean) : ScrollBar
      {
         verticalScrollBar = new VScrollBar();
         verticalScrollBar.visible = visible;
         verticalScrollBar.enabled = enabled;
         var verticalScrollBarStyleName:String = getStyle("verticalScrollBarStyleName");
         verticalScrollBar.styleName = verticalScrollBarStyleName;
         addChild(verticalScrollBar);
         return verticalScrollBar;
      }
      
      mx_internal function get scroll_verticalScrollBar() : ScrollBar
      {
         return verticalScrollBar;
      }
      
      protected function createBorder() : void
      {
         var borderClass:Class = null;
         if(!border && isBorderNeeded())
         {
            borderClass = getStyle("borderSkin");
            if(borderClass != null)
            {
               border = new borderClass();
               if(border is IUIComponent)
               {
                  IUIComponent(border).enabled = enabled;
               }
               if(border is ISimpleStyleClient)
               {
                  ISimpleStyleClient(border).styleName = this;
               }
               addChildAt(DisplayObject(border),0);
               invalidateDisplayList();
            }
         }
      }
      
      mx_internal function get scroll_horizontalScrollBar() : ScrollBar
      {
         return horizontalScrollBar;
      }
      
      protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         if(border)
         {
            border.move(0,0);
            border.setActualSize(unscaledWidth,unscaledHeight);
         }
      }
      
      protected function scrollHandler(event:Event) : void
      {
         var scrollBar:ScrollBar = null;
         var pos:Number = NaN;
         var prop:QName = null;
         if(event is ScrollEvent)
         {
            scrollBar = ScrollBar(event.target);
            pos = scrollBar.scrollPosition;
            if(scrollBar == verticalScrollBar)
            {
               prop = new QName(mx_internal,"_verticalScrollPosition");
            }
            else if(scrollBar == horizontalScrollBar)
            {
               prop = new QName(mx_internal,"_horizontalScrollPosition");
            }
            dispatchEvent(event);
            if(prop)
            {
               this[prop] = pos;
            }
         }
      }
      
      protected function mouseWheelHandler(event:MouseEvent) : void
      {
         var scrollDirection:int = 0;
         var scrollAmount:Number = NaN;
         var oldPosition:Number = NaN;
         var scrollEvent:ScrollEvent = null;
         if(Boolean(verticalScrollBar) && verticalScrollBar.visible)
         {
            event.stopPropagation();
            scrollDirection = event.delta <= 0 ? 1 : -1;
            scrollAmount = Math.max(Math.abs(event.delta),verticalScrollBar.lineScrollSize);
            oldPosition = verticalScrollPosition;
            verticalScrollPosition += 3 * scrollAmount * scrollDirection;
            scrollEvent = new ScrollEvent(ScrollEvent.SCROLL);
            scrollEvent.direction = ScrollEventDirection.VERTICAL;
            scrollEvent.position = verticalScrollPosition;
            scrollEvent.delta = verticalScrollPosition - oldPosition;
            dispatchEvent(scrollEvent);
         }
      }
      
      private function scrollTipHandler(event:Event) : void
      {
         var scrollBar:ScrollBar = null;
         var isVertical:Boolean = false;
         var dir:String = null;
         var pos:Number = NaN;
         var tip:String = null;
         var pt:Point = null;
         if(event is ScrollEvent)
         {
            if(!showScrollTips)
            {
               return;
            }
            if(ScrollEvent(event).detail == ScrollEventDetail.THUMB_POSITION)
            {
               if(scrollTip)
               {
                  systemManager.topLevelSystemManager.removeChildFromSandboxRoot("toolTipChildren",scrollTip as DisplayObject);
                  scrollTip = null;
                  ToolTipManager.enabled = oldTTMEnabled;
               }
            }
            else if(ScrollEvent(event).detail == ScrollEventDetail.THUMB_TRACK)
            {
               scrollBar = ScrollBar(event.target);
               isVertical = scrollBar == verticalScrollBar;
               dir = isVertical ? "vertical" : "horizontal";
               pos = scrollBar.scrollPosition;
               if(!scrollTip)
               {
                  scrollTip = new ToolTip();
                  systemManager.topLevelSystemManager.addChildToSandboxRoot("toolTipChildren",scrollTip as DisplayObject);
                  scrollThumbMidPoint = scrollBar.scrollThumb.height / 2;
                  oldTTMEnabled = ToolTipManager.enabled;
                  ToolTipManager.enabled = false;
               }
               tip = pos.toString();
               if(_scrollTipFunction != null)
               {
                  tip = _scrollTipFunction(dir,pos);
               }
               if(tip == "")
               {
                  scrollTip.visible = false;
               }
               else
               {
                  scrollTip.text = tip;
                  ToolTipManager.sizeTip(scrollTip);
                  pt = new Point();
                  if(isVertical)
                  {
                     pt.x = -3 - scrollTip.width;
                     pt.y = scrollBar.scrollThumb.y + scrollThumbMidPoint - scrollTip.height / 2;
                  }
                  else
                  {
                     pt.x = -3 - scrollTip.height;
                     pt.y = scrollBar.scrollThumb.y + scrollThumbMidPoint - scrollTip.width / 2;
                  }
                  pt = scrollBar.localToGlobal(pt);
                  scrollTip.move(pt.x,pt.y);
                  scrollTip.visible = true;
               }
            }
         }
      }
      
      public function set verticalScrollPosition(value:Number) : void
      {
         _verticalScrollPosition = value;
         if(verticalScrollBar)
         {
            verticalScrollBar.scrollPosition = value;
         }
         dispatchEvent(new Event("viewChanged"));
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      public function get horizontalScrollPosition() : Number
      {
         return _horizontalScrollPosition;
      }
      
      private function isBorderNeeded() : Boolean
      {
         var v:Object = getStyle("borderStyle");
         if(v)
         {
            if(v != "none" || Boolean(v == "none") && Boolean(getStyle("mouseShield")))
            {
               return true;
            }
         }
         v = getStyle("backgroundColor");
         if(v !== null && v !== "")
         {
            return true;
         }
         v = getStyle("backgroundImage");
         return v != null && v != "";
      }
      
      [Bindable("maxHorizontalScrollPositionChanged")]
      public function get maxHorizontalScrollPosition() : Number
      {
         if(!isNaN(_maxHorizontalScrollPosition))
         {
            return _maxHorizontalScrollPosition;
         }
         return horizontalScrollBar ? horizontalScrollBar.maxScrollPosition : 0;
      }
      
      public function set maxVerticalScrollPosition(value:Number) : void
      {
         _maxVerticalScrollPosition = value;
         dispatchEvent(new Event("maxVerticalScrollPositionChanged"));
      }
      
      public function set verticalScrollPolicy(value:String) : void
      {
         var newPolicy:String = value.toLowerCase();
         if(_verticalScrollPolicy != newPolicy)
         {
            _verticalScrollPolicy = newPolicy;
            invalidateDisplayList();
            dispatchEvent(new Event("verticalScrollPolicyChanged"));
         }
      }
      
      public function get viewMetrics() : EdgeMetrics
      {
         _viewMetrics = borderMetrics.clone();
         if(!horizontalScrollBar && horizontalScrollPolicy == ScrollPolicy.ON)
         {
            createHScrollBar(true);
            horizontalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollHandler);
            horizontalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollTipHandler);
            horizontalScrollBar.scrollPosition = _horizontalScrollPosition;
            invalidateDisplayList();
         }
         if(!verticalScrollBar && verticalScrollPolicy == ScrollPolicy.ON)
         {
            createVScrollBar(true);
            verticalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollHandler);
            verticalScrollBar.addEventListener(ScrollEvent.SCROLL,scrollTipHandler);
            verticalScrollBar.scrollPosition = _verticalScrollPosition;
            invalidateDisplayList();
         }
         if(Boolean(verticalScrollBar) && verticalScrollBar.visible)
         {
            _viewMetrics.right += verticalScrollBar.minWidth;
         }
         if(Boolean(horizontalScrollBar) && horizontalScrollBar.visible)
         {
            _viewMetrics.bottom += horizontalScrollBar.minHeight;
         }
         return _viewMetrics;
      }
      
      [Bindable("verticalScrollPolicyChanged")]
      public function get verticalScrollPolicy() : String
      {
         return _verticalScrollPolicy;
      }
      
      public function get borderMetrics() : EdgeMetrics
      {
         return Boolean(border) && border is IRectangularBorder ? IRectangularBorder(border).borderMetrics : EdgeMetrics.EMPTY;
      }
   }
}


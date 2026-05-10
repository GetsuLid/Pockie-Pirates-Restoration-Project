package ExtendComp
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import mx.controls.TileList;
   import mx.controls.listClasses.IListItemRenderer;
   
   public class ExtendTileList extends TileList
   {
      
      public var drawRoll:Boolean = false;
      
      public var rollOverAlpha:Number = 1;
      
      public function ExtendTileList()
      {
         super();
         this.setStyle("paddingLeft",0);
         this.setStyle("paddingRight",0);
         this.setStyle("paddingTop",0);
         this.setStyle("paddingBottom",0);
         this.setStyle("backgroundAlpha",0);
      }
      
      override protected function drawSelectionIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
      }
      
      override protected function drawHighlightIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         var g:Graphics = null;
         if(drawRoll)
         {
            g = Sprite(indicator).graphics;
            g.clear();
            g.beginFill(color);
            g.drawRect(0,0,width,height);
            g.endFill();
            indicator.x = x;
            indicator.y = y;
         }
      }
   }
}


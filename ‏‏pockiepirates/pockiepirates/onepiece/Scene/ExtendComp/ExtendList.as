package ExtendComp
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import mx.controls.List;
   import mx.controls.listClasses.IListItemRenderer;
   
   public class ExtendList extends List
   {
      
      public var overAlpha:Number = 0;
      
      public var overColor:uint = 0;
      
      public function ExtendList()
      {
         super();
         this.setStyle("paddingLeft",0);
         this.setStyle("paddingRight",0);
         this.setStyle("paddingTop",0);
         this.setStyle("paddingBottom",0);
      }
      
      override protected function drawHighlightIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
         var g:Graphics = null;
         if(overAlpha != 0)
         {
            g = Sprite(indicator).graphics;
            g.clear();
            g.beginFill(overColor,overAlpha);
            g.drawRect(0,0,width,height);
            g.endFill();
            indicator.x = x;
            indicator.y = y;
         }
      }
      
      override protected function drawSelectionIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer) : void
      {
      }
   }
}


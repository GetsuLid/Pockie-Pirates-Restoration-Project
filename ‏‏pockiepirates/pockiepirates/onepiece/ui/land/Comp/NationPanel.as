package ui.land.Comp
{
   import flash.display.DisplayObject;
   import mx.containers.Canvas;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   
   public class NationPanel extends Canvas
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":34,
               "height":30,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Content/nation0.swf"};
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Content/nation1.swf"};
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {"source":"../assets/images/UI/Content/nation2.swf"};
                  }
               })]
            };
         }
      });
      
      public function NationPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 34;
         this.height = 30;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set nationId(id:int) : void
      {
         var child:DisplayObject = null;
         for each(child in getChildren())
         {
            child.visible = false;
         }
         switch(id)
         {
            case 0:
            case 1:
            case 2:
               getChildAt(id).visible = true;
         }
      }
   }
}


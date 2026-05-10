package ui.login
{
   import ExtendComp.MoveContainer;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   import ui.GameMainUIPanel;
   
   public class FirstEnter extends MoveContainer
   {
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border1122",
                        "width":684,
                        "height":338,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___FirstEnter_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Button205",
                                 "x":535,
                                 "y":287,
                                 "width":120,
                                 "height":36
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"Border1123",
                                 "width":120,
                                 "height":58,
                                 "x":535,
                                 "y":270,
                                 "mouseChildren":false,
                                 "mouseEnabled":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/Guide/click.swf",
                        "x":781,
                        "y":416
                     };
                  }
               })]
            };
         }
      });
      
      public function FirstEnter()
      {
         super();
         mx_internal::_document = this;
         this.canMove = false;
         this.width = 1000;
         this.height = 600;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function autoGo() : void
      {
         if(Boolean(main.inst.mainuiContainer) && Boolean(main.inst.mainuiContainer.getChildren().length))
         {
            DataManager.Instance.isAutoTask = false;
            (main.inst.mainuiContainer.getChildAt(0) as GameMainUIPanel).mainui.taskTrack.taskRenderer.autoGo();
         }
         hide();
      }
      
      public function ___FirstEnter_Button1_click(event:MouseEvent) : void
      {
         autoGo();
      }
   }
}


package ui
{
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   public class GameMainUIPanel extends SceneModuleBase
   {
      
      private var _1081570803mainui:MainUI;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SceneModuleBase,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":MainUI,
                  "id":"mainui"
               })]
            };
         }
      });
      
      public function GameMainUIPanel()
      {
         super();
         mx_internal::_document = this;
         this.layout = "absolute";
         this.width = 1000;
         this.height = 600;
         this.isRemeber = false;
         this.isOnly = false;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set mainui(param1:MainUI) : void
      {
         var _loc2_:Object = this._1081570803mainui;
         if(_loc2_ !== param1)
         {
            this._1081570803mainui = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainui",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainui() : MainUI
      {
         return this._1081570803mainui;
      }
   }
}


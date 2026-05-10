package mx.controls.alertClasses
{
   import flash.display.DisplayObject;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.managers.IFocusManagerContainer;
   import mx.managers.ISystemManager;
   import mx.managers.PopUpManager;
   
   use namespace mx_internal;
   
   public class AlertForm extends UIComponent implements IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      mx_internal var buttons:Array = [];
      
      private var icon:DisplayObject;
      
      mx_internal var textField:IUITextField;
      
      mx_internal var defaultButton:Button;
      
      private var textWidth:Number;
      
      private var defaultButtonChanged:Boolean = false;
      
      private var textHeight:Number;
      
      public function AlertForm()
      {
         super();
         tabChildren = true;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var buttonStyleName:String = null;
         var n:int = 0;
         var i:int = 0;
         super.styleChanged(styleProp);
         if(!styleProp || styleProp == "styleName" || styleProp == "buttonStyleName")
         {
            if(buttons)
            {
               buttonStyleName = getStyle("buttonStyleName");
               n = int(buttons.length);
               for(i = 0; i < n; i++)
               {
                  buttons[i].styleName = buttonStyleName;
               }
            }
         }
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      override protected function commitProperties() : void
      {
         var index:int = 0;
         var sm:ISystemManager = null;
         super.commitProperties();
         if(Boolean(hasFontContextChanged()) && textField != null)
         {
            index = int(getChildIndex(DisplayObject(textField)));
            removeTextField();
            createTextField(index);
         }
         if(defaultButtonChanged && Boolean(defaultButton))
         {
            defaultButtonChanged = false;
            Alert(parent).defaultButton = defaultButton;
            if(parent is IFocusManagerContainer)
            {
               sm = Alert(parent).systemManager;
               sm.activate(IFocusManagerContainer(parent));
            }
            defaultButton.setFocus();
         }
      }
      
      private function createButton(label:String, name:String) : Button
      {
         var button:Button = new Button();
         button.label = label;
         button.name = name;
         var buttonStyleName:String = getStyle("buttonStyleName");
         if(buttonStyleName)
         {
            button.styleName = buttonStyleName;
         }
         button.addEventListener(MouseEvent.CLICK,clickHandler);
         button.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
         button.owner = parent;
         addChild(button);
         button.setActualSize(Alert.buttonWidth,Alert.buttonHeight);
         buttons.push(button);
         return button;
      }
      
      override protected function resourcesChanged() : void
      {
         var b:Button = null;
         super.resourcesChanged();
         b = Button(getChildByName("OK"));
         if(b)
         {
            b.label = String(Alert.okLabel);
         }
         b = Button(getChildByName("CANCEL"));
         if(b)
         {
            b.label = String(Alert.cancelLabel);
         }
         b = Button(getChildByName("YES"));
         if(b)
         {
            b.label = String(Alert.yesLabel);
         }
         b = Button(getChildByName("NO"));
         if(b)
         {
            b.label = String(Alert.noLabel);
         }
      }
      
      override protected function createChildren() : void
      {
         var label:String = null;
         var button:Button = null;
         super.createChildren();
         createTextField(-1);
         var iconClass:Class = Alert(parent).iconClass;
         if(Boolean(iconClass) && !icon)
         {
            icon = new iconClass();
            addChild(icon);
         }
         var alert:Alert = Alert(parent);
         var buttonFlags:uint = alert.buttonFlags;
         var defaultButtonFlag:uint = alert.defaultButtonFlag;
         if(buttonFlags & Alert.OK)
         {
            label = String(Alert.okLabel);
            button = createButton(label,"OK");
            if(defaultButtonFlag == Alert.OK)
            {
               defaultButton = button;
            }
         }
         if(buttonFlags & Alert.YES)
         {
            label = String(Alert.yesLabel);
            button = createButton(label,"YES");
            if(defaultButtonFlag == Alert.YES)
            {
               defaultButton = button;
            }
         }
         if(buttonFlags & Alert.NO)
         {
            label = String(Alert.noLabel);
            button = createButton(label,"NO");
            if(defaultButtonFlag == Alert.NO)
            {
               defaultButton = button;
            }
         }
         if(buttonFlags & Alert.CANCEL)
         {
            label = String(Alert.cancelLabel);
            button = createButton(label,"CANCEL");
            if(defaultButtonFlag == Alert.CANCEL)
            {
               defaultButton = button;
            }
         }
         if(!defaultButton && Boolean(buttons.length))
         {
            defaultButton = buttons[0];
         }
         if(defaultButton)
         {
            defaultButtonChanged = true;
            invalidateProperties();
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         var title:String = Alert(parent).title;
         var lineMetrics:TextLineMetrics = Alert(parent).getTitleTextField().getUITextFormat().measureText(title);
         var numButtons:int = Math.max(buttons.length,2);
         var buttonWidth:Number = numButtons * buttons[0].width + (numButtons - 1) * 8;
         var buttonAndTitleWidth:Number = Math.max(buttonWidth,lineMetrics.width);
         textField.width = 2 * buttonAndTitleWidth;
         textWidth = textField.textWidth + UITextField.mx_internal::TEXT_WIDTH_PADDING;
         var prefWidth:Number = Math.max(buttonAndTitleWidth,textWidth);
         prefWidth = Math.min(prefWidth,2 * buttonAndTitleWidth);
         if(textWidth < prefWidth && textField.multiline == true)
         {
            textField.multiline = false;
            textField.wordWrap = false;
         }
         else if(textField.multiline == false)
         {
            textField.wordWrap = true;
            textField.multiline = true;
         }
         prefWidth += 16;
         if(icon)
         {
            prefWidth += icon.width + 8;
         }
         textHeight = textField.textHeight + UITextField.mx_internal::TEXT_HEIGHT_PADDING;
         var prefHeight:Number = textHeight;
         if(icon)
         {
            prefHeight = Math.max(prefHeight,icon.height);
         }
         prefHeight = Math.min(prefHeight,screen.height * 0.75);
         prefHeight += buttons[0].height + 3 * 8;
         measuredWidth = prefWidth;
         measuredHeight = prefHeight;
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      private function clickHandler(event:MouseEvent) : void
      {
         var name:String = Button(event.currentTarget).name;
         removeAlert(name);
      }
      
      mx_internal function removeTextField() : void
      {
         if(textField)
         {
            removeChild(DisplayObject(textField));
            textField = null;
         }
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         var buttonFlags:uint = Alert(parent).buttonFlags;
         if(event.keyCode == Keyboard.ESCAPE)
         {
            if(Boolean(buttonFlags & Alert.CANCEL) || !(buttonFlags & Alert.NO))
            {
               removeAlert("CANCEL");
            }
            else if(buttonFlags & Alert.NO)
            {
               removeAlert("NO");
            }
         }
      }
      
      mx_internal function createTextField(childIndex:int) : void
      {
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.styleName = this;
            textField.text = Alert(parent).text;
            textField.multiline = true;
            textField.wordWrap = true;
            textField.selectable = true;
            if(childIndex == -1)
            {
               addChild(DisplayObject(textField));
            }
            else
            {
               addChildAt(DisplayObject(textField),childIndex);
            }
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var newX:Number = NaN;
         var newY:Number = NaN;
         var newWidth:Number = NaN;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         newY = unscaledHeight - buttons[0].height;
         newWidth = buttons.length * (buttons[0].width + 8) - 8;
         newX = (unscaledWidth - newWidth) / 2;
         for(var i:int = 0; i < buttons.length; i++)
         {
            buttons[i].move(newX,newY);
            buttons[i].tabIndex = i + 1;
            newX += buttons[i].width + 8;
         }
         newWidth = textWidth;
         if(icon)
         {
            newWidth += icon.width + 8;
         }
         newX = (unscaledWidth - newWidth) / 2;
         if(icon)
         {
            icon.x = newX;
            icon.y = (newY - icon.height) / 2;
            newX += icon.width + 8;
         }
         var newHeight:Number = Number(textField.getExplicitOrMeasuredHeight());
         textField.move(newX,(newY - newHeight) / 2);
         textField.setActualSize(textWidth + 5,newHeight);
      }
      
      private function removeAlert(buttonPressed:String) : void
      {
         var alert:Alert = Alert(parent);
         alert.visible = false;
         var closeEvent:CloseEvent = new CloseEvent(CloseEvent.CLOSE);
         if(buttonPressed == "YES")
         {
            closeEvent.detail = Alert.YES;
         }
         else if(buttonPressed == "NO")
         {
            closeEvent.detail = Alert.NO;
         }
         else if(buttonPressed == "OK")
         {
            closeEvent.detail = Alert.OK;
         }
         else if(buttonPressed == "CANCEL")
         {
            closeEvent.detail = Alert.CANCEL;
         }
         alert.dispatchEvent(closeEvent);
         PopUpManager.removePopUp(alert);
      }
   }
}


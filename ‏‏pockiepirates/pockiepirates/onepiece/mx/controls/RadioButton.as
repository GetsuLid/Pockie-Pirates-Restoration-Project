package mx.controls
{
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerGroup;
   
   use namespace mx_internal;
   
   public class RadioButton extends Button implements IFocusManagerGroup
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var _group:RadioButtonGroup;
      
      mx_internal var _groupName:String;
      
      private var _value:Object;
      
      private var groupChanged:Boolean = false;
      
      mx_internal var indexNumber:int = 0;
      
      public function RadioButton()
      {
         super();
         mx_internal::_labelPlacement = "";
         mx_internal::_toggle = true;
         groupName = "radioGroup";
         addEventListener(FlexEvent.ADD,addHandler);
         mx_internal::centerContent = false;
         mx_internal::extraSpacing = 8;
      }
      
      private function addHandler(event:FlexEvent) : void
      {
         if(!_group && initialized)
         {
            addToGroup();
         }
      }
      
      private function setNext(moveSelection:Boolean = true) : void
      {
         var radioButton:RadioButton = null;
         var g:RadioButtonGroup = group;
         var fm:IFocusManager = focusManager;
         if(fm)
         {
            fm.showFocusIndicator = true;
         }
         for(var i:int = indexNumber + 1; i < g.numRadioButtons; i++)
         {
            radioButton = g.getRadioButtonAt(i);
            if(Boolean(radioButton) && radioButton.enabled)
            {
               if(moveSelection)
               {
                  g.setSelection(radioButton);
               }
               radioButton.setFocus();
               return;
            }
         }
         if(moveSelection && g.getRadioButtonAt(indexNumber) != g.selection)
         {
            g.setSelection(this);
         }
         this.drawFocus(true);
      }
      
      private function addToGroup() : Object
      {
         var g:RadioButtonGroup = group;
         if(g)
         {
            g.addInstance(this);
         }
         return g;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(groupChanged)
         {
            addToGroup();
            groupChanged = false;
         }
      }
      
      override protected function clickHandler(event:MouseEvent) : void
      {
         if(!enabled || selected)
         {
            return;
         }
         if(!_group)
         {
            addToGroup();
         }
         super.clickHandler(event);
         group.setSelection(this);
         var itemClickEvent:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK);
         itemClickEvent.label = label;
         itemClickEvent.index = indexNumber;
         itemClickEvent.relatedObject = this;
         itemClickEvent.item = value;
         group.dispatchEvent(itemClickEvent);
      }
      
      override protected function keyUpHandler(event:KeyboardEvent) : void
      {
         super.keyUpHandler(event);
         if(event.keyCode == Keyboard.SPACE && !_toggle)
         {
            _toggle = true;
         }
      }
      
      [Bindable("labelPlacementChanged")]
      override public function get labelPlacement() : String
      {
         var value:String = ButtonLabelPlacement.RIGHT;
         if(_labelPlacement != "")
         {
            value = _labelPlacement;
         }
         else if(Boolean(_group) && _group.labelPlacement != "")
         {
            value = _group.labelPlacement;
         }
         return value;
      }
      
      public function set groupName(value:String) : void
      {
         if(!value || value == "")
         {
            return;
         }
         deleteGroup();
         _groupName = value;
         groupChanged = true;
         invalidateProperties();
         invalidateDisplayList();
         dispatchEvent(new Event("groupNameChanged"));
      }
      
      override protected function initializeAccessibility() : void
      {
         if(RadioButton.createAccessibilityImplementation != null)
         {
            RadioButton.createAccessibilityImplementation(this);
         }
      }
      
      private function setThis() : void
      {
         if(!_group)
         {
            addToGroup();
         }
         var g:RadioButtonGroup = group;
         if(g.selection != this)
         {
            g.setSelection(this);
         }
      }
      
      override public function get emphasized() : Boolean
      {
         return false;
      }
      
      override public function get toggle() : Boolean
      {
         return super.toggle;
      }
      
      override protected function measure() : void
      {
         var textHeight:Number = NaN;
         var iconHeight:Number = NaN;
         var h:Number = NaN;
         var verticalGap:Number = NaN;
         super.measure();
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            textHeight = measureText(label).height;
            iconHeight = currentIcon ? currentIcon.height : 0;
            if(labelPlacement == ButtonLabelPlacement.LEFT || labelPlacement == ButtonLabelPlacement.RIGHT)
            {
               h = Math.max(textHeight,iconHeight);
            }
            else
            {
               h = textHeight + iconHeight;
               verticalGap = getStyle("verticalGap");
               if(iconHeight != 0 && !isNaN(verticalGap))
               {
                  h += verticalGap;
               }
            }
            measuredMinHeight = measuredHeight = Math.max(h,18);
         }
      }
      
      override public function set toggle(value:Boolean) : void
      {
      }
      
      mx_internal function deleteGroup() : void
      {
         try
         {
            if(document[groupName])
            {
               delete document[groupName];
            }
         }
         catch(e:Error)
         {
            try
            {
               if(document.automaticRadioButtonGroups[groupName])
               {
                  delete document.automaticRadioButtonGroups[groupName];
               }
            }
            catch(e1:Error)
            {
            }
         }
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         switch(event.keyCode)
         {
            case Keyboard.DOWN:
               setNext(!event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.UP:
               setPrev(!event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.LEFT:
               setPrev(!event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.RIGHT:
               setNext(!event.ctrlKey);
               event.stopPropagation();
               break;
            case Keyboard.SPACE:
               setThis();
               _toggle = false;
            default:
               super.keyDownHandler(event);
         }
      }
      
      [Bindable("groupNameChanged")]
      public function get groupName() : String
      {
         return _groupName;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(groupChanged)
         {
            addToGroup();
            groupChanged = false;
         }
         if(Boolean(_group) && Boolean(_selected) && _group.selection != this)
         {
            group.setSelection(this,false);
         }
      }
      
      [Bindable("valueChanged")]
      public function get value() : Object
      {
         return _value;
      }
      
      public function set value(value:Object) : void
      {
         _value = value;
         dispatchEvent(new Event("valueChanged"));
         if(selected && Boolean(group))
         {
            group.dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
         }
      }
      
      private function setPrev(moveSelection:Boolean = true) : void
      {
         var radioButton:RadioButton = null;
         var g:RadioButtonGroup = group;
         var fm:IFocusManager = focusManager;
         if(fm)
         {
            fm.showFocusIndicator = true;
         }
         for(var i:int = 1; i <= indexNumber; i++)
         {
            radioButton = g.getRadioButtonAt(indexNumber - i);
            if(Boolean(radioButton) && radioButton.enabled)
            {
               if(moveSelection)
               {
                  g.setSelection(radioButton);
               }
               radioButton.setFocus();
               return;
            }
         }
         if(moveSelection && g.getRadioButtonAt(indexNumber) != g.selection)
         {
            g.setSelection(this);
         }
         this.drawFocus(true);
      }
      
      public function set group(value:RadioButtonGroup) : void
      {
         _group = value;
      }
      
      public function get group() : RadioButtonGroup
      {
         var g:RadioButtonGroup = null;
         if(!document)
         {
            return _group;
         }
         if(!_group)
         {
            if(Boolean(groupName) && groupName != "")
            {
               try
               {
                  g = RadioButtonGroup(document[groupName]);
               }
               catch(e:Error)
               {
                  if(Boolean(document.automaticRadioButtonGroups) && Boolean(document.automaticRadioButtonGroups[groupName]))
                  {
                     g = RadioButtonGroup(document.automaticRadioButtonGroups[groupName]);
                  }
               }
               if(!g)
               {
                  g = new RadioButtonGroup(IFlexDisplayObject(document));
                  if(!document.automaticRadioButtonGroups)
                  {
                     document.automaticRadioButtonGroups = {};
                  }
                  document.automaticRadioButtonGroups[groupName] = g;
               }
               else if(!(g is RadioButtonGroup))
               {
                  return null;
               }
               _group = g;
            }
         }
         return _group;
      }
   }
}


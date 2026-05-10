package mx.controls
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import mx.core.Application;
   import mx.core.IFlexDisplayObject;
   import mx.core.IMXMLObject;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class RadioButtonGroup extends EventDispatcher implements IMXMLObject
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var radioButtons:Array = [];
      
      private var _selection:RadioButton;
      
      private var _selectedValue:Object;
      
      private var document:IFlexDisplayObject;
      
      private var _labelPlacement:String = "right";
      
      private var indexNumber:int = 0;
      
      public function RadioButtonGroup(document:IFlexDisplayObject = null)
      {
         super();
      }
      
      [Bindable("enabledChanged")]
      public function get enabled() : Boolean
      {
         var s:Number = 0;
         var n:int = numRadioButtons;
         for(var i:int = 0; i < n; i++)
         {
            s += getRadioButtonAt(i).enabled;
         }
         if(s == 0)
         {
            return false;
         }
         if(s == n)
         {
            return true;
         }
         return false;
      }
      
      public function set enabled(value:Boolean) : void
      {
         var n:int = numRadioButtons;
         for(var i:int = 0; i < n; i++)
         {
            getRadioButtonAt(i).enabled = value;
         }
         dispatchEvent(new Event("enabledChanged"));
      }
      
      private function radioButton_removedHandler(event:Event) : void
      {
         var rb:RadioButton = event.target as RadioButton;
         if(rb)
         {
            rb.removeEventListener(Event.REMOVED,radioButton_removedHandler);
            removeInstance(RadioButton(event.target));
         }
      }
      
      public function set selectedValue(value:Object) : void
      {
         var radioButton:RadioButton = null;
         _selectedValue = value;
         var n:int = numRadioButtons;
         for(var i:int = 0; i < n; i++)
         {
            radioButton = getRadioButtonAt(i);
            if(radioButton.value == value || radioButton.label == value)
            {
               changeSelection(i,false);
               break;
            }
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      private function getValue() : String
      {
         if(selection)
         {
            return Boolean(selection.value) && Boolean(selection.value is String) && String(selection.value).length != 0 ? String(selection.value) : selection.label;
         }
         return null;
      }
      
      [Bindable("labelPlacementChanged")]
      public function get labelPlacement() : String
      {
         return _labelPlacement;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selection() : RadioButton
      {
         return _selection;
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get selectedValue() : Object
      {
         if(selection)
         {
            return selection.value != null ? selection.value : selection.label;
         }
         return null;
      }
      
      public function set selection(value:RadioButton) : void
      {
         setSelection(value,false);
      }
      
      mx_internal function setSelection(value:RadioButton, fireChange:Boolean = true) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(value == null && _selection != null)
         {
            _selection.selected = false;
            _selection = null;
            if(fireChange)
            {
               dispatchEvent(new Event(Event.CHANGE));
            }
         }
         else
         {
            n = numRadioButtons;
            for(i = 0; i < n; i++)
            {
               if(value == getRadioButtonAt(i))
               {
                  changeSelection(i,fireChange);
                  break;
               }
            }
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      public function initialized(document:Object, id:String) : void
      {
         this.document = document ? IFlexDisplayObject(document) : IFlexDisplayObject(Application.application);
      }
      
      mx_internal function addInstance(instance:RadioButton) : void
      {
         instance.indexNumber = indexNumber++;
         instance.addEventListener(Event.REMOVED,radioButton_removedHandler);
         radioButtons.push(instance);
         if(_selectedValue != null)
         {
            selectedValue = _selectedValue;
         }
         dispatchEvent(new Event("numRadioButtonsChanged"));
      }
      
      public function set labelPlacement(value:String) : void
      {
         _labelPlacement = value;
         var n:int = numRadioButtons;
         for(var i:int = 0; i < n; i++)
         {
            getRadioButtonAt(i).labelPlacement = value;
         }
      }
      
      [Bindable("numRadioButtonsChanged")]
      public function get numRadioButtons() : int
      {
         return radioButtons.length;
      }
      
      public function getRadioButtonAt(index:int) : RadioButton
      {
         return RadioButton(radioButtons[index]);
      }
      
      mx_internal function removeInstance(instance:RadioButton) : void
      {
         var foundInstance:Boolean = false;
         var i:* = 0;
         var rb:RadioButton = null;
         if(instance)
         {
            foundInstance = false;
            for(i = 0; i < numRadioButtons; i++)
            {
               rb = getRadioButtonAt(i);
               if(foundInstance)
               {
                  --rb.indexNumber;
               }
               else if(rb == instance)
               {
                  rb.group = null;
                  if(instance == _selection)
                  {
                     _selection = null;
                  }
                  radioButtons.splice(i,1);
                  foundInstance = true;
                  --indexNumber;
                  i--;
               }
            }
            if(foundInstance)
            {
               dispatchEvent(new Event("numRadioButtonsChanged"));
            }
         }
      }
      
      private function changeSelection(index:int, fireChange:Boolean = true) : void
      {
         if(getRadioButtonAt(index))
         {
            if(selection)
            {
               selection.selected = false;
            }
            _selection = getRadioButtonAt(index);
            _selection.selected = true;
            if(fireChange)
            {
               dispatchEvent(new Event(Event.CHANGE));
            }
         }
      }
   }
}


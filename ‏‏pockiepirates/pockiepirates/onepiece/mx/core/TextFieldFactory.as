package mx.core
{
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   use namespace mx_internal;
   
   public class TextFieldFactory implements ITextFieldFactory
   {
      
      private static var instance:ITextFieldFactory;
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var textFields:Dictionary = new Dictionary(true);
      
      public function TextFieldFactory()
      {
         super();
      }
      
      public static function getInstance() : ITextFieldFactory
      {
         if(!instance)
         {
            instance = new TextFieldFactory();
         }
         return instance;
      }
      
      public function createTextField(moduleFactory:IFlexModuleFactory) : TextField
      {
         var iter:Object = null;
         var textField:TextField = null;
         var textFieldDictionary:Dictionary = textFields[moduleFactory];
         if(textFieldDictionary)
         {
            var _loc5_:int = 0;
            var _loc6_:* = textFieldDictionary;
            for(iter in _loc6_)
            {
               textField = TextField(iter);
            }
         }
         if(!textField)
         {
            if(moduleFactory)
            {
               textField = TextField(moduleFactory.create("flash.text.TextField"));
            }
            else
            {
               textField = new TextField();
            }
            if(!textFieldDictionary)
            {
               textFieldDictionary = new Dictionary(true);
            }
            textFieldDictionary[textField] = 1;
            textFields[moduleFactory] = textFieldDictionary;
         }
         return textField;
      }
   }
}


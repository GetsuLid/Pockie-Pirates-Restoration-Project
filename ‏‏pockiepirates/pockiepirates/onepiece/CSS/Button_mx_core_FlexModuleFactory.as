package
{
   import flash.system.ApplicationDomain;
   import mx.core.FlexModuleFactory;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   
   public class Button_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
   {
      
      public function Button_mx_core_FlexModuleFactory()
      {
         super();
      }
      
      override public function create(... rest) : Object
      {
         if(rest.length > 0 && !(rest[0] is String))
         {
            return super.create.apply(this,rest);
         }
         var _loc2_:String = rest.length == 0 ? "Button" : String(rest[0]);
         var _loc3_:Class = Class(getDefinitionByName(_loc2_));
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:Object = new _loc3_();
         if(_loc4_ is IFlexModule)
         {
            IFlexModule(_loc4_).moduleFactory = this;
         }
         return _loc4_;
      }
      
      override public function info() : Object
      {
         return {
            "compiledLocales":["en_US"],
            "compiledResourceBundleNames":["core","styles"],
            "currentDomain":ApplicationDomain.currentDomain,
            "mainClassName":"Button"
         };
      }
   }
}


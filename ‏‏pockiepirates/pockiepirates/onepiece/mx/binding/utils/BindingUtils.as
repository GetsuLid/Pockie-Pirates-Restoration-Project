package mx.binding.utils
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class BindingUtils
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function BindingUtils()
      {
         super();
      }
      
      public static function bindProperty(site:Object, prop:String, host:Object, chain:Object, commitOnly:Boolean = false) : ChangeWatcher
      {
         var w:ChangeWatcher = null;
         var assign:Function = null;
         w = ChangeWatcher.watch(host,chain,null,commitOnly);
         if(w != null)
         {
            assign = function(event:*):void
            {
               site[prop] = w.getValue();
            };
            w.setHandler(assign);
            assign(null);
         }
         return w;
      }
      
      public static function bindSetter(setter:Function, host:Object, chain:Object, commitOnly:Boolean = false) : ChangeWatcher
      {
         var w:ChangeWatcher = null;
         var invoke:Function = null;
         w = ChangeWatcher.watch(host,chain,null,commitOnly);
         if(w != null)
         {
            invoke = function(event:*):void
            {
               setter(w.getValue());
            };
            w.setHandler(invoke);
            invoke(null);
         }
         return w;
      }
   }
}


package Util
{
   public class RefreshDataAction
   {
      
      public function RefreshDataAction()
      {
         super();
      }
      
      public static function refreshData(target:Array, infos:Object, targetName:String, infosName:String, refresh:Function, create:Function, destroy:Function = null) : Array
      {
         var info:Object = null;
         var data:Object = null;
         var des:Object = null;
         var source:Array = target.concat();
         target.splice(0);
         for each(info in infos)
         {
            data = null;
            for each(data in source)
            {
               if(data[targetName] == info[infosName])
               {
                  source.splice(source.indexOf(data),1);
                  break;
               }
               data = null;
            }
            if(!data)
            {
               data = create(info);
            }
            refresh(data,info,target);
         }
         if(destroy != null)
         {
            for each(des in source)
            {
               destroy(des);
            }
         }
         return target;
      }
   }
}


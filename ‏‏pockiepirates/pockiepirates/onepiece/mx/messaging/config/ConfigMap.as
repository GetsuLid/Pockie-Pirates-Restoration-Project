package mx.messaging.config
{
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import mx.utils.object_proxy;
   
   use namespace flash_proxy;
   use namespace object_proxy;
   
   public dynamic class ConfigMap extends Proxy
   {
      
      private var _item:Object;
      
      object_proxy var propertyList:Array;
      
      public function ConfigMap(item:Object = null)
      {
         super();
         if(!item)
         {
            item = {};
         }
         _item = item;
         object_proxy::propertyList = [];
      }
      
      override flash_proxy function deleteProperty(name:*) : Boolean
      {
         var oldVal:Object = _item[name];
         var deleted:Boolean = delete _item[name];
         var deleteIndex:int = -1;
         for(var i:int = 0; i < propertyList.length; i++)
         {
            if(propertyList[i] == name)
            {
               deleteIndex = i;
               break;
            }
         }
         if(deleteIndex > -1)
         {
            propertyList.splice(deleteIndex,1);
         }
         return deleted;
      }
      
      override flash_proxy function nextName(index:int) : String
      {
         return propertyList[index - 1];
      }
      
      override flash_proxy function getProperty(name:*) : *
      {
         var result:Object = null;
         return _item[name];
      }
      
      override flash_proxy function hasProperty(name:*) : Boolean
      {
         return name in _item;
      }
      
      override flash_proxy function nextNameIndex(index:int) : int
      {
         if(index < propertyList.length)
         {
            return index + 1;
         }
         return 0;
      }
      
      override flash_proxy function setProperty(name:*, value:*) : void
      {
         var i:int = 0;
         var oldVal:* = _item[name];
         if(oldVal !== value)
         {
            _item[name] = value;
            for(i = 0; i < propertyList.length; i++)
            {
               if(propertyList[i] == name)
               {
                  return;
               }
            }
            propertyList.push(name);
         }
      }
      
      override flash_proxy function callProperty(name:*, ... rest) : *
      {
         return _item[name].apply(_item,rest);
      }
      
      override flash_proxy function nextValue(index:int) : *
      {
         return _item[propertyList[index - 1]];
      }
   }
}


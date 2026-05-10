package Util
{
   import constant.Global;
   import data.Item.ItemBase;
   import data.soul.SoulData;
   import flash.net.registerClassAlias;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import mx.utils.ObjectUtil;
   
   public class ObjectAction
   {
      
      public function ObjectAction()
      {
         super();
      }
      
      public static function cloneItem(id:int) : *
      {
         var item:ItemBase = Global.getItemConfig(id);
         if(item == null)
         {
            trace("未找到的物品" + id);
            return null;
         }
         return clone(item);
      }
      
      public static function clone(source:Object) : *
      {
         var className:String = getQualifiedClassName(source);
         registerClassAlias(className,getDefinitionByName(className) as Class);
         return ObjectUtil.copy(source);
      }
      
      public static function cloneSoul(id:int) : *
      {
         var soul:SoulData = Global.souls[id];
         if(soul)
         {
            return clone(soul);
         }
         return null;
      }
   }
}


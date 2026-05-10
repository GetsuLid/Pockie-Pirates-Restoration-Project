package war.VOS
{
   import constant.Global;
   import data.Item.ItemBase;
   import mx.collections.ArrayCollection;
   
   public class WarRewardData
   {
      
      public var money:int;
      
      public var items:ArrayCollection = new ArrayCollection();
      
      public var warId:int;
      
      public var token:int;
      
      public var gold:int;
      
      public var index:int;
      
      public function WarRewardData()
      {
         super();
      }
      
      public function resolveWarReward(info:Object) : void
      {
         var item:ItemBase = null;
         warId = info.cfgCampId;
         index = info.idx;
         money = info.copper;
         gold = info.gold;
         token = info.jumpWand;
         for(var i:int = 1; i <= 2; i++)
         {
            item = Global.getItemConfig(info["item" + i]);
            if(item)
            {
               items.addItem(item);
            }
         }
      }
   }
}


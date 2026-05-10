package data
{
   import data.Item.ItemBase;
   import events.SendDataEvent;
   import flash.events.EventDispatcher;
   import manager.DataManager;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   public class WareHouse extends EventDispatcher
   {
      
      private var _1184260393commonList:ArrayCollection;
      
      private var _1491869139productList:ArrayCollection;
      
      public function WareHouse()
      {
         super();
      }
      
      public function set productList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1491869139productList;
         if(oldValue !== value)
         {
            this._1491869139productList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productList",oldValue,value));
         }
      }
      
      public function set commonList(value:ArrayCollection) : void
      {
         var oldValue:Object = this._1184260393commonList;
         if(oldValue !== value)
         {
            this._1184260393commonList = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"commonList",oldValue,value));
         }
      }
      
      public function refreshWare() : void
      {
         var item:ItemBase = null;
         var itemArr:Array = null;
         var i:int = 0;
         commonList = new ArrayCollection();
         productList = new ArrayCollection();
         itemArr = DataManager.Instance.parcel.findItemsByType(6);
         for(i = 0; i < itemArr.length; i++)
         {
            commonList.addItem(itemArr[i]);
         }
         itemArr = DataManager.Instance.parcel.findItemsByType(9);
         for(i = 0; i < itemArr.length; i++)
         {
            commonList.addItem(itemArr[i]);
         }
         itemArr = DataManager.Instance.parcel.findItemsByType(10);
         for(i = 0; i < itemArr.length; i++)
         {
            commonList.addItem(itemArr[i]);
         }
         itemArr = DataManager.Instance.parcel.findItemsByType(7);
         for(i = 0; i < itemArr.length; i++)
         {
            productList.addItem(itemArr[i]);
         }
         DataManager.Instance.dispatchEvent(new SendDataEvent("dataChange",""));
      }
      
      [Bindable(event="propertyChange")]
      public function get commonList() : ArrayCollection
      {
         return this._1184260393commonList;
      }
      
      [Bindable(event="propertyChange")]
      public function get productList() : ArrayCollection
      {
         return this._1491869139productList;
      }
   }
}


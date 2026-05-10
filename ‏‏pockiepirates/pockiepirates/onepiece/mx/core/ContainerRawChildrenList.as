package mx.core
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   use namespace mx_internal;
   
   public class ContainerRawChildrenList implements IChildList
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private var owner:Container;
      
      public function ContainerRawChildrenList(owner:Container)
      {
         super();
         this.owner = owner;
      }
      
      public function addChild(child:DisplayObject) : DisplayObject
      {
         return owner.mx_internal::rawChildren_addChild(child);
      }
      
      public function getChildIndex(child:DisplayObject) : int
      {
         return owner.mx_internal::rawChildren_getChildIndex(child);
      }
      
      public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         owner.mx_internal::rawChildren_setChildIndex(child,newIndex);
      }
      
      public function getChildByName(name:String) : DisplayObject
      {
         return owner.mx_internal::rawChildren_getChildByName(name);
      }
      
      public function removeChildAt(index:int) : DisplayObject
      {
         return owner.mx_internal::rawChildren_removeChildAt(index);
      }
      
      public function get numChildren() : int
      {
         return owner.mx_internal::$numChildren;
      }
      
      public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         return owner.mx_internal::rawChildren_addChildAt(child,index);
      }
      
      public function getObjectsUnderPoint(point:Point) : Array
      {
         return owner.mx_internal::rawChildren_getObjectsUnderPoint(point);
      }
      
      public function contains(child:DisplayObject) : Boolean
      {
         return owner.mx_internal::rawChildren_contains(child);
      }
      
      public function removeChild(child:DisplayObject) : DisplayObject
      {
         return owner.mx_internal::rawChildren_removeChild(child);
      }
      
      public function getChildAt(index:int) : DisplayObject
      {
         return owner.mx_internal::rawChildren_getChildAt(index);
      }
   }
}


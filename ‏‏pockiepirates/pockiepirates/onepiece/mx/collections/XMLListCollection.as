package mx.collections
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class XMLListCollection extends ListCollectionView
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public function XMLListCollection(source:XMLList = null)
      {
         super();
         this.source = source;
      }
      
      public function child(propertyName:Object) : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.child(propertyName);
         });
      }
      
      private function execXMLListFunction(func:Function) : XMLList
      {
         var length:int = 0;
         var ret:XMLList = null;
         var i:int = 0;
         var xml:Object = null;
         if(!localIndex)
         {
            return func(source);
         }
         length = int(localIndex.length);
         ret = new XMLList("");
         for(i = 0; i < length; i++)
         {
            xml = localIndex[i];
            ret += func(xml);
         }
         return ret;
      }
      
      override public function toString() : String
      {
         var str:String = null;
         var i:int = 0;
         if(!localIndex)
         {
            return source.toString();
         }
         str = "";
         for(i = 0; i < localIndex.length; i++)
         {
            if(i > 0)
            {
               str += "\n";
            }
            str += localIndex[i].toString();
         }
         return str;
      }
      
      public function text() : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.text();
         });
      }
      
      public function toXMLString() : String
      {
         var str:String = null;
         var i:int = 0;
         if(!localIndex)
         {
            return source.toXMLString();
         }
         str = "";
         for(i = 0; i < localIndex.length; i++)
         {
            if(i > 0)
            {
               str += "\n";
            }
            str += localIndex[i].toXMLString();
         }
         return str;
      }
      
      public function copy() : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return XMLList(obj.copy());
         });
      }
      
      public function set source(s:XMLList) : void
      {
         if(list)
         {
            XMLListAdapter(list).source = null;
         }
         list = new XMLListAdapter(s);
      }
      
      public function attributes() : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.attributes();
         });
      }
      
      [Bindable("listChanged")]
      public function get source() : XMLList
      {
         return list ? XMLListAdapter(list).source : null;
      }
      
      public function attribute(attributeName:Object) : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.attribute(attributeName);
         });
      }
      
      public function descendants(name:Object = "*") : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.descendants(name);
         });
      }
      
      public function elements(name:String = "*") : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.elements(name);
         });
      }
      
      public function children() : XMLList
      {
         return execXMLListFunction(function(obj:Object):XMLList
         {
            return obj.children();
         });
      }
   }
}


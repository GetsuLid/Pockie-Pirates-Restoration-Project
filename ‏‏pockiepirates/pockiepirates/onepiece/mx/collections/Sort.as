package mx.collections
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import mx.collections.errors.SortError;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class Sort extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      public static const ANY_INDEX_MODE:String = "any";
      
      public static const FIRST_INDEX_MODE:String = "first";
      
      public static const LAST_INDEX_MODE:String = "last";
      
      private var noFieldsDescending:Boolean = false;
      
      private var usingCustomCompareFunction:Boolean;
      
      private var defaultEmptyField:SortField;
      
      private var _fields:Array;
      
      private var _compareFunction:Function;
      
      private var _unique:Boolean;
      
      private var fieldList:Array = [];
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function Sort()
      {
         super();
      }
      
      public function get unique() : Boolean
      {
         return _unique;
      }
      
      public function get compareFunction() : Function
      {
         return usingCustomCompareFunction ? _compareFunction : internalCompare;
      }
      
      public function set unique(value:Boolean) : void
      {
         _unique = value;
      }
      
      public function sort(items:Array) : void
      {
         var fixedCompareFunction:Function = null;
         var message:String = null;
         var uniqueRet1:Object = null;
         var fields:Array = null;
         var i:int = 0;
         var sortArgs:Object = null;
         var uniqueRet2:Object = null;
         if(!items || items.length <= 1)
         {
            return;
         }
         if(usingCustomCompareFunction)
         {
            fixedCompareFunction = function(a:Object, b:Object):int
            {
               return compareFunction(a,b,_fields);
            };
            if(unique)
            {
               uniqueRet1 = items.sort(fixedCompareFunction,Array.UNIQUESORT);
               if(uniqueRet1 == 0)
               {
                  message = resourceManager.getString("collections","nonUnique");
                  throw new SortError(message);
               }
            }
            else
            {
               items.sort(fixedCompareFunction);
            }
         }
         else
         {
            fields = this.fields;
            if(Boolean(fields) && fields.length > 0)
            {
               sortArgs = initSortFields(items[0],true);
               if(unique)
               {
                  if(Boolean(sortArgs) && fields.length == 1)
                  {
                     uniqueRet2 = items.sortOn(sortArgs.fields[0],sortArgs.options[0] | Array.UNIQUESORT);
                  }
                  else
                  {
                     uniqueRet2 = items.sort(internalCompare,Array.UNIQUESORT);
                  }
                  if(uniqueRet2 == 0)
                  {
                     message = resourceManager.getString("collections","nonUnique");
                     throw new SortError(message);
                  }
               }
               else if(sortArgs)
               {
                  items.sortOn(sortArgs.fields,sortArgs.options);
               }
               else
               {
                  items.sort(internalCompare);
               }
            }
            else
            {
               items.sort(internalCompare);
            }
         }
      }
      
      public function propertyAffectsSort(property:String) : Boolean
      {
         var field:SortField = null;
         if(usingCustomCompareFunction || !fields)
         {
            return true;
         }
         for(var i:int = 0; i < fields.length; i++)
         {
            field = fields[i];
            if(field.name == property || field.usingCustomCompareFunction)
            {
               return true;
            }
         }
         return false;
      }
      
      private function internalCompare(a:Object, b:Object, fields:Array = null) : int
      {
         var i:int = 0;
         var len:int = 0;
         var sf:SortField = null;
         var result:int = 0;
         if(!_fields)
         {
            result = noFieldsCompare(a,b);
         }
         else
         {
            i = 0;
            len = fields ? int(fields.length) : int(_fields.length);
            while(result == 0 && i < len)
            {
               sf = SortField(_fields[i]);
               result = sf.internalCompare(a,b);
               i++;
            }
         }
         return result;
      }
      
      public function reverse() : void
      {
         var i:int = 0;
         if(fields)
         {
            for(i = 0; i < fields.length; i++)
            {
               SortField(fields[i]).reverse();
            }
         }
         noFieldsDescending = !noFieldsDescending;
      }
      
      private function noFieldsCompare(a:Object, b:Object, fields:Array = null) : int
      {
         var result:int;
         var message:String = null;
         if(!defaultEmptyField)
         {
            defaultEmptyField = new SortField();
            try
            {
               defaultEmptyField.initCompare(a);
            }
            catch(e:SortError)
            {
               message = resourceManager.getString("collections","noComparator",[a]);
               throw new SortError(message);
            }
         }
         result = defaultEmptyField.compareFunction(a,b);
         if(noFieldsDescending)
         {
            result *= -1;
         }
         return result;
      }
      
      public function findItem(items:Array, values:Object, mode:String, returnInsertionIndex:Boolean = false, compareFunction:Function = null) : int
      {
         var found:Boolean;
         var lowerBound:int;
         var objFound:Boolean;
         var obj:Object;
         var upperBound:int;
         var direction:int;
         var compareForFind:Function = null;
         var fieldsForCompare:Array = null;
         var message:String = null;
         var index:int = 0;
         var fieldName:String = null;
         var hadPreviousFieldName:Boolean = false;
         var i:int = 0;
         var hasFieldName:Boolean = false;
         var objIndex:int = 0;
         var match:Boolean = false;
         var prevCompare:int = 0;
         var nextCompare:int = 0;
         if(!items)
         {
            message = resourceManager.getString("collections","noItems");
            throw new SortError(message);
         }
         if(items.length == 0)
         {
            return returnInsertionIndex ? 1 : -1;
         }
         if(compareFunction == null)
         {
            compareForFind = this.compareFunction;
            if(Boolean(values) && fieldList.length > 0)
            {
               fieldsForCompare = [];
               hadPreviousFieldName = true;
               for(i = 0; i < fieldList.length; i++)
               {
                  fieldName = fieldList[i];
                  if(fieldName)
                  {
                     try
                     {
                        hasFieldName = values[fieldName] !== undefined;
                     }
                     catch(e:Error)
                     {
                        hasFieldName = false;
                     }
                     if(hasFieldName)
                     {
                        if(!hadPreviousFieldName)
                        {
                           message = resourceManager.getString("collections","findCondition",[fieldName]);
                           throw new SortError(message);
                        }
                        fieldsForCompare.push(fieldName);
                     }
                     else
                     {
                        hadPreviousFieldName = false;
                     }
                  }
                  else
                  {
                     fieldsForCompare.push(null);
                  }
               }
               if(fieldsForCompare.length == 0)
               {
                  message = resourceManager.getString("collections","findRestriction");
                  throw new SortError(message);
               }
               try
               {
                  initSortFields(items[0]);
               }
               catch(initSortError:SortError)
               {
               }
            }
         }
         else
         {
            compareForFind = compareFunction;
         }
         found = false;
         objFound = false;
         index = 0;
         lowerBound = 0;
         upperBound = items.length - 1;
         obj = null;
         direction = 1;
         while(!objFound && lowerBound <= upperBound)
         {
            index = Math.round((lowerBound + upperBound) / 2);
            obj = items[index];
            direction = fieldsForCompare ? int(compareForFind(values,obj,fieldsForCompare)) : int(compareForFind(values,obj));
            switch(direction)
            {
               case -1:
                  upperBound = index - 1;
                  break;
               case 0:
                  objFound = true;
                  switch(mode)
                  {
                     case ANY_INDEX_MODE:
                        found = true;
                        break;
                     case FIRST_INDEX_MODE:
                        found = index == lowerBound;
                        objIndex = index - 1;
                        match = true;
                        while(match && !found && objIndex >= lowerBound)
                        {
                           obj = items[objIndex];
                           prevCompare = fieldsForCompare ? int(compareForFind(values,obj,fieldsForCompare)) : int(compareForFind(values,obj));
                           match = prevCompare == 0;
                           if(!match || match && objIndex == lowerBound)
                           {
                              found = true;
                              index = objIndex + (match ? 0 : 1);
                           }
                           objIndex--;
                        }
                        break;
                     case LAST_INDEX_MODE:
                        found = index == upperBound;
                        objIndex = index + 1;
                        match = true;
                        while(match && !found && objIndex <= upperBound)
                        {
                           obj = items[objIndex];
                           nextCompare = fieldsForCompare ? int(compareForFind(values,obj,fieldsForCompare)) : int(compareForFind(values,obj));
                           match = nextCompare == 0;
                           if(!match || match && objIndex == upperBound)
                           {
                              found = true;
                              index = objIndex - (match ? 0 : 1);
                           }
                           objIndex++;
                        }
                        break;
                     default:
                        message = resourceManager.getString("collections","unknownMode");
                        throw new SortError(message);
                  }
                  break;
               case 1:
                  lowerBound = index + 1;
            }
         }
         if(!found && !returnInsertionIndex)
         {
            return -1;
         }
         return direction > 0 ? int(index + 1) : index;
      }
      
      private function initSortFields(item:Object, buildArraySortArgs:Boolean = false) : Object
      {
         var i:int = 0;
         var field:SortField = null;
         var options:int = 0;
         var arraySortArgs:Object = null;
         for(i = 0; i < fields.length; i++)
         {
            SortField(fields[i]).initCompare(item);
         }
         if(buildArraySortArgs)
         {
            arraySortArgs = {
               "fields":[],
               "options":[]
            };
            for(i = 0; i < fields.length; i++)
            {
               field = fields[i];
               options = field.getArraySortOnOptions();
               if(options == -1)
               {
                  return null;
               }
               arraySortArgs.fields.push(field.name);
               arraySortArgs.options.push(options);
            }
         }
         return arraySortArgs;
      }
      
      public function set fields(value:Array) : void
      {
         var field:SortField = null;
         var i:int = 0;
         _fields = value;
         fieldList = [];
         if(_fields)
         {
            for(i = 0; i < _fields.length; i++)
            {
               field = SortField(_fields[i]);
               fieldList.push(field.name);
            }
         }
         dispatchEvent(new Event("fieldsChanged"));
      }
      
      [Bindable("fieldsChanged")]
      public function get fields() : Array
      {
         return _fields;
      }
      
      public function set compareFunction(value:Function) : void
      {
         _compareFunction = value;
         usingCustomCompareFunction = _compareFunction != null;
      }
      
      override public function toString() : String
      {
         return ObjectUtil.toString(this);
      }
   }
}


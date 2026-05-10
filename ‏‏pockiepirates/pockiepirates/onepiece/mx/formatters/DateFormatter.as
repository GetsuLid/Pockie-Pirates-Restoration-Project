package mx.formatters
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class DateFormatter extends Formatter
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      private static const VALID_PATTERN_CHARS:String = "Y,M,D,A,E,H,J,K,L,N,S";
      
      private var formatStringOverride:String;
      
      private var _formatString:String;
      
      public function DateFormatter()
      {
         super();
      }
      
      protected static function parseDateString(str:String) : Date
      {
         var word:String = null;
         var n:int = 0;
         var i:int = 0;
         var s:String = null;
         var numbers:String = null;
         var num:int = 0;
         if(!str || str == "")
         {
            return null;
         }
         var year:int = -1;
         var mon:int = -1;
         var day:int = -1;
         var hour:int = -1;
         var min:int = -1;
         var sec:int = -1;
         var letter:String = "";
         var marker:Object = 0;
         var count:int = 0;
         var len:int = str.length;
         var timezoneRegEx:RegExp = /(GMT|UTC)-\d\d\d\d/ig;
         str = str.replace(timezoneRegEx,"");
         while(count < len)
         {
            letter = str.charAt(count);
            count++;
            if(!(letter <= " " || letter == ","))
            {
               if(letter == "/" || letter == ":" || letter == "+" || letter == "-")
               {
                  marker = letter;
               }
               else if("a" <= letter && letter <= "z" || "A" <= letter && letter <= "Z")
               {
                  word = letter;
                  while(count < len)
                  {
                     letter = str.charAt(count);
                     if(!("a" <= letter && letter <= "z" || "A" <= letter && letter <= "Z"))
                     {
                        break;
                     }
                     word += letter;
                     count++;
                  }
                  n = int(DateBase.mx_internal::defaultStringKey.length);
                  for(i = 0; i < n; i++)
                  {
                     s = String(DateBase.mx_internal::defaultStringKey[i]);
                     if(s.toLowerCase() == word.toLowerCase() || s.toLowerCase().substr(0,3) == word.toLowerCase())
                     {
                        if(i == 13)
                        {
                           if(hour > 12 || hour < 1)
                           {
                              break;
                           }
                           if(hour < 12)
                           {
                              hour += 12;
                           }
                        }
                        else if(i == 12)
                        {
                           if(hour > 12 || hour < 1)
                           {
                              break;
                           }
                           if(hour == 12)
                           {
                              hour = 0;
                           }
                        }
                        else if(i < 12)
                        {
                           if(mon >= 0)
                           {
                              break;
                           }
                           mon = i;
                        }
                        break;
                     }
                  }
                  marker = 0;
               }
               else if("0" <= letter && letter <= "9")
               {
                  numbers = letter;
                  while("0" <= (letter = str.charAt(count)) && letter <= "9" && count < len)
                  {
                     numbers += letter;
                     count++;
                  }
                  num = int(numbers);
                  if(num >= 70)
                  {
                     if(year != -1)
                     {
                        break;
                     }
                     if(!(letter <= " " || letter == "," || letter == "." || letter == "/" || letter == "-" || count >= len))
                     {
                        break;
                     }
                     year = num;
                  }
                  else if(letter == "/" || letter == "-" || letter == ".")
                  {
                     if(mon < 0)
                     {
                        mon = num - 1;
                     }
                     else
                     {
                        if(day >= 0)
                        {
                           break;
                        }
                        day = num;
                     }
                  }
                  else if(letter == ":")
                  {
                     if(hour < 0)
                     {
                        hour = num;
                     }
                     else
                     {
                        if(min >= 0)
                        {
                           break;
                        }
                        min = num;
                     }
                  }
                  else if(hour >= 0 && min < 0)
                  {
                     min = num;
                  }
                  else if(min >= 0 && sec < 0)
                  {
                     sec = num;
                  }
                  else if(day < 0)
                  {
                     day = num;
                  }
                  else
                  {
                     if(!(year < 0 && mon >= 0 && day >= 0))
                     {
                        break;
                     }
                     year = 2000 + num;
                  }
                  marker = 0;
               }
            }
         }
         if(year < 0 || mon < 0 || mon > 11 || day < 1 || day > 31)
         {
            return null;
         }
         if(sec < 0)
         {
            sec = 0;
         }
         if(min < 0)
         {
            min = 0;
         }
         if(hour < 0)
         {
            hour = 0;
         }
         var newDate:Date = new Date(year,mon,day,hour,min,sec);
         if(day != newDate.getDate() || mon != newDate.getMonth())
         {
            return null;
         }
         return newDate;
      }
      
      public function set formatString(value:String) : void
      {
         formatStringOverride = value;
         _formatString = value != null ? value : resourceManager.getString("SharedResources","dateFormat");
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         formatString = formatStringOverride;
      }
      
      override public function format(value:Object) : String
      {
         var letter:String = null;
         if(error)
         {
            error = null;
         }
         if(!value || value == "")
         {
            error = defaultInvalidValueError;
            return "";
         }
         if(value is String)
         {
            value = DateFormatter.parseDateString(String(value));
            if(!value)
            {
               error = defaultInvalidValueError;
               return "";
            }
         }
         else if(!(value is Date))
         {
            error = defaultInvalidValueError;
            return "";
         }
         var nTokens:int = 0;
         var tokens:String = "";
         var n:int = formatString.length;
         for(var i:int = 0; i < n; i++)
         {
            letter = formatString.charAt(i);
            if(VALID_PATTERN_CHARS.indexOf(letter) != -1 && letter != ",")
            {
               nTokens++;
               if(tokens.indexOf(letter) == -1)
               {
                  tokens += letter;
               }
               else if(letter != formatString.charAt(Math.max(i - 1,0)))
               {
                  error = defaultInvalidFormatError;
                  return "";
               }
            }
         }
         if(nTokens < 1)
         {
            error = defaultInvalidFormatError;
            return "";
         }
         var dataFormatter:StringFormatter = new StringFormatter(formatString,VALID_PATTERN_CHARS,DateBase.mx_internal::extractTokenDate);
         return dataFormatter.formatValue(value);
      }
      
      public function get formatString() : String
      {
         return _formatString;
      }
   }
}


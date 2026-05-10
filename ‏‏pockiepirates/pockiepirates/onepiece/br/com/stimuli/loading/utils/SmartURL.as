package br.com.stimuli.loading.utils
{
   public class SmartURL
   {
      
      public var rawString:String;
      
      public var port:int;
      
      public var path:String;
      
      public var queryObject:Object;
      
      public var queryString:String;
      
      public var host:String;
      
      public var queryLength:int = 0;
      
      public var protocol:String;
      
      public function SmartURL(rawString:String)
      {
         var value:String = null;
         var varName:String = null;
         var pair:String = null;
         super();
         this.rawString = rawString;
         var URL_RE:RegExp = /((?P<protocol>[a-zA-Z]+: \/\/)   (?P<host>[^:\/]*) (:(?P<port>\d+))?)?  (?P<path>[^?]*)? ((?P<query>.*))? /x;
         var match:* = URL_RE.exec(rawString);
         if(match)
         {
            protocol = Boolean(match.protocol) ? match.protocol : "http://";
            protocol = protocol.substr(0,protocol.indexOf("://"));
            host = match.host || null;
            port = match.port ? int(match.port) : 80;
            path = match.path;
            queryString = match.query;
            if(queryString)
            {
               queryObject = {};
               queryString = queryString.substr(1);
               for each(pair in queryString.split("&"))
               {
                  varName = pair.split("=")[0];
                  value = pair.split("=")[1];
                  queryObject[varName] = value;
                  ++queryLength;
               }
            }
         }
         else
         {
            trace("no match");
         }
      }
      
      public function toString(... rest) : String
      {
         if(rest.length > 0 && rest[0] == true)
         {
            return "[URL] rawString :" + rawString + ", protocol: " + protocol + ", port: " + port + ", host: " + host + ", path: " + path + ". queryLength: " + queryLength;
         }
         return rawString;
      }
   }
}


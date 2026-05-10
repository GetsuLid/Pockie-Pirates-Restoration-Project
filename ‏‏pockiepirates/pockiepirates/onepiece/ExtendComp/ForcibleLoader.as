package ExtendComp
{
   import flash.display.Loader;
   import flash.errors.EOFError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class ForcibleLoader extends EventDispatcher
   {
      
      private var _loader:Loader;
      
      private var _stream:URLStream;
      
      public function ForcibleLoader(loader:Loader)
      {
         super();
         _loader = loader;
         _stream = new URLStream();
         _stream.addEventListener(Event.COMPLETE,completeHandler);
         _stream.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         _stream.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
      }
      
      private function getBodyPosition(bytes:ByteArray) : uint
      {
         var result:uint = 0;
         result += 3;
         result += 1;
         result += 4;
         var rectNBits:uint = uint(bytes[result] >>> 3);
         result += (5 + rectNBits * 4) / 8;
         result += 2;
         result += 1;
         return uint(result + 2);
      }
      
      private function securityErrorHandler(event:SecurityErrorEvent) : void
      {
         loader.contentLoaderInfo.dispatchEvent(event.clone());
      }
      
      public function set loader(value:Loader) : void
      {
         _loader = value;
      }
      
      private function ioErrorHandler(event:IOErrorEvent) : void
      {
         loader.contentLoaderInfo.dispatchEvent(event.clone());
      }
      
      private function flagSWF9Bit(bytes:ByteArray) : void
      {
         var pos:uint = findFileAttributesPosition(getBodyPosition(bytes),bytes);
         if(!isNaN(pos))
         {
            bytes[pos + 2] |= 8;
         }
      }
      
      private function isCompressed(bytes:ByteArray) : Boolean
      {
         return bytes[0] == 67;
      }
      
      public function load(request:URLRequest) : void
      {
         _stream.load(request);
      }
      
      private function insertFileAttributesTag(bytes:ByteArray) : void
      {
         var pos:uint = getBodyPosition(bytes);
         var afterBytes:ByteArray = new ByteArray();
         afterBytes.writeBytes(bytes,pos);
         bytes.length = pos;
         bytes.position = pos;
         bytes.writeByte(68);
         bytes.writeByte(17);
         bytes.writeByte(8);
         bytes.writeByte(0);
         bytes.writeByte(0);
         bytes.writeByte(0);
         bytes.writeBytes(afterBytes);
         afterBytes.length = 0;
      }
      
      private function updateVersion(bytes:ByteArray, version:uint) : void
      {
         bytes[3] = version;
      }
      
      private function completeHandler(event:Event) : void
      {
         var inputBytes:ByteArray = new ByteArray();
         _stream.readBytes(inputBytes);
         _stream.close();
         inputBytes.endian = Endian.LITTLE_ENDIAN;
         if(isCompressed(inputBytes))
         {
            uncompress(inputBytes);
         }
         var version:uint = uint(inputBytes[3]);
         if(version < 9)
         {
            updateVersion(inputBytes,9);
         }
         if(version > 7)
         {
            flagSWF9Bit(inputBytes);
         }
         else
         {
            insertFileAttributesTag(inputBytes);
         }
         _loader.loadBytes(inputBytes);
         dispatchEvent(new Event("over"));
      }
      
      private function findFileAttributesPosition(offset:uint, bytes:ByteArray) : uint
      {
         var byte:uint = 0;
         var tag:uint = 0;
         var length:uint = 0;
         bytes.position = offset;
         try
         {
            while(true)
            {
               byte = uint(bytes.readShort());
               tag = uint(byte >>> 6);
               if(tag == 69)
               {
                  break;
               }
               length = uint(byte & 0x3F);
               if(length == 63)
               {
                  length = uint(bytes.readInt());
               }
               bytes.position += length;
            }
            return bytes.position - 2;
         }
         catch(e:EOFError)
         {
         }
         return NaN;
      }
      
      public function get loader() : Loader
      {
         return _loader;
      }
      
      private function uncompress(bytes:ByteArray) : void
      {
         var cBytes:ByteArray = new ByteArray();
         cBytes.writeBytes(bytes,8);
         bytes.length = 8;
         bytes.position = 8;
         cBytes.uncompress();
         bytes.writeBytes(cBytes);
         bytes[0] = 70;
         cBytes.length = 0;
      }
   }
}


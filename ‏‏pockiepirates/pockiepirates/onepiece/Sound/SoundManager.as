package Sound
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import mx.events.PropertyChangeEvent;
   
   public class SoundManager implements IEventDispatcher
   {
      
      private static var _me:SoundManager = new SoundManager();
      
      private var channel:SoundChannel;
      
      private var sound:Sound;
      
      private var currentSound:String;
      
      private var _109757585state:String = "on";
      
      private var tranform:SoundTransform;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1231857366isMusicSelected:Boolean = true;
      
      public function SoundManager()
      {
         super();
         tranform = new SoundTransform();
      }
      
      public static function getInstance() : SoundManager
      {
         return _me;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      private function stop() : void
      {
         if(channel)
         {
            channel.stop();
         }
      }
      
      public function set isMusicSelected(value:Boolean) : void
      {
         var oldValue:Object = this._1231857366isMusicSelected;
         if(oldValue !== value)
         {
            this._1231857366isMusicSelected = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isMusicSelected",oldValue,value));
         }
      }
      
      public function stopMusic(musicName:String) : void
      {
         if(musicName == currentSound)
         {
            stop();
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function playMusic(musicName:String) : void
      {
         if(currentSound != musicName)
         {
            currentSound = musicName;
            stop();
            play();
         }
      }
      
      public function changeSoundState(state:String) : void
      {
         this.state = state;
         switch(state)
         {
            case "on":
               tranform = new SoundTransform();
               break;
            case "off":
               tranform = new SoundTransform(0);
         }
         if(channel)
         {
            channel.soundTransform = tranform;
         }
      }
      
      private function onPlayError(e:IOErrorEvent) : void
      {
         trace("音乐文件缺失");
      }
      
      [Bindable(event="propertyChange")]
      public function get isMusicSelected() : Boolean
      {
         return this._1231857366isMusicSelected;
      }
      
      [Bindable(event="propertyChange")]
      public function get state() : String
      {
         return this._109757585state;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function set state(value:String) : void
      {
         var oldValue:Object = this._109757585state;
         if(oldValue !== value)
         {
            this._109757585state = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"state",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      private function play() : void
      {
         try
         {
            sound = new Sound();
            sound.addEventListener(IOErrorEvent.IO_ERROR,onPlayError);
            sound.load(new URLRequest(Global.resourceServer + "Sound/" + currentSound + ".mp3"));
            channel = sound.play(0,3000);
            channel.soundTransform = tranform;
         }
         catch(e:Error)
         {
         }
      }
   }
}


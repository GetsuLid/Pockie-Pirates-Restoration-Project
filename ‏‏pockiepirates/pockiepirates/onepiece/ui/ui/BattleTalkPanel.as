package ui
{
   import Scene.Config.SceneConfig;
   import constant.Global;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Label;
   import mx.controls.SWFLoader;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class BattleTalkPanel extends Canvas
   {
      
      private var talks:Array;
      
      private var _1485170191wordContent:Text;
      
      private var index:int = 0;
      
      private var _1762743236talkClick:SWFLoader;
      
      private var _1569483236rightHead:SWFLoader;
      
      private var _1718060679leftHead:SWFLoader;
      
      private var _28188853wordName:Label;
      
      private var _showBattle:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function BattleTalkPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":1000,
                  "height":600,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SWFLoader,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "source":"../assets/images/UI/Border/battleTalkBG.swf",
                           "y":484
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"leftHead",
                     "stylesFactory":function():void
                     {
                        this.left = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":400,
                           "height":300,
                           "y":184
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"rightHead",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":400,
                           "height":300,
                           "y":184,
                           "x":1000
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"talkClick",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":525,
                           "x":880,
                           "buttonMode":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"wordName",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 18;
                        this.color = 14543377;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":499,
                           "width":177,
                           "selectable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"wordContent",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 16;
                        this.color = 14543377;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":70,
                           "y":533,
                           "width":677,
                           "height":67,
                           "selectable":false
                        };
                     }
                  })]
               };
            }
         });
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundAlpha = 0.01;
            this.backgroundColor = 0;
         };
         this.width = 1000;
         this.height = 600;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("click",___BattleTalkPanel_Canvas1_click);
      }
      
      public function hide() : void
      {
         index = 0;
         visible = false;
         SceneConfig.checkScene();
         talkClick.source = "";
         if(_showBattle)
         {
            DataManager.Instance.realPlayBattle();
         }
      }
      
      private function removeMovie(event:MouseEvent) : void
      {
         var mc:MovieClip = event.target as MovieClip;
         if(mc.parent)
         {
            mc.parent.removeChild(mc);
         }
         mc = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get wordContent() : Text
      {
         return this._1485170191wordContent;
      }
      
      private function showNext() : void
      {
         var word:Object = null;
         var content:String = null;
         var type:String = null;
         ++index;
         word = talks[index];
         if(word)
         {
            content = word.content;
            if(content.substr(0,1) == "#")
            {
               type = content.substr(1,1);
               switch(type)
               {
                  case "m":
                     main.inst.showEffect("fightMovie" + content.substr(2),500,300,playFinish,false);
                     hide();
               }
            }
            else
            {
               if(word.face)
               {
                  leftHead.visible = true;
                  rightHead.visible = false;
                  leftHead.source = "../assets/images/Head/Big/" + word.face + ".swf";
               }
               else
               {
                  leftHead.visible = false;
                  rightHead.visible = true;
                  rightHead.source = "../assets/images/Head/Big/" + DataManager.Instance.role.face + ".swf";
               }
               if(word.name == "0")
               {
                  wordName.text = DataManager.Instance.role.name + ":";
               }
               else
               {
                  wordName.text = word.name + ":";
               }
               word.content = word.content.replace(/-0-/,DataManager.Instance.role.name);
               wordContent.text = word.content;
            }
         }
         else
         {
            hide();
         }
      }
      
      public function set leftHead(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._1718060679leftHead;
         if(_loc2_ !== param1)
         {
            this._1718060679leftHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftHead",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftHead() : SWFLoader
      {
         return this._1718060679leftHead;
      }
      
      public function set talkClick(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._1762743236talkClick;
         if(_loc2_ !== param1)
         {
            this._1762743236talkClick = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talkClick",_loc2_,param1));
         }
      }
      
      public function set wordContent(param1:Text) : void
      {
         var _loc2_:Object = this._1485170191wordContent;
         if(_loc2_ !== param1)
         {
            this._1485170191wordContent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wordContent",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rightHead() : SWFLoader
      {
         return this._1569483236rightHead;
      }
      
      private function playFinish(show:EffectShower) : void
      {
         var ob:Object = null;
         show.mc.addEventListener(MouseEvent.CLICK,removeMovie);
         for(var i:int = 0; i < show.mc.numChildren; i++)
         {
            ob = show.mc.getChildAt(i);
            if(ob is MovieClip)
            {
               MovieClip(ob).stop();
            }
         }
         show.mc.stop();
         show.mc = null;
      }
      
      public function set wordName(param1:Label) : void
      {
         var _loc2_:Object = this._28188853wordName;
         if(_loc2_ !== param1)
         {
            this._28188853wordName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wordName",_loc2_,param1));
         }
      }
      
      public function ___BattleTalkPanel_Canvas1_click(event:MouseEvent) : void
      {
         showNext();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get wordName() : Label
      {
         return this._28188853wordName;
      }
      
      [Bindable(event="propertyChange")]
      public function get talkClick() : SWFLoader
      {
         return this._1762743236talkClick;
      }
      
      public function show(talkId:String, showBattle:Boolean = false) : void
      {
         rightHead.scaleX = -1;
         talks = Global.battleTalkContents[talkId];
         visible = true;
         talkClick.source = "../assets/images/UI/Button/battleTalkClick.swf";
         _showBattle = showBattle;
         if(talks)
         {
            showNext();
         }
         else
         {
            hide();
         }
      }
      
      public function set rightHead(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._1569483236rightHead;
         if(_loc2_ !== param1)
         {
            this._1569483236rightHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightHead",_loc2_,param1));
         }
      }
   }
}


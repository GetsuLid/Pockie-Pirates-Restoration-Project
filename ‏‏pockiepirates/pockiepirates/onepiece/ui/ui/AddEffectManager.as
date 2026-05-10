package ui
{
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
   import mx.controls.Image;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.events.EffectEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   public class AddEffectManager extends Canvas
   {
      
      private var success:Class = AddEffectManager_success;
      
      private var fapai:Class = AddEffectManager_fapai;
      
      private var indicator:Class = AddEffectManager_indicator;
      
      private var dragon:Class = AddEffectManager_dragon;
      
      private var submit:Class = AddEffectManager_submit;
      
      private var openReward:Class = AddEffectManager_openReward;
      
      private var smelt:Class = AddEffectManager_smelt;
      
      private var upgrade:Class = AddEffectManager_upgrade;
      
      private var fail:Class = AddEffectManager_fail;
      
      private var star1:Class = AddEffectManager_star1;
      
      private var shipwin:Class = AddEffectManager_shipwin;
      
      private var goldAdd:Class = AddEffectManager_goldAdd;
      
      private var star2:Class = AddEffectManager_star2;
      
      private var star3:Class = AddEffectManager_star3;
      
      private var Scene2001:Class = AddEffectManager_Scene2001;
      
      private var Scene2004:Class = AddEffectManager_Scene2004;
      
      private var Scene2005:Class = AddEffectManager_Scene2005;
      
      private var fightMovie1:Class = AddEffectManager_fightMovie1;
      
      private var Scene2003:Class = AddEffectManager_Scene2003;
      
      private var Scene2006:Class = AddEffectManager_Scene2006;
      
      private var fightMovie2:Class = AddEffectManager_fightMovie2;
      
      private var fightMovie3:Class = AddEffectManager_fightMovie3;
      
      private var Scene2002:Class = AddEffectManager_Scene2002;
      
      private var dcrit:Class = AddEffectManager_dcrit;
      
      private var armyShow:Class = AddEffectManager_armyShow;
      
      private var cookCrit:Class = AddEffectManager_cookCrit;
      
      private var expAdd:Class = AddEffectManager_expAdd;
      
      private var SeaLv:Class = AddEffectManager_SeaLv;
      
      private var onepiece:Class = AddEffectManager_onepiece;
      
      private var cut:Class = AddEffectManager_cut;
      
      private var Scene2009:Class = AddEffectManager_Scene2009;
      
      private var Scene2010:Class = AddEffectManager_Scene2010;
      
      private var skillOpen:Class = AddEffectManager_skillOpen;
      
      private var Scene2008:Class = AddEffectManager_Scene2008;
      
      private var fingerLose:Class = AddEffectManager_fingerLose;
      
      private var Scene2011:Class = AddEffectManager_Scene2011;
      
      private var shiploss:Class = AddEffectManager_shiploss;
      
      private var Scene2012:Class = AddEffectManager_Scene2012;
      
      private var Scene2007:Class = AddEffectManager_Scene2007;
      
      private var jinjie4:Class = AddEffectManager_jinjie4;
      
      private var cookYes:Class = AddEffectManager_cookYes;
      
      private var rise1:Class = AddEffectManager_rise1;
      
      private var rise2:Class = AddEffectManager_rise2;
      
      private var Scene3001:Class = AddEffectManager_Scene3001;
      
      private var TreasureWin:Class = AddEffectManager_TreasureWin;
      
      private var S2002:Class = AddEffectManager_S2002;
      
      private var jinjie3:Class = AddEffectManager_jinjie3;
      
      private var S2004:Class = AddEffectManager_S2004;
      
      private var _1177840214item_con:Canvas;
      
      private var S2007:Class = AddEffectManager_S2007;
      
      private var S2001:Class = AddEffectManager_S2001;
      
      private var Scene3002:Class = AddEffectManager_Scene3002;
      
      private var allBlue:Class = AddEffectManager_allBlue;
      
      private var TreasureLose:Class = AddEffectManager_TreasureLose;
      
      private var S2006:Class = AddEffectManager_S2006;
      
      private var S2008:Class = AddEffectManager_S2008;
      
      private var S2009:Class = AddEffectManager_S2009;
      
      private var fanpai:Class = AddEffectManager_fanpai;
      
      private var voyageClick:Class = AddEffectManager_voyageClick;
      
      private var S2003:Class = AddEffectManager_S2003;
      
      private var S2005:Class = AddEffectManager_S2005;
      
      private var S2010:Class = AddEffectManager_S2010;
      
      private var S2011:Class = AddEffectManager_S2011;
      
      private var S2012:Class = AddEffectManager_S2012;
      
      private var S2013:Class = AddEffectManager_S2013;
      
      private var hd001:Class = AddEffectManager_hd001;
      
      private var hd002:Class = AddEffectManager_hd002;
      
      private var hd003:Class = AddEffectManager_hd003;
      
      private var fingerWin:Class = AddEffectManager_fingerWin;
      
      private var S2014:Class = AddEffectManager_S2014;
      
      private var moneyAdd:Class = AddEffectManager_moneyAdd;
      
      private var Collection:Class = AddEffectManager_Collection;
      
      private var showerList:Array = new Array();
      
      private var _98690con:UIComponent;
      
      private var crit:Class = AddEffectManager_crit;
      
      private var _1991502484skill_con:Canvas;
      
      private var fingerWin1:Class = AddEffectManager_fingerWin1;
      
      private var BattleBegins:Class = AddEffectManager_BattleBegins;
      
      private var heroLevelUp:Class = AddEffectManager_heroLevelUp;
      
      private var HlevelUp:Class = AddEffectManager_HlevelUp;
      
      private var UpgrateLevel:Class = AddEffectManager_UpgrateLevel;
      
      private var hc:Class = AddEffectManager_hc;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"con"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"item_con",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":1000,
                        "height":600
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"skill_con",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":1000,
                        "height":600
                     };
                  }
               })]
            };
         }
      });
      
      public function AddEffectManager()
      {
         super();
         mx_internal::_document = this;
         this.width = 1000;
         this.height = 600;
         this.mouseEnabled = false;
      }
      
      public function set con(param1:UIComponent) : void
      {
         var _loc2_:Object = this._98690con;
         if(_loc2_ !== param1)
         {
            this._98690con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con",_loc2_,param1));
         }
      }
      
      public function addItem(url:String, posi:int) : void
      {
         var img:Image = new Image();
         img.source = url;
         item_con.addChild(img);
         var _move:Move = new Move(img);
         _move.xFrom = 450 + posi * 60;
         _move.yFrom = 290;
         _move.xTo = 598;
         _move.yTo = 555;
         _move.duration = 1500;
         _move.addEventListener(EffectEvent.EFFECT_END,moveEnd);
         _move.play();
      }
      
      public function addSkill(url:String) : void
      {
         var img:Image = new Image();
         img.source = url;
         skill_con.addChild(img);
         var _move:Move = new Move(img);
         _move.xFrom = 450;
         _move.yFrom = 290;
         _move.xTo = 513;
         _move.yTo = 555;
         _move.duration = 1500;
         _move.addEventListener(EffectEvent.EFFECT_END,moveSkillEnd);
         _move.play();
      }
      
      [Bindable(event="propertyChange")]
      public function get item_con() : Canvas
      {
         return this._1177840214item_con;
      }
      
      private function nextFrame(event:Event) : void
      {
         var shower:EffectShower = null;
         var i:int = 0;
         var mc:MovieClip = null;
         var _arr:Array = new Array();
         for each(shower in showerList)
         {
            mc = shower.mc;
            if(mc.currentFrame == mc.totalFrames)
            {
               shower.stop();
               _arr.push(showerList.indexOf(shower));
            }
         }
         for(i = 0; i < _arr.length; i++)
         {
            showerList.splice(_arr[i] - i,1);
         }
         if(!showerList.length)
         {
            removeEventListener(Event.ENTER_FRAME,nextFrame);
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get con() : UIComponent
      {
         return this._98690con;
      }
      
      private function moveEnd(e:EffectEvent) : void
      {
         item_con.removeChild((e.target as Move).target as Image);
         (e.target as Move).removeEventListener(EffectEvent.EFFECT_END,moveEnd);
         HttpServerManager.getInstance().callServer("itemService","item",DataManager.Instance.parcel.resolveItems,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function moveSkillEnd(e:EffectEvent) : void
      {
         skill_con.removeChild((e.target as Move).target as Image);
         (e.target as Move).removeEventListener(EffectEvent.EFFECT_END,moveSkillEnd);
      }
      
      public function set skill_con(param1:Canvas) : void
      {
         var _loc2_:Object = this._1991502484skill_con;
         if(_loc2_ !== param1)
         {
            this._1991502484skill_con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill_con",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill_con() : Canvas
      {
         return this._1991502484skill_con;
      }
      
      public function set item_con(param1:Canvas) : void
      {
         var _loc2_:Object = this._1177840214item_con;
         if(_loc2_ !== param1)
         {
            this._1177840214item_con = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item_con",_loc2_,param1));
         }
      }
      
      public function showEffect(url:String, x:int = 400, y:int = 200, func:Function = null, autoHide:Boolean = true, index:int = 0) : void
      {
         var mc:MovieClip = null;
         var shower:EffectShower = new EffectShower(func,index);
         try
         {
            mc = new this[url]();
         }
         catch(e:Error)
         {
         }
         if(mc)
         {
            mc.gotoAndPlay(1);
            mc.x = x;
            mc.y = y;
            con.addChild(mc);
            if(!hasEventListener(Event.ENTER_FRAME))
            {
               addEventListener(Event.ENTER_FRAME,nextFrame);
            }
            shower.mc = mc;
            showerList.push(shower);
         }
         else
         {
            shower.stop();
         }
         mouseChildren = !autoHide;
      }
   }
}


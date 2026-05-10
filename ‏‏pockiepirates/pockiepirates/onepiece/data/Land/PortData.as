package data.Land
{
   import constant.Global;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   import lang.UILang;
   import manager.DataManager;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import server.HttpServerManager;
   
   public class PortData implements IEventDispatcher
   {
      
      private var _1851386112cfgPortId:int;
      
      private var _1019029504requireVoyageLevel:int;
      
      private var _2129529190belongNation:String;
      
      private var _1097013520lordId:int;
      
      private var _520741125portExtend:String;
      
      private var _belongLegion:int;
      
      private var _belongNation:int;
      
      private var _1992012396duration:int;
      
      private var _1721513316belongColor:int;
      
      private var backGound:String;
      
      private var _3645871west:Number = 0;
      
      private var _662212446westOwnedDegree:Number = 0;
      
      private var _3105789east:Number = 0;
      
      private var _728194732portName:String;
      
      private var _data:Object;
      
      private var _1106570438legion:String;
      
      private var _portExtend:int;
      
      private var _98681coe:Number;
      
      private var topGound:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _99333def:int;
      
      private var _2075577689belongLegion:String;
      
      private var _6106732eastOwnedDegree:Number = 0;
      
      private var _114603tax:int;
      
      private var _tax:int;
      
      private var _1146830912business:int;
      
      public function PortData()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get cfgPortId() : int
      {
         return this._1851386112cfgPortId;
      }
      
      public function set east(value:Number) : void
      {
         var oldValue:Object = this._3105789east;
         if(oldValue !== value)
         {
            this._3105789east = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"east",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get def() : int
      {
         return this._99333def;
      }
      
      public function set cfgPortId(value:int) : void
      {
         var oldValue:Object = this._1851386112cfgPortId;
         if(oldValue !== value)
         {
            this._1851386112cfgPortId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cfgPortId",oldValue,value));
         }
      }
      
      public function set def(value:int) : void
      {
         var oldValue:Object = this._99333def;
         if(oldValue !== value)
         {
            this._99333def = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"def",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requireVoyageLevel() : int
      {
         return this._1019029504requireVoyageLevel;
      }
      
      public function set requireVoyageLevel(value:int) : void
      {
         var oldValue:Object = this._1019029504requireVoyageLevel;
         if(oldValue !== value)
         {
            this._1019029504requireVoyageLevel = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requireVoyageLevel",oldValue,value));
         }
      }
      
      public function refreshData(e:ResultEvent = null) : void
      {
         var dic:Dictionary = Global.portDic;
         var id:int = DataManager.Instance.portId;
         _data = dic[id];
         lordId = _data.lordId;
         cfgPortId = _data.cfgPortId;
         portName = _data.portName;
         requireVoyageLevel = _data.requireVoyageLevel;
         _portExtend = _data.scale;
         coe = _data.coe;
         if(e)
         {
            if(e.result.hasOwnProperty("owned_east"))
            {
               east = e.result.owned_east;
               eastOwnedDegree = getAnyUp2(e.result.owned_east);
            }
            else
            {
               east = e.result.east_owned_degree;
               eastOwnedDegree = getAnyUp2(e.result.east_owned_degree);
            }
            if(e.result.hasOwnProperty("owned_west"))
            {
               west = e.result.owned_west;
               westOwnedDegree = getAnyUp2(e.result.owned_west);
            }
            else
            {
               west = e.result.west_owned_degree;
               westOwnedDegree = getAnyUp2(e.result.west_owned_degree);
            }
            business = int((east + west) / 10000);
            def = int(business / 5);
            duration = e.result.duration;
         }
         portExtend = getPortExtend();
         belongNation = getBelongNation();
         tax = getTax();
      }
      
      public function set eastOwnedDegree(value:Number) : void
      {
         var oldValue:Object = this._6106732eastOwnedDegree;
         if(oldValue !== value)
         {
            this._6106732eastOwnedDegree = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eastOwnedDegree",oldValue,value));
         }
      }
      
      public function set duration(value:int) : void
      {
         var oldValue:Object = this._1992012396duration;
         if(oldValue !== value)
         {
            this._1992012396duration = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"duration",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get legion() : String
      {
         return this._1106570438legion;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(event);
      }
      
      public function set westOwnedDegree(value:Number) : void
      {
         var oldValue:Object = this._662212446westOwnedDegree;
         if(oldValue !== value)
         {
            this._662212446westOwnedDegree = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"westOwnedDegree",oldValue,value));
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, weakRef:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(type,listener,useCapture,priority,weakRef);
      }
      
      public function set tax(value:int) : void
      {
         var oldValue:Object = this._114603tax;
         if(oldValue !== value)
         {
            this._114603tax = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tax",oldValue,value));
         }
      }
      
      public function set portName(value:String) : void
      {
         var oldValue:Object = this._728194732portName;
         if(oldValue !== value)
         {
            this._728194732portName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get belongLegion() : String
      {
         return this._2075577689belongLegion;
      }
      
      private function getAnyUp2(value:Number) : Number
      {
         var i:Number = NaN;
         var xi:Number = NaN;
         if(value == 0)
         {
            return 0;
         }
         i = 0;
         xi = DataManager.Instance.portData.coe;
         if(east + west < 200000000 * DataManager.Instance.portData.coe)
         {
            i = Number((Math.round(value / (xi * 200000000) * 100 * 10) / 10).toFixed(1));
         }
         else
         {
            i = Number((Math.round(value / (east + west) * 100 * 10) / 10).toFixed(1));
         }
         return i;
      }
      
      [Bindable(event="propertyChange")]
      public function get belongColor() : int
      {
         return this._1721513316belongColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get belongNation() : String
      {
         return this._2129529190belongNation;
      }
      
      public function set west(value:Number) : void
      {
         var oldValue:Object = this._3645871west;
         if(oldValue !== value)
         {
            this._3645871west = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"west",oldValue,value));
         }
      }
      
      public function getTax() : int
      {
         if(belongNation == DataManager.Instance.role.nation)
         {
            _tax = 0;
         }
         else
         {
            _tax = 20;
         }
         return _tax;
      }
      
      [Bindable(event="propertyChange")]
      public function get coe() : Number
      {
         return this._98681coe;
      }
      
      public function set legion(value:String) : void
      {
         var oldValue:Object = this._1106570438legion;
         if(oldValue !== value)
         {
            this._1106570438legion = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"legion",oldValue,value));
         }
      }
      
      public function set business(value:int) : void
      {
         var oldValue:Object = this._1146830912business;
         if(oldValue !== value)
         {
            this._1146830912business = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"business",oldValue,value));
         }
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(type);
      }
      
      [Bindable(event="propertyChange")]
      public function get eastOwnedDegree() : Number
      {
         return this._6106732eastOwnedDegree;
      }
      
      [Bindable(event="propertyChange")]
      public function get duration() : int
      {
         return this._1992012396duration;
      }
      
      [Bindable(event="propertyChange")]
      public function get westOwnedDegree() : Number
      {
         return this._662212446westOwnedDegree;
      }
      
      [Bindable(event="propertyChange")]
      public function get tax() : int
      {
         return this._114603tax;
      }
      
      [Bindable(event="propertyChange")]
      public function get west() : Number
      {
         return this._3645871west;
      }
      
      public function set belongLegion(value:String) : void
      {
         var oldValue:Object = this._2075577689belongLegion;
         if(oldValue !== value)
         {
            this._2075577689belongLegion = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"belongLegion",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get portName() : String
      {
         return this._728194732portName;
      }
      
      [Bindable(event="propertyChange")]
      public function get business() : int
      {
         return this._1146830912business;
      }
      
      public function set belongColor(value:int) : void
      {
         var oldValue:Object = this._1721513316belongColor;
         if(oldValue !== value)
         {
            this._1721513316belongColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"belongColor",oldValue,value));
         }
      }
      
      public function getBelongLegion() : String
      {
         return null;
      }
      
      public function set belongNation(value:String) : void
      {
         var oldValue:Object = this._2129529190belongNation;
         if(oldValue !== value)
         {
            this._2129529190belongNation = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"belongNation",oldValue,value));
         }
      }
      
      public function getBelongNation() : String
      {
         var str:String = null;
         if(eastOwnedDegree == westOwnedDegree || eastOwnedDegree < 50 && westOwnedDegree < 50)
         {
            str = UILang.Neutrality;
            belongColor = 65280;
         }
         else if(eastOwnedDegree > westOwnedDegree)
         {
            str = UILang.EastOwnedDegree;
            belongColor = 46335;
         }
         else
         {
            str = UILang.WestOwnedDegree;
            belongColor = 16711680;
         }
         return str;
      }
      
      public function set lordId(value:int) : void
      {
         var oldValue:Object = this._1097013520lordId;
         if(oldValue !== value)
         {
            this._1097013520lordId = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lordId",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lordId() : int
      {
         return this._1097013520lordId;
      }
      
      public function getPortExtend() : String
      {
         var str:String = null;
         switch(_portExtend)
         {
            case 1:
               str = UILang.SmallSized;
               break;
            case 2:
               str = UILang.Medium;
               break;
            case 3:
               str = UILang.Big;
               break;
            case 4:
               str = UILang.Huge;
         }
         return str;
      }
      
      public function set coe(value:Number) : void
      {
         var oldValue:Object = this._98681coe;
         if(oldValue !== value)
         {
            this._98681coe = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coe",oldValue,value));
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(type);
      }
      
      public function set portExtend(value:String) : void
      {
         var oldValue:Object = this._520741125portExtend;
         if(oldValue !== value)
         {
            this._520741125portExtend = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"portExtend",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get portExtend() : String
      {
         return this._520741125portExtend;
      }
      
      public function refreshPort() : void
      {
         HttpServerManager.getInstance().callServer("voyageService","portInvestment",refreshData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      [Bindable(event="propertyChange")]
      public function get east() : Number
      {
         return this._3105789east;
      }
   }
}


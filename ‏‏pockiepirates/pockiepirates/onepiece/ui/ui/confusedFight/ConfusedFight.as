package ui.confusedFight
{
   import ExtendComp.ChangeLabel;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowLabel;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import events.GuideEvent;
   import events.NavigationEvent;
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
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.EffectShower;
   
   use namespace mx_internal;
   
   public class ConfusedFight extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _487590207showEffectCount:int;
      
      public var _ConfusedFight_ChangeLabel1:ChangeLabel;
      
      public var _ConfusedFight_SWFLoader32:SWFLoader;
      
      public var _ConfusedFight_SWFLoader33:SWFLoader;
      
      public var _ConfusedFight_SWFLoader34:SWFLoader;
      
      public var _ConfusedFight_SWFLoader36:SWFLoader;
      
      public var _ConfusedFight_SWFLoader38:SWFLoader;
      
      public var _ConfusedFight_ChangeLabel3:ChangeLabel;
      
      public var _ConfusedFight_SWFLoader37:SWFLoader;
      
      public var _ConfusedFight_SWFLoader39:SWFLoader;
      
      mx_internal var _bindings:Array = [];
      
      public var _ConfusedFight_SWFLoader40:SWFLoader;
      
      public var _ConfusedFight_SWFLoader41:SWFLoader;
      
      public var _ConfusedFight_SWFLoader42:SWFLoader;
      
      public var _ConfusedFight_SWFLoader43:SWFLoader;
      
      public var _ConfusedFight_SWFLoader44:SWFLoader;
      
      public var _ConfusedFight_SWFLoader45:SWFLoader;
      
      public var _ConfusedFight_SWFLoader46:SWFLoader;
      
      public var _ConfusedFight_SWFLoader47:SWFLoader;
      
      mx_internal var _watchers:Array = [];
      
      private var _2035905613goldCost:int;
      
      private var _268700602cardFace3:Boolean;
      
      private var _1184239200index2:int;
      
      private var _1665560895changeState:Boolean;
      
      private var _107867mc1:MovieClip;
      
      private var _1422950858action:int = 2;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1184239199index3:int;
      
      private var _91026547_kind:int;
      
      private var _555563963kindDesc:String;
      
      private var _1716448674effecting3:Boolean;
      
      private var _268700604cardFace1:Boolean;
      
      private var _1184239196index6:int;
      
      private var _107868mc2:MovieClip;
      
      private var _1716448677effecting6:Boolean;
      
      private var _1507612264currentFallFreeAmount:int;
      
      private var _1716448672effecting1:Boolean;
      
      private var _104276050mwBtn:Button;
      
      private var _109446num:int;
      
      private var _3575610type:int;
      
      private var _268700601cardFace4:Boolean;
      
      private var _1184239198index4:int;
      
      private var _1716448675effecting4:Boolean;
      
      private var _150231406turnCount:int;
      
      private var _1161464069centerCard:SWFLoader;
      
      private var _1255039140rewardExploit:int;
      
      private var _614151128changeAmount:int;
      
      private var _268700603cardFace2:Boolean;
      
      private var _1455231121changeArr:Array = new Array();
      
      private var _1322522232tempKind:int;
      
      public var _ConfusedFight_Button2:Button;
      
      private var _1184239201index1:int;
      
      private var _268700599cardFace6:Boolean;
      
      private var _782498304fameCost:int;
      
      private var mc:MovieClip;
      
      public var _ConfusedFight_GlowLabel23:GlowLabel;
      
      public var _ConfusedFight_GlowLabel24:GlowLabel;
      
      public var _ConfusedFight_GlowLabel25:GlowLabel;
      
      public var _ConfusedFight_GlowLabel26:GlowLabel;
      
      public var _ConfusedFight_GlowLabel27:GlowLabel;
      
      public var _ConfusedFight_GlowLabel28:GlowLabel;
      
      public var _ConfusedFight_GlowLabel29:GlowLabel;
      
      private var _1448410841currentIndex:int;
      
      private var _1437766942textEffect:Boolean;
      
      public var _ConfusedFight_GlowLabel30:GlowLabel;
      
      public var _ConfusedFight_GlowLabel32:GlowLabel;
      
      public var _ConfusedFight_GlowLabel33:GlowLabel;
      
      public var _ConfusedFight_GlowLabel34:GlowLabel;
      
      public var _ConfusedFight_GlowLabel35:GlowLabel;
      
      public var _ConfusedFight_GlowLabel36:GlowLabel;
      
      public var _ConfusedFight_GlowLabel37:GlowLabel;
      
      public var _ConfusedFight_GlowLabel38:GlowLabel;
      
      public var _ConfusedFight_GlowLabel39:GlowLabel;
      
      private var _2129055307btnEffecting:Boolean;
      
      public var _ConfusedFight_SWFLoader10:SWFLoader;
      
      private var _204220892goldBtn:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ConfusedFight_GlowLabel31:GlowLabel;
      
      public var _ConfusedFight_SWFLoader5:SWFLoader;
      
      public var _ConfusedFight_SWFLoader6:SWFLoader;
      
      public var _ConfusedFight_SWFLoader7:SWFLoader;
      
      public var _ConfusedFight_SWFLoader9:SWFLoader;
      
      public var _ConfusedFight_GlowLabel41:GlowLabel;
      
      public var _ConfusedFight_GlowLabel43:GlowLabel;
      
      public var _ConfusedFight_GlowLabel1:GlowLabel;
      
      public var _ConfusedFight_GlowLabel2:GlowLabel;
      
      public var _ConfusedFight_GlowLabel40:GlowLabel;
      
      public var _ConfusedFight_GlowLabel4:GlowLabel;
      
      public var _ConfusedFight_GlowLabel42:GlowLabel;
      
      public var _ConfusedFight_GlowLabel6:GlowLabel;
      
      public var _ConfusedFight_GlowLabel44:GlowLabel;
      
      public var _ConfusedFight_GlowLabel45:GlowLabel;
      
      public var _ConfusedFight_SWFLoader8:SWFLoader;
      
      public var _ConfusedFight_GlowLabel3:GlowLabel;
      
      public var _ConfusedFight_GlowLabel5:GlowLabel;
      
      public var _ConfusedFight_GlowLabel7:GlowLabel;
      
      public var _ConfusedFight_GlowLabel8:GlowLabel;
      
      public var _ConfusedFight_SWFLoader25:SWFLoader;
      
      public var _ConfusedFight_SWFLoader26:SWFLoader;
      
      private var _1716448676effecting5:Boolean;
      
      public var _ConfusedFight_SWFLoader28:SWFLoader;
      
      private var _1049030661todayFreeAmount:int;
      
      private var widthNum:int = 82;
      
      public var _ConfusedFight_SWFLoader4:SWFLoader;
      
      private var _3392876num2:int;
      
      public var _ConfusedFight_SWFLoader27:SWFLoader;
      
      private var _1709164325rewardDiamond:int;
      
      private var _268700600cardFace5:Boolean;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":MoveContainer,
         "propertiesFactory":function():Object
         {
            return {
               "width":760,
               "height":465,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/bgLeft.png",
                        "x":16,
                        "y":46
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/bgRight.png",
                        "x":206,
                        "y":46
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/confusedFight.png",
                        "x":17,
                        "y":6
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":165,
                        "x":216,
                        "width":514,
                        "height":196
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":79,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "x":26,
                        "y":78
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":131,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "y":130,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":183,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "y":182,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":235,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader7",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "y":234,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":287,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader8",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "y":286,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":339,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "y":338,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border211",
                        "y":391,
                        "x":26,
                        "width":162,
                        "height":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader10",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/select.swf",
                        "y":390,
                        "x":26
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776116;
                     this.fontSize = 12;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":51,
                        "x":39,
                        "width":137
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":82,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":134,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel4",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":186,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel5",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":238,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel6",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":290,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel7",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":342,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel8",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":394,
                        "x":31,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":107
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":159
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":263
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":315
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":367
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":31,
                        "y":419
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":127,
                        "y":106
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":127,
                        "y":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":127,
                        "y":210
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":127,
                        "y":262
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":127,
                        "y":314
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":127,
                        "y":366
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"200000",
                        "y":106,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"80000",
                        "y":158,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"40000",
                        "y":210,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"16000",
                        "y":262,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"4000",
                        "y":314,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"2000",
                        "y":366,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"1000",
                        "y":418,
                        "x":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"100",
                        "y":106,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"50",
                        "y":158,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"20",
                        "y":210,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"10",
                        "y":262,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"5",
                        "y":314,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"1",
                        "y":366,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/lufeiLittle.png",
                        "x":122,
                        "y":82
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"*6",
                        "y":84,
                        "x":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel23",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":135,
                        "x":125,
                        "width":70
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel24",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":187,
                        "x":125,
                        "width":70
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel25",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":239,
                        "x":125,
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel26",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":291,
                        "x":125,
                        "width":70
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel27",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":343,
                        "x":125,
                        "width":70
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel28",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":395,
                        "x":125,
                        "width":70
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader25",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond2.png",
                        "x":214,
                        "y":51
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader26",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/gold.png",
                        "x":214,
                        "y":74
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader27",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":214,
                        "y":95
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader28",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Border/fame.png",
                        "x":212,
                        "y":115
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_ConfusedFight_ChangeLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "y":52,
                        "width":71
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_ConfusedFight_ChangeLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "y":74,
                        "width":71
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_ConfusedFight_ChangeLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "y":95,
                        "width":71
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ChangeLabel,
                  "id":"_ConfusedFight_ChangeLabel4",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "y":116,
                        "width":71
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/reward.png",
                        "x":340,
                        "y":81
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/exploit.png",
                        "x":392,
                        "y":118
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/diamond.png",
                        "x":507,
                        "y":118
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel29",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":413,
                        "y":118
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel30",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":526,
                        "y":118
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel31",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontWeight = "normal";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":580,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel32",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontWeight = "normal";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":580,
                        "y":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel33",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontWeight = "normal";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":580,
                        "y":94
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel34",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                     this.fontWeight = "bold";
                     this.fontSize = 14;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":701,
                        "y":50,
                        "width":41
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel35",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                     this.fontWeight = "bold";
                     this.fontSize = 14;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":701,
                        "y":72,
                        "width":41
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel36",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                     this.fontWeight = "bold";
                     this.fontSize = 14;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":701,
                        "y":94,
                        "width":41
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel37",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 14;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":326,
                        "x":388,
                        "width":170
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel38",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 23;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":172,
                        "x":388,
                        "width":170
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___ConfusedFight_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button256",
                        "y":372,
                        "x":217
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_ConfusedFight_Button2",
                  "events":{"click":"___ConfusedFight_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button205",
                        "y":372,
                        "x":430,
                        "height":36,
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader32",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/begin.png",
                        "x":454,
                        "y":381,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader33",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/change.png",
                        "x":442,
                        "y":381,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader34",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/get.png",
                        "x":434,
                        "y":381,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel39",
                  "stylesFactory":function():void
                  {
                     this.color = 7536594;
                     this.fontSize = 20;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":470,
                        "y":375,
                        "width":86,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel40",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":411,
                        "x":378,
                        "width":190
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel41",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":411,
                        "x":378,
                        "width":190
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel42",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":411,
                        "x":378,
                        "width":190
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel43",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":411,
                        "x":378,
                        "width":190
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"centerCard",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "visible":false,
                        "x":433,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader36",
                  "events":{"click":"___ConfusedFight_SWFLoader36_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":225,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader37",
                  "events":{"click":"___ConfusedFight_SWFLoader37_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":308,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader38",
                  "events":{"click":"___ConfusedFight_SWFLoader38_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":390,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader39",
                  "events":{"click":"___ConfusedFight_SWFLoader39_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":474,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader40",
                  "events":{"click":"___ConfusedFight_SWFLoader40_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":556,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader41",
                  "events":{"click":"___ConfusedFight_SWFLoader41_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":640,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader42",
                  "events":{"click":"___ConfusedFight_SWFLoader42_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "x":225,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader43",
                  "events":{"click":"___ConfusedFight_SWFLoader43_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "x":308,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader44",
                  "events":{"click":"___ConfusedFight_SWFLoader44_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "x":390,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader45",
                  "events":{"click":"___ConfusedFight_SWFLoader45_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "x":474,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader46",
                  "events":{"click":"___ConfusedFight_SWFLoader46_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "x":556,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"_ConfusedFight_SWFLoader47",
                  "events":{"click":"___ConfusedFight_SWFLoader47_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/0.png",
                        "x":640,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"goldBtn",
                  "events":{"click":"__goldBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1001",
                        "x":550,
                        "y":371
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"mwBtn",
                  "events":{"click":"__mwBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button1001",
                        "x":550,
                        "y":391
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel44",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":570,
                        "y":371
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_ConfusedFight_GlowLabel45",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":570,
                        "y":391
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "events":{"complete":"___ConfusedFight_SWFLoader48_complete"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/ConfusedFight/fapai.swf",
                        "x":214,
                        "y":211
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___ConfusedFight_Button5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button114",
                        "x":727,
                        "y":8
                     };
                  }
               })]
            };
         }
      });
      
      private var _1184239197index5:int;
      
      private var _1716448673effecting2:Boolean;
      
      public var _ConfusedFight_ChangeLabel2:ChangeLabel;
      
      public var _ConfusedFight_ChangeLabel4:ChangeLabel;
      
      public function ConfusedFight()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "Border112";
         this.positionByHand = true;
         this.x = 125;
         this.y = 50;
         this.width = 760;
         this.height = 465;
         this.canMove = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ConfusedFight._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get index1() : int
      {
         return this._1184239201index1;
      }
      
      [Bindable(event="propertyChange")]
      private function get effecting6() : Boolean
      {
         return this._1716448677effecting6;
      }
      
      private function _ConfusedFight_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _kind == 1 && !textEffect;
         _loc1_ = _kind == 2 && !textEffect;
         _loc1_ = _kind == 3 && !textEffect;
         _loc1_ = _kind == 4 && !textEffect;
         _loc1_ = _kind == 5 && !textEffect;
         _loc1_ = _kind == 6 && !textEffect;
         _loc1_ = _kind == 7 && !textEffect;
         _loc1_ = UILang.Fight1;
         _loc1_ = UILang.Fight2;
         _loc1_ = UILang.Fight3;
         _loc1_ = UILang.Fight4;
         _loc1_ = UILang.Fight5;
         _loc1_ = UILang.Fight6;
         _loc1_ = UILang.Fight7;
         _loc1_ = UILang.Fight8;
         _loc1_ = UILang.Fight9;
         _loc1_ = UILang.Fight10;
         _loc1_ = UILang.Fight11;
         _loc1_ = UILang.Fight12;
         _loc1_ = UILang.Fight13;
         _loc1_ = UILang.Fight14;
         _loc1_ = UILang.Diamond + "" + DataManager.Instance.diamond;
         _loc1_ = UILang.Gold + "" + DataManager.Instance.parcel.gold;
         _loc1_ = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
         _loc1_ = UILang.Fame2 + "" + DataManager.Instance.parcel.fame;
         _loc1_ = DataManager.Instance.allBlueColosseum;
         _loc1_ = DataManager.Instance.diamond;
         _loc1_ = DataManager.Instance.parcel.gold;
         _loc1_ = DataManager.Instance.role.exploit;
         _loc1_ = DataManager.Instance.parcel.fame;
         _loc1_ = DataManager.Instance.allBlueColosseum;
         _loc1_ = rewardExploit;
         _loc1_ = !textEffect;
         _loc1_ = rewardDiamond;
         _loc1_ = !textEffect;
         _loc1_ = UILang.Fight16 + ":";
         _loc1_ = UILang.Fight17 + ":";
         _loc1_ = UILang.Fight35 + ":";
         _loc1_ = 2 - todayFreeAmount >= 0 ? 2 - todayFreeAmount : 0;
         _loc1_ = 1 - currentFallFreeAmount >= 0 ? 1 - currentFallFreeAmount : 0;
         _loc1_ = turnCount;
         _loc1_ = UILang.Fight18;
         _loc1_ = action != 1;
         _loc1_ = kindDesc;
         _loc1_ = action != 1 && !textEffect;
         _loc1_ = !btnEffecting;
         _loc1_ = action == 1;
         _loc1_ = action == 2 && changeAmount != 0;
         _loc1_ = action == 2 && changeAmount == 0;
         _loc1_ = changeAmount;
         _loc1_ = action == 2 && changeAmount != 0;
         _loc1_ = UILang.Fight19.replace("*",goldCost);
         _loc1_ = action == 2 && type == 9 && changeAmount != 0 && todayFreeAmount < 10;
         _loc1_ = UILang.Fight32.replace("*",fameCost);
         _loc1_ = action == 2 && type == 10 && changeAmount != 0 && todayFreeAmount < 10;
         _loc1_ = UILang.Fight33.replace("*",num);
         _loc1_ = action == 1 && num > 0 && todayFreeAmount >= 2 && todayFreeAmount < 10;
         _loc1_ = UILang.Fight34.replace("*",num2);
         _loc1_ = action == 1 && num2 > 0 && todayFreeAmount >= 2 && todayFreeAmount < 10;
         _loc1_ = "../assets/images/UI/ConfusedFight/" + index1 + ".png";
         _loc1_ = cardFace1 && !effecting1;
         _loc1_ = "../assets/images/UI/ConfusedFight/" + index2 + ".png";
         _loc1_ = cardFace2 && !effecting2;
         _loc1_ = "../assets/images/UI/ConfusedFight/" + index3 + ".png";
         _loc1_ = cardFace3 && !effecting3;
         _loc1_ = "../assets/images/UI/ConfusedFight/" + index4 + ".png";
         _loc1_ = cardFace4 && !effecting4;
         _loc1_ = "../assets/images/UI/ConfusedFight/" + index5 + ".png";
         _loc1_ = cardFace5 && !effecting5;
         _loc1_ = "../assets/images/UI/ConfusedFight/" + index6 + ".png";
         _loc1_ = cardFace6 && !effecting6;
         _loc1_ = !cardFace1 && !effecting1;
         _loc1_ = !cardFace2 && !effecting2;
         _loc1_ = !cardFace3 && !effecting3;
         _loc1_ = !cardFace4 && !effecting4;
         _loc1_ = !cardFace5 && !effecting5;
         _loc1_ = !cardFace6 && !effecting6;
         _loc1_ = DataManager.Instance.allBlueColosseum && todayFreeAmount >= 2 && action == 1;
         _loc1_ = DataManager.Instance.allBlueColosseum && todayFreeAmount >= 2 && action == 1;
         _loc1_ = UILang.Fight28;
         _loc1_ = DataManager.Instance.allBlueColosseum && todayFreeAmount >= 2 && action == 1;
         _loc1_ = UILang.Fight29;
         _loc1_ = DataManager.Instance.allBlueColosseum && todayFreeAmount >= 2 && action == 1;
      }
      
      [Bindable(event="propertyChange")]
      private function get effecting5() : Boolean
      {
         return this._1716448676effecting5;
      }
      
      private function resolveChangeCard(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            changeState = true;
            refreshData();
         }
      }
      
      public function set goldBtn(param1:Button) : void
      {
         var _loc2_:Object = this._204220892goldBtn;
         if(_loc2_ !== param1)
         {
            this._204220892goldBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBtn",_loc2_,param1));
         }
      }
      
      public function ___ConfusedFight_SWFLoader44_click(event:MouseEvent) : void
      {
         itemClick(3);
      }
      
      public function ___ConfusedFight_Button1_click(event:MouseEvent) : void
      {
         openWin("diamondPanel");
      }
      
      private function resolveGetReward(e:ResultEvent) : void
      {
         var str:String = null;
         if(e.result.error_code == -1)
         {
            str = UILang.Fight23.replace("#",rewardExploit);
            if(rewardDiamond > 0)
            {
               str += UILang.Fight24.replace("$",rewardDiamond);
            }
            ShowResult.inst.showResult(-2,str);
            refreshData();
         }
      }
      
      public function ___ConfusedFight_SWFLoader48_complete(event:Event) : void
      {
         onComplete(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get todayFreeAmount() : int
      {
         return this._1049030661todayFreeAmount;
      }
      
      public function ___ConfusedFight_SWFLoader38_click(event:MouseEvent) : void
      {
         itemClick(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get action() : int
      {
         return this._1422950858action;
      }
      
      public function set centerCard(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._1161464069centerCard;
         if(_loc2_ !== param1)
         {
            this._1161464069centerCard = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerCard",_loc2_,param1));
         }
      }
      
      private function onComplete(e:Event) : void
      {
         mc = (e.target as SWFLoader).content as MovieClip;
         mc.stop();
         mc.visible = false;
      }
      
      private function itemClick(index:int) : void
      {
         var i:int = 0;
         if(this["effecting" + index] == false)
         {
            this["effecting" + index] = true;
            btnEffecting = true;
            ++showEffectCount;
            main.inst.showEffect("fanpai",350 + (index - 1) * widthNum,261,fanpaiFun,true,index);
            if(this["cardFace" + index])
            {
               ++changeAmount;
               changeArr.push(index);
               this["cardFace" + index] = false;
            }
            else
            {
               for(--changeAmount; i < changeArr.length; )
               {
                  if(index == changeArr[i])
                  {
                     changeArr.splice(i,1);
                  }
                  i++;
               }
               this["cardFace" + index] = true;
            }
            if(changeAmount < 0)
            {
               changeAmount = 0;
            }
            if(1 - currentFallFreeAmount <= 0)
            {
               if(goldCost != 0)
               {
                  type = 9;
               }
               else if(fameCost != 0)
               {
                  type = 10;
               }
            }
            else
            {
               type = 8;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get changeAmount() : int
      {
         return this._614151128changeAmount;
      }
      
      private function _ConfusedFight_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return _kind == 1 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader4.visible = param1;
         },"_ConfusedFight_SWFLoader4.visible");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _kind == 2 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader5.visible = param1;
         },"_ConfusedFight_SWFLoader5.visible");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _kind == 3 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader6.visible = param1;
         },"_ConfusedFight_SWFLoader6.visible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _kind == 4 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader7.visible = param1;
         },"_ConfusedFight_SWFLoader7.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _kind == 5 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader8.visible = param1;
         },"_ConfusedFight_SWFLoader8.visible");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _kind == 6 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader9.visible = param1;
         },"_ConfusedFight_SWFLoader9.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _kind == 7 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader10.visible = param1;
         },"_ConfusedFight_SWFLoader10.visible");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel1.text = param1;
         },"_ConfusedFight_GlowLabel1.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel2.text = param1;
         },"_ConfusedFight_GlowLabel2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel3.text = param1;
         },"_ConfusedFight_GlowLabel3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel4.text = param1;
         },"_ConfusedFight_GlowLabel4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel5.text = param1;
         },"_ConfusedFight_GlowLabel5.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel6.text = param1;
         },"_ConfusedFight_GlowLabel6.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel7.text = param1;
         },"_ConfusedFight_GlowLabel7.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel8.text = param1;
         },"_ConfusedFight_GlowLabel8.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight9;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel23.text = param1;
         },"_ConfusedFight_GlowLabel23.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight10;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel24.text = param1;
         },"_ConfusedFight_GlowLabel24.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight11;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel25.text = param1;
         },"_ConfusedFight_GlowLabel25.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight12;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel26.text = param1;
         },"_ConfusedFight_GlowLabel26.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight13;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel27.text = param1;
         },"_ConfusedFight_GlowLabel27.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight14;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel28.text = param1;
         },"_ConfusedFight_GlowLabel28.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Diamond + "" + DataManager.Instance.diamond;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_SWFLoader25.toolTip = param1;
         },"_ConfusedFight_SWFLoader25.toolTip");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Gold + "" + DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_SWFLoader26.toolTip = param1;
         },"_ConfusedFight_SWFLoader26.toolTip");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.SeriousFame + "" + DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_SWFLoader27.toolTip = param1;
         },"_ConfusedFight_SWFLoader27.toolTip");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fame2 + "" + DataManager.Instance.parcel.fame;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_SWFLoader28.toolTip = param1;
         },"_ConfusedFight_SWFLoader28.toolTip");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.allBlueColosseum;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader28.visible = param1;
         },"_ConfusedFight_SWFLoader28.visible");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.diamond;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_ChangeLabel1.text = param1;
         },"_ConfusedFight_ChangeLabel1.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.gold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_ChangeLabel2.text = param1;
         },"_ConfusedFight_ChangeLabel2.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.role.exploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_ChangeLabel3.text = param1;
         },"_ConfusedFight_ChangeLabel3.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = DataManager.Instance.parcel.fame;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_ChangeLabel4.text = param1;
         },"_ConfusedFight_ChangeLabel4.text");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.allBlueColosseum;
         },function(param1:Boolean):void
         {
            _ConfusedFight_ChangeLabel4.visible = param1;
         },"_ConfusedFight_ChangeLabel4.visible");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = rewardExploit;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel29.text = param1;
         },"_ConfusedFight_GlowLabel29.text");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel29.visible = param1;
         },"_ConfusedFight_GlowLabel29.visible");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = rewardDiamond;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel30.text = param1;
         },"_ConfusedFight_GlowLabel30.text");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel30.visible = param1;
         },"_ConfusedFight_GlowLabel30.visible");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight16 + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel31.text = param1;
         },"_ConfusedFight_GlowLabel31.text");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight17 + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel32.text = param1;
         },"_ConfusedFight_GlowLabel32.text");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight35 + ":";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel33.text = param1;
         },"_ConfusedFight_GlowLabel33.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 2 - todayFreeAmount >= 0 ? 2 - todayFreeAmount : 0;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel34.text = param1;
         },"_ConfusedFight_GlowLabel34.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = 1 - currentFallFreeAmount >= 0 ? 1 - currentFallFreeAmount : 0;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel35.text = param1;
         },"_ConfusedFight_GlowLabel35.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = turnCount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel36.text = param1;
         },"_ConfusedFight_GlowLabel36.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight18;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel37.text = param1;
         },"_ConfusedFight_GlowLabel37.text");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action != 1;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel37.visible = param1;
         },"_ConfusedFight_GlowLabel37.visible");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = kindDesc;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel38.text = param1;
         },"_ConfusedFight_GlowLabel38.text");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action != 1 && !textEffect;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel38.visible = param1;
         },"_ConfusedFight_GlowLabel38.visible");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !btnEffecting;
         },function(param1:Boolean):void
         {
            _ConfusedFight_Button2.enabled = param1;
         },"_ConfusedFight_Button2.enabled");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 1;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader32.visible = param1;
         },"_ConfusedFight_SWFLoader32.visible");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 2 && changeAmount != 0;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader33.visible = param1;
         },"_ConfusedFight_SWFLoader33.visible");
         result[47] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 2 && changeAmount == 0;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader34.visible = param1;
         },"_ConfusedFight_SWFLoader34.visible");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = changeAmount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel39.text = param1;
         },"_ConfusedFight_GlowLabel39.text");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 2 && changeAmount != 0;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel39.visible = param1;
         },"_ConfusedFight_GlowLabel39.visible");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight19.replace("*",goldCost);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel40.htmlText = param1;
         },"_ConfusedFight_GlowLabel40.htmlText");
         result[51] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 2 && type == 9 && changeAmount != 0 && todayFreeAmount < 10;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel40.visible = param1;
         },"_ConfusedFight_GlowLabel40.visible");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight32.replace("*",fameCost);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel41.htmlText = param1;
         },"_ConfusedFight_GlowLabel41.htmlText");
         result[53] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 2 && type == 10 && changeAmount != 0 && todayFreeAmount < 10;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel41.visible = param1;
         },"_ConfusedFight_GlowLabel41.visible");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight33.replace("*",num);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel42.htmlText = param1;
         },"_ConfusedFight_GlowLabel42.htmlText");
         result[55] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 1 && num > 0 && todayFreeAmount >= 2 && todayFreeAmount < 10;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel42.visible = param1;
         },"_ConfusedFight_GlowLabel42.visible");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight34.replace("*",num2);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel43.htmlText = param1;
         },"_ConfusedFight_GlowLabel43.htmlText");
         result[57] = binding;
         binding = new Binding(this,function():Boolean
         {
            return action == 1 && num2 > 0 && todayFreeAmount >= 2 && todayFreeAmount < 10;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel43.visible = param1;
         },"_ConfusedFight_GlowLabel43.visible");
         result[58] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/ConfusedFight/" + index1 + ".png";
         },function(param1:Object):void
         {
            _ConfusedFight_SWFLoader36.source = param1;
         },"_ConfusedFight_SWFLoader36.source");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cardFace1 && !effecting1;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader36.visible = param1;
         },"_ConfusedFight_SWFLoader36.visible");
         result[60] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/ConfusedFight/" + index2 + ".png";
         },function(param1:Object):void
         {
            _ConfusedFight_SWFLoader37.source = param1;
         },"_ConfusedFight_SWFLoader37.source");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cardFace2 && !effecting2;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader37.visible = param1;
         },"_ConfusedFight_SWFLoader37.visible");
         result[62] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/ConfusedFight/" + index3 + ".png";
         },function(param1:Object):void
         {
            _ConfusedFight_SWFLoader38.source = param1;
         },"_ConfusedFight_SWFLoader38.source");
         result[63] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cardFace3 && !effecting3;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader38.visible = param1;
         },"_ConfusedFight_SWFLoader38.visible");
         result[64] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/ConfusedFight/" + index4 + ".png";
         },function(param1:Object):void
         {
            _ConfusedFight_SWFLoader39.source = param1;
         },"_ConfusedFight_SWFLoader39.source");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cardFace4 && !effecting4;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader39.visible = param1;
         },"_ConfusedFight_SWFLoader39.visible");
         result[66] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/ConfusedFight/" + index5 + ".png";
         },function(param1:Object):void
         {
            _ConfusedFight_SWFLoader40.source = param1;
         },"_ConfusedFight_SWFLoader40.source");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cardFace5 && !effecting5;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader40.visible = param1;
         },"_ConfusedFight_SWFLoader40.visible");
         result[68] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/ConfusedFight/" + index6 + ".png";
         },function(param1:Object):void
         {
            _ConfusedFight_SWFLoader41.source = param1;
         },"_ConfusedFight_SWFLoader41.source");
         result[69] = binding;
         binding = new Binding(this,function():Boolean
         {
            return cardFace6 && !effecting6;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader41.visible = param1;
         },"_ConfusedFight_SWFLoader41.visible");
         result[70] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !cardFace1 && !effecting1;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader42.visible = param1;
         },"_ConfusedFight_SWFLoader42.visible");
         result[71] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !cardFace2 && !effecting2;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader43.visible = param1;
         },"_ConfusedFight_SWFLoader43.visible");
         result[72] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !cardFace3 && !effecting3;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader44.visible = param1;
         },"_ConfusedFight_SWFLoader44.visible");
         result[73] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !cardFace4 && !effecting4;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader45.visible = param1;
         },"_ConfusedFight_SWFLoader45.visible");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !cardFace5 && !effecting5;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader46.visible = param1;
         },"_ConfusedFight_SWFLoader46.visible");
         result[75] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !cardFace6 && !effecting6;
         },function(param1:Boolean):void
         {
            _ConfusedFight_SWFLoader47.visible = param1;
         },"_ConfusedFight_SWFLoader47.visible");
         result[76] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.allBlueColosseum) && todayFreeAmount >= 2 && action == 1;
         },function(param1:Boolean):void
         {
            goldBtn.visible = param1;
         },"goldBtn.visible");
         result[77] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.allBlueColosseum) && todayFreeAmount >= 2 && action == 1;
         },function(param1:Boolean):void
         {
            mwBtn.visible = param1;
         },"mwBtn.visible");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight28;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel44.text = param1;
         },"_ConfusedFight_GlowLabel44.text");
         result[79] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.allBlueColosseum) && todayFreeAmount >= 2 && action == 1;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel44.visible = param1;
         },"_ConfusedFight_GlowLabel44.visible");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Fight29;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _ConfusedFight_GlowLabel45.text = param1;
         },"_ConfusedFight_GlowLabel45.text");
         result[81] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Boolean(DataManager.Instance.allBlueColosseum) && todayFreeAmount >= 2 && action == 1;
         },function(param1:Boolean):void
         {
            _ConfusedFight_GlowLabel45.visible = param1;
         },"_ConfusedFight_GlowLabel45.visible");
         result[82] = binding;
         return result;
      }
      
      private function set todayFreeAmount(value:int) : void
      {
         var oldValue:Object = this._1049030661todayFreeAmount;
         if(oldValue !== value)
         {
            this._1049030661todayFreeAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayFreeAmount",oldValue,value));
         }
      }
      
      public function ___ConfusedFight_SWFLoader47_click(event:MouseEvent) : void
      {
         itemClick(6);
      }
      
      [Bindable(event="propertyChange")]
      private function get cardFace4() : Boolean
      {
         return this._268700601cardFace4;
      }
      
      [Bindable(event="propertyChange")]
      private function get cardFace6() : Boolean
      {
         return this._268700599cardFace6;
      }
      
      [Bindable(event="propertyChange")]
      private function get cardFace1() : Boolean
      {
         return this._268700604cardFace1;
      }
      
      [Bindable(event="propertyChange")]
      private function get cardFace3() : Boolean
      {
         return this._268700602cardFace3;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBtn() : Button
      {
         return this._204220892goldBtn;
      }
      
      [Bindable(event="propertyChange")]
      private function get cardFace2() : Boolean
      {
         return this._268700603cardFace2;
      }
      
      private function set changeAmount(value:int) : void
      {
         var oldValue:Object = this._614151128changeAmount;
         if(oldValue !== value)
         {
            this._614151128changeAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeAmount",oldValue,value));
         }
      }
      
      private function selectWay(idx:int) : void
      {
         if(idx == 1)
         {
            if(goldBtn.selected == false)
            {
               if(mwBtn.selected)
               {
                  mwBtn.selected = false;
               }
               goldBtn.selected = true;
               type = 9;
            }
         }
         else if(idx == 2)
         {
            if(mwBtn.selected == false)
            {
               if(goldBtn.selected)
               {
                  goldBtn.selected = false;
               }
               mwBtn.selected = true;
               type = 10;
            }
         }
         if(type == 9 || type == 0)
         {
            num2 = 0;
            num = 20 * (todayFreeAmount - 1);
         }
         else if(type == 10)
         {
            num = 0;
            num2 = 100 * (todayFreeAmount - 1);
         }
      }
      
      public function ___ConfusedFight_SWFLoader41_click(event:MouseEvent) : void
      {
         itemClick(6);
      }
      
      [Bindable(event="propertyChange")]
      private function get goldCost() : int
      {
         return this._2035905613goldCost;
      }
      
      [Bindable(event="propertyChange")]
      private function get kindDesc() : String
      {
         return this._555563963kindDesc;
      }
      
      [Bindable(event="propertyChange")]
      private function get effecting2() : Boolean
      {
         return this._1716448673effecting2;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwBtn() : Button
      {
         return this._104276050mwBtn;
      }
      
      private function set rewardDiamond(value:int) : void
      {
         var oldValue:Object = this._1709164325rewardDiamond;
         if(oldValue !== value)
         {
            this._1709164325rewardDiamond = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardDiamond",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get fameCost() : int
      {
         return this._782498304fameCost;
      }
      
      private function set textEffect(value:Boolean) : void
      {
         var oldValue:Object = this._1437766942textEffect;
         if(oldValue !== value)
         {
            this._1437766942textEffect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textEffect",oldValue,value));
         }
      }
      
      private function closeFun(e:int) : void
      {
         if(e)
         {
            if(DataManager.Instance.parcel.gold >= goldCost)
            {
               HttpServerManager.getInstance().callServer("skyladderService","ChangeColosseum",resolveChangeCard,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,changeArr]);
            }
            else
            {
               ShowResult.inst.showResult(202);
            }
         }
      }
      
      private function set currentIndex(value:int) : void
      {
         var oldValue:Object = this._1448410841currentIndex;
         if(oldValue !== value)
         {
            this._1448410841currentIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndex",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tempKind() : int
      {
         return this._1322522232tempKind;
      }
      
      private function set action(value:int) : void
      {
         var oldValue:Object = this._1422950858action;
         if(oldValue !== value)
         {
            this._1422950858action = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"action",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get effecting3() : Boolean
      {
         return this._1716448674effecting3;
      }
      
      [Bindable(event="propertyChange")]
      private function get index5() : int
      {
         return this._1184239197index5;
      }
      
      [Bindable(event="propertyChange")]
      private function get _kind() : int
      {
         return this._91026547_kind;
      }
      
      private function set type(value:int) : void
      {
         var oldValue:Object = this._3575610type;
         if(oldValue !== value)
         {
            this._3575610type = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cardFace5() : Boolean
      {
         return this._268700600cardFace5;
      }
      
      private function set fameCost(value:int) : void
      {
         var oldValue:Object = this._782498304fameCost;
         if(oldValue !== value)
         {
            this._782498304fameCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fameCost",oldValue,value));
         }
      }
      
      private function set cardFace1(value:Boolean) : void
      {
         var oldValue:Object = this._268700604cardFace1;
         if(oldValue !== value)
         {
            this._268700604cardFace1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardFace1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get effecting4() : Boolean
      {
         return this._1716448675effecting4;
      }
      
      private function set cardFace3(value:Boolean) : void
      {
         var oldValue:Object = this._268700602cardFace3;
         if(oldValue !== value)
         {
            this._268700602cardFace3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardFace3",oldValue,value));
         }
      }
      
      private function set cardFace4(value:Boolean) : void
      {
         var oldValue:Object = this._268700601cardFace4;
         if(oldValue !== value)
         {
            this._268700601cardFace4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardFace4",oldValue,value));
         }
      }
      
      private function set cardFace5(value:Boolean) : void
      {
         var oldValue:Object = this._268700600cardFace5;
         if(oldValue !== value)
         {
            this._268700600cardFace5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardFace5",oldValue,value));
         }
      }
      
      private function set cardFace6(value:Boolean) : void
      {
         var oldValue:Object = this._268700599cardFace6;
         if(oldValue !== value)
         {
            this._268700599cardFace6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardFace6",oldValue,value));
         }
      }
      
      private function set cardFace2(value:Boolean) : void
      {
         var oldValue:Object = this._268700603cardFace2;
         if(oldValue !== value)
         {
            this._268700603cardFace2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardFace2",oldValue,value));
         }
      }
      
      private function fanpaiFun(show:EffectShower) : void
      {
         --showEffectCount;
         this["effecting" + show.index] = false;
         if(showEffectCount <= 0)
         {
            btnEffecting = false;
            textEffect = false;
         }
         dispatchEvent(new GuideEvent("38-3"));
      }
      
      public function ___ConfusedFight_SWFLoader46_click(event:MouseEvent) : void
      {
         itemClick(5);
      }
      
      private function set goldCost(value:int) : void
      {
         var oldValue:Object = this._2035905613goldCost;
         if(oldValue !== value)
         {
            this._2035905613goldCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldCost",oldValue,value));
         }
      }
      
      private function set kindDesc(value:String) : void
      {
         var oldValue:Object = this._555563963kindDesc;
         if(oldValue !== value)
         {
            this._555563963kindDesc = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kindDesc",oldValue,value));
         }
      }
      
      public function set mwBtn(param1:Button) : void
      {
         var _loc2_:Object = this._104276050mwBtn;
         if(_loc2_ !== param1)
         {
            this._104276050mwBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get changeArr() : Array
      {
         return this._1455231121changeArr;
      }
      
      private function closeFun2(e:int) : void
      {
         if(e)
         {
            HttpServerManager.getInstance().callServer("skyladderService","StartColosseum",resolveFaPai,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,type]);
         }
      }
      
      private function closeFun3(e:int) : void
      {
         if(e)
         {
            HttpServerManager.getInstance().callServer("skyladderService","GetColosseumReward",resolveGetReward,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get turnCount() : int
      {
         return this._150231406turnCount;
      }
      
      private function set mc1(value:MovieClip) : void
      {
         var oldValue:Object = this._107867mc1;
         if(oldValue !== value)
         {
            this._107867mc1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc1",oldValue,value));
         }
      }
      
      private function set rewardExploit(value:int) : void
      {
         var oldValue:Object = this._1255039140rewardExploit;
         if(oldValue !== value)
         {
            this._1255039140rewardExploit = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardExploit",oldValue,value));
         }
      }
      
      private function set mc2(value:MovieClip) : void
      {
         var oldValue:Object = this._107868mc2;
         if(oldValue !== value)
         {
            this._107868mc2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get changeState() : Boolean
      {
         return this._1665560895changeState;
      }
      
      private function resolveColesseun2(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            resolveColesseun(e);
            btnEffecting = true;
            textEffect = true;
            mc.addEventListener(Event.ENTER_FRAME,EFHandler);
            mc.visible = true;
            mc.play();
            centerCard.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showEffectCount() : int
      {
         return this._487590207showEffectCount;
      }
      
      public function ___ConfusedFight_SWFLoader43_click(event:MouseEvent) : void
      {
         itemClick(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      public function ___ConfusedFight_Button5_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set num2(value:int) : void
      {
         var oldValue:Object = this._3392876num2;
         if(oldValue !== value)
         {
            this._3392876num2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num2",oldValue,value));
         }
      }
      
      private function set _kind(value:int) : void
      {
         var oldValue:Object = this._91026547_kind;
         if(oldValue !== value)
         {
            this._91026547_kind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_kind",oldValue,value));
         }
      }
      
      private function onClick() : void
      {
         if(!DataManager.Instance.allBlueColosseum && type == 10)
         {
            type = 0;
         }
         if(action == 1)
         {
            if(todayFreeAmount >= 2)
            {
               if(type == 9 || type == 0)
               {
                  type = 9;
                  num = 20 * (todayFreeAmount - 1);
                  GameAlert.show(526,UILang.Fight25.replace("*",num),closeFun2);
               }
               else if(type == 10)
               {
                  num2 = 100 * (todayFreeAmount - 1);
                  GameAlert.show(529,UILang.Fight30.replace("*",num2),closeFun2);
               }
            }
            else
            {
               type = 8;
               HttpServerManager.getInstance().callServer("skyladderService","StartColosseum",resolveFaPai,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,type]);
            }
         }
         else if(action == 2)
         {
            if(changeAmount > 0)
            {
               if(goldCost == 0 && fameCost == 0)
               {
                  HttpServerManager.getInstance().callServer("skyladderService","ChangeColosseum",resolveChangeCard,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,changeArr]);
               }
               else if(goldCost != 0)
               {
                  GameAlert.show(525,UILang.Fight22.replace("*",goldCost),closeFun);
               }
               else if(fameCost != 0)
               {
                  GameAlert.show(525,UILang.Fight31.replace("*",fameCost),closeFun);
               }
            }
            else
            {
               GameAlert.show(527,UILang.Fight26,closeFun3);
            }
         }
      }
      
      public function ___ConfusedFight_SWFLoader37_click(event:MouseEvent) : void
      {
         itemClick(2);
      }
      
      override public function show() : void
      {
         super.show();
         refreshData();
      }
      
      [Bindable(event="propertyChange")]
      public function get centerCard() : SWFLoader
      {
         return this._1161464069centerCard;
      }
      
      private function set num(value:int) : void
      {
         var oldValue:Object = this._109446num;
         if(oldValue !== value)
         {
            this._109446num = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",oldValue,value));
         }
      }
      
      private function resolveColesseun(e:ResultEvent) : void
      {
         var i:int = 0;
         var j:int = 0;
         if(e.result.error_code == -1)
         {
            DataManager.Instance.role.exploit = e.result.expoit;
            DataManager.Instance.parcel.fame = e.result.blue_fame;
            DataManager.Instance.parcel.resolveMoney(e);
            goldCost = e.result.next_need_gold;
            fameCost = e.result.next_need_blue_fame;
            todayFreeAmount = e.result.colosseum_account;
            currentFallFreeAmount = e.result.colosseum_turn_account;
            kind = e.result.combo_kind;
            turnCount = e.result.colosseum_account;
            DataManager.Instance.diamond = e.result.diamond;
            index1 = e.result.pos1;
            index2 = e.result.pos2;
            index3 = e.result.pos3;
            index4 = e.result.pos4;
            index5 = e.result.pos5;
            index6 = e.result.pos6;
            for(i = 1; i < 7; i++)
            {
               if(this["index" + i] != 0)
               {
                  if(changeState && changeAmount > 0)
                  {
                     for(j = 0; j < changeArr.length; j++)
                     {
                        if(changeArr[j] == i)
                        {
                           this["cardFace" + i] = false;
                           changeArr.splice(j,1);
                           textEffect = true;
                           itemClick(i);
                        }
                     }
                     if(changeArr.length == 0)
                     {
                        changeState = false;
                        changeAmount = 0;
                        changeArr = new Array();
                     }
                  }
                  else
                  {
                     this["cardFace" + i] = true;
                  }
               }
               else
               {
                  this["cardFace" + i] = false;
               }
            }
            if(e.result.is_colosseum_finish == false)
            {
               action = 1;
            }
            else
            {
               action = 2;
            }
            if(action == 1)
            {
               centerCard.visible = true;
               effecting1 = true;
               effecting2 = true;
               effecting3 = true;
               effecting4 = true;
               effecting5 = true;
               effecting6 = true;
               if(type == 9 || type == 0)
               {
                  num2 = 0;
                  num = 20 * (todayFreeAmount - 1);
               }
               else if(type == 10)
               {
                  num = 0;
                  num2 = 100 * (todayFreeAmount - 1);
               }
               dispatchEvent(new GuideEvent("38-1"));
            }
         }
         if(Boolean(DataManager.Instance.allBlueColosseum) && todayFreeAmount >= 2 && goldBtn.selected == false && mwBtn.selected == false)
         {
            selectWay(1);
         }
      }
      
      private function set tempKind(value:int) : void
      {
         var oldValue:Object = this._1322522232tempKind;
         if(oldValue !== value)
         {
            this._1322522232tempKind = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tempKind",oldValue,value));
         }
      }
      
      public function ___ConfusedFight_Button2_click(event:MouseEvent) : void
      {
         onClick();
      }
      
      [Bindable(event="propertyChange")]
      private function get textEffect() : Boolean
      {
         return this._1437766942textEffect;
      }
      
      private function set changeArr(value:Array) : void
      {
         var oldValue:Object = this._1455231121changeArr;
         if(oldValue !== value)
         {
            this._1455231121changeArr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeArr",oldValue,value));
         }
      }
      
      public function ___ConfusedFight_SWFLoader40_click(event:MouseEvent) : void
      {
         itemClick(5);
      }
      
      private function set turnCount(value:int) : void
      {
         var oldValue:Object = this._150231406turnCount;
         if(oldValue !== value)
         {
            this._150231406turnCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"turnCount",oldValue,value));
         }
      }
      
      private function refreshData() : void
      {
         HttpServerManager.getInstance().callServer("skyladderService","Colosseum",resolveColesseun,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      public function set kind(value:int) : void
      {
         _kind = value;
         switch(_kind)
         {
            case 0:
               rewardDiamond = 0;
               rewardExploit = 0;
               kindDesc = "";
               break;
            case 1:
               rewardDiamond = 100;
               rewardExploit = 200000;
               kindDesc = UILang.Fight2;
               break;
            case 2:
               rewardDiamond = 50;
               rewardExploit = 80000;
               kindDesc = UILang.Fight3;
               break;
            case 3:
               rewardDiamond = 20;
               rewardExploit = 40000;
               kindDesc = UILang.Fight4;
               break;
            case 4:
               rewardDiamond = 10;
               rewardExploit = 16000;
               kindDesc = UILang.Fight5;
               break;
            case 5:
               rewardDiamond = 5;
               rewardExploit = 4000;
               kindDesc = UILang.Fight6;
               break;
            case 6:
               rewardDiamond = 1;
               rewardExploit = 2000;
               kindDesc = UILang.Fight7;
               break;
            case 7:
               rewardDiamond = 0;
               rewardExploit = 1000;
               kindDesc = UILang.Fight8;
         }
      }
      
      private function set currentFallFreeAmount(value:int) : void
      {
         var oldValue:Object = this._1507612264currentFallFreeAmount;
         if(oldValue !== value)
         {
            this._1507612264currentFallFreeAmount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentFallFreeAmount",oldValue,value));
         }
      }
      
      private function openWin(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
         this.hide();
      }
      
      [Bindable(event="propertyChange")]
      private function get type() : int
      {
         return this._3575610type;
      }
      
      private function set index4(value:int) : void
      {
         var oldValue:Object = this._1184239198index4;
         if(oldValue !== value)
         {
            this._1184239198index4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index4",oldValue,value));
         }
      }
      
      private function set index5(value:int) : void
      {
         var oldValue:Object = this._1184239197index5;
         if(oldValue !== value)
         {
            this._1184239197index5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index5",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardDiamond() : int
      {
         return this._1709164325rewardDiamond;
      }
      
      override public function hide() : void
      {
         super.hide();
         changeAmount = 0;
         changeArr = new Array();
      }
      
      private function set effecting3(value:Boolean) : void
      {
         var oldValue:Object = this._1716448674effecting3;
         if(oldValue !== value)
         {
            this._1716448674effecting3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effecting3",oldValue,value));
         }
      }
      
      private function set index1(value:int) : void
      {
         var oldValue:Object = this._1184239201index1;
         if(oldValue !== value)
         {
            this._1184239201index1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index1",oldValue,value));
         }
      }
      
      public function ___ConfusedFight_SWFLoader45_click(event:MouseEvent) : void
      {
         itemClick(4);
      }
      
      private function resolveFaPai(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            if(type == 8)
            {
               type = 0;
            }
            num = 0;
            num2 = 0;
            HttpServerManager.getInstance().callServer("skyladderService","Colosseum",resolveColesseun2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function set effecting4(value:Boolean) : void
      {
         var oldValue:Object = this._1716448675effecting4;
         if(oldValue !== value)
         {
            this._1716448675effecting4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effecting4",oldValue,value));
         }
      }
      
      private function set index6(value:int) : void
      {
         var oldValue:Object = this._1184239196index6;
         if(oldValue !== value)
         {
            this._1184239196index6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index6",oldValue,value));
         }
      }
      
      private function set index2(value:int) : void
      {
         var oldValue:Object = this._1184239200index2;
         if(oldValue !== value)
         {
            this._1184239200index2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index2",oldValue,value));
         }
      }
      
      private function set effecting6(value:Boolean) : void
      {
         var oldValue:Object = this._1716448677effecting6;
         if(oldValue !== value)
         {
            this._1716448677effecting6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effecting6",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get mc1() : MovieClip
      {
         return this._107867mc1;
      }
      
      [Bindable(event="propertyChange")]
      private function get rewardExploit() : int
      {
         return this._1255039140rewardExploit;
      }
      
      private function set effecting5(value:Boolean) : void
      {
         var oldValue:Object = this._1716448676effecting5;
         if(oldValue !== value)
         {
            this._1716448676effecting5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effecting5",oldValue,value));
         }
      }
      
      private function set effecting1(value:Boolean) : void
      {
         var oldValue:Object = this._1716448672effecting1;
         if(oldValue !== value)
         {
            this._1716448672effecting1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effecting1",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get mc2() : MovieClip
      {
         return this._107868mc2;
      }
      
      private function set index3(value:int) : void
      {
         var oldValue:Object = this._1184239199index3;
         if(oldValue !== value)
         {
            this._1184239199index3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index3",oldValue,value));
         }
      }
      
      private function EFHandler(e:Event) : void
      {
         if(mc.currentFrame >= mc.totalFrames)
         {
            mc.removeEventListener(Event.ENTER_FRAME,EFHandler);
            textEffect = false;
            btnEffecting = false;
            mc.gotoAndStop(1);
            mc.visible = false;
            dispatchEvent(new GuideEvent("38-2"));
         }
         if(mc.currentFrame >= 27)
         {
            effecting3 = false;
            effecting4 = false;
         }
         if(mc.currentFrame >= 29)
         {
            effecting2 = false;
            effecting5 = false;
         }
         if(mc.currentFrame >= 31)
         {
            effecting1 = false;
            effecting6 = false;
         }
      }
      
      private function set effecting2(value:Boolean) : void
      {
         var oldValue:Object = this._1716448673effecting2;
         if(oldValue !== value)
         {
            this._1716448673effecting2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effecting2",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get num2() : int
      {
         return this._3392876num2;
      }
      
      public function __mwBtn_click(event:MouseEvent) : void
      {
         selectWay(2);
      }
      
      private function set btnEffecting(value:Boolean) : void
      {
         var oldValue:Object = this._2129055307btnEffecting;
         if(oldValue !== value)
         {
            this._2129055307btnEffecting = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnEffecting",oldValue,value));
         }
      }
      
      public function ___ConfusedFight_SWFLoader39_click(event:MouseEvent) : void
      {
         itemClick(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get num() : int
      {
         return this._109446num;
      }
      
      private function set changeState(value:Boolean) : void
      {
         var oldValue:Object = this._1665560895changeState;
         if(oldValue !== value)
         {
            this._1665560895changeState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeState",oldValue,value));
         }
      }
      
      public function __goldBtn_click(event:MouseEvent) : void
      {
         selectWay(1);
      }
      
      public function ___ConfusedFight_SWFLoader42_click(event:MouseEvent) : void
      {
         itemClick(1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ConfusedFight = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ConfusedFight_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_confusedFight_ConfusedFightWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      private function set showEffectCount(value:int) : void
      {
         var oldValue:Object = this._487590207showEffectCount;
         if(oldValue !== value)
         {
            this._487590207showEffectCount = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showEffectCount",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentFallFreeAmount() : int
      {
         return this._1507612264currentFallFreeAmount;
      }
      
      [Bindable(event="propertyChange")]
      private function get index4() : int
      {
         return this._1184239198index4;
      }
      
      [Bindable(event="propertyChange")]
      private function get index2() : int
      {
         return this._1184239200index2;
      }
      
      [Bindable(event="propertyChange")]
      private function get index6() : int
      {
         return this._1184239196index6;
      }
      
      [Bindable(event="propertyChange")]
      private function get effecting1() : Boolean
      {
         return this._1716448672effecting1;
      }
      
      public function ___ConfusedFight_SWFLoader36_click(event:MouseEvent) : void
      {
         itemClick(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get btnEffecting() : Boolean
      {
         return this._2129055307btnEffecting;
      }
      
      [Bindable(event="propertyChange")]
      private function get index3() : int
      {
         return this._1184239199index3;
      }
   }
}


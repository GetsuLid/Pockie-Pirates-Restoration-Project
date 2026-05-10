package ui.hero
{
   import ExtendComp.ExtendList;
   import ExtendComp.ExtendTileList;
   import ExtendComp.GameAlert;
   import ExtendComp.GlowButton;
   import ExtendComp.GlowLabel;
   import ExtendComp.GlowRadioButton;
   import ExtendComp.GlowText;
   import ExtendComp.MoveContainer;
   import ExtendComp.ShowResult;
   import Scene.SceneManager;
   import Util.ClockManager;
   import Util.Data.ClockData;
   import Util.ToolTipCreater;
   import constant.Global;
   import constant.TaskConfig;
   import data.HeroList;
   import data.hero.HeroData;
   import data.hero.HeroTrainData;
   import data.skill.SkillData;
   import events.GuideEvent;
   import events.NavigationEvent;
   import events.SendDataEvent;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.RadioButtonGroup;
   import mx.controls.SWFLoader;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   import ui.hero.Comp.Ability2;
   import ui.hero.Comp.HeroEmbattleItemRenderer;
   import ui.hero.Comp.HeroItemRenderer;
   import ui.hero.Comp.HeroSkillItemRenderer;
   import ui.hero.Comp.HeroTrainItemRenderer;
   import ui.hero.Comp.PassOnRenderer;
   import ui.hero.Comp.PassOnRendererRenderer;
   
   use namespace mx_internal;
   
   public class HeroPanel extends MoveContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal static var _HeroPanel_StylesInit_done:Boolean = false;
      
      public var _HeroPanel_GlowLabel3:GlowLabel;
      
      public var _HeroPanel_GlowLabel4:GlowLabel;
      
      public var _HeroPanel_GlowLabel6:GlowLabel;
      
      public var _HeroPanel_GlowLabel8:GlowLabel;
      
      public var _HeroPanel_GlowLabel5:GlowLabel;
      
      public var _HeroPanel_GlowLabel7:GlowLabel;
      
      public var _HeroPanel_GlowLabel9:GlowLabel;
      
      private var _109757473star3:Canvas;
      
      private var _3586r4:RadioButtonGroup;
      
      public var _HeroPanel_GlowLabel20:GlowLabel;
      
      public var _HeroPanel_GlowLabel21:GlowLabel;
      
      public var _HeroPanel_GlowLabel22:GlowLabel;
      
      public var _HeroPanel_GlowLabel23:GlowLabel;
      
      public var _HeroPanel_GlowLabel24:GlowLabel;
      
      public var _HeroPanel_GlowLabel25:GlowLabel;
      
      public var _HeroPanel_GlowLabel26:GlowLabel;
      
      public var _HeroPanel_GlowLabel27:GlowLabel;
      
      public var _HeroPanel_GlowLabel28:GlowLabel;
      
      public var _HeroPanel_GlowLabel29:GlowLabel;
      
      public var _HeroPanel_GlowLabel19:GlowLabel;
      
      private var _99168185heros:ArrayCollection;
      
      public var _HeroPanel_GlowLabel18:GlowLabel;
      
      public var _HeroPanel_GlowLabel10:GlowLabel;
      
      public var _HeroPanel_GlowLabel31:GlowLabel;
      
      public var _HeroPanel_GlowLabel33:GlowLabel;
      
      public var _HeroPanel_GlowLabel35:GlowLabel;
      
      public var _HeroPanel_GlowLabel36:GlowLabel;
      
      public var _HeroPanel_GlowLabel30:GlowLabel;
      
      public var _HeroPanel_GlowLabel38:GlowLabel;
      
      public var _HeroPanel_GlowLabel32:GlowLabel;
      
      public var _HeroPanel_GlowLabel34:GlowLabel;
      
      private var _3034455btn3:GlowRadioButton;
      
      public var _HeroPanel_GlowLabel37:GlowLabel;
      
      public var _HeroPanel_GlowLabel39:GlowLabel;
      
      private var _embed_css__images_Border_Border235_png_717724999:Class;
      
      public var _HeroPanel_GlowLabel13:GlowLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _HeroPanel_GlowLabel15:GlowLabel;
      
      public var _HeroPanel_GlowLabel40:GlowLabel;
      
      public var _HeroPanel_GlowLabel41:GlowLabel;
      
      public var _HeroPanel_GlowLabel42:GlowLabel;
      
      public var _HeroPanel_GlowLabel43:GlowLabel;
      
      public var _HeroPanel_GlowLabel44:GlowLabel;
      
      public var _HeroPanel_GlowLabel45:GlowLabel;
      
      public var _HeroPanel_GlowLabel46:GlowLabel;
      
      public var _HeroPanel_GlowLabel47:GlowLabel;
      
      public var _HeroPanel_GlowLabel48:GlowLabel;
      
      public var _HeroPanel_GlowLabel49:GlowLabel;
      
      private var canParade:Boolean = true;
      
      public var _HeroPanel_GlowLabel51:GlowLabel;
      
      public var _HeroPanel_GlowLabel53:GlowLabel;
      
      public var _HeroPanel_GlowLabel55:GlowLabel;
      
      public var _HeroPanel_GlowLabel56:GlowLabel;
      
      public var _HeroPanel_GlowLabel50:GlowLabel;
      
      public var _HeroPanel_GlowLabel58:GlowLabel;
      
      public var _HeroPanel_GlowLabel52:GlowLabel;
      
      public var _HeroPanel_GlowLabel54:GlowLabel;
      
      private var _embed_css__images_Button_btn1029_1_png_479755449:Class;
      
      public var _HeroPanel_GlowLabel57:GlowLabel;
      
      private var _3584r2:RadioButtonGroup;
      
      public var _HeroPanel_GlowLabel59:GlowLabel;
      
      private var _1253720237addLiStr:String;
      
      public var _HeroPanel_Image2:Image;
      
      public var _HeroPanel_GlowLabel60:GlowLabel;
      
      public var _HeroPanel_GlowLabel61:GlowLabel;
      
      public var _HeroPanel_GlowLabel62:GlowLabel;
      
      public var _HeroPanel_GlowLabel63:GlowLabel;
      
      public var _HeroPanel_GlowLabel64:GlowLabel;
      
      public var _HeroPanel_GlowLabel65:GlowLabel;
      
      public var _HeroPanel_GlowLabel66:GlowLabel;
      
      public var _HeroPanel_GlowLabel67:GlowLabel;
      
      public var _HeroPanel_GlowLabel68:GlowLabel;
      
      public var _HeroPanel_GlowLabel69:GlowLabel;
      
      public var _HeroPanel_Image8:Image;
      
      public var _HeroPanel_Image7:Image;
      
      public var _HeroPanel_Image9:Image;
      
      public var _HeroPanel_GlowLabel71:GlowLabel;
      
      public var _HeroPanel_GlowLabel73:GlowLabel;
      
      public var _HeroPanel_GlowLabel75:GlowLabel;
      
      public var _HeroPanel_GlowLabel76:GlowLabel;
      
      public var _HeroPanel_GlowLabel70:GlowLabel;
      
      public var _HeroPanel_GlowLabel78:GlowLabel;
      
      public var _HeroPanel_GlowLabel79:GlowLabel;
      
      private var _109757474star4:Canvas;
      
      public var _HeroPanel_GlowLabel74:GlowLabel;
      
      public var _HeroPanel_GlowLabel77:GlowLabel;
      
      public var _HeroPanel_Image6:Image;
      
      public var _HeroPanel_GlowLabel72:GlowLabel;
      
      public var _HeroPanel_Image1:Image;
      
      public var _HeroPanel_Image3:Image;
      
      public var _HeroPanel_Image4:Image;
      
      public var _HeroPanel_GlowLabel80:GlowLabel;
      
      public var _HeroPanel_GlowLabel81:GlowLabel;
      
      public var _HeroPanel_GlowLabel82:GlowLabel;
      
      public var _HeroPanel_GlowLabel83:GlowLabel;
      
      public var _HeroPanel_GlowLabel84:GlowLabel;
      
      public var _HeroPanel_GlowLabel85:GlowLabel;
      
      public var _HeroPanel_GlowLabel86:GlowLabel;
      
      public var _HeroPanel_GlowLabel87:GlowLabel;
      
      public var _HeroPanel_GlowLabel88:GlowLabel;
      
      public var _HeroPanel_GlowLabel89:GlowLabel;
      
      private var _3034454btn2:GlowRadioButton;
      
      private var _286697229costMoney:String;
      
      public var _HeroPanel_Image13:Image;
      
      public var _HeroPanel_GlowLabel91:GlowLabel;
      
      public var _HeroPanel_GlowLabel93:GlowLabel;
      
      public var _HeroPanel_GlowLabel95:GlowLabel;
      
      public var _HeroPanel_GlowLabel96:GlowLabel;
      
      public var _HeroPanel_GlowLabel97:GlowLabel;
      
      public var _HeroPanel_GlowLabel98:GlowLabel;
      
      public var _HeroPanel_GlowLabel99:GlowLabel;
      
      public var _HeroPanel_Image17:Image;
      
      public var _HeroPanel_GlowLabel94:GlowLabel;
      
      public var _HeroPanel_Image11:Image;
      
      public var _HeroPanel_GlowLabel90:GlowLabel;
      
      public var _HeroPanel_Image15:Image;
      
      public var _HeroPanel_GlowLabel92:GlowLabel;
      
      public var _HeroPanel_Image18:Image;
      
      public var _HeroPanel_Image12:Image;
      
      public var _HeroPanel_Image5:Image;
      
      public var _HeroPanel_Image20:Image;
      
      public var _HeroPanel_Image21:Image;
      
      public var _HeroPanel_Image22:Image;
      
      public var _HeroPanel_Image10:Image;
      
      public var _HeroPanel_Image24:Image;
      
      public var _HeroPanel_Image26:Image;
      
      public var _HeroPanel_Image14:Image;
      
      public var _HeroPanel_Image16:Image;
      
      public var _HeroPanel_Image23:Image;
      
      public var _HeroPanel_Image19:Image;
      
      private var _1243050712zhiColor:int;
      
      private var _3034453btn1:GlowRadioButton;
      
      private var _110541305token:int;
      
      private var _189886775addZhiStr:String;
      
      private var _embed_css__images_Border_Border1094_png_297605547:Class;
      
      private var _109757475star5:Canvas;
      
      private var _embed_css__images_Border_Border1092_jpg_271019359:Class;
      
      private var _108114min:int;
      
      private var _92659198addLi:int;
      
      private var _2077636841addZhiColor:int;
      
      private var _1448410841currentIndex:int = 1;
      
      private var _3701ti:int;
      
      private var addExp:int = 1;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _HeroPanel_Canvas1:Canvas;
      
      public var _HeroPanel_Canvas2:Canvas;
      
      public var _HeroPanel_Canvas6:Canvas;
      
      public var _HeroPanel_Canvas9:Canvas;
      
      private var _3059661cost:int;
      
      private var _1479084853trainSilver:String;
      
      private var _embed_css__images_Button_btn1029_3_png_502815369:Class;
      
      private var _embed_css__images_Border_Border1095_jpg_301276251:Class;
      
      private var costs:Array;
      
      private var _1926588402addMinColor:int;
      
      private var _555829773addTiColor:int;
      
      private var _embed_css__images_Button_btn1029_5_png_502971577:Class;
      
      public var _HeroPanel_ExtendList1:ExtendList;
      
      private var _903979656trainGold:String;
      
      private var _2031990587trainQuick:CheckBox;
      
      private var _1249363225getExp:int;
      
      public var _HeroPanel_Canvas102:Canvas;
      
      public var _HeroPanel_Canvas104:Canvas;
      
      public var _HeroPanel_Canvas106:Canvas;
      
      public var _HeroPanel_Canvas108:Canvas;
      
      public var _HeroPanel_Canvas109:Canvas;
      
      private var _568004427_selectHero:HeroTrainData;
      
      public var _HeroPanel_Canvas111:Canvas;
      
      public var _HeroPanel_Canvas113:Canvas;
      
      public var _HeroPanel_Canvas114:Canvas;
      
      public var _HeroPanel_Canvas115:Canvas;
      
      public var _HeroPanel_Canvas116:Canvas;
      
      public var _HeroPanel_Canvas121:Canvas;
      
      private var _1352404498tiColor:int;
      
      public var _HeroPanel_Canvas132:Canvas;
      
      public var _HeroPanel_Canvas134:Canvas;
      
      public var _HeroPanel_Canvas135:Canvas;
      
      public var _HeroPanel_Canvas136:Canvas;
      
      public var _HeroPanel_Canvas137:Canvas;
      
      public var _HeroPanel_Canvas138:Canvas;
      
      public var _HeroPanel_Canvas139:Canvas;
      
      private var _920310632payPassOn:Button;
      
      public var _HeroPanel_Canvas143:Canvas;
      
      public var _HeroPanel_Canvas147:Canvas;
      
      private var _197143915passOnImage:SWFLoader;
      
      private var _94544654cell0:PassOnRendererRenderer;
      
      private var paradeTimer:Timer;
      
      public var _HeroPanel_Canvas159:Canvas;
      
      public var _HeroPanel_Button2:Button;
      
      public var _HeroPanel_Button3:Button;
      
      public var _HeroPanel_Button4:Button;
      
      public var _HeroPanel_ExtendTileList1:ExtendTileList;
      
      public var _HeroPanel_ExtendTileList2:ExtendTileList;
      
      public var _HeroPanel_ExtendTileList3:ExtendTileList;
      
      public var _HeroPanel_ExtendTileList4:ExtendTileList;
      
      public var _HeroPanel_Canvas160:Canvas;
      
      public var _HeroPanel_Canvas161:Canvas;
      
      private var _94068123btn21:GlowRadioButton;
      
      private var _1438969928ability2:Ability2;
      
      mx_internal var _bindings:Array;
      
      private var _94544655cell1:PassOnRendererRenderer;
      
      private var _1246332069addTiStr:String;
      
      private var _1367757135canAdd:Boolean;
      
      private var clock:ClockData;
      
      private var _embed_css__images_Border_Border1058_png_1842834731:Class;
      
      public var _HeroPanel_Label10:Label;
      
      public var _HeroPanel_Label11:Label;
      
      public var _HeroPanel_Label12:Label;
      
      public var _HeroPanel_Label13:Label;
      
      public var _HeroPanel_GlowText1:GlowText;
      
      public var _HeroPanel_GlowText2:GlowText;
      
      public var _HeroPanel_GlowText3:GlowText;
      
      public var _HeroPanel_GlowText4:GlowText;
      
      public var _HeroPanel_GlowText5:GlowText;
      
      public var _HeroPanel_GlowText6:GlowText;
      
      public var _HeroPanel_GlowText7:GlowText;
      
      public var _HeroPanel_Label14:Label;
      
      public var _HeroPanel_GlowText9:GlowText;
      
      public var _HeroPanel_Label16:Label;
      
      public var _HeroPanel_GlowText10:GlowText;
      
      public var _HeroPanel_GlowText11:GlowText;
      
      public var _HeroPanel_GlowText12:GlowText;
      
      public var _HeroPanel_GlowText13:GlowText;
      
      public var _HeroPanel_GlowText14:GlowText;
      
      public var _HeroPanel_GlowText15:GlowText;
      
      public var _HeroPanel_GlowText16:GlowText;
      
      public var _HeroPanel_GlowText17:GlowText;
      
      public var _HeroPanel_GlowText18:GlowText;
      
      public var _HeroPanel_GlowText19:GlowText;
      
      public var _HeroPanel_Label19:Label;
      
      private var _embed_css__images_Border_Border1057_png_1833001511:Class;
      
      public var _HeroPanel_GlowText8:GlowText;
      
      private var _152520808canClick:Boolean;
      
      public var _HeroPanel_Label15:Label;
      
      public var _HeroPanel_Label20:Label;
      
      public var _HeroPanel_Label21:Label;
      
      public var _HeroPanel_Label22:Label;
      
      public var _HeroPanel_Label23:Label;
      
      public var _HeroPanel_Label24:Label;
      
      public var _HeroPanel_Label25:Label;
      
      private var _embed_css__images_Button_btn1029_2_png_475021965:Class;
      
      public var _HeroPanel_Label17:Label;
      
      public var _HeroPanel_Label18:Label;
      
      public var _HeroPanel_GlowText20:GlowText;
      
      public var _HeroPanel_GlowText21:GlowText;
      
      public var _HeroPanel_GlowText22:GlowText;
      
      public var _HeroPanel_GlowText23:GlowText;
      
      public var _HeroPanel_GlowText24:GlowText;
      
      public var _HeroPanel_GlowText25:GlowText;
      
      public var _HeroPanel_GlowText26:GlowText;
      
      public var _HeroPanel_GlowText27:GlowText;
      
      public var _HeroPanel_GlowText28:GlowText;
      
      public var _HeroPanel_GlowText29:GlowText;
      
      private var _1057379136moveState:String;
      
      private var _94068124btn22:GlowRadioButton;
      
      private var _995381808passOn:HeroData;
      
      private var _120571zhi:int;
      
      public var _HeroPanel_GlowText30:GlowText;
      
      public var _HeroPanel_GlowText31:GlowText;
      
      public var _HeroPanel_GlowText32:GlowText;
      
      public var _HeroPanel_GlowText33:GlowText;
      
      public var _HeroPanel_GlowText34:GlowText;
      
      public var _HeroPanel_GlowText35:GlowText;
      
      public var _HeroPanel_GlowText36:GlowText;
      
      private var _137500646liColor:int;
      
      private var _1678279284levelPassOn:Button;
      
      public var _HeroPanel_GlowButton10:GlowButton;
      
      public var _HeroPanel_GlowButton11:GlowButton;
      
      public var _HeroPanel_GlowButton12:GlowButton;
      
      public var _HeroPanel_GlowButton13:GlowButton;
      
      public var _HeroPanel_GlowButton14:GlowButton;
      
      public var _HeroPanel_GlowButton15:GlowButton;
      
      public var _HeroPanel_GlowButton16:GlowButton;
      
      public var _HeroPanel_GlowButton17:GlowButton;
      
      private var _94068125btn23:GlowRadioButton;
      
      public var _HeroPanel_GlowButton21:GlowButton;
      
      public var _HeroPanel_GlowButton22:GlowButton;
      
      public var _HeroPanel_GlowButton23:GlowButton;
      
      public var _HeroPanel_GlowButton24:GlowButton;
      
      public var _HeroPanel_GlowButton25:GlowButton;
      
      private var _1394099151minColor:int;
      
      private var _1422518630addZhi:int;
      
      private var _3198970hero:HeroList;
      
      private var _2029013968usePosition:int;
      
      private var _2045734917addLiColor:int;
      
      public var _HeroPanel_SWFLoader2:SWFLoader;
      
      public var _HeroPanel_SWFLoader3:SWFLoader;
      
      public var _HeroPanel_SWFLoader4:SWFLoader;
      
      public var _HeroPanel_SWFLoader5:SWFLoader;
      
      public var _HeroPanel_Label1:Label;
      
      public var _HeroPanel_Label2:Label;
      
      public var _HeroPanel_Label3:Label;
      
      public var _HeroPanel_Label4:Label;
      
      public var _HeroPanel_Label5:Label;
      
      public var _HeroPanel_Label7:Label;
      
      public var _HeroPanel_Label8:Label;
      
      public var _HeroPanel_Label9:Label;
      
      public var _HeroPanel_Label6:Label;
      
      private var _1134829317isDetailOpen:Boolean;
      
      private var _181219712addMinStr:String;
      
      private var _1391753348needAbilityChange:Boolean;
      
      public var _HeroPanel_GlowLabel100:GlowLabel;
      
      public var _HeroPanel_GlowLabel101:GlowLabel;
      
      public var _HeroPanel_GlowLabel102:GlowLabel;
      
      public var _HeroPanel_GlowLabel103:GlowLabel;
      
      public var _HeroPanel_GlowLabel104:GlowLabel;
      
      public var _HeroPanel_GlowLabel105:GlowLabel;
      
      public var _HeroPanel_GlowLabel106:GlowLabel;
      
      public var _HeroPanel_GlowLabel107:GlowLabel;
      
      public var _HeroPanel_GlowLabel108:GlowLabel;
      
      public var _HeroPanel_GlowLabel109:GlowLabel;
      
      private var _embed_css__images_Border_Border1093_png_293300695:Class;
      
      private var _264107929coverPassOn:HeroData;
      
      public var _HeroPanel_GlowLabel110:GlowLabel;
      
      public var _HeroPanel_GlowLabel111:GlowLabel;
      
      public var _HeroPanel_GlowLabel112:GlowLabel;
      
      public var _HeroPanel_GlowLabel113:GlowLabel;
      
      public var _HeroPanel_GlowLabel114:GlowLabel;
      
      public var _HeroPanel_GlowLabel115:GlowLabel;
      
      public var _HeroPanel_GlowLabel116:GlowLabel;
      
      public var _HeroPanel_GlowLabel117:GlowLabel;
      
      public var _HeroPanel_GlowLabel118:GlowLabel;
      
      public var _HeroPanel_GlowLabel119:GlowLabel;
      
      private var _2146252796currentMoveHero:HeroData;
      
      public var _HeroPanel_GlowLabel120:GlowLabel;
      
      public var _HeroPanel_GlowLabel121:GlowLabel;
      
      public var _HeroPanel_GlowLabel122:GlowLabel;
      
      public var _HeroPanel_GlowLabel123:GlowLabel;
      
      public var _HeroPanel_GlowLabel124:GlowLabel;
      
      public var _HeroPanel_GlowLabel125:GlowLabel;
      
      public var _HeroPanel_GlowLabel126:GlowLabel;
      
      public var _HeroPanel_GlowLabel127:GlowLabel;
      
      public var _HeroPanel_Canvas13:Canvas;
      
      private var _109757471star1:Canvas;
      
      public var _HeroPanel_Canvas17:Canvas;
      
      public var _HeroPanel_Canvas20:Canvas;
      
      public var _HeroPanel_Canvas29:Canvas;
      
      public var _HeroPanel_Canvas32:Canvas;
      
      public var _HeroPanel_Canvas35:Canvas;
      
      public var _HeroPanel_Canvas37:Canvas;
      
      public var _HeroPanel_GlowButton1:GlowButton;
      
      public var _HeroPanel_GlowButton2:GlowButton;
      
      public var _HeroPanel_GlowButton3:GlowButton;
      
      public var _HeroPanel_GlowButton4:GlowButton;
      
      public var _HeroPanel_GlowButton5:GlowButton;
      
      public var _HeroPanel_GlowButton6:GlowButton;
      
      public var _HeroPanel_GlowButton7:GlowButton;
      
      public var _HeroPanel_GlowButton8:GlowButton;
      
      public var _HeroPanel_GlowButton9:GlowButton;
      
      private var _606775184conIndex:int = 1;
      
      public var _HeroPanel_Canvas48:Canvas;
      
      private var _51799889trainPosition:int;
      
      private var timer:Timer;
      
      public var _HeroPanel_Canvas52:Canvas;
      
      public var _HeroPanel_Canvas55:Canvas;
      
      private var _109757472star2:Canvas;
      
      private var _255331301jumpTime:String;
      
      private var _1422531087addMin:int;
      
      private var _678838259perfect:int = 1;
      
      public var _HeroPanel_Canvas79:Canvas;
      
      private var _903860725trainCost:String;
      
      private var _3453li:int;
      
      mx_internal var _watchers:Array;
      
      private var _92659446addTi:int;
      
      public var _HeroPanel_Canvas85:Canvas;
      
      public var _HeroPanel_Canvas86:Canvas;
      
      public var _HeroPanel_Canvas89:Canvas;
      
      private var _3034456btn4:GlowRadioButton;
      
      public var _HeroPanel_Canvas90:Canvas;
      
      public var _HeroPanel_Canvas93:Canvas;
      
      public var _HeroPanel_Canvas94:Canvas;
      
      public var _HeroPanel_Canvas97:Canvas;
      
      public var _HeroPanel_Canvas98:Canvas;
      
      public var _HeroPanel_GlowLabel12:GlowLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _21115225willGetExp:int;
      
      public var _HeroPanel_GlowLabel16:GlowLabel;
      
      public var _HeroPanel_GlowLabel17:GlowLabel;
      
      public var _HeroPanel_GlowLabel11:GlowLabel;
      
      public var _HeroPanel_GlowLabel14:GlowLabel;
      
      public var _HeroPanel_GlowLabel1:GlowLabel;
      
      public var _HeroPanel_GlowLabel2:GlowLabel;
      
      public function HeroPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":MoveContainer,
            "propertiesFactory":function():Object
            {
               return {
                  "width":620,
                  "height":448,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___HeroPanel_Button1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button114",
                           "x":587,
                           "y":8
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HeroPanel_GlowButton1",
                     "events":{"click":"___HeroPanel_GlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":19,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HeroPanel_GlowButton2",
                     "events":{"click":"___HeroPanel_GlowButton2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":85,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HeroPanel_GlowButton3",
                     "events":{"click":"___HeroPanel_GlowButton3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":149,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HeroPanel_GlowButton4",
                     "events":{"click":"___HeroPanel_GlowButton4_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":214,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HeroPanel_GlowButton5",
                     "events":{"click":"___HeroPanel_GlowButton5_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":281,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":GlowButton,
                     "id":"_HeroPanel_GlowButton6",
                     "events":{"click":"___HeroPanel_GlowButton6_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Button116",
                           "x":348,
                           "y":10,
                           "height":25
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "width":124,
                           "height":386,
                           "styleName":"Border124",
                           "x":19,
                           "y":47,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label1",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 208725;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":22,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_HeroPanel_ExtendTileList1",
                              "events":{"itemClick":"___HeroPanel_ExtendTileList1_itemClick"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":110,
                                    "height":275,
                                    "itemRenderer":_HeroPanel_ClassFactory1_c(),
                                    "x":7,
                                    "y":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.textAlign = "center";
                                 this.fontSize = 10;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":303,
                                    "x":0,
                                    "percentWidth":100
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton7",
                              "events":{"click":"___HeroPanel_GlowButton7_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "y":331,
                                    "width":90
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":151,
                           "y":47,
                           "width":232,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label2",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":68};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":232,
                                    "height":80,
                                    "y":24,
                                    "styleName":"Border113",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel2",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":80,
                                             "y":8,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":120,
                                             "y":6,
                                             "x":80
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_HeroPanel_GlowButton8",
                                       "events":{"click":"___HeroPanel_GlowButton8_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "y":8,
                                             "height":20,
                                             "visible":true,
                                             "width":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":222,
                                             "y":30,
                                             "x":5,
                                             "visible":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel4",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":35,
                                             "width":108
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel5",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label3",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":74,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":120,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel7",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":120,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":68,
                                             "height":11,
                                             "y":39,
                                             "x":160,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_HeroPanel_Canvas6",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":9,
                                                      "x":1,
                                                      "y":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":66,
                                                               "height":16,
                                                               "styleName":"Border107"
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel8",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":35,
                                             "x":160,
                                             "width":70
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":68,
                                             "height":11,
                                             "y":59,
                                             "x":160,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_HeroPanel_Canvas9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":9,
                                                      "x":1,
                                                      "y":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":66,
                                                               "height":16,
                                                               "styleName":"Border128"
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel9",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":70,
                                             "y":56,
                                             "x":160
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":232,
                                    "height":276,
                                    "y":110,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label4",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":43,
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":232,
                                             "height":249,
                                             "y":27
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Ability2,
                              "id":"ability2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":154,
                                    "x":3
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas13",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":151,
                           "y":47,
                           "width":232,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label5",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":68};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":232,
                                    "height":80,
                                    "y":24,
                                    "styleName":"Border113",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel10",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":80,
                                             "y":8,
                                             "x":10
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel11",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":120,
                                             "y":6,
                                             "x":80
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_HeroPanel_GlowButton9",
                                       "events":{"click":"___HeroPanel_GlowButton9_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "5";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "y":8,
                                             "height":20,
                                             "visible":true,
                                             "width":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":222,
                                             "y":30,
                                             "x":5,
                                             "visible":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel12",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel13",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":10,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label6",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":70,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel14",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":120,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel15",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":120,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":68,
                                             "height":11,
                                             "y":39,
                                             "x":160,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_HeroPanel_Canvas17",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":9,
                                                      "x":1,
                                                      "y":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":66,
                                                               "height":16,
                                                               "styleName":"Border107"
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel16",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":35,
                                             "x":160,
                                             "width":70
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":68,
                                             "height":11,
                                             "y":59,
                                             "x":160,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_HeroPanel_Canvas20",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":9,
                                                      "x":1,
                                                      "y":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":66,
                                                               "height":16,
                                                               "styleName":"Border128"
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel17",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":70,
                                             "y":56,
                                             "x":160
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":232,
                                    "height":276,
                                    "y":110,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label7",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":82,
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":232,
                                             "height":249,
                                             "y":27
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "x":11,
                                    "y":219,
                                    "width":210,
                                    "height":72
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border211",
                                    "x":11,
                                    "y":299,
                                    "width":210,
                                    "height":72
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Hero/specialSkill.png",
                                    "y":130,
                                    "x":4
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label8",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":163,
                                    "x":82,
                                    "width":82
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel18",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":188,
                                    "x":82
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border234",
                                    "width":48,
                                    "height":48,
                                    "y":161,
                                    "x":23,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_HeroPanel_SWFLoader2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Hero/lock.swf",
                                             "x":1,
                                             "y":1
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_HeroPanel_SWFLoader3",
                                       "events":{
                                          "rollOver":"___HeroPanel_SWFLoader3_rollOver",
                                          "rollOut":"___HeroPanel_SWFLoader3_rollOut"
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":1,
                                             "y":1
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":SWFLoader,
                                       "id":"_HeroPanel_SWFLoader4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/UI/Hero/zhezhao.png",
                                             "x":1,
                                             "y":1
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel19",
                              "stylesFactory":function():void
                              {
                                 this.color = 16763904;
                                 this.textAlign = "center";
                                 this.fontWeight = "bold";
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":219,
                                    "x":55,
                                    "width":121
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":238,
                                    "x":17,
                                    "width":198,
                                    "height":51,
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":188};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel20",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                                 this.fontWeight = "bold";
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":137,
                                    "x":30,
                                    "width":145
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel21",
                              "stylesFactory":function():void
                              {
                                 this.color = 16763904;
                                 this.textAlign = "center";
                                 this.fontWeight = "bold";
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":299,
                                    "x":55,
                                    "width":121
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":318,
                                    "x":17,
                                    "width":198,
                                    "height":51,
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText2",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16748053;
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"width":188};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton10",
                              "events":{"click":"___HeroPanel_GlowButton10_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button258",
                                    "x":171,
                                    "y":162
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "id":"_HeroPanel_SWFLoader5",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Hero/active.png",
                                    "mouseChildren":false,
                                    "mouseEnabled":false,
                                    "y":178,
                                    "x":182
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_HeroPanel_Label9",
                     "stylesFactory":function():void
                     {
                        this.fontWeight = "bold";
                        this.color = 10876374;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":218,
                           "y":158
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas29",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "width":232,
                           "height":80,
                           "y":70,
                           "styleName":"Border113",
                           "x":154,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel22",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":80,
                                    "y":8,
                                    "x":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel23",
                              "stylesFactory":function():void
                              {
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":120,
                                    "y":6,
                                    "x":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton11",
                              "events":{"click":"___HeroPanel_GlowButton11_click"},
                              "stylesFactory":function():void
                              {
                                 this.right = "5";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "y":8,
                                    "height":20,
                                    "visible":true,
                                    "width":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border181",
                                    "height":1,
                                    "width":222,
                                    "y":30,
                                    "x":5,
                                    "visible":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel24",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":35,
                                    "width":109
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel25",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label10",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":65,
                                    "y":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel26",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":118,
                                    "y":35
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel27",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontWeight = "normal";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":118,
                                    "y":55
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border106",
                                    "width":68,
                                    "height":11,
                                    "y":39,
                                    "x":158,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas32",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":9,
                                             "x":1,
                                             "y":1,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":66,
                                                      "height":16,
                                                      "styleName":"Border107"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel28",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "center";
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":35,
                                    "x":158,
                                    "width":70
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border106",
                                    "width":68,
                                    "height":11,
                                    "y":59,
                                    "x":158,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas35",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":9,
                                             "x":1,
                                             "y":1,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":66,
                                                      "height":16,
                                                      "styleName":"Border128"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel29",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 13814713;
                                 this.fontSize = 11;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":70,
                                    "y":56,
                                    "x":160
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas37",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "styleName":"Border113",
                           "width":231,
                           "height":249,
                           "y":185,
                           "x":154,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel30",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":15,
                                    "y":15
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel31",
                              "stylesFactory":function():void
                              {
                                 this.color = 13814713;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":155,
                                    "y":15
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border1092",
                                    "width":210,
                                    "height":192,
                                    "y":42,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1093",
                                             "width":41,
                                             "height":185,
                                             "y":4,
                                             "x":6
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":0,
                                             "width":201,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel32",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.verticalCenter = "0";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image1",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel33",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image2",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel34",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image3",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel35",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image4",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel36",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image5",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel37",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image6",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel38",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image7",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":189,
                                                      "height":24,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel39",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.textAlign = "center";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":51,
                                                               "width":64
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Image,
                                                         "id":"_HeroPanel_Image8",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":21,
                                                               "height":16,
                                                               "x":151
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas48",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":147,
                           "y":47,
                           "width":459,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label11",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":207,
                                    "x":125
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":446,
                                    "height":80,
                                    "y":24,
                                    "styleName":"Border113",
                                    "x":6,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel40",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":80,
                                             "y":8,
                                             "x":103
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel41",
                                       "stylesFactory":function():void
                                       {
                                          this.fontSize = 14;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":120,
                                             "y":6,
                                             "x":173
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_HeroPanel_GlowButton12",
                                       "events":{"click":"___HeroPanel_GlowButton12_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.right = "111";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "y":7,
                                             "height":20,
                                             "visible":true,
                                             "width":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "width":436,
                                             "y":30,
                                             "x":5,
                                             "visible":true
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel42",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel43",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":20,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel44",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":170,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel45",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":270,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel46",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":170,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel47",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":250,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label12",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":75,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel48",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":320,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel49",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontWeight = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":320,
                                             "y":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":68,
                                             "height":11,
                                             "y":39,
                                             "x":360,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_HeroPanel_Canvas52",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":9,
                                                      "x":1,
                                                      "y":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":66,
                                                               "height":16,
                                                               "styleName":"Border107"
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel50",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.textAlign = "center";
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":35,
                                             "x":360,
                                             "width":70
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border106",
                                             "width":68,
                                             "height":11,
                                             "y":59,
                                             "x":360,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "id":"_HeroPanel_Canvas55",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "height":9,
                                                      "x":1,
                                                      "y":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":66,
                                                               "height":16,
                                                               "styleName":"Border128"
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel51",
                                       "stylesFactory":function():void
                                       {
                                          this.textAlign = "center";
                                          this.color = 13814713;
                                          this.fontSize = 11;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":70,
                                             "y":56,
                                             "x":360
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":459,
                                    "height":276,
                                    "y":110,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label13",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.textAlign = "center";
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":24,
                                             "y":0,
                                             "width":179
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":210,
                                             "height":249,
                                             "y":27,
                                             "x":8,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel52",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":20,
                                                      "y":15
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel53",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":153,
                                                      "y":15
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border235",
                                                      "width":189,
                                                      "height":192,
                                                      "y":42,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":VBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalGap = 0;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":0,
                                                               "width":201,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel54",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.verticalCenter = "0";
                                                                              this.textAlign = "center";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image9",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel55",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image10",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel56",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image11",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel57",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image12",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel58",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image13",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel59",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image14",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel60",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image15",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":201,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel61",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image16",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label14",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.textAlign = "center";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":258,
                                             "y":0,
                                             "width":176
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":210,
                                             "height":249,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "y":27,
                                             "x":241,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel62",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":35,
                                                      "y":15
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel63",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":153,
                                                      "y":15
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1331",
                                                      "width":189,
                                                      "height":192,
                                                      "y":42,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"Border1331",
                                                               "width":189,
                                                               "height":192,
                                                               "y":0
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":VBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalGap = 0;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "y":0,
                                                               "width":201,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel64",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.verticalCenter = "0";
                                                                              this.textAlign = "center";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image17",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel65",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image18",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel66",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image19",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel67",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image20",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel68",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image21",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel69",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image22",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel70",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image23",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               }),new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":189,
                                                                        "height":24,
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":GlowLabel,
                                                                           "id":"_HeroPanel_GlowLabel71",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.color = 16777215;
                                                                              this.textAlign = "center";
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "x":71,
                                                                                 "width":64
                                                                              };
                                                                           }
                                                                        }),new UIComponentDescriptor({
                                                                           "type":Image,
                                                                           "id":"_HeroPanel_Image24",
                                                                           "stylesFactory":function():void
                                                                           {
                                                                              this.verticalCenter = "0";
                                                                           },
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":21,
                                                                                 "height":16,
                                                                                 "x":151
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas79",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":200,
                           "height":386,
                           "y":47,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "x":402,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label15",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":0};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":200,
                                    "height":362,
                                    "y":24,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1095",
                                             "width":190,
                                             "height":97,
                                             "y":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1095",
                                             "width":190,
                                             "height":97,
                                             "y":155
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel72",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":8};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.left = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1094",
                                             "width":89,
                                             "height":85,
                                             "y":36
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 4;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":32,
                                             "height":95,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel73",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.textAlign = "left";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":98,
                                                               "width":100
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas85",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                            this.right = "5";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":70,
                                                               "height":11,
                                                               "styleName":"Border106",
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "id":"_HeroPanel_Canvas86",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "height":9,
                                                                        "x":1,
                                                                        "y":1,
                                                                        "horizontalScrollPolicy":"off",
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":68,
                                                                                 "height":9,
                                                                                 "styleName":"Border187"
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel74",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.textAlign = "left";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":98,
                                                               "width":100
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas89",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                            this.right = "5";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":70,
                                                               "height":11,
                                                               "styleName":"Border106",
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "id":"_HeroPanel_Canvas90",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "height":9,
                                                                        "x":1,
                                                                        "y":1,
                                                                        "horizontalScrollPolicy":"off",
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":68,
                                                                                 "height":9,
                                                                                 "styleName":"Border188"
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel75",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.textAlign = "left";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":98,
                                                               "width":100
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas93",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.right = "5";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":70,
                                                               "height":11,
                                                               "styleName":"Border106",
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "id":"_HeroPanel_Canvas94",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "height":9,
                                                                        "x":1,
                                                                        "y":1,
                                                                        "horizontalScrollPolicy":"off",
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":68,
                                                                                 "height":9,
                                                                                 "styleName":"Border189"
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel76",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.textAlign = "left";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":100,
                                                               "x":98
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas97",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.right = "5";
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":70,
                                                               "height":11,
                                                               "styleName":"Border106",
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "id":"_HeroPanel_Canvas98",
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "height":9,
                                                                        "x":1,
                                                                        "y":1,
                                                                        "horizontalScrollPolicy":"off",
                                                                        "childDescriptors":[new UIComponentDescriptor({
                                                                           "type":Canvas,
                                                                           "propertiesFactory":function():Object
                                                                           {
                                                                              return {
                                                                                 "width":68,
                                                                                 "height":9,
                                                                                 "styleName":"Border190"
                                                                              };
                                                                           }
                                                                        })]
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel77",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":49.5,
                                             "y":132
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.left = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border1094",
                                             "width":89,
                                             "height":85,
                                             "y":161
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 4;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":157,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText3",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.color = 16775065;
                                                            this.verticalCenter = "1";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"x":110};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas102",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":8,
                                                               "height":13,
                                                               "x":182
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText4",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.verticalCenter = "1";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":147,
                                                               "width":30
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText5",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.color = 16775065;
                                                            this.verticalCenter = "1";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"x":110};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas104",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":8,
                                                               "height":13,
                                                               "x":182
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText6",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.verticalCenter = "1";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":147,
                                                               "width":30
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText7",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.color = 16775065;
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"x":110};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas106",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":8,
                                                               "height":13,
                                                               "x":182
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText8",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.verticalCenter = "1";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":147,
                                                               "width":30
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":200,
                                                      "height":20,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText9",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.color = 16775065;
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"x":110};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas108",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.verticalCenter = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":8,
                                                               "height":13,
                                                               "x":182
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowText,
                                                         "id":"_HeroPanel_GlowText10",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontSize = 11;
                                                            this.verticalCenter = "1";
                                                            this.textAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":147,
                                                               "width":30
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowRadioButton,
                              "id":"btn1",
                              "stylesFactory":function():void
                              {
                                 this.bottom = "68";
                                 this.left = "8";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"r2",
                                    "styleName":"radio2",
                                    "selected":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowRadioButton,
                              "id":"btn2",
                              "stylesFactory":function():void
                              {
                                 this.bottom = "68";
                                 this.left = "112";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"r2",
                                    "styleName":"radio2"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowRadioButton,
                              "id":"btn3",
                              "stylesFactory":function():void
                              {
                                 this.bottom = "42";
                                 this.left = "8";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"r2",
                                    "styleName":"radio2"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowRadioButton,
                              "id":"btn4",
                              "stylesFactory":function():void
                              {
                                 this.bottom = "42";
                                 this.left = "112";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "groupName":"r2",
                                    "styleName":"radio2"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton13",
                              "events":{"click":"___HeroPanel_GlowButton13_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":65,
                                    "width":70
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton14",
                              "events":{"click":"___HeroPanel_GlowButton14_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":34,
                                    "width":60
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton15",
                              "events":{"click":"___HeroPanel_GlowButton15_click"},
                              "stylesFactory":function():void
                              {
                                 this.bottom = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "x":106,
                                    "width":60
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas109",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":402,
                           "y":47,
                           "width":200,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label16",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":70,
                                    "y":0
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":24,
                                    "width":200,
                                    "height":362,
                                    "styleName":"Border113",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel78",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16775065;
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":30,
                                             "y":333,
                                             "width":180
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendList,
                                       "id":"_HeroPanel_ExtendList1",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_HeroPanel_ClassFactory2_c(),
                                             "width":200,
                                             "height":330,
                                             "y":5,
                                             "x":0
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_HeroPanel_Button2",
                              "events":{"click":"___HeroPanel_Button2_click"},
                              "stylesFactory":function():void
                              {
                                 this.right = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1010",
                                    "width":42,
                                    "height":37
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas111",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":151,
                           "y":47,
                           "width":232,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label17",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"x":68};
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":232,
                                    "height":166,
                                    "y":24,
                                    "styleName":"Border113",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "source":"../assets/images/Icon/BigEmbattle/1.png",
                                             "x":40,
                                             "y":10,
                                             "width":146,
                                             "height":146
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_HeroPanel_ExtendTileList2",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "itemRenderer":_HeroPanel_ClassFactory3_c(),
                                             "width":144,
                                             "height":144,
                                             "x":41,
                                             "y":11
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas113",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0.01;
                                          this.backgroundColor = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":48,
                                             "height":48,
                                             "x":139,
                                             "y":11
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas114",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0.01;
                                          this.backgroundColor = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":48,
                                             "height":48,
                                             "x":41,
                                             "y":11
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas115",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0.01;
                                          this.backgroundColor = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":48,
                                             "height":48,
                                             "x":139,
                                             "y":109
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas116",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0.01;
                                          this.backgroundColor = 16777215;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":48,
                                             "height":48,
                                             "x":41,
                                             "y":109
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label18",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":68,
                                    "y":195
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.bottom = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":232,
                                    "height":160,
                                    "styleName":"Border113",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "events":{"click":"___HeroPanel_Canvas118_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":10,
                                             "width":198,
                                             "height":128,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"_HeroPanel_Image26",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":186,
                                                      "height":86,
                                                      "y":3
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1161",
                                                      "width":116,
                                                      "height":29,
                                                      "y":0,
                                                      "horizontalScrollPolicy":"off",
                                                      "verticalScrollPolicy":"off",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel79",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16711680;
                                                            this.bottom = "0";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"x":60};
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border1009",
                                                      "width":140,
                                                      "height":20,
                                                      "y":92,
                                                      "x":1,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Label,
                                                         "id":"_HeroPanel_Label19",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 0;
                                                            this.textAlign = "center";
                                                            this.fontWeight = "bold";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"width":140};
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_HeroPanel_GlowButton16",
                                       "events":{"click":"___HeroPanel_GlowButton16_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":46,
                                             "y":126,
                                             "width":65
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_HeroPanel_GlowButton17",
                                       "events":{"click":"___HeroPanel_GlowButton17_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":126,
                                             "y":126,
                                             "width":65
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas121",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":402,
                           "y":47,
                           "width":200,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label20",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":55.5,
                                    "y":0
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":24,
                                    "width":200,
                                    "height":362,
                                    "styleName":"Border113",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel80",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.fontSize = 12;
                                          this.horizontalCenter = "0";
                                          this.fontWeight = "bold";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":10};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "x":10,
                                             "y":32,
                                             "width":180,
                                             "height":155,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":VBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalGap = 1;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":5,
                                                      "y":5,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                            this.horizontalAlign = "center";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText11",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText12",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText13",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText14",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText15",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText16",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText17",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText18",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText19",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText20",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText21",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText22",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":HBox,
                                                         "stylesFactory":function():void
                                                         {
                                                            this.horizontalGap = -5;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"childDescriptors":[new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText23",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":GlowText,
                                                               "id":"_HeroPanel_GlowText24",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16776116;
                                                                  this.fontSize = 12;
                                                               }
                                                            })]};
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":180,
                                             "height":43,
                                             "x":10,
                                             "y":190,
                                             "styleName":"",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalAlign = "middle";
                                                   this.verticalCenter = "0";
                                                   this.horizontalGap = 9;
                                                   this.paddingLeft = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":180,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"star1",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":27,
                                                               "height":25
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"star2",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":27,
                                                               "height":25
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"star3",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":27,
                                                               "height":25
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"star4",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":27,
                                                               "height":25
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"star5",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":27,
                                                               "height":25
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":180,
                                             "height":35,
                                             "x":10,
                                             "y":220,
                                             "styleName":"",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":176,
                                                      "height":13,
                                                      "x":2,
                                                      "styleName":"Border106",
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Canvas,
                                                         "id":"_HeroPanel_Canvas132",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "height":13,
                                                               "x":0,
                                                               "y":0,
                                                               "childDescriptors":[new UIComponentDescriptor({
                                                                  "type":Canvas,
                                                                  "propertiesFactory":function():Object
                                                                  {
                                                                     return {
                                                                        "width":176,
                                                                        "height":13,
                                                                        "styleName":"Border221"
                                                                     };
                                                                  }
                                                               })]
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel81",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16777215;
                                                            this.fontSize = 11;
                                                            this.horizontalCenter = "0";
                                                            this.verticalCenter = "0";
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas134",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":65,
                                             "height":30,
                                             "x":21,
                                             "y":263,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "events":{"click":"___HeroPanel_GlowButton18_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "width":65,
                                                      "height":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/silverUp.png",
                                                      "width":63,
                                                      "height":29,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas135",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":65,
                                             "height":30,
                                             "x":114,
                                             "y":263,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "events":{"click":"___HeroPanel_GlowButton19_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "label":"",
                                                      "styleName":"Button113",
                                                      "width":65,
                                                      "height":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/goldUp.png",
                                                      "width":63,
                                                      "height":29,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"_HeroPanel_Canvas136",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":130,
                                             "height":30,
                                             "x":21,
                                             "y":301,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "events":{"click":"___HeroPanel_GlowButton20_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "label":"",
                                                      "styleName":"Button113",
                                                      "width":115,
                                                      "height":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "stylesFactory":function():void
                                                {
                                                   this.verticalCenter = "0";
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "source":"../assets/images/UI/Border/goldHighUp.png",
                                                      "width":125,
                                                      "height":30,
                                                      "mouseChildren":false,
                                                      "mouseEnabled":false
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel82",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":336,
                                             "x":1
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas137",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":124,
                           "height":386,
                           "styleName":"Border124",
                           "x":19,
                           "y":47,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label21",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 208725;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":31,
                                    "y":3
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel83",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.fontSize = 12;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":110,
                                    "y":303,
                                    "x":7
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowButton,
                              "id":"_HeroPanel_GlowButton21",
                              "events":{"click":"___HeroPanel_GlowButton21_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button113",
                                    "y":331,
                                    "width":90,
                                    "x":17
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ExtendTileList,
                              "id":"_HeroPanel_ExtendTileList3",
                              "events":{"itemClick":"___HeroPanel_ExtendTileList3_itemClick"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":110,
                                    "height":275,
                                    "itemRenderer":_HeroPanel_ClassFactory4_c(),
                                    "x":7,
                                    "y":32
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas138",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":402,
                           "y":47,
                           "width":200,
                           "height":386,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_HeroPanel_Label22",
                              "stylesFactory":function():void
                              {
                                 this.fontWeight = "bold";
                                 this.color = 10876374;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":55,
                                    "y":0
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HeroPanel_Canvas139",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":24,
                                    "width":200,
                                    "height":362,
                                    "styleName":"Border113",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "x":10,
                                             "y":10,
                                             "width":180,
                                             "height":106,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":5,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel84",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontWeight = "bold";
                                                            this.color = 16776116;
                                                            this.fontSize = 12;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel85",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.fontWeight = "bold";
                                                            this.color = 16776116;
                                                            this.fontSize = 11;
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel86",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontWeight = "bold";
                                                   this.color = 16776116;
                                                   this.fontSize = 12;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":25
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowRadioButton,
                                                "id":"btn21",
                                                "events":{"click":"__btn21_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "groupName":"r4",
                                                      "styleName":"radio2",
                                                      "y":47,
                                                      "x":10,
                                                      "label":"100%",
                                                      "selected":true
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowRadioButton,
                                                "id":"btn22",
                                                "events":{"click":"__btn22_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "groupName":"r4",
                                                      "styleName":"radio2",
                                                      "y":47,
                                                      "x":80,
                                                      "label":"200%"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowRadioButton,
                                                "id":"btn23",
                                                "events":{"click":"__btn23_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "groupName":"r4",
                                                      "styleName":"radio2",
                                                      "y":72,
                                                      "x":10,
                                                      "label":"300%"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "x":10,
                                             "y":126,
                                             "width":180,
                                             "height":80,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel87",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":5
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":30,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Image,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"source":"../assets/images/UI/Border/silver.png"};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel88",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 65280;
                                                            this.fontSize = 11;
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = 5;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":10,
                                                      "y":55,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":Image,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"source":"../assets/images/UI/Border/gold.png"};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel89",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 65280;
                                                            this.fontSize = 11;
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border211",
                                             "x":10,
                                             "y":210,
                                             "width":180,
                                             "height":51,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel90",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16776116;
                                                   this.verticalCenter = "0";
                                                   this.fontWeight = "bold";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":10};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel91",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 65280;
                                                   this.verticalCenter = "0";
                                                   this.fontSize = 11;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":80};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowButton,
                                       "id":"_HeroPanel_GlowButton22",
                                       "events":{"click":"___HeroPanel_GlowButton22_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Button113",
                                             "x":55,
                                             "y":277,
                                             "width":90
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText25",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 10877654;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":310,
                                             "x":10,
                                             "width":180,
                                             "height":43
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"_HeroPanel_Canvas143",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":24,
                                    "width":200,
                                    "height":362,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":200,
                                             "height":85,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel92",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16775065;
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":20,
                                                      "y":25
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalGap = 0;
                                                   this.verticalAlign = "middle";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "y":25,
                                                      "x":115,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel93",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 13814713;
                                                            this.fontSize = 12;
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":Button,
                                                         "id":"_HeroPanel_Button3",
                                                         "events":{"click":"___HeroPanel_Button3_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"styleName":"Button144"};
                                                         }
                                                      })]
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label23",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 10876374;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":55,
                                             "y":92
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border113",
                                             "width":200,
                                             "height":242,
                                             "y":120,
                                             "visible":true,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Canvas,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Border211",
                                                      "x":10,
                                                      "y":10,
                                                      "width":180,
                                                      "height":85,
                                                      "childDescriptors":[new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel94",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16775065;
                                                            this.bottom = "18";
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {"x":38};
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":SWFLoader,
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "source":"../assets/images/UI/Content/token.swf",
                                                               "x":10,
                                                               "y":16
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":GlowLabel,
                                                         "id":"_HeroPanel_GlowLabel95",
                                                         "stylesFactory":function():void
                                                         {
                                                            this.color = 16775065;
                                                            this.fontSize = 12;
                                                         },
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "width":142,
                                                               "x":38,
                                                               "y":18
                                                            };
                                                         }
                                                      })]
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_HeroPanel_GlowButton23",
                                                "events":{"click":"___HeroPanel_GlowButton23_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "-5";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "y":103,
                                                      "enabled":true,
                                                      "width":80
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_HeroPanel_GlowButton24",
                                                "events":{"click":"___HeroPanel_GlowButton24_click"},
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "-5";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "y":137,
                                                      "enabled":true,
                                                      "width":80
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":CheckBox,
                                                "id":"trainQuick",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":56,
                                                      "y":135,
                                                      "visible":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowButton,
                                                "id":"_HeroPanel_GlowButton25",
                                                "events":{"click":"___HeroPanel_GlowButton25_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"Button113",
                                                      "x":55,
                                                      "y":174,
                                                      "enabled":true,
                                                      "width":80
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_HeroPanel_Label24",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 13814713;
                                                   this.horizontalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":206};
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas147",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "percentWidth":100,
                           "percentHeight":100,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border113",
                                    "width":458,
                                    "height":386,
                                    "x":152,
                                    "y":47
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/passOn.png",
                                    "x":175,
                                    "y":64
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":124,
                                    "height":386,
                                    "styleName":"Border124",
                                    "x":19,
                                    "y":47,
                                    "verticalScrollPolicy":"off",
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"_HeroPanel_Label25",
                                       "stylesFactory":function():void
                                       {
                                          this.fontWeight = "bold";
                                          this.color = 208725;
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":21,
                                             "y":3
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ExtendTileList,
                                       "id":"_HeroPanel_ExtendTileList4",
                                       "events":{"itemClick":"___HeroPanel_ExtendTileList4_itemClick"},
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.borderStyle = "none";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":110,
                                             "height":275,
                                             "itemRenderer":_HeroPanel_ClassFactory5_c(),
                                             "x":7,
                                             "y":32
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel96",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 13814713;
                                          this.textAlign = "center";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":303,
                                             "x":0,
                                             "percentWidth":100
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PassOnRendererRenderer,
                              "id":"cell0",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":245,
                                    "y":92,
                                    "width":60,
                                    "height":60
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":PassOnRendererRenderer,
                              "id":"cell1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":455,
                                    "y":92,
                                    "width":60,
                                    "height":60
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_HeroPanel_Button4",
                              "events":{"click":"___HeroPanel_Button4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button205",
                                    "x":253,
                                    "y":309
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SWFLoader,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "source":"../assets/images/UI/Border/passOnBtn.png",
                                    "x":261,
                                    "y":313,
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"payPassOn",
                              "events":{"click":"__payPassOn_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1001",
                                    "x":321,
                                    "y":303,
                                    "selected":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"levelPassOn",
                              "events":{"click":"__levelPassOn_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button1001",
                                    "x":321,
                                    "y":323,
                                    "selected":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HeroPanel_GlowText26",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":343,
                                    "y":302
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HeroPanel_GlowText27",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776116;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":343,
                                    "y":322
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":165,
                                    "y":340,
                                    "width":436,
                                    "height":84,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText28",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 7667586;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":416,
                                             "mouseChildren":false,
                                             "mouseEnabled":false
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HeroPanel_GlowText29",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16776116;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":192,
                                    "y":70,
                                    "width":167
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HeroPanel_GlowText30",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 7667586;
                                 this.fontWeight = "bold";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":394,
                                    "y":70,
                                    "width":187
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":174,
                                    "y":144,
                                    "width":196,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText31"
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText32",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "stylesFactory":function():void
                              {
                                 this.horizontalAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":384,
                                    "y":144,
                                    "width":196,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText33"
                                    }),new UIComponentDescriptor({
                                       "type":GlowText,
                                       "id":"_HeroPanel_GlowText34",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HeroPanel_GlowText35",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":245,
                                    "y":162,
                                    "width":60
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowText,
                              "id":"_HeroPanel_GlowText36",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":455,
                                    "y":162,
                                    "width":60
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalGap = 4;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":189,
                                    "height":95,
                                    "x":200,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel97",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":80,
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel98",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":80,
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel99",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":80,
                                                      "width":100
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel100",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":100,
                                                      "x":80
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "stylesFactory":function():void
                              {
                                 this.verticalGap = 4;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":189,
                                    "height":95,
                                    "x":409,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel101",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":70,
                                                      "width":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel102",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":103,
                                                      "width":65
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel103",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":70,
                                                      "width":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel104",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":103,
                                                      "width":65
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel105",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":70,
                                                      "width":100
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel106",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":103,
                                                      "width":65
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":200,
                                             "height":20,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel107",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                   this.textAlign = "left";
                                                   this.verticalCenter = "0";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":100,
                                                      "x":70
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":GlowLabel,
                                                "id":"_HeroPanel_GlowLabel108",
                                                "stylesFactory":function():void
                                                {
                                                   this.fontSize = 11;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"x":103};
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas159",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border140",
                           "width":9,
                           "height":360,
                           "x":389,
                           "y":73
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas160",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"Border140",
                           "width":9,
                           "height":249,
                           "x":372,
                           "y":184
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_HeroPanel_Canvas161",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":287,
                           "height":289,
                           "styleName":"Border112",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___HeroPanel_Button7_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Button114",
                                    "y":8,
                                    "x":253
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel109",
                              "stylesFactory":function():void
                              {
                                 this.color = 10876374;
                                 this.fontSize = 14;
                                 this.fontWeight = "bold";
                                 this.horizontalCenter = "0";
                                 this.top = "8";
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "styleName":"Border140",
                                    "width":9,
                                    "height":218,
                                    "y":50
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":121,
                                    "height":240,
                                    "y":39,
                                    "x":153,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":GlowLabel,
                                       "id":"_HeroPanel_GlowLabel110",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 15229979;
                                          this.horizontalCenter = "0";
                                          this.fontWeight = "bold";
                                          this.fontSize = 14;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":5};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"Border181",
                                             "height":1,
                                             "percentWidth":94,
                                             "y":30
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":VBox,
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                          this.verticalGap = 3;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "y":34,
                                             "width":112,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel111",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel112",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel113",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel114",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel115",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel116",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel117",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel118",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel119",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel120",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel121",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel122",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel123",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel124",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":HBox,
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel125",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 15229979;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":GlowLabel,
                                                      "id":"_HeroPanel_GlowLabel126",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16761894;
                                                      }
                                                   })]};
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___HeroPanel_Button8_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-259";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":407,
                           "styleName":"Button130"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___HeroPanel_Button9_click"},
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-199";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":407,
                           "styleName":"Button131"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "-229";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"",
                           "width":40,
                           "height":24,
                           "y":405,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":GlowLabel,
                              "id":"_HeroPanel_GlowLabel127",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 12562586;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "y":2
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":SWFLoader,
                     "id":"passOnImage",
                     "propertiesFactory":function():Object
                     {
                        return {"visible":false};
                     }
                  })]
               };
            }
         });
         _99168185heros = new ArrayCollection();
         _568004427_selectHero = new HeroTrainData();
         costs = ["100" + UILang.Gold,"100" + UILang.Gold,"200" + UILang.Gold,"500" + UILang.Gold,"800" + UILang.Gold,"1000" + UILang.Gold];
         timer = new Timer(60 * 1000);
         paradeTimer = new Timer(60000,1);
         _embed_css__images_Border_Border1057_png_1833001511 = HeroPanel__embed_css__images_Border_Border1057_png_1833001511;
         _embed_css__images_Border_Border1058_png_1842834731 = HeroPanel__embed_css__images_Border_Border1058_png_1842834731;
         _embed_css__images_Border_Border1092_jpg_271019359 = HeroPanel__embed_css__images_Border_Border1092_jpg_271019359;
         _embed_css__images_Border_Border1093_png_293300695 = HeroPanel__embed_css__images_Border_Border1093_png_293300695;
         _embed_css__images_Border_Border1094_png_297605547 = HeroPanel__embed_css__images_Border_Border1094_png_297605547;
         _embed_css__images_Border_Border1095_jpg_301276251 = HeroPanel__embed_css__images_Border_Border1095_jpg_301276251;
         _embed_css__images_Border_Border235_png_717724999 = HeroPanel__embed_css__images_Border_Border235_png_717724999;
         _embed_css__images_Button_btn1029_1_png_479755449 = HeroPanel__embed_css__images_Button_btn1029_1_png_479755449;
         _embed_css__images_Button_btn1029_2_png_475021965 = HeroPanel__embed_css__images_Button_btn1029_2_png_475021965;
         _embed_css__images_Button_btn1029_3_png_502815369 = HeroPanel__embed_css__images_Button_btn1029_3_png_502815369;
         _embed_css__images_Button_btn1029_5_png_502971577 = HeroPanel__embed_css__images_Button_btn1029_5_png_502971577;
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.fontSize = 12;
         };
         mx_internal::_HeroPanel_StylesInit();
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.width = 620;
         this.height = 448;
         this.styleName = "Border112";
         this.x = 200;
         this.y = 100;
         _HeroPanel_RadioButtonGroup1_i();
         _HeroPanel_RadioButtonGroup2_i();
         this.addEventListener("preinitialize",___HeroPanel_MoveContainer1_preinitialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeroPanel._watcherSetupUtil = param1;
      }
      
      private function quickTrain(type:int) : void
      {
         if(selectHero)
         {
            dispatchEvent(new GuideEvent("13-5"));
            HttpServerManager.getInstance().callServer("manorService","jump",resolveJump,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectHero.hero.id,type]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get perfect() : int
      {
         return this._678838259perfect;
      }
      
      private function set hero(value:HeroList) : void
      {
         var oldValue:Object = null;
         oldValue = this._3198970hero;
         if(oldValue !== value)
         {
            this._3198970hero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hero",oldValue,value));
         }
      }
      
      private function set currentMoveHero(value:HeroData) : void
      {
         var oldValue:Object = null;
         oldValue = this._2146252796currentMoveHero;
         if(oldValue !== value)
         {
            this._2146252796currentMoveHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentMoveHero",oldValue,value));
         }
      }
      
      public function set star3(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757473star3;
         if(_loc2_ !== param1)
         {
            this._109757473star3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star3",_loc2_,param1));
         }
      }
      
      private function set addLiColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._2045734917addLiColor;
         if(oldValue !== value)
         {
            this._2045734917addLiColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addLiColor",oldValue,value));
         }
      }
      
      public function set star4(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757474star4;
         if(_loc2_ !== param1)
         {
            this._109757474star4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star4",_loc2_,param1));
         }
      }
      
      public function ___HeroPanel_GlowButton15_click(event:MouseEvent) : void
      {
         decidePolish(2);
      }
      
      public function ___HeroPanel_GlowButton2_click(event:MouseEvent) : void
      {
         changeIndex(6);
      }
      
      public function set star1(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757471star1;
         if(_loc2_ !== param1)
         {
            this._109757471star1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get hero() : HeroList
      {
         return this._3198970hero;
      }
      
      [Bindable(event="propertyChange")]
      private function get addLiColor() : int
      {
         return this._2045734917addLiColor;
      }
      
      private function mouseMoveHandler(e:MouseEvent) : void
      {
         passOnImage.source = currentMoveHero.smallHead;
         var p:Point = this.globalToLocal(new Point(e.stageX,e.stageY));
         passOnImage.x = p.x - passOnImage.width * 0.5;
         passOnImage.y = p.y - passOnImage.height * 0.5;
         passOnImage.visible = true;
      }
      
      public function set star5(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757475star5;
         if(_loc2_ !== param1)
         {
            this._109757475star5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star5",_loc2_,param1));
         }
      }
      
      private function parade() : void
      {
         if(canParade)
         {
            canParade = false;
            main.inst.chat.paradeHero(hero.selectHero);
            paradeTimer.reset();
            paradeTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onParadeTimer);
            paradeTimer.start();
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.DisPlayTooMuch);
         }
      }
      
      private function set jumpTime(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._255331301jumpTime;
         if(oldValue !== value)
         {
            this._255331301jumpTime = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jumpTime",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get addMinColor() : int
      {
         return this._1926588402addMinColor;
      }
      
      [Bindable(event="propertyChange")]
      private function get coverPassOn() : HeroData
      {
         return this._264107929coverPassOn;
      }
      
      public function set star2(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757472star2;
         if(_loc2_ !== param1)
         {
            this._109757472star2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star2",_loc2_,param1));
         }
      }
      
      private function resolveHeroTrainData(e:ResultEvent) : void
      {
         var removeTrain:HeroTrainData = null;
         var showLevel:Boolean = false;
         var hero:HeroData = null;
         var train:HeroTrainData = null;
         var info:Object = null;
         trainSilver = e.result.tax_copper;
         DataManager.Instance.role.resolveExploit(e);
         trainPosition = e.result.training_slot;
         canClick = e.result.jump_enable;
         usePosition = 0;
         token = e.result.jump_wand;
         if(trainPosition < DataManager.Instance.role.vip.trainPosition)
         {
            canAdd = true;
            costMoney = costs[trainPosition - 1];
         }
         else
         {
            costMoney = "";
            canAdd = false;
         }
         ClockManager.inst.addClock(clock,300);
         clock.time = Global.countLeftTime(e.result.server_time,e.result.jump_cooldown);
         for each(removeTrain in heros)
         {
            removeTrain.stopTimer();
         }
         heros.removeAll();
         showLevel = false;
         for each(hero in DataManager.Instance.hero.showList)
         {
            train = new HeroTrainData();
            train.hero = hero;
            heros.addItem(train);
            for each(info in e.result.training_list)
            {
               if(hero.id == info.generalId)
               {
                  hero.exp = info.experience;
                  showLevel ||= Boolean(hero.setLevel(info.level));
                  train.setHeroTrainTime(e.result.server_time,info.training_end);
                  if(info.training_end)
                  {
                     ++usePosition;
                     hero.isTrainning = true;
                  }
                  else
                  {
                     hero.isTrainning = false;
                  }
               }
            }
            if(Boolean(selectHero) && hero.id == selectHero.hero.id)
            {
               selectHero = train;
               selectHero.select = true;
            }
         }
         if(showLevel)
         {
            main.inst.showEffect("heroLevelUp",0,0);
         }
         if(selectHero == null && heros.length != 0)
         {
            selectHero = HeroTrainData(heros.getItemAt(0));
            selectHero.select = true;
         }
         DataManager.Instance.dailyAction.refreshOne(8,clock.time,e.result.jump_enable);
      }
      
      private function jumpSpike() : void
      {
         GameAlert.show(9,UILang.CostToCool_G.replace("#1",Math.max(Math.ceil(clock.time / 60000),1)),decideJumpSpike);
      }
      
      [Bindable(event="propertyChange")]
      private function get _selectHero() : HeroTrainData
      {
         return this._568004427_selectHero;
      }
      
      private function decidePolish(type:int) : void
      {
         dispatchEvent(new GuideEvent("21-3"));
         if(hero.selectHero)
         {
            HttpServerManager.getInstance().callServer("generalService","polishConfirm",resolvePolishConfirm,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.selectHero.id,type]);
         }
      }
      
      public function ___HeroPanel_GlowButton7_click(event:MouseEvent) : void
      {
         fireGeneral();
      }
      
      private function set conIndex(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._606775184conIndex;
         if(oldValue !== value)
         {
            this._606775184conIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"conIndex",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get costMoney() : String
      {
         return this._286697229costMoney;
      }
      
      public function set needAbilityChange(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._1391753348needAbilityChange;
         if(oldValue !== value)
         {
            this._1391753348needAbilityChange = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needAbilityChange",oldValue,value));
         }
      }
      
      private function mouseUpHandler(e:MouseEvent) : void
      {
         this.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         this.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
         passOnImage.source = "";
         passOnImage.visible = false;
         var p:Point = this.globalToLocal(new Point(e.stageX,e.stageY));
         for(var i:int = 0; i < 2; i++)
         {
            if(p.x > this["cell" + i].x && p.x < this["cell" + i].x + this["cell" + i].width && p.y > this["cell" + i].y && p.y < this["cell" + i].y + this["cell" + i].height)
            {
               if(currentMoveHero.isRole)
               {
                  ShowResult.inst.showResult(-1,UILang.PassOnErr2);
                  return;
               }
               if(currentMoveHero.quality <= 3)
               {
                  ShowResult.inst.showResult(-1,UILang.PassOnErr3);
                  return;
               }
               if(i == 0)
               {
                  if(currentMoveHero.haveInherited)
                  {
                     ShowResult.inst.showResult(-1,UILang.PassOnAlready);
                     return;
                  }
                  if(coverPassOn)
                  {
                     if(currentMoveHero == coverPassOn)
                     {
                        break;
                     }
                     if(currentMoveHero.job == coverPassOn.job)
                     {
                        passOn = currentMoveHero;
                     }
                     else
                     {
                        ShowResult.inst.showResult(-1,UILang.PassOnErr);
                     }
                  }
                  else
                  {
                     passOn = currentMoveHero;
                  }
                  if(Boolean(coverPassOn) && Boolean(passOn))
                  {
                     getPassTotal();
                  }
               }
               else
               {
                  if(passOn)
                  {
                     if(currentMoveHero == passOn)
                     {
                        break;
                     }
                     if(currentMoveHero.job == passOn.job)
                     {
                        coverPassOn = currentMoveHero;
                        trace(passOn.growStrength - passOn.strength);
                     }
                     else
                     {
                        ShowResult.inst.showResult(-1,UILang.PassOnErr);
                     }
                  }
                  else
                  {
                     coverPassOn = currentMoveHero;
                  }
                  if(Boolean(coverPassOn) && Boolean(passOn))
                  {
                     getPassTotal();
                  }
               }
               break;
            }
         }
         if(moveState == "down")
         {
            if(currentMoveHero == passOn)
            {
               passOn = null;
            }
            else if(currentMoveHero == coverPassOn)
            {
               coverPassOn = null;
            }
         }
      }
      
      private function setSelectHero(select:HeroData) : void
      {
         if(hero.selectHero)
         {
            hero.selectHero.heroSelect = false;
         }
         if(!selectHero)
         {
            selectHero = new HeroTrainData();
         }
         selectHero.hero = select;
         hero.selectHero = select;
         if(selectHero.hero.isRole)
         {
            DataManager.Instance.currentSkillIsRole = true;
         }
         else
         {
            DataManager.Instance.currentSkillIsRole = false;
         }
         hero.selectHero.heroSelect = true;
      }
      
      override public function add(event:FlexEvent) : void
      {
         super.add(event);
         dispatchEvent(new GuideEvent("13-1"));
         hero = DataManager.Instance.hero;
         if(currentIndex < 1)
         {
            currentIndex = 1;
         }
         changeIndex(currentIndex);
      }
      
      [Bindable(event="propertyChange")]
      private function get addZhiStr() : String
      {
         return this._189886775addZhiStr;
      }
      
      public function set payPassOn(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._920310632payPassOn;
         if(_loc2_ !== param1)
         {
            this._920310632payPassOn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"payPassOn",_loc2_,param1));
         }
      }
      
      private function openWin(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         dispatchEvent(event);
      }
      
      public function __btn22_click(event:MouseEvent) : void
      {
         refreshWillGetExp();
      }
      
      private function set perfect(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._678838259perfect;
         if(oldValue !== value)
         {
            this._678838259perfect = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perfect",oldValue,value));
         }
      }
      
      public function ___HeroPanel_GlowButton21_click(event:MouseEvent) : void
      {
         addTrainPosition();
      }
      
      [Bindable(event="propertyChange")]
      private function get addZhiColor() : int
      {
         return this._2077636841addZhiColor;
      }
      
      public function set ability2(param1:Ability2) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1438969928ability2;
         if(_loc2_ !== param1)
         {
            this._1438969928ability2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ability2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentMoveHero() : HeroData
      {
         return this._2146252796currentMoveHero;
      }
      
      private function set coverPassOn(value:HeroData) : void
      {
         var oldValue:Object = null;
         oldValue = this._264107929coverPassOn;
         if(oldValue !== value)
         {
            this._264107929coverPassOn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coverPassOn",oldValue,value));
         }
      }
      
      private function activationHandler(e:SendDataEvent) : void
      {
         HttpServerManager.getInstance().callServer("generalService","general",resolveJump2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function _HeroPanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var temp:RadioButtonGroup = new RadioButtonGroup();
         r2 = temp;
         temp.initialized(this,"r2");
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      public function get needAbilityChange() : Boolean
      {
         return this._1391753348needAbilityChange;
      }
      
      [Bindable(event="propertyChange")]
      private function get willGetExp() : int
      {
         return this._21115225willGetExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get trainQuick() : CheckBox
      {
         return this._2031990587trainQuick;
      }
      
      private function set minColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1394099151minColor;
         if(oldValue !== value)
         {
            this._1394099151minColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minColor",oldValue,value));
         }
      }
      
      private function resolveFireHero(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.FireSucc);
         }
         hero.resolveHeroList(e);
      }
      
      [Bindable(event="propertyChange")]
      private function get conIndex() : int
      {
         return this._606775184conIndex;
      }
      
      private function payClickHandler(value:int) : void
      {
         if(perfect == 0)
         {
            if(value == 0)
            {
               payPassOn.selected = false;
               levelPassOn.selected = false;
               perfect = 1;
            }
            else if(value == 2)
            {
               payPassOn.selected = false;
               levelPassOn.selected = true;
               perfect = 2;
            }
         }
         else if(perfect == 1)
         {
            if(value == 0)
            {
               payPassOn.selected = true;
               levelPassOn.selected = false;
               perfect = 0;
            }
            else if(value == 2)
            {
               payPassOn.selected = false;
               levelPassOn.selected = true;
               perfect = 2;
            }
         }
         else if(perfect == 2)
         {
            if(value == 0)
            {
               payPassOn.selected = true;
               levelPassOn.selected = false;
               perfect = 0;
            }
            else if(value == 2)
            {
               payPassOn.selected = false;
               levelPassOn.selected = false;
               perfect = 1;
            }
         }
         if(Boolean(coverPassOn) && Boolean(passOn))
         {
            getPassTotal();
         }
      }
      
      private function openShipUp() : void
      {
         openWin("shipUpGratePanel");
         hide();
      }
      
      private function set _selectHero(value:HeroTrainData) : void
      {
         var oldValue:Object = null;
         oldValue = this._568004427_selectHero;
         if(oldValue !== value)
         {
            this._568004427_selectHero = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_selectHero",oldValue,value));
         }
      }
      
      private function resloveStar(info:Object) : void
      {
         var _obj:Object = Global.embattlesStar[info.formation_level];
         var starAmount:int = int(_obj.star);
         for(var i:int = 1; i <= starAmount; i++)
         {
            (this["star" + i] as Canvas).styleName = "Border1054";
         }
         for(var j:int = starAmount + 1; j <= 5; j++)
         {
            (this["star" + j] as Canvas).styleName = "Border1055";
         }
      }
      
      public function set trainQuick(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2031990587trainQuick;
         if(_loc2_ !== param1)
         {
            this._2031990587trainQuick = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainQuick",_loc2_,param1));
         }
      }
      
      private function rollOut(e:MouseEvent) : void
      {
         ToolTipCreater.destoryTip(e);
      }
      
      private function _HeroPanel_ClassFactory4_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HeroTrainItemRenderer;
         return temp;
      }
      
      public function ___HeroPanel_GlowButton13_click(event:MouseEvent) : void
      {
         polish();
      }
      
      [Bindable(event="propertyChange")]
      public function get ability2() : Ability2
      {
         return this._1438969928ability2;
      }
      
      private function fireGeneral() : void
      {
         if(hero.selectHero)
         {
            GameAlert.show(3,UILang.DoFireHero.replace("#1",hero.selectHero.name),decideFireGeneral,hero.selectHero);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get tiColor() : int
      {
         return this._1352404498tiColor;
      }
      
      private function decideJumpSpike(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","jumpSpike",resolveJumpSpike,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function refreshClock() : void
      {
         if(clock.time <= 0)
         {
            jumpTime = "00:00";
            ClockManager.inst.removeClock(clock,300);
            canClick = true;
         }
         else
         {
            if(canClick)
            {
               jumpTime = "<font color=\'#00ff00\'>";
            }
            else
            {
               jumpTime = "<font color=\'#ff0000\'>";
            }
            jumpTime = jumpTime + Global.countTimeShow(clock.time) + "</font>";
         }
      }
      
      private function set addZhiColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._2077636841addZhiColor;
         if(oldValue !== value)
         {
            this._2077636841addZhiColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addZhiColor",oldValue,value));
         }
      }
      
      private function set costMoney(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._286697229costMoney;
         if(oldValue !== value)
         {
            this._286697229costMoney = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costMoney",oldValue,value));
         }
      }
      
      public function ___HeroPanel_GlowButton24_click(event:MouseEvent) : void
      {
         quickTrain(3);
      }
      
      [Bindable(event="propertyChange")]
      private function get token() : int
      {
         return this._110541305token;
      }
      
      [Bindable(event="propertyChange")]
      private function get trainCost() : String
      {
         return this._903860725trainCost;
      }
      
      public function ___HeroPanel_GlowButton18_click(event:MouseEvent) : void
      {
         doUpEmbattle(1,0);
      }
      
      private function train() : void
      {
         if(selectHero)
         {
            dispatchEvent(new GuideEvent("13-4"));
            if(trainGold != "0")
            {
               GameAlert.show(136,UILang.Gold100GetExp3.replace(/#1/,trainGold).replace(/#2/,trainSilver),reallyTrain);
            }
            else
            {
               reallyTrain(1);
            }
         }
      }
      
      public function ___HeroPanel_GlowButton5_click(event:MouseEvent) : void
      {
         changeIndex(4);
      }
      
      private function _HeroPanel_ClassFactory2_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HeroSkillItemRenderer;
         return temp;
      }
      
      [Bindable(event="propertyChange")]
      private function get addTiColor() : int
      {
         return this._555829773addTiColor;
      }
      
      public function ___HeroPanel_Button3_click(event:MouseEvent) : void
      {
         stopTrain();
      }
      
      public function ___HeroPanel_Button8_click(event:MouseEvent) : void
      {
         changePage(1);
      }
      
      private function changePage(value:int) : void
      {
         hero.setPage(value);
         if(currentIndex == 2)
         {
            HttpServerManager.getInstance().callServer("manorService","trainingStatus",resolveHeroTrainData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      private function mouseDownHandler(e:SendDataEvent) : void
      {
         currentMoveHero = e.data.hero as HeroData;
         moveState = e.data.state;
         this.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
         this.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
      }
      
      private function set zhiColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1243050712zhiColor;
         if(oldValue !== value)
         {
            this._1243050712zhiColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhiColor",oldValue,value));
         }
      }
      
      private function set addZhiStr(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._189886775addZhiStr;
         if(oldValue !== value)
         {
            this._189886775addZhiStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addZhiStr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelPassOn() : Button
      {
         return this._1678279284levelPassOn;
      }
      
      public function ___HeroPanel_SWFLoader3_rollOver(event:MouseEvent) : void
      {
         rollOver(event,hero.selectHero.demon.skill);
      }
      
      [Bindable(event="propertyChange")]
      private function get trainGold() : String
      {
         return this._903979656trainGold;
      }
      
      private function passOnClickHandler(result:int) : void
      {
         if(result)
         {
            if(Boolean(coverPassOn) && Boolean(passOn))
            {
               HttpServerManager.getInstance().callServer("generalService","generalInherit",resolvePassOn,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,passOn.generalId,coverPassOn.generalId,perfect]);
            }
         }
      }
      
      private function refreshWillGetExp() : void
      {
         var typeAdd:int = 0;
         var timeAdd:int = 192;
         if(r4.selection)
         {
            typeAdd = parseInt(Button(r4.selection).id.substring(4)) - 1;
         }
         switch(typeAdd)
         {
            case 0:
               typeAdd = 1;
               trainGold = "0";
               break;
            case 1:
               typeAdd = 2;
               trainGold = "50";
               break;
            case 2:
               typeAdd = 3;
               trainGold = "100";
         }
         willGetExp = addExp * timeAdd * typeAdd;
      }
      
      private function resolveStopTrain(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.StopTrainSucc);
         }
         resolveHeroTrainData(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      public function set btn1(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set btn4(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      private function set willGetExp(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._21115225willGetExp;
         if(oldValue !== value)
         {
            this._21115225willGetExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"willGetExp",oldValue,value));
         }
      }
      
      private function refreshHeroData(event:TimerEvent) : void
      {
         var hero:HeroTrainData = null;
         var refresh:Boolean = false;
         for each(hero in heros)
         {
            if(hero.isTraining)
            {
               hero.hero.exp += addExp;
               if(hero.hero.exp >= hero.hero.nextExp)
               {
                  refresh = true;
               }
            }
         }
         if(refresh)
         {
            HttpServerManager.getInstance().callServer("manorService","trainingStatus",resolveHeroTrainData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function set passOnImage(param1:SWFLoader) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._197143915passOnImage;
         if(_loc2_ !== param1)
         {
            this._197143915passOnImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passOnImage",_loc2_,param1));
         }
      }
      
      private function resolvePassOn(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            DataManager.Instance.parcel.resolveMoney(e);
            ShowResult.inst.showResult(-2,UILang.PassOnSucc);
            passOn = null;
            coverPassOn = null;
            hero.resolveHeroList(e);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get getExp() : int
      {
         return this._1249363225getExp;
      }
      
      private function rollOver(e:MouseEvent, _skill:SkillData) : void
      {
         ToolTipCreater.skillToolTipCreater(_skill,e);
      }
      
      private function onClick() : void
      {
      }
      
      private function set li(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3453li;
         if(oldValue !== value)
         {
            this._3453li = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"li",oldValue,value));
         }
      }
      
      public function getPassTotal() : void
      {
         var obj:Object = Global.heroDic[coverPassOn.eightId];
         if(perfect == 1 && coverPassOn.level < int(passOn.level * 0.7))
         {
            coverPassOn.passTotalGrowStrength = int(Math.floor(passOn.level * 0.7) * 0.1) * (obj.strAddCeilParam * 100) + obj.strCeil * 100;
            coverPassOn.passTotalGrowAgility = int(Math.floor(passOn.level * 0.7) * 0.1) * (obj.agiAddCeilParam * 100) + obj.agiCeil * 100;
            coverPassOn.passTotalGrowIntelligence = int(Math.floor(passOn.level * 0.7) * 0.1) * (obj.intAddCeilParam * 100) + obj.intCeil * 100;
            coverPassOn.passTotalGrowStamina = int(Math.floor(passOn.level * 0.7) * 0.1) * (obj.staAddCeilParam * 100) + obj.staCeil * 100;
         }
         else
         {
            coverPassOn.passTotalGrowStrength = int(passOn.level * 0.1) * (obj.strAddCeilParam * 100) + obj.strCeil * 100;
            coverPassOn.passTotalGrowAgility = int(passOn.level * 0.1) * (obj.agiAddCeilParam * 100) + obj.agiCeil * 100;
            coverPassOn.passTotalGrowIntelligence = int(passOn.level * 0.1) * (obj.intAddCeilParam * 100) + obj.intCeil * 100;
            coverPassOn.passTotalGrowStamina = int(passOn.level * 0.1) * (obj.staAddCeilParam * 100) + obj.staCeil * 100;
         }
         if(perfect == 0)
         {
            li = coverPassOn.basicStrength + passOn.growStrength - passOn.basicStrength;
            if(passOn.growStrength - passOn.basicStrength - (coverPassOn.growStrength - coverPassOn.basicStrength) > 0)
            {
               addLiStr = "+";
            }
            else
            {
               addLiStr = "";
            }
            addLi = passOn.growStrength - passOn.basicStrength - (coverPassOn.growStrength - coverPassOn.basicStrength);
            min = coverPassOn.basicAgility + passOn.growAgility - passOn.basicAgility;
            if(passOn.growAgility - passOn.basicAgility - (coverPassOn.growAgility - coverPassOn.basicAgility) > 0)
            {
               addMinStr = "+";
            }
            else
            {
               addMinStr = "";
            }
            addMin = passOn.growAgility - passOn.basicAgility - (coverPassOn.growAgility - coverPassOn.basicAgility);
            zhi = coverPassOn.basicIntelligence + passOn.growIntelligence - passOn.basicIntelligence;
            if(passOn.growIntelligence - passOn.basicIntelligence - (coverPassOn.growIntelligence - coverPassOn.basicIntelligence) > 0)
            {
               addZhiStr = "+";
            }
            else
            {
               addZhiStr = "";
            }
            addZhi = passOn.growIntelligence - passOn.basicIntelligence - (coverPassOn.growIntelligence - coverPassOn.basicIntelligence);
            ti = coverPassOn.basicStamina + passOn.growStamina - passOn.basicStamina;
            if(passOn.growStamina - passOn.basicStamina - (coverPassOn.growStamina - coverPassOn.basicStamina) > 0)
            {
               addTiStr = "+";
            }
            else
            {
               addTiStr = "";
            }
            addTi = passOn.growStamina - passOn.basicStamina - (coverPassOn.growStamina - coverPassOn.basicStamina);
         }
         else
         {
            li = coverPassOn.basicStrength + (passOn.growStrength - passOn.basicStrength) * 0.5;
            if((passOn.growStrength - passOn.basicStrength) * 0.5 - (coverPassOn.growStrength - coverPassOn.basicStrength) > 0)
            {
               addLiStr = "+";
            }
            else
            {
               addLiStr = "";
            }
            addLi = (passOn.growStrength - passOn.basicStrength) * 0.5 - (coverPassOn.growStrength - coverPassOn.basicStrength);
            min = coverPassOn.basicAgility + (passOn.growAgility - passOn.basicAgility) * 0.5;
            if((passOn.growAgility - passOn.basicAgility) * 0.5 - (coverPassOn.growAgility - coverPassOn.basicAgility) > 0)
            {
               addMinStr = "+";
            }
            else
            {
               addMinStr = "";
            }
            addMin = (passOn.growAgility - passOn.basicAgility) * 0.5 - (coverPassOn.growAgility - coverPassOn.basicAgility);
            zhi = coverPassOn.basicIntelligence + (passOn.growIntelligence - passOn.basicIntelligence) * 0.5;
            if((passOn.growIntelligence - passOn.basicIntelligence) * 0.5 - (coverPassOn.growIntelligence - coverPassOn.basicIntelligence) > 0)
            {
               addZhiStr = "+";
            }
            else
            {
               addZhiStr = "";
            }
            addZhi = (passOn.growIntelligence - passOn.basicIntelligence) * 0.5 - (coverPassOn.growIntelligence - coverPassOn.basicIntelligence);
            ti = coverPassOn.basicStamina + (passOn.growStamina - passOn.basicStamina) * 0.5;
            if((passOn.growStamina - passOn.basicStamina) * 0.5 - (coverPassOn.growStamina - coverPassOn.basicStamina) > 0)
            {
               addTiStr = "+";
            }
            else
            {
               addTiStr = "";
            }
            addTi = (passOn.growStamina - passOn.basicStamina) * 0.5 - (coverPassOn.growStamina - coverPassOn.basicStamina);
         }
         if(li >= coverPassOn.passTotalGrowStrength)
         {
            li = coverPassOn.passTotalGrowStrength;
            liColor = 16711680;
         }
         else
         {
            liColor = 16777215;
         }
         if(min >= coverPassOn.passTotalGrowAgility)
         {
            min = coverPassOn.passTotalGrowAgility;
            minColor = 16711680;
         }
         else
         {
            minColor = 16777215;
         }
         if(zhi >= coverPassOn.passTotalGrowIntelligence)
         {
            zhi = coverPassOn.passTotalGrowIntelligence;
            zhiColor = 16711680;
         }
         else
         {
            zhiColor = 16777215;
         }
         if(ti >= coverPassOn.passTotalGrowStamina)
         {
            ti = coverPassOn.passTotalGrowStamina;
            tiColor = 16711680;
         }
         else
         {
            tiColor = 16777215;
         }
         if(addLi + coverPassOn.growStrength > coverPassOn.passTotalGrowStrength)
         {
            addLi = coverPassOn.passTotalGrowStrength - coverPassOn.growStrength;
         }
         if(addLi > 0)
         {
            addLiColor = 65280;
         }
         else
         {
            addLiColor = 16711680;
            addLiStr = "";
         }
         if(addMin + coverPassOn.growAgility > coverPassOn.passTotalGrowAgility)
         {
            addMin = coverPassOn.passTotalGrowAgility - coverPassOn.growAgility;
         }
         if(addMin > 0)
         {
            addMinColor = 65280;
         }
         else
         {
            addMinColor = 16711680;
            addMinStr = "";
         }
         if(addZhi + coverPassOn.growIntelligence > coverPassOn.passTotalGrowIntelligence)
         {
            addZhi = coverPassOn.passTotalGrowIntelligence - coverPassOn.growIntelligence;
         }
         if(addZhi > 0)
         {
            addZhiColor = 65280;
         }
         else
         {
            addZhiColor = 16711680;
            addZhiStr = "";
         }
         if(addTi + coverPassOn.growStamina > coverPassOn.passTotalGrowStamina)
         {
            addTi = coverPassOn.passTotalGrowStamina - coverPassOn.growStamina;
         }
         if(addTi > 0)
         {
            addTiColor = 65280;
         }
         else
         {
            addTiColor = 16711680;
            addTiStr = "";
         }
      }
      
      private function changeIndex(index:int) : void
      {
         var level:int = 0;
         needAbilityChange = false;
         detailClick(false);
         currentIndex = index;
         switch(currentIndex)
         {
            case 1:
            case 4:
            case 6:
               if(currentIndex == 4)
               {
                  needAbilityChange = true;
               }
               HttpServerManager.getInstance().callServer("generalService","general",resolveHeroInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               main.inst.canAdd = false;
               break;
            case 3:
               HttpServerManager.getInstance().callServer("generalService","general",resolveHeroInfo,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               main.inst.canAdd = true;
               break;
            case 2:
               dispatchEvent(new GuideEvent("13-2"));
               HttpServerManager.getInstance().callServer("manorService","trainingStatus",resolveHeroTrainData,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
               timer.start();
               addExp = Global.officialRanks[DataManager.Instance.role.officialRanklevel].trainingExp;
               level = int(DataManager.Instance.role.officialRanklevel);
               if(level < 21)
               {
                  cost = level * 1.5;
               }
               else if(level < 41)
               {
                  cost = level * 2.5 - 20;
               }
               else
               {
                  cost = level * 3.5 - 60;
               }
               getExp = addExp * 5;
               refreshWillGetExp();
               break;
            case 3:
               main.inst.canAdd = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cell0() : PassOnRendererRenderer
      {
         return this._94544654cell0;
      }
      
      [Bindable(event="propertyChange")]
      public function get cell1() : PassOnRendererRenderer
      {
         return this._94544655cell1;
      }
      
      private function get selectHero() : HeroTrainData
      {
         return _selectHero;
      }
      
      private function stopTrain() : void
      {
         if(selectHero)
         {
            GameAlert.show(6,UILang.CostStopTrain_G.replace("#1",Math.max(Math.ceil(_selectHero.clock.time / 60000),1)).replace("#2",selectHero.hero.name),decideStopTrain,selectHero);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get trainSilver() : String
      {
         return this._1479084853trainSilver;
      }
      
      public function set btn21(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94068123btn21;
         if(_loc2_ !== param1)
         {
            this._94068123btn21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn21",_loc2_,param1));
         }
      }
      
      private function resolveJump2(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            hero.resolveHeroList(e);
         }
      }
      
      public function set btn23(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94068125btn23;
         if(_loc2_ !== param1)
         {
            this._94068125btn23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn23",_loc2_,param1));
         }
      }
      
      public function ___HeroPanel_GlowButton11_click(event:MouseEvent) : void
      {
         parade();
      }
      
      public function set btn22(param1:GlowRadioButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94068124btn22;
         if(_loc2_ !== param1)
         {
            this._94068124btn22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn22",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get moveState() : String
      {
         return this._1057379136moveState;
      }
      
      public function __payPassOn_click(event:MouseEvent) : void
      {
         payClickHandler(0);
      }
      
      public function refreshEmbattle() : void
      {
         changeIndex(3);
      }
      
      public function ___HeroPanel_GlowButton22_click(event:MouseEvent) : void
      {
         train();
      }
      
      [Bindable(event="propertyChange")]
      private function get addTiStr() : String
      {
         return this._1246332069addTiStr;
      }
      
      private function resolveTrain(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.TrainSucc);
         }
         else if(e.result.error_code == 222)
         {
            if(canAdd)
            {
               if(trainPosition < 7)
               {
                  GameAlert.show(7,UILang.CostAddTrain_G.replace("#1",costMoney),decideAddTrainPosition);
               }
            }
         }
         DataManager.Instance.parcel.resolveMoney(e);
         resolveHeroTrainData(e);
         HttpServerManager.getInstance().callServer("generalService","general",resolveJump2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_TRAIN))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function ___HeroPanel_GlowButton16_click(event:MouseEvent) : void
      {
         openWin("embattle");
      }
      
      public function ___HeroPanel_GlowButton3_click(event:MouseEvent) : void
      {
         changeIndex(2);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeroPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeroPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_hero_HeroPanelWatcherSetupUtil");
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
      
      public function ___HeroPanel_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set passOn(value:HeroData) : void
      {
         var oldValue:Object = null;
         oldValue = this._995381808passOn;
         if(oldValue !== value)
         {
            this._995381808passOn = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passOn",oldValue,value));
         }
      }
      
      private function decideAddTrainPosition(result:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","trainingSlotOpen",resolveAddPosition,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
      }
      
      public function ___HeroPanel_GlowButton8_click(event:MouseEvent) : void
      {
         parade();
      }
      
      [Bindable(event="propertyChange")]
      private function get usePosition() : int
      {
         return this._2029013968usePosition;
      }
      
      private function _HeroPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.MarinerInfo;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton1.label = param1;
         },"_HeroPanel_GlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton1.selected = param1;
         },"_HeroPanel_GlowButton1.selected");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Skill;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton2.label = param1;
         },"_HeroPanel_GlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 6;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton2.selected = param1;
         },"_HeroPanel_GlowButton2.selected");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Train;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton3.label = param1;
         },"_HeroPanel_GlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton3.selected = param1;
         },"_HeroPanel_GlowButton3.selected");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.trainBtn;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton3.visible = param1;
         },"_HeroPanel_GlowButton3.visible");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Boat;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton4.label = param1;
         },"_HeroPanel_GlowButton4.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton4.selected = param1;
         },"_HeroPanel_GlowButton4.selected");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.embattleBtn;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton4.visible = param1;
         },"_HeroPanel_GlowButton4.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Foster;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton5.label = param1;
         },"_HeroPanel_GlowButton5.label");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton5.selected = param1;
         },"_HeroPanel_GlowButton5.selected");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.control.polishBtn;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton5.visible = param1;
         },"_HeroPanel_GlowButton5.visible");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PassOn;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton6.label = param1;
         },"_HeroPanel_GlowButton6.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 5;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton6.selected = param1;
         },"_HeroPanel_GlowButton6.selected");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.officialRanklevel >= 80;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton6.visible = param1;
         },"_HeroPanel_GlowButton6.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1 || currentIndex == 3 || currentIndex == 4 || currentIndex == 6;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas1.visible = param1;
         },"_HeroPanel_Canvas1.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label1.text = param1;
         },"_HeroPanel_Label1.text");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _HeroPanel_ExtendTileList1.dataProvider = param1;
         },"_HeroPanel_ExtendTileList1.dataProvider");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorNum + "：" + DataManager.Instance.hero.list.length + "/" + DataManager.Instance.role.heroAmount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel1.text = param1;
         },"_HeroPanel_GlowLabel1.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Fire;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton7.label = param1;
         },"_HeroPanel_GlowButton7.label");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.selectHero.isRole;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton7.visible = param1;
         },"_HeroPanel_GlowButton7.visible");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas2.visible = param1;
         },"_HeroPanel_Canvas2.visible");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorMsg_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label2.text = param1;
         },"_HeroPanel_Label2.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Lv + ":" + hero.selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel2.text = param1;
         },"_HeroPanel_GlowLabel2.text");
         result[24] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel2.setStyle("color",param1);
         },"_HeroPanel_GlowLabel2.color");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel3.text = param1;
         },"_HeroPanel_GlowLabel3.text");
         result[26] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel3.setStyle("color",param1);
         },"_HeroPanel_GlowLabel3.color");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Display;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton8.label = param1;
         },"_HeroPanel_GlowButton8.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorMsgOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton8.toolTip = param1;
         },"_HeroPanel_GlowButton8.toolTip");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Job + "：" + hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel4.text = param1;
         },"_HeroPanel_GlowLabel4.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Quality + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel5.text = param1;
         },"_HeroPanel_GlowLabel5.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label3.text = param1;
         },"_HeroPanel_Label3.text");
         result[32] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_Label3.setStyle("color",param1);
         },"_HeroPanel_Label3.color");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel6.text = param1;
         },"_HeroPanel_GlowLabel6.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel7.text = param1;
         },"_HeroPanel_GlowLabel7.text");
         result[35] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas6.width = param1;
         },"_HeroPanel_Canvas6.width");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel8.text = param1;
         },"_HeroPanel_GlowLabel8.text");
         result[37] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas9.width = param1;
         },"_HeroPanel_Canvas9.width");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel9.text = param1;
         },"_HeroPanel_GlowLabel9.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorAttri_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label4.text = param1;
         },"_HeroPanel_Label4.text");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return needAbilityChange ? hero.selectHero : null;
         },function(param1:Object):void
         {
            ability2.data = param1;
         },"ability2.data");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 6;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas13.visible = param1;
         },"_HeroPanel_Canvas13.visible");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorMsg_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label5.text = param1;
         },"_HeroPanel_Label5.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Lv + ":" + hero.selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel10.text = param1;
         },"_HeroPanel_GlowLabel10.text");
         result[44] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel10.setStyle("color",param1);
         },"_HeroPanel_GlowLabel10.color");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel11.text = param1;
         },"_HeroPanel_GlowLabel11.text");
         result[46] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel11.setStyle("color",param1);
         },"_HeroPanel_GlowLabel11.color");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Display;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton9.label = param1;
         },"_HeroPanel_GlowButton9.label");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorMsgOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton9.toolTip = param1;
         },"_HeroPanel_GlowButton9.toolTip");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Job + "：" + hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel12.text = param1;
         },"_HeroPanel_GlowLabel12.text");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Quality + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel13.text = param1;
         },"_HeroPanel_GlowLabel13.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label6.text = param1;
         },"_HeroPanel_Label6.text");
         result[52] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_Label6.setStyle("color",param1);
         },"_HeroPanel_Label6.color");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel14.text = param1;
         },"_HeroPanel_GlowLabel14.text");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel15.text = param1;
         },"_HeroPanel_GlowLabel15.text");
         result[55] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas17.width = param1;
         },"_HeroPanel_Canvas17.width");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel16.text = param1;
         },"_HeroPanel_GlowLabel16.text");
         result[57] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas20.width = param1;
         },"_HeroPanel_Canvas20.width");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel17.text = param1;
         },"_HeroPanel_GlowLabel17.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.Special + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label7.text = param1;
         },"_HeroPanel_Label7.text");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.quality > 3 ? hero.selectHero.demon.skill.name : UILang.None;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label8.text = param1;
         },"_HeroPanel_Label8.text");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.quality > 3 ? hero.selectHero.demon.skill.name : UILang.None;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label8.toolTip = param1;
         },"_HeroPanel_Label8.toolTip");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.demon.activation ? "On" : "Off";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel18.text = param1;
         },"_HeroPanel_GlowLabel18.text");
         result[63] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.demon.activation ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel18.setStyle("color",param1);
         },"_HeroPanel_GlowLabel18.color");
         result[64] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.quality > 3;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel18.visible = param1;
         },"_HeroPanel_GlowLabel18.visible");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.demon.skill == null;
         },function(param1:Boolean):void
         {
            _HeroPanel_SWFLoader2.visible = param1;
         },"_HeroPanel_SWFLoader2.visible");
         result[66] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.demon.skill.url;
         },function(param1:Object):void
         {
            _HeroPanel_SWFLoader3.source = param1;
         },"_HeroPanel_SWFLoader3.source");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.selectHero.demon.activation;
         },function(param1:Boolean):void
         {
            _HeroPanel_SWFLoader4.visible = param1;
         },"_HeroPanel_SWFLoader4.visible");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AbilityDescribe;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel19.text = param1;
         },"_HeroPanel_GlowLabel19.text");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.demon.skill.desc3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText1.text = param1;
         },"_HeroPanel_GlowText1.text");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SpecialSkillPlace;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel20.text = param1;
         },"_HeroPanel_GlowLabel20.text");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AbilityEffect;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel21.text = param1;
         },"_HeroPanel_GlowLabel21.text");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.demon.skill.desc2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText2.text = param1;
         },"_HeroPanel_GlowText2.text");
         result[73] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.selectHero.demon.activation && hero.selectHero.quality > 3;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton10.enabled = param1;
         },"_HeroPanel_GlowButton10.enabled");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.selectHero.demon.activation;
         },function(param1:Boolean):void
         {
            _HeroPanel_SWFLoader5.enabled = param1;
         },"_HeroPanel_SWFLoader5.enabled");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorAttri_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label9.text = param1;
         },"_HeroPanel_Label9.text");
         result[76] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Label9.visible = param1;
         },"_HeroPanel_Label9.visible");
         result[77] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas29.visible = param1;
         },"_HeroPanel_Canvas29.visible");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Lv + ":" + hero.selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel22.text = param1;
         },"_HeroPanel_GlowLabel22.text");
         result[79] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel22.setStyle("color",param1);
         },"_HeroPanel_GlowLabel22.color");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel23.text = param1;
         },"_HeroPanel_GlowLabel23.text");
         result[81] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel23.setStyle("color",param1);
         },"_HeroPanel_GlowLabel23.color");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Display;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton11.label = param1;
         },"_HeroPanel_GlowButton11.label");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorMsgOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton11.toolTip = param1;
         },"_HeroPanel_GlowButton11.toolTip");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Job + "：" + hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel24.text = param1;
         },"_HeroPanel_GlowLabel24.text");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Job + "：" + hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel24.toolTip = param1;
         },"_HeroPanel_GlowLabel24.toolTip");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Quality + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel25.text = param1;
         },"_HeroPanel_GlowLabel25.text");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label10.text = param1;
         },"_HeroPanel_Label10.text");
         result[88] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_Label10.setStyle("color",param1);
         },"_HeroPanel_Label10.color");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel26.text = param1;
         },"_HeroPanel_GlowLabel26.text");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel27.text = param1;
         },"_HeroPanel_GlowLabel27.text");
         result[91] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas32.width = param1;
         },"_HeroPanel_Canvas32.width");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel28.text = param1;
         },"_HeroPanel_GlowLabel28.text");
         result[93] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas35.width = param1;
         },"_HeroPanel_Canvas35.width");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel29.text = param1;
         },"_HeroPanel_GlowLabel29.text");
         result[95] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas37.visible = param1;
         },"_HeroPanel_Canvas37.visible");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BasicAttri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel30.text = param1;
         },"_HeroPanel_GlowLabel30.text");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AbilityNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel31.text = param1;
         },"_HeroPanel_GlowLabel31.text");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.physicalAttack == -1 ? "-" : _selectHero.hero.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel32.text = param1;
         },"_HeroPanel_GlowLabel32.text");
         result[99] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image1.source = param1;
         },"_HeroPanel_Image1.source");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel33.text = param1;
         },"_HeroPanel_GlowLabel33.text");
         result[101] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image2.source = param1;
         },"_HeroPanel_Image2.source");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.spellAttack == -1 ? "-" : _selectHero.hero.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel34.text = param1;
         },"_HeroPanel_GlowLabel34.text");
         result[103] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image3.source = param1;
         },"_HeroPanel_Image3.source");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel35.text = param1;
         },"_HeroPanel_GlowLabel35.text");
         result[105] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image4.source = param1;
         },"_HeroPanel_Image4.source");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel36.text = param1;
         },"_HeroPanel_GlowLabel36.text");
         result[107] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.hitQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image5.source = param1;
         },"_HeroPanel_Image5.source");
         result[108] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.dodge + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel37.text = param1;
         },"_HeroPanel_GlowLabel37.text");
         result[109] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.dodgeQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image6.source = param1;
         },"_HeroPanel_Image6.source");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel38.text = param1;
         },"_HeroPanel_GlowLabel38.text");
         result[111] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.criticQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image7.source = param1;
         },"_HeroPanel_Image7.source");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel39.text = param1;
         },"_HeroPanel_GlowLabel39.text");
         result[113] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.speedQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image8.source = param1;
         },"_HeroPanel_Image8.source");
         result[114] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas48.visible = param1;
         },"_HeroPanel_Canvas48.visible");
         result[115] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorMsg_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label11.text = param1;
         },"_HeroPanel_Label11.text");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Lv + ":" + hero.selectHero.level;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel40.text = param1;
         },"_HeroPanel_GlowLabel40.text");
         result[117] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel40.setStyle("color",param1);
         },"_HeroPanel_GlowLabel40.color");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel41.text = param1;
         },"_HeroPanel_GlowLabel41.text");
         result[119] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel41.setStyle("color",param1);
         },"_HeroPanel_GlowLabel41.color");
         result[120] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Display;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton12.label = param1;
         },"_HeroPanel_GlowButton12.label");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorMsgOpen;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton12.toolTip = param1;
         },"_HeroPanel_GlowButton12.toolTip");
         result[122] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Job + "：" + hero.selectHero.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel42.text = param1;
         },"_HeroPanel_GlowLabel42.text");
         result[123] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Quality + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel43.text = param1;
         },"_HeroPanel_GlowLabel43.text");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.WarValue + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel44.text = param1;
         },"_HeroPanel_GlowLabel44.text");
         result[125] = binding;
         binding = new Binding(this,function():uint
         {
            return 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel44.setStyle("color",param1);
         },"_HeroPanel_GlowLabel44.color");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.fightingAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel45.text = param1;
         },"_HeroPanel_GlowLabel45.text");
         result[127] = binding;
         binding = new Binding(this,function():uint
         {
            return 16711680;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel45.setStyle("color",param1);
         },"_HeroPanel_GlowLabel45.color");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.OverlordAll + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel46.text = param1;
         },"_HeroPanel_GlowLabel46.text");
         result[129] = binding;
         binding = new Binding(this,function():uint
         {
            return 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel46.setStyle("color",param1);
         },"_HeroPanel_GlowLabel46.color");
         result[130] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.overlordPoint + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel47.text = param1;
         },"_HeroPanel_GlowLabel47.text");
         result[131] = binding;
         binding = new Binding(this,function():uint
         {
            return 65280;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel47.setStyle("color",param1);
         },"_HeroPanel_GlowLabel47.color");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.heroQuality;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label12.text = param1;
         },"_HeroPanel_Label12.text");
         result[133] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_Label12.setStyle("color",param1);
         },"_HeroPanel_Label12.color");
         result[134] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Tili + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel48.text = param1;
         },"_HeroPanel_GlowLabel48.text");
         result[135] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Exp + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel49.text = param1;
         },"_HeroPanel_GlowLabel49.text");
         result[136] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas52.width = param1;
         },"_HeroPanel_Canvas52.width");
         result[137] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.hp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel50.text = param1;
         },"_HeroPanel_GlowLabel50.text");
         result[138] = binding;
         binding = new Binding(this,function():Number
         {
            return 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas55.width = param1;
         },"_HeroPanel_Canvas55.width");
         result[139] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel51.text = param1;
         },"_HeroPanel_GlowLabel51.text");
         result[140] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorAttri_E + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label13.text = param1;
         },"_HeroPanel_Label13.text");
         result[141] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BasicAttri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel52.text = param1;
         },"_HeroPanel_GlowLabel52.text");
         result[142] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AbilityNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel53.text = param1;
         },"_HeroPanel_GlowLabel53.text");
         result[143] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.physicalAttack == -1 ? "-" : _selectHero.hero.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel54.text = param1;
         },"_HeroPanel_GlowLabel54.text");
         result[144] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image9.source = param1;
         },"_HeroPanel_Image9.source");
         result[145] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel55.text = param1;
         },"_HeroPanel_GlowLabel55.text");
         result[146] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image10.source = param1;
         },"_HeroPanel_Image10.source");
         result[147] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.spellAttack == -1 ? "-" : _selectHero.hero.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel56.text = param1;
         },"_HeroPanel_GlowLabel56.text");
         result[148] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellAttackQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image11.source = param1;
         },"_HeroPanel_Image11.source");
         result[149] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel57.text = param1;
         },"_HeroPanel_GlowLabel57.text");
         result[150] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellDefenceQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image12.source = param1;
         },"_HeroPanel_Image12.source");
         result[151] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.hit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel58.text = param1;
         },"_HeroPanel_GlowLabel58.text");
         result[152] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.hitQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image13.source = param1;
         },"_HeroPanel_Image13.source");
         result[153] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.dodge + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel59.text = param1;
         },"_HeroPanel_GlowLabel59.text");
         result[154] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.dodgeQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image14.source = param1;
         },"_HeroPanel_Image14.source");
         result[155] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.critic + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel60.text = param1;
         },"_HeroPanel_GlowLabel60.text");
         result[156] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.criticQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image15.source = param1;
         },"_HeroPanel_Image15.source");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.hero.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel61.text = param1;
         },"_HeroPanel_GlowLabel61.text");
         result[158] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.speedQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image16.source = param1;
         },"_HeroPanel_Image16.source");
         result[159] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorAttri_F + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label14.text = param1;
         },"_HeroPanel_Label14.text");
         result[160] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AddAtt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel62.text = param1;
         },"_HeroPanel_GlowLabel62.text");
         result[161] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AbilityNum;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel63.text = param1;
         },"_HeroPanel_GlowLabel63.text");
         result[162] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.anger;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel64.text = param1;
         },"_HeroPanel_GlowLabel64.text");
         result[163] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.angerQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image17.source = param1;
         },"_HeroPanel_Image17.source");
         result[164] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.physicsStrike + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel65.text = param1;
         },"_HeroPanel_GlowLabel65.text");
         result[165] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicsStrikeQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image18.source = param1;
         },"_HeroPanel_Image18.source");
         result[166] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.magicStrike + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel66.text = param1;
         },"_HeroPanel_GlowLabel66.text");
         result[167] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.magicStrikeQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image19.source = param1;
         },"_HeroPanel_Image19.source");
         result[168] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.physicsAvoidHurt + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel67.text = param1;
         },"_HeroPanel_GlowLabel67.text");
         result[169] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicsAvoidHurtQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image20.source = param1;
         },"_HeroPanel_Image20.source");
         result[170] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.magicAvoidHurt + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel68.text = param1;
         },"_HeroPanel_GlowLabel68.text");
         result[171] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.magicAvoidHurtQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image21.source = param1;
         },"_HeroPanel_Image21.source");
         result[172] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.avoidCrit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel69.text = param1;
         },"_HeroPanel_GlowLabel69.text");
         result[173] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.avoidCritQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image22.source = param1;
         },"_HeroPanel_Image22.source");
         result[174] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.block + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel70.text = param1;
         },"_HeroPanel_GlowLabel70.text");
         result[175] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.blockQuality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image23.source = param1;
         },"_HeroPanel_Image23.source");
         result[176] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.block2 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel71.text = param1;
         },"_HeroPanel_GlowLabel71.text");
         result[177] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/UI/Hero/quality/" + _selectHero.hero.block2Quality + ".png";
         },function(param1:Object):void
         {
            _HeroPanel_Image24.source = param1;
         },"_HeroPanel_Image24.source");
         result[178] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas79.visible = param1;
         },"_HeroPanel_Canvas79.visible");
         result[179] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.AttriFoster_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label15.text = param1;
         },"_HeroPanel_Label15.text");
         result[180] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.OldAttri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel72.text = param1;
         },"_HeroPanel_GlowLabel72.text");
         result[181] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.growStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel73.text = param1;
         },"_HeroPanel_GlowLabel73.text");
         result[182] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.growStrength == hero.selectHero.totalGrowStrength ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel73.setStyle("color",param1);
         },"_HeroPanel_GlowLabel73.color");
         result[183] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AddATT5;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas85.toolTip = param1;
         },"_HeroPanel_Canvas85.toolTip");
         result[184] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * hero.selectHero.growStrength / hero.selectHero.totalGrowStrength;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas86.width = param1;
         },"_HeroPanel_Canvas86.width");
         result[185] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.growIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel74.text = param1;
         },"_HeroPanel_GlowLabel74.text");
         result[186] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.growIntelligence == hero.selectHero.totalGrowIntelligence ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel74.setStyle("color",param1);
         },"_HeroPanel_GlowLabel74.color");
         result[187] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AddATT8;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas89.toolTip = param1;
         },"_HeroPanel_Canvas89.toolTip");
         result[188] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * hero.selectHero.growIntelligence / hero.selectHero.totalGrowIntelligence;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas90.width = param1;
         },"_HeroPanel_Canvas90.width");
         result[189] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.growStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel75.text = param1;
         },"_HeroPanel_GlowLabel75.text");
         result[190] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.growStamina == hero.selectHero.totalGrowStamina ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel75.setStyle("color",param1);
         },"_HeroPanel_GlowLabel75.color");
         result[191] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AddATT7;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas93.toolTip = param1;
         },"_HeroPanel_Canvas93.toolTip");
         result[192] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * hero.selectHero.growStamina / hero.selectHero.totalGrowStamina;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas94.width = param1;
         },"_HeroPanel_Canvas94.width");
         result[193] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.growAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel76.text = param1;
         },"_HeroPanel_GlowLabel76.text");
         result[194] = binding;
         binding = new Binding(this,function():uint
         {
            return hero.selectHero.growAgility == hero.selectHero.totalGrowAgility ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel76.setStyle("color",param1);
         },"_HeroPanel_GlowLabel76.color");
         result[195] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AddATT6;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas97.toolTip = param1;
         },"_HeroPanel_Canvas97.toolTip");
         result[196] = binding;
         binding = new Binding(this,function():Number
         {
            return 68 * hero.selectHero.growAgility / hero.selectHero.totalGrowAgility;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas98.width = param1;
         },"_HeroPanel_Canvas98.width");
         result[197] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.NewAttri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel77.text = param1;
         },"_HeroPanel_GlowLabel77.text");
         result[198] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.addStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText3.htmlText = param1;
         },"_HeroPanel_GlowText3.htmlText");
         result[199] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText3.visible = param1;
         },"_HeroPanel_GlowText3.visible");
         result[200] = binding;
         binding = new Binding(this,function():Object
         {
            return parseFloat(hero.selectHero.addStrength) >= hero.selectHero.growStrength ? "Border1058" : "Border1057";
         },function(param1:Object):void
         {
            _HeroPanel_Canvas102.styleName = param1;
         },"_HeroPanel_Canvas102.styleName");
         result[201] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas102.visible = param1;
         },"_HeroPanel_Canvas102.visible");
         result[202] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = parseInt(hero.selectHero.addStrength) - hero.selectHero.growStrength >= 0 ? "+" + (parseInt(hero.selectHero.addStrength) - hero.selectHero.growStrength).toString() : parseInt(hero.selectHero.addStrength) - hero.selectHero.growStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText4.htmlText = param1;
         },"_HeroPanel_GlowText4.htmlText");
         result[203] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText4.visible = param1;
         },"_HeroPanel_GlowText4.visible");
         result[204] = binding;
         binding = new Binding(this,function():uint
         {
            return parseFloat(hero.selectHero.addStrength) >= hero.selectHero.growStrength ? 65382 : 16711680;
         },function(param1:uint):void
         {
            _HeroPanel_GlowText4.setStyle("color",param1);
         },"_HeroPanel_GlowText4.color");
         result[205] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.addIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText5.htmlText = param1;
         },"_HeroPanel_GlowText5.htmlText");
         result[206] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText5.visible = param1;
         },"_HeroPanel_GlowText5.visible");
         result[207] = binding;
         binding = new Binding(this,function():Object
         {
            return parseFloat(hero.selectHero.addIntelligence) >= hero.selectHero.growIntelligence ? "Border1058" : "Border1057";
         },function(param1:Object):void
         {
            _HeroPanel_Canvas104.styleName = param1;
         },"_HeroPanel_Canvas104.styleName");
         result[208] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas104.visible = param1;
         },"_HeroPanel_Canvas104.visible");
         result[209] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = parseInt(hero.selectHero.addIntelligence) - hero.selectHero.growIntelligence >= 0 ? "+" + (parseInt(hero.selectHero.addIntelligence) - hero.selectHero.growIntelligence).toString() : parseInt(hero.selectHero.addIntelligence) - hero.selectHero.growIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText6.htmlText = param1;
         },"_HeroPanel_GlowText6.htmlText");
         result[210] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText6.visible = param1;
         },"_HeroPanel_GlowText6.visible");
         result[211] = binding;
         binding = new Binding(this,function():uint
         {
            return parseFloat(hero.selectHero.addIntelligence) >= hero.selectHero.growIntelligence ? 65382 : 16711680;
         },function(param1:uint):void
         {
            _HeroPanel_GlowText6.setStyle("color",param1);
         },"_HeroPanel_GlowText6.color");
         result[212] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.addStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText7.htmlText = param1;
         },"_HeroPanel_GlowText7.htmlText");
         result[213] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText7.visible = param1;
         },"_HeroPanel_GlowText7.visible");
         result[214] = binding;
         binding = new Binding(this,function():Object
         {
            return parseFloat(hero.selectHero.addStamina) >= hero.selectHero.growStamina ? "Border1058" : "Border1057";
         },function(param1:Object):void
         {
            _HeroPanel_Canvas106.styleName = param1;
         },"_HeroPanel_Canvas106.styleName");
         result[215] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas106.visible = param1;
         },"_HeroPanel_Canvas106.visible");
         result[216] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = parseInt(hero.selectHero.addStamina) - hero.selectHero.growStamina >= 0 ? "+" + (parseInt(hero.selectHero.addStamina) - hero.selectHero.growStamina).toString() : parseInt(hero.selectHero.addStamina) - hero.selectHero.growStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText8.htmlText = param1;
         },"_HeroPanel_GlowText8.htmlText");
         result[217] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText8.visible = param1;
         },"_HeroPanel_GlowText8.visible");
         result[218] = binding;
         binding = new Binding(this,function():uint
         {
            return parseFloat(hero.selectHero.addStamina) >= hero.selectHero.growStamina ? 65382 : 16711680;
         },function(param1:uint):void
         {
            _HeroPanel_GlowText8.setStyle("color",param1);
         },"_HeroPanel_GlowText8.color");
         result[219] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.addAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText9.htmlText = param1;
         },"_HeroPanel_GlowText9.htmlText");
         result[220] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText9.visible = param1;
         },"_HeroPanel_GlowText9.visible");
         result[221] = binding;
         binding = new Binding(this,function():Object
         {
            return parseFloat(hero.selectHero.addAgility) >= hero.selectHero.growAgility ? "Border1058" : "Border1057";
         },function(param1:Object):void
         {
            _HeroPanel_Canvas108.styleName = param1;
         },"_HeroPanel_Canvas108.styleName");
         result[222] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas108.visible = param1;
         },"_HeroPanel_Canvas108.visible");
         result[223] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = parseInt(hero.selectHero.addAgility) - hero.selectHero.growAgility >= 0 ? "+" + (parseInt(hero.selectHero.addAgility) - hero.selectHero.growAgility).toString() : parseInt(hero.selectHero.addAgility) - hero.selectHero.growAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText10.htmlText = param1;
         },"_HeroPanel_GlowText10.htmlText");
         result[224] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowText10.visible = param1;
         },"_HeroPanel_GlowText10.visible");
         result[225] = binding;
         binding = new Binding(this,function():uint
         {
            return parseFloat(hero.selectHero.addAgility) >= hero.selectHero.growAgility ? 65382 : 16711680;
         },function(param1:uint):void
         {
            _HeroPanel_GlowText10.setStyle("color",param1);
         },"_HeroPanel_GlowText10.color");
         result[226] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SeriousFame + " " + hero.selectHero.firstCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[227] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Gold + " " + hero.selectHero.secondCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn2.label = param1;
         },"btn2.label");
         result[228] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Gold + " " + hero.selectHero.thirdCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn3.label = param1;
         },"btn3.label");
         result[229] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.thirdPolish;
         },function(param1:Boolean):void
         {
            btn3.visible = param1;
         },"btn3.visible");
         result[230] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Gold + " " + hero.selectHero.fourthCost;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            btn4.label = param1;
         },"btn4.label");
         result[231] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.forthPolish;
         },function(param1:Boolean):void
         {
            btn4.visible = param1;
         },"btn4.visible");
         result[232] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.WashAttri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton13.label = param1;
         },"_HeroPanel_GlowButton13.label");
         result[233] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton13.visible = param1;
         },"_HeroPanel_GlowButton13.visible");
         result[234] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Maintain;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton14.label = param1;
         },"_HeroPanel_GlowButton14.label");
         result[235] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton14.visible = param1;
         },"_HeroPanel_GlowButton14.visible");
         result[236] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Replace;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton15.label = param1;
         },"_HeroPanel_GlowButton15.label");
         result[237] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.selectHero.hasNew;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton15.visible = param1;
         },"_HeroPanel_GlowButton15.visible");
         result[238] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 6;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas109.visible = param1;
         },"_HeroPanel_Canvas109.visible");
         result[239] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.Skill_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label16.text = param1;
         },"_HeroPanel_Label16.text");
         result[240] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.LeftPoint + "：" + hero.selectHero.skillPoint;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel78.text = param1;
         },"_HeroPanel_GlowLabel78.text");
         result[241] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.selectHero.skills;
         },function(param1:Object):void
         {
            _HeroPanel_ExtendList1.dataProvider = param1;
         },"_HeroPanel_ExtendList1.dataProvider");
         result[242] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SkillPreview;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Button2.toolTip = param1;
         },"_HeroPanel_Button2.toolTip");
         result[243] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas111.visible = param1;
         },"_HeroPanel_Canvas111.visible");
         result[244] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorOnField_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label17.text = param1;
         },"_HeroPanel_Label17.text");
         result[245] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.currentEmbattle.heros;
         },function(param1:Object):void
         {
            _HeroPanel_ExtendTileList2.dataProvider = param1;
         },"_HeroPanel_ExtendTileList2.dataProvider");
         result[246] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.currentEmbattle.level < 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas113.visible = param1;
         },"_HeroPanel_Canvas113.visible");
         result[247] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.ShipTips1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas113.toolTip = param1;
         },"_HeroPanel_Canvas113.toolTip");
         result[248] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.currentEmbattle.level < 3;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas114.visible = param1;
         },"_HeroPanel_Canvas114.visible");
         result[249] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.ShipTips2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas114.toolTip = param1;
         },"_HeroPanel_Canvas114.toolTip");
         result[250] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.currentEmbattle.level < 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas115.visible = param1;
         },"_HeroPanel_Canvas115.visible");
         result[251] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.ShipTips3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas115.toolTip = param1;
         },"_HeroPanel_Canvas115.toolTip");
         result[252] = binding;
         binding = new Binding(this,function():Boolean
         {
            return hero.currentEmbattle.level < 5;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas116.visible = param1;
         },"_HeroPanel_Canvas116.visible");
         result[253] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.ShipTips4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas116.toolTip = param1;
         },"_HeroPanel_Canvas116.toolTip");
         result[254] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.BoatDress_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label18.text = param1;
         },"_HeroPanel_Label18.text");
         result[255] = binding;
         binding = new Binding(this,function():Object
         {
            return "../assets/images/Icon/Embattle/" + hero.currentShape + "_1.swf";
         },function(param1:Object):void
         {
            _HeroPanel_Image26.source = param1;
         },"_HeroPanel_Image26.source");
         result[256] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.currentEmbattle.fightingAll;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel79.text = param1;
         },"_HeroPanel_GlowLabel79.text");
         result[257] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = Global.shipNameArr.getItemAt(hero.currentShape - 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label19.text = param1;
         },"_HeroPanel_Label19.text");
         result[258] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BoatDress;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton16.label = param1;
         },"_HeroPanel_GlowButton16.label");
         result[259] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BoatDressTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton16.toolTip = param1;
         },"_HeroPanel_GlowButton16.toolTip");
         result[260] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BoatUpGrate;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton17.label = param1;
         },"_HeroPanel_GlowButton17.label");
         result[261] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BoatDressTip2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton17.toolTip = param1;
         },"_HeroPanel_GlowButton17.toolTip");
         result[262] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 3;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas121.visible = param1;
         },"_HeroPanel_Canvas121.visible");
         result[263] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.BoatUpg_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label20.text = param1;
         },"_HeroPanel_Label20.text");
         result[264] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.FiAttri;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel80.text = param1;
         },"_HeroPanel_GlowLabel80.text");
         result[265] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PhAtt + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText11.text = param1;
         },"_HeroPanel_GlowText11.text");
         result[266] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + hero.currentEmbattle.physicalAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText12.text = param1;
         },"_HeroPanel_GlowText12.text");
         result[267] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.MagAtt + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText13.text = param1;
         },"_HeroPanel_GlowText13.text");
         result[268] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + hero.currentEmbattle.spellAttack;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText14.text = param1;
         },"_HeroPanel_GlowText14.text");
         result[269] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PhDef + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText15.text = param1;
         },"_HeroPanel_GlowText15.text");
         result[270] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + hero.currentEmbattle.physicalDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText16.text = param1;
         },"_HeroPanel_GlowText16.text");
         result[271] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.MagDef + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText17.text = param1;
         },"_HeroPanel_GlowText17.text");
         result[272] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + hero.currentEmbattle.spellDefence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText18.text = param1;
         },"_HeroPanel_GlowText18.text");
         result[273] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Speed + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText19.text = param1;
         },"_HeroPanel_GlowText19.text");
         result[274] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + hero.currentEmbattle.speed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText20.text = param1;
         },"_HeroPanel_GlowText20.text");
         result[275] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Life + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText21.text = param1;
         },"_HeroPanel_GlowText21.text");
         result[276] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + (hero.currentEmbattle.healthPoint + hero.currentEmbattle.addHealth);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText22.text = param1;
         },"_HeroPanel_GlowText22.text");
         result[277] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AvoidCrit2 + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText23.text = param1;
         },"_HeroPanel_GlowText23.text");
         result[278] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "+" + hero.currentEmbattle.addCristResit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText24.text = param1;
         },"_HeroPanel_GlowText24.text");
         result[279] = binding;
         binding = new Binding(this,function():Number
         {
            return 176 * hero.currentEmbattle.nowExp / hero.currentEmbattle.maxExp;
         },function(param1:Number):void
         {
            _HeroPanel_Canvas132.width = param1;
         },"_HeroPanel_Canvas132.width");
         result[280] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.currentEmbattle.nowExp + "/" + hero.currentEmbattle.maxExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel81.text = param1;
         },"_HeroPanel_GlowLabel81.text");
         result[281] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainCostTip1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas134.toolTip = param1;
         },"_HeroPanel_Canvas134.toolTip");
         result[282] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainCostTip2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas135.toolTip = param1;
         },"_HeroPanel_Canvas135.toolTip");
         result[283] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainCostTip3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Canvas136.toolTip = param1;
         },"_HeroPanel_Canvas136.toolTip");
         result[284] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas136.visible = param1;
         },"_HeroPanel_Canvas136.visible");
         result[285] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.BoatUpgCard.replace("#1",hero.formationCard);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel82.text = param1;
         },"_HeroPanel_GlowLabel82.text");
         result[286] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas137.visible = param1;
         },"_HeroPanel_Canvas137.visible");
         result[287] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label21.text = param1;
         },"_HeroPanel_Label21.text");
         result[288] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainP + "：" + usePosition + "/" + trainPosition;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel83.text = param1;
         },"_HeroPanel_GlowLabel83.text");
         result[289] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AddTrainP;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton21.label = param1;
         },"_HeroPanel_GlowButton21.label");
         result[290] = binding;
         binding = new Binding(this,function():Object
         {
            return heros;
         },function(param1:Object):void
         {
            _HeroPanel_ExtendTileList3.dataProvider = param1;
         },"_HeroPanel_ExtendTileList3.dataProvider");
         result[291] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas138.visible = param1;
         },"_HeroPanel_Canvas138.visible");
         result[292] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.SailorTrain_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label22.text = param1;
         },"_HeroPanel_Label22.text");
         result[293] = binding;
         binding = new Binding(this,function():Boolean
         {
            return conIndex == 1;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas139.visible = param1;
         },"_HeroPanel_Canvas139.visible");
         result[294] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainTime2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel84.text = param1;
         },"_HeroPanel_GlowLabel84.text");
         result[295] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainTime3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel85.text = param1;
         },"_HeroPanel_GlowLabel85.text");
         result[296] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainRate;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel86.text = param1;
         },"_HeroPanel_GlowLabel86.text");
         result[297] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainNeed;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel87.text = param1;
         },"_HeroPanel_GlowLabel87.text");
         result[298] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = trainSilver;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel88.text = param1;
         },"_HeroPanel_GlowLabel88.text");
         result[299] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = trainGold;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel89.text = param1;
         },"_HeroPanel_GlowLabel89.text");
         result[300] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.GainExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel90.text = param1;
         },"_HeroPanel_GlowLabel90.text");
         result[301] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = willGetExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel91.text = param1;
         },"_HeroPanel_GlowLabel91.text");
         result[302] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.StartTrain;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton22.label = param1;
         },"_HeroPanel_GlowButton22.label");
         result[303] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hero.selectHero.isRole;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton22.visible = param1;
         },"_HeroPanel_GlowButton22.visible");
         result[304] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainLvTip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText25.text = param1;
         },"_HeroPanel_GlowText25.text");
         result[305] = binding;
         binding = new Binding(this,function():Boolean
         {
            return conIndex == 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas143.visible = param1;
         },"_HeroPanel_Canvas143.visible");
         result[306] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainTime + "：";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel92.text = param1;
         },"_HeroPanel_GlowLabel92.text");
         result[307] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = _selectHero.trainTime;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel93.text = param1;
         },"_HeroPanel_GlowLabel93.text");
         result[308] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _selectHero.clock.time > 0;
         },function(param1:Boolean):void
         {
            _HeroPanel_Button3.visible = param1;
         },"_HeroPanel_Button3.visible");
         result[309] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "- " + UILang.QuickTrain_B + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label23.text = param1;
         },"_HeroPanel_Label23.text");
         result[310] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.GainExp + "：" + getExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel94.text = param1;
         },"_HeroPanel_GlowLabel94.text");
         result[311] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Potion + "：" + token;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel95.text = param1;
         },"_HeroPanel_GlowLabel95.text");
         result[312] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.QuickTrain;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton23.label = param1;
         },"_HeroPanel_GlowButton23.label");
         result[313] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PotionGetExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton23.toolTip = param1;
         },"_HeroPanel_GlowButton23.toolTip");
         result[314] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.QuickTrain2;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton24.label = param1;
         },"_HeroPanel_GlowButton24.label");
         result[315] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Gold100GetExp4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton24.toolTip = param1;
         },"_HeroPanel_GlowButton24.toolTip");
         result[316] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TrainToCool;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            trainQuick.label = param1;
         },"trainQuick.label");
         result[317] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.GoldTrain;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton25.label = param1;
         },"_HeroPanel_GlowButton25.label");
         result[318] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = DataManager.Instance.role.vip.level >= 9 ? UILang.Gold100GetExp2 : UILang.Gold100GetExp;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowButton25.toolTip = param1;
         },"_HeroPanel_GlowButton25.toolTip");
         result[319] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowButton25.visible = param1;
         },"_HeroPanel_GlowButton25.visible");
         result[320] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.EveryConsume100_G;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label24.text = param1;
         },"_HeroPanel_Label24.text");
         result[321] = binding;
         binding = new Binding(this,function():Boolean
         {
            return DataManager.Instance.role.vip.level >= 4;
         },function(param1:Boolean):void
         {
            _HeroPanel_Label24.visible = param1;
         },"_HeroPanel_Label24.visible");
         result[322] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 5;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas147.visible = param1;
         },"_HeroPanel_Canvas147.visible");
         result[323] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorList;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_Label25.text = param1;
         },"_HeroPanel_Label25.text");
         result[324] = binding;
         binding = new Binding(this,function():Object
         {
            return hero.showList;
         },function(param1:Object):void
         {
            _HeroPanel_ExtendTileList4.dataProvider = param1;
         },"_HeroPanel_ExtendTileList4.dataProvider");
         result[325] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.SailorNum + "：" + DataManager.Instance.hero.list.length + "/" + DataManager.Instance.role.heroAmount;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel96.text = param1;
         },"_HeroPanel_GlowLabel96.text");
         result[326] = binding;
         binding = new Binding(this,function():Object
         {
            return passOn;
         },function(param1:Object):void
         {
            cell0.data = param1;
         },"cell0.data");
         result[327] = binding;
         binding = new Binding(this,function():Object
         {
            return coverPassOn;
         },function(param1:Object):void
         {
            cell1.data = param1;
         },"cell1.data");
         result[328] = binding;
         binding = new Binding(this,function():Boolean
         {
            return passOn != null && coverPassOn != null;
         },function(param1:Boolean):void
         {
            _HeroPanel_Button4.enabled = param1;
         },"_HeroPanel_Button4.enabled");
         result[329] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Perfect;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText26.text = param1;
         },"_HeroPanel_GlowText26.text");
         result[330] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PayLevelPassOn;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText27.text = param1;
         },"_HeroPanel_GlowText27.text");
         result[331] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PassOnExplain1;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText28.htmlText = param1;
         },"_HeroPanel_GlowText28.htmlText");
         result[332] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PassInSailor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText29.text = param1;
         },"_HeroPanel_GlowText29.text");
         result[333] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PassOnSailor;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText30.text = param1;
         },"_HeroPanel_GlowText30.text");
         result[334] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = passOn.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText31.text = param1;
         },"_HeroPanel_GlowText31.text");
         result[335] = binding;
         binding = new Binding(this,function():uint
         {
            return passOn.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowText31.setStyle("color",param1);
         },"_HeroPanel_GlowText31.color");
         result[336] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "Lv." + passOn.level.toString();
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText32.text = param1;
         },"_HeroPanel_GlowText32.text");
         result[337] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = coverPassOn.name;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText33.text = param1;
         },"_HeroPanel_GlowText33.text");
         result[338] = binding;
         binding = new Binding(this,function():uint
         {
            return coverPassOn.nameColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowText33.setStyle("color",param1);
         },"_HeroPanel_GlowText33.color");
         result[339] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = "Lv." + (perfect == 0 || perfect == 2 ? (coverPassOn.level >= passOn.level ? coverPassOn.level.toString() : passOn.level.toString()) : (coverPassOn.level >= passOn.level * 0.7 ? coverPassOn.level.toString() : Math.floor(passOn.level * 0.7).toString()));
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText34.text = param1;
         },"_HeroPanel_GlowText34.text");
         result[340] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = passOn.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText35.text = param1;
         },"_HeroPanel_GlowText35.text");
         result[341] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = coverPassOn.jobName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowText36.text = param1;
         },"_HeroPanel_GlowText36.text");
         result[342] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = passOn.growStrength;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel97.text = param1;
         },"_HeroPanel_GlowLabel97.text");
         result[343] = binding;
         binding = new Binding(this,function():uint
         {
            return passOn.growStrength == passOn.totalGrowStrength ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel97.setStyle("color",param1);
         },"_HeroPanel_GlowLabel97.color");
         result[344] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = passOn.growIntelligence;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel98.text = param1;
         },"_HeroPanel_GlowLabel98.text");
         result[345] = binding;
         binding = new Binding(this,function():uint
         {
            return passOn.growIntelligence == passOn.totalGrowIntelligence ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel98.setStyle("color",param1);
         },"_HeroPanel_GlowLabel98.color");
         result[346] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = passOn.growStamina;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel99.text = param1;
         },"_HeroPanel_GlowLabel99.text");
         result[347] = binding;
         binding = new Binding(this,function():uint
         {
            return passOn.growStamina == passOn.totalGrowStamina ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel99.setStyle("color",param1);
         },"_HeroPanel_GlowLabel99.color");
         result[348] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = passOn.growAgility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel100.text = param1;
         },"_HeroPanel_GlowLabel100.text");
         result[349] = binding;
         binding = new Binding(this,function():uint
         {
            return passOn.growAgility == passOn.totalGrowAgility ? 16711680 : 16777215;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel100.setStyle("color",param1);
         },"_HeroPanel_GlowLabel100.color");
         result[350] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = li;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel101.text = param1;
         },"_HeroPanel_GlowLabel101.text");
         result[351] = binding;
         binding = new Binding(this,function():uint
         {
            return liColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel101.setStyle("color",param1);
         },"_HeroPanel_GlowLabel101.color");
         result[352] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel101.visible = param1;
         },"_HeroPanel_GlowLabel101.visible");
         result[353] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = addLiStr + "" + addLi;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel102.text = param1;
         },"_HeroPanel_GlowLabel102.text");
         result[354] = binding;
         binding = new Binding(this,function():uint
         {
            return addLiColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel102.setStyle("color",param1);
         },"_HeroPanel_GlowLabel102.color");
         result[355] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel102.visible = param1;
         },"_HeroPanel_GlowLabel102.visible");
         result[356] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = zhi;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel103.text = param1;
         },"_HeroPanel_GlowLabel103.text");
         result[357] = binding;
         binding = new Binding(this,function():uint
         {
            return zhiColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel103.setStyle("color",param1);
         },"_HeroPanel_GlowLabel103.color");
         result[358] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel103.visible = param1;
         },"_HeroPanel_GlowLabel103.visible");
         result[359] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = addZhiStr + "" + addZhi;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel104.text = param1;
         },"_HeroPanel_GlowLabel104.text");
         result[360] = binding;
         binding = new Binding(this,function():uint
         {
            return addZhiColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel104.setStyle("color",param1);
         },"_HeroPanel_GlowLabel104.color");
         result[361] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel104.visible = param1;
         },"_HeroPanel_GlowLabel104.visible");
         result[362] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = ti;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel105.text = param1;
         },"_HeroPanel_GlowLabel105.text");
         result[363] = binding;
         binding = new Binding(this,function():uint
         {
            return tiColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel105.setStyle("color",param1);
         },"_HeroPanel_GlowLabel105.color");
         result[364] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel105.visible = param1;
         },"_HeroPanel_GlowLabel105.visible");
         result[365] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = addTiStr + "" + addTi;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel106.text = param1;
         },"_HeroPanel_GlowLabel106.text");
         result[366] = binding;
         binding = new Binding(this,function():uint
         {
            return addTiColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel106.setStyle("color",param1);
         },"_HeroPanel_GlowLabel106.color");
         result[367] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel106.visible = param1;
         },"_HeroPanel_GlowLabel106.visible");
         result[368] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = min;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel107.text = param1;
         },"_HeroPanel_GlowLabel107.text");
         result[369] = binding;
         binding = new Binding(this,function():uint
         {
            return minColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel107.setStyle("color",param1);
         },"_HeroPanel_GlowLabel107.color");
         result[370] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel107.visible = param1;
         },"_HeroPanel_GlowLabel107.visible");
         result[371] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = addMinStr + "" + addMin;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel108.text = param1;
         },"_HeroPanel_GlowLabel108.text");
         result[372] = binding;
         binding = new Binding(this,function():uint
         {
            return addMinColor;
         },function(param1:uint):void
         {
            _HeroPanel_GlowLabel108.setStyle("color",param1);
         },"_HeroPanel_GlowLabel108.color");
         result[373] = binding;
         binding = new Binding(this,function():Boolean
         {
            return coverPassOn != null && perfect != 2;
         },function(param1:Boolean):void
         {
            _HeroPanel_GlowLabel108.visible = param1;
         },"_HeroPanel_GlowLabel108.visible");
         result[374] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex != 5 && currentIndex != 1;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas159.visible = param1;
         },"_HeroPanel_Canvas159.visible");
         result[375] = binding;
         binding = new Binding(this,function():Boolean
         {
            return currentIndex == 1;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas160.visible = param1;
         },"_HeroPanel_Canvas160.visible");
         result[376] = binding;
         binding = new Binding(this,function():Boolean
         {
            return isDetailOpen;
         },function(param1:Boolean):void
         {
            _HeroPanel_Canvas161.visible = param1;
         },"_HeroPanel_Canvas161.visible");
         result[377] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AbilityDes;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel109.text = param1;
         },"_HeroPanel_GlowLabel109.text");
         result[378] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.ExtraAbility;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel110.text = param1;
         },"_HeroPanel_GlowLabel110.text");
         result[379] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.TiliReduce;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel111.text = param1;
         },"_HeroPanel_GlowLabel111.text");
         result[380] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.tiliReduce + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel112.text = param1;
         },"_HeroPanel_GlowLabel112.text");
         result[381] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PhysicsStrike;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel113.text = param1;
         },"_HeroPanel_GlowLabel113.text");
         result[382] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.physicsStrike + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel114.text = param1;
         },"_HeroPanel_GlowLabel114.text");
         result[383] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.MagicStrike;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel115.text = param1;
         },"_HeroPanel_GlowLabel115.text");
         result[384] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.magicStrike + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel116.text = param1;
         },"_HeroPanel_GlowLabel116.text");
         result[385] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.PhysicsAvoidHurt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel117.text = param1;
         },"_HeroPanel_GlowLabel117.text");
         result[386] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.physicsAvoidHurt + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel118.text = param1;
         },"_HeroPanel_GlowLabel118.text");
         result[387] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.MagicAvoidHurt;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel119.text = param1;
         },"_HeroPanel_GlowLabel119.text");
         result[388] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.magicAvoidHurt + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel120.text = param1;
         },"_HeroPanel_GlowLabel120.text");
         result[389] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.AvoidCrit3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel121.text = param1;
         },"_HeroPanel_GlowLabel121.text");
         result[390] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.avoidCrit + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel122.text = param1;
         },"_HeroPanel_GlowLabel122.text");
         result[391] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Block3;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel123.text = param1;
         },"_HeroPanel_GlowLabel123.text");
         result[392] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.block + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel124.text = param1;
         },"_HeroPanel_GlowLabel124.text");
         result[393] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = UILang.Block4;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel125.text = param1;
         },"_HeroPanel_GlowLabel125.text");
         result[394] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.selectHero.block2 + "%";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel126.text = param1;
         },"_HeroPanel_GlowLabel126.text");
         result[395] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = undefined;
            var _loc2_:* = undefined;
            result = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _HeroPanel_GlowLabel127.text = param1;
         },"_HeroPanel_GlowLabel127.text");
         result[396] = binding;
         return result;
      }
      
      private function set tiColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1352404498tiColor;
         if(oldValue !== value)
         {
            this._1352404498tiColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiColor",oldValue,value));
         }
      }
      
      private function set addMin(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1422531087addMin;
         if(oldValue !== value)
         {
            this._1422531087addMin = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addMin",oldValue,value));
         }
      }
      
      private function set trainCost(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._903860725trainCost;
         if(oldValue !== value)
         {
            this._903860725trainCost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainCost",oldValue,value));
         }
      }
      
      private function set token(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._110541305token;
         if(oldValue !== value)
         {
            this._110541305token = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"token",oldValue,value));
         }
      }
      
      private function set addLi(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._92659198addLi;
         if(oldValue !== value)
         {
            this._92659198addLi = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addLi",oldValue,value));
         }
      }
      
      public function set r2(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3584r2;
         if(_loc2_ !== param1)
         {
            this._3584r2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r2",_loc2_,param1));
         }
      }
      
      public function set r4(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3586r4;
         if(_loc2_ !== param1)
         {
            this._3586r4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r4",_loc2_,param1));
         }
      }
      
      private function onParadeTimer(e:TimerEvent) : void
      {
         paradeTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,onParadeTimer);
         canParade = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get jumpTime() : String
      {
         return this._255331301jumpTime;
      }
      
      private function resolvePolish(e:ResultEvent) : void
      {
         dispatchEvent(new GuideEvent("21-2"));
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_WASH))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         DataManager.Instance.parcel.resolveMoney(e);
         DataManager.Instance.role.resolveExploit(e);
         hero.resolveHeroList(e);
      }
      
      [Bindable(event="propertyChange")]
      public function get star1() : Canvas
      {
         return this._109757471star1;
      }
      
      [Bindable(event="propertyChange")]
      public function get star2() : Canvas
      {
         return this._109757472star2;
      }
      
      [Bindable(event="propertyChange")]
      public function get star3() : Canvas
      {
         return this._109757473star3;
      }
      
      [Bindable(event="propertyChange")]
      public function get star5() : Canvas
      {
         return this._109757475star5;
      }
      
      [Bindable(event="propertyChange")]
      public function get star4() : Canvas
      {
         return this._109757474star4;
      }
      
      [Bindable(event="propertyChange")]
      private function get minColor() : int
      {
         return this._1394099151minColor;
      }
      
      public function __levelPassOn_click(event:MouseEvent) : void
      {
         payClickHandler(2);
      }
      
      private function addTrainPosition() : void
      {
         if(trainPosition >= 7)
         {
            ShowResult.inst.showResult(-1,UILang.TrainFull);
         }
         if(canAdd)
         {
            if(trainPosition < 7)
            {
               GameAlert.show(8,UILang.CostAddTrain_G.replace("#1",costMoney),decideAddTrainPosition);
            }
         }
         else
         {
            ShowResult.inst.showResult(-1,UILang.VIPLack);
         }
      }
      
      private function resolveJump(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.TrainGetExp.replace("#1",e.result.training_experience));
         }
         HttpServerManager.getInstance().callServer("generalService","general",resolveJump2,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         resolveHeroTrainData(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      public function ___HeroPanel_SWFLoader3_rollOut(event:MouseEvent) : void
      {
         rollOut(event);
      }
      
      public function __btn23_click(event:MouseEvent) : void
      {
         refreshWillGetExp();
      }
      
      [Bindable(event="propertyChange")]
      public function get payPassOn() : Button
      {
         return this._920310632payPassOn;
      }
      
      private function decideStopTrain(result:int, hero:HeroTrainData) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","trainingStop",resolveStopTrain,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.hero.id]);
         }
      }
      
      private function set min(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._108114min;
         if(oldValue !== value)
         {
            this._108114min = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"min",oldValue,value));
         }
      }
      
      private function resolveZhuanshen(e:ResultEvent) : void
      {
         if(e.result.error == -1)
         {
            ShowResult.inst.showResult(-2,UILang.ReliveSucc);
         }
         resolveHeroTrainData(e);
      }
      
      public function ___HeroPanel_MoveContainer1_preinitialize(event:FlexEvent) : void
      {
         init();
      }
      
      private function set addTiColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._555829773addTiColor;
         if(oldValue !== value)
         {
            this._555829773addTiColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addTiColor",oldValue,value));
         }
      }
      
      private function _HeroPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.MarinerInfo;
         _loc1_ = currentIndex == 1;
         _loc1_ = UILang.Skill;
         _loc1_ = currentIndex == 6;
         _loc1_ = UILang.Train;
         _loc1_ = currentIndex == 2;
         _loc1_ = DataManager.Instance.role.control.trainBtn;
         _loc1_ = UILang.Boat;
         _loc1_ = currentIndex == 3;
         _loc1_ = DataManager.Instance.role.control.embattleBtn;
         _loc1_ = UILang.Foster;
         _loc1_ = currentIndex == 4;
         _loc1_ = DataManager.Instance.role.control.polishBtn;
         _loc1_ = UILang.PassOn;
         _loc1_ = currentIndex == 5;
         _loc1_ = DataManager.Instance.role.officialRanklevel >= 80;
         _loc1_ = currentIndex == 1 || currentIndex == 3 || currentIndex == 4 || currentIndex == 6;
         _loc1_ = UILang.SailorList;
         _loc1_ = hero.showList;
         _loc1_ = UILang.SailorNum + "：" + DataManager.Instance.hero.list.length + "/" + DataManager.Instance.role.heroAmount;
         _loc1_ = UILang.Fire;
         _loc1_ = !hero.selectHero.isRole;
         _loc1_ = currentIndex == 4;
         _loc1_ = "- " + UILang.SailorMsg_B + " -";
         _loc1_ = UILang.Lv + ":" + hero.selectHero.level;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = hero.selectHero.name;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Display;
         _loc1_ = UILang.SailorMsgOpen;
         _loc1_ = UILang.Job + "：" + hero.selectHero.jobName;
         _loc1_ = UILang.Quality + "：";
         _loc1_ = hero.selectHero.heroQuality;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         _loc1_ = hero.selectHero.hp;
         _loc1_ = 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         _loc1_ = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
         _loc1_ = "- " + UILang.SailorAttri_B + " -";
         _loc1_ = needAbilityChange ? hero.selectHero : null;
         _loc1_ = currentIndex == 6;
         _loc1_ = "- " + UILang.SailorMsg_B + " -";
         _loc1_ = UILang.Lv + ":" + hero.selectHero.level;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = hero.selectHero.name;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Display;
         _loc1_ = UILang.SailorMsgOpen;
         _loc1_ = UILang.Job + "：" + hero.selectHero.jobName;
         _loc1_ = UILang.Quality + "：";
         _loc1_ = hero.selectHero.heroQuality;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         _loc1_ = hero.selectHero.hp;
         _loc1_ = 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         _loc1_ = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
         _loc1_ = "- " + UILang.Special + " -";
         _loc1_ = hero.selectHero.quality > 3 ? hero.selectHero.demon.skill.name : UILang.None;
         _loc1_ = hero.selectHero.quality > 3 ? hero.selectHero.demon.skill.name : UILang.None;
         _loc1_ = hero.selectHero.demon.activation ? "On" : "Off";
         _loc1_ = hero.selectHero.demon.activation ? 65280 : 16711680;
         _loc1_ = hero.selectHero.quality > 3;
         _loc1_ = hero.selectHero.demon.skill == null;
         _loc1_ = hero.selectHero.demon.skill.url;
         _loc1_ = !hero.selectHero.demon.activation;
         _loc1_ = UILang.AbilityDescribe;
         _loc1_ = hero.selectHero.demon.skill.desc3;
         _loc1_ = UILang.SpecialSkillPlace;
         _loc1_ = UILang.AbilityEffect;
         _loc1_ = hero.selectHero.demon.skill.desc2;
         _loc1_ = !hero.selectHero.demon.activation && hero.selectHero.quality > 3;
         _loc1_ = !hero.selectHero.demon.activation;
         _loc1_ = "- " + UILang.SailorAttri_B + " -";
         _loc1_ = currentIndex == 2;
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.Lv + ":" + hero.selectHero.level;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = hero.selectHero.name;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Display;
         _loc1_ = UILang.SailorMsgOpen;
         _loc1_ = UILang.Job + "：" + hero.selectHero.jobName;
         _loc1_ = UILang.Job + "：" + hero.selectHero.jobName;
         _loc1_ = UILang.Quality + "：";
         _loc1_ = hero.selectHero.heroQuality;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         _loc1_ = hero.selectHero.hp;
         _loc1_ = 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         _loc1_ = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.BasicAttri;
         _loc1_ = UILang.AbilityNum;
         _loc1_ = _selectHero.hero.physicalAttack == -1 ? "-" : _selectHero.hero.physicalAttack;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalAttackQuality + ".png";
         _loc1_ = _selectHero.hero.physicalDefence;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalDefenceQuality + ".png";
         _loc1_ = _selectHero.hero.spellAttack == -1 ? "-" : _selectHero.hero.spellAttack;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellAttackQuality + ".png";
         _loc1_ = _selectHero.hero.spellDefence;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellDefenceQuality + ".png";
         _loc1_ = _selectHero.hero.hit + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.hitQuality + ".png";
         _loc1_ = _selectHero.hero.dodge + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.dodgeQuality + ".png";
         _loc1_ = _selectHero.hero.critic + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.criticQuality + ".png";
         _loc1_ = _selectHero.hero.speed;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.speedQuality + ".png";
         _loc1_ = currentIndex == 1;
         _loc1_ = "- " + UILang.SailorMsg_B + " -";
         _loc1_ = UILang.Lv + ":" + hero.selectHero.level;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = hero.selectHero.name;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Display;
         _loc1_ = UILang.SailorMsgOpen;
         _loc1_ = UILang.Job + "：" + hero.selectHero.jobName;
         _loc1_ = UILang.Quality + "：";
         _loc1_ = UILang.WarValue + "：";
         _loc1_ = 16777215;
         _loc1_ = hero.selectHero.fightingAll;
         _loc1_ = 16711680;
         _loc1_ = UILang.OverlordAll + "：";
         _loc1_ = 16777215;
         _loc1_ = hero.selectHero.overlordPoint + "%";
         _loc1_ = 65280;
         _loc1_ = hero.selectHero.heroQuality;
         _loc1_ = hero.selectHero.nameColor;
         _loc1_ = UILang.Tili + "：";
         _loc1_ = UILang.Exp + "：";
         _loc1_ = 66 * hero.selectHero.hp / hero.selectHero.maxHp;
         _loc1_ = hero.selectHero.hp;
         _loc1_ = 66 * hero.selectHero.exp / hero.selectHero.nextExp;
         _loc1_ = int(hero.selectHero.exp / hero.selectHero.nextExp * 100) + "%";
         _loc1_ = "- " + UILang.SailorAttri_E + " -";
         _loc1_ = UILang.BasicAttri;
         _loc1_ = UILang.AbilityNum;
         _loc1_ = _selectHero.hero.physicalAttack == -1 ? "-" : _selectHero.hero.physicalAttack;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalAttackQuality + ".png";
         _loc1_ = _selectHero.hero.physicalDefence;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicalDefenceQuality + ".png";
         _loc1_ = _selectHero.hero.spellAttack == -1 ? "-" : _selectHero.hero.spellAttack;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellAttackQuality + ".png";
         _loc1_ = _selectHero.hero.spellDefence;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.spellDefenceQuality + ".png";
         _loc1_ = _selectHero.hero.hit + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.hitQuality + ".png";
         _loc1_ = _selectHero.hero.dodge + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.dodgeQuality + ".png";
         _loc1_ = _selectHero.hero.critic + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.criticQuality + ".png";
         _loc1_ = _selectHero.hero.speed;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.speedQuality + ".png";
         _loc1_ = "- " + UILang.SailorAttri_F + " -";
         _loc1_ = UILang.AddAtt;
         _loc1_ = UILang.AbilityNum;
         _loc1_ = hero.selectHero.anger;
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.angerQuality + ".png";
         _loc1_ = hero.selectHero.physicsStrike + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicsStrikeQuality + ".png";
         _loc1_ = hero.selectHero.magicStrike + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.magicStrikeQuality + ".png";
         _loc1_ = hero.selectHero.physicsAvoidHurt + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.physicsAvoidHurtQuality + ".png";
         _loc1_ = hero.selectHero.magicAvoidHurt + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.magicAvoidHurtQuality + ".png";
         _loc1_ = hero.selectHero.avoidCrit + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.avoidCritQuality + ".png";
         _loc1_ = hero.selectHero.block + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.blockQuality + ".png";
         _loc1_ = hero.selectHero.block2 + "%";
         _loc1_ = "../assets/images/UI/Hero/quality/" + _selectHero.hero.block2Quality + ".png";
         _loc1_ = currentIndex == 4;
         _loc1_ = "- " + UILang.AttriFoster_B + " -";
         _loc1_ = UILang.OldAttri;
         _loc1_ = hero.selectHero.growStrength;
         _loc1_ = hero.selectHero.growStrength == hero.selectHero.totalGrowStrength ? 16711680 : 16777215;
         _loc1_ = UILang.AddATT5;
         _loc1_ = 68 * hero.selectHero.growStrength / hero.selectHero.totalGrowStrength;
         _loc1_ = hero.selectHero.growIntelligence;
         _loc1_ = hero.selectHero.growIntelligence == hero.selectHero.totalGrowIntelligence ? 16711680 : 16777215;
         _loc1_ = UILang.AddATT8;
         _loc1_ = 68 * hero.selectHero.growIntelligence / hero.selectHero.totalGrowIntelligence;
         _loc1_ = hero.selectHero.growStamina;
         _loc1_ = hero.selectHero.growStamina == hero.selectHero.totalGrowStamina ? 16711680 : 16777215;
         _loc1_ = UILang.AddATT7;
         _loc1_ = 68 * hero.selectHero.growStamina / hero.selectHero.totalGrowStamina;
         _loc1_ = hero.selectHero.growAgility;
         _loc1_ = hero.selectHero.growAgility == hero.selectHero.totalGrowAgility ? 16711680 : 16777215;
         _loc1_ = UILang.AddATT6;
         _loc1_ = 68 * hero.selectHero.growAgility / hero.selectHero.totalGrowAgility;
         _loc1_ = UILang.NewAttri;
         _loc1_ = hero.selectHero.addStrength;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addStrength) >= hero.selectHero.growStrength ? "Border1058" : "Border1057";
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseInt(hero.selectHero.addStrength) - hero.selectHero.growStrength >= 0 ? "+" + (parseInt(hero.selectHero.addStrength) - hero.selectHero.growStrength).toString() : parseInt(hero.selectHero.addStrength) - hero.selectHero.growStrength;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addStrength) >= hero.selectHero.growStrength ? 65382 : 16711680;
         _loc1_ = hero.selectHero.addIntelligence;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addIntelligence) >= hero.selectHero.growIntelligence ? "Border1058" : "Border1057";
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseInt(hero.selectHero.addIntelligence) - hero.selectHero.growIntelligence >= 0 ? "+" + (parseInt(hero.selectHero.addIntelligence) - hero.selectHero.growIntelligence).toString() : parseInt(hero.selectHero.addIntelligence) - hero.selectHero.growIntelligence;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addIntelligence) >= hero.selectHero.growIntelligence ? 65382 : 16711680;
         _loc1_ = hero.selectHero.addStamina;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addStamina) >= hero.selectHero.growStamina ? "Border1058" : "Border1057";
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseInt(hero.selectHero.addStamina) - hero.selectHero.growStamina >= 0 ? "+" + (parseInt(hero.selectHero.addStamina) - hero.selectHero.growStamina).toString() : parseInt(hero.selectHero.addStamina) - hero.selectHero.growStamina;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addStamina) >= hero.selectHero.growStamina ? 65382 : 16711680;
         _loc1_ = hero.selectHero.addAgility;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addAgility) >= hero.selectHero.growAgility ? "Border1058" : "Border1057";
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseInt(hero.selectHero.addAgility) - hero.selectHero.growAgility >= 0 ? "+" + (parseInt(hero.selectHero.addAgility) - hero.selectHero.growAgility).toString() : parseInt(hero.selectHero.addAgility) - hero.selectHero.growAgility;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = parseFloat(hero.selectHero.addAgility) >= hero.selectHero.growAgility ? 65382 : 16711680;
         _loc1_ = UILang.SeriousFame + " " + hero.selectHero.firstCost;
         _loc1_ = UILang.Gold + " " + hero.selectHero.secondCost;
         _loc1_ = UILang.Gold + " " + hero.selectHero.thirdCost;
         _loc1_ = DataManager.Instance.role.vip.thirdPolish;
         _loc1_ = UILang.Gold + " " + hero.selectHero.fourthCost;
         _loc1_ = DataManager.Instance.role.vip.forthPolish;
         _loc1_ = UILang.WashAttri;
         _loc1_ = !hero.selectHero.hasNew;
         _loc1_ = UILang.Maintain;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = UILang.Replace;
         _loc1_ = hero.selectHero.hasNew;
         _loc1_ = currentIndex == 6;
         _loc1_ = "- " + UILang.Skill_B + " -";
         _loc1_ = UILang.LeftPoint + "：" + hero.selectHero.skillPoint;
         _loc1_ = hero.selectHero.skills;
         _loc1_ = UILang.SkillPreview;
         _loc1_ = currentIndex == 3;
         _loc1_ = "- " + UILang.SailorOnField_B + " -";
         _loc1_ = hero.currentEmbattle.heros;
         _loc1_ = hero.currentEmbattle.level < 2;
         _loc1_ = UILang.ShipTips1;
         _loc1_ = hero.currentEmbattle.level < 3;
         _loc1_ = UILang.ShipTips2;
         _loc1_ = hero.currentEmbattle.level < 4;
         _loc1_ = UILang.ShipTips3;
         _loc1_ = hero.currentEmbattle.level < 5;
         _loc1_ = UILang.ShipTips4;
         _loc1_ = "- " + UILang.BoatDress_B + " -";
         _loc1_ = "../assets/images/Icon/Embattle/" + hero.currentShape + "_1.swf";
         _loc1_ = hero.currentEmbattle.fightingAll;
         _loc1_ = Global.shipNameArr.getItemAt(hero.currentShape - 1);
         _loc1_ = UILang.BoatDress;
         _loc1_ = UILang.BoatDressTip;
         _loc1_ = UILang.BoatUpGrate;
         _loc1_ = UILang.BoatDressTip2;
         _loc1_ = currentIndex == 3;
         _loc1_ = "- " + UILang.BoatUpg_B + " -";
         _loc1_ = UILang.FiAttri;
         _loc1_ = UILang.PhAtt + "：";
         _loc1_ = "+" + hero.currentEmbattle.physicalAttack;
         _loc1_ = UILang.MagAtt + "：";
         _loc1_ = "+" + hero.currentEmbattle.spellAttack;
         _loc1_ = UILang.PhDef + "：";
         _loc1_ = "+" + hero.currentEmbattle.physicalDefence;
         _loc1_ = UILang.MagDef + "：";
         _loc1_ = "+" + hero.currentEmbattle.spellDefence;
         _loc1_ = UILang.Speed + "：";
         _loc1_ = "+" + hero.currentEmbattle.speed;
         _loc1_ = UILang.Life + "：";
         _loc1_ = "+" + (hero.currentEmbattle.healthPoint + hero.currentEmbattle.addHealth);
         _loc1_ = UILang.AvoidCrit2 + "：";
         _loc1_ = "+" + hero.currentEmbattle.addCristResit + "%";
         _loc1_ = 176 * hero.currentEmbattle.nowExp / hero.currentEmbattle.maxExp;
         _loc1_ = hero.currentEmbattle.nowExp + "/" + hero.currentEmbattle.maxExp;
         _loc1_ = UILang.TrainCostTip1;
         _loc1_ = UILang.TrainCostTip2;
         _loc1_ = UILang.TrainCostTip3;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
         _loc1_ = UILang.BoatUpgCard.replace("#1",hero.formationCard);
         _loc1_ = currentIndex == 2;
         _loc1_ = UILang.SailorList;
         _loc1_ = UILang.TrainP + "：" + usePosition + "/" + trainPosition;
         _loc1_ = UILang.AddTrainP;
         _loc1_ = heros;
         _loc1_ = currentIndex == 2;
         _loc1_ = "- " + UILang.SailorTrain_B + " -";
         _loc1_ = conIndex == 1;
         _loc1_ = UILang.TrainTime2;
         _loc1_ = UILang.TrainTime3;
         _loc1_ = UILang.TrainRate;
         _loc1_ = UILang.TrainNeed;
         _loc1_ = trainSilver;
         _loc1_ = trainGold;
         _loc1_ = UILang.GainExp;
         _loc1_ = willGetExp;
         _loc1_ = UILang.StartTrain;
         _loc1_ = !hero.selectHero.isRole;
         _loc1_ = UILang.TrainLvTip;
         _loc1_ = conIndex == 2;
         _loc1_ = UILang.TrainTime + "：";
         _loc1_ = _selectHero.trainTime;
         _loc1_ = _selectHero.clock.time > 0;
         _loc1_ = "- " + UILang.QuickTrain_B + " -";
         _loc1_ = UILang.GainExp + "：" + getExp;
         _loc1_ = UILang.Potion + "：" + token;
         _loc1_ = UILang.QuickTrain;
         _loc1_ = UILang.PotionGetExp;
         _loc1_ = UILang.QuickTrain2;
         _loc1_ = UILang.Gold100GetExp4;
         _loc1_ = UILang.TrainToCool;
         _loc1_ = UILang.GoldTrain;
         _loc1_ = DataManager.Instance.role.vip.level >= 9 ? UILang.Gold100GetExp2 : UILang.Gold100GetExp;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
         _loc1_ = UILang.EveryConsume100_G;
         _loc1_ = DataManager.Instance.role.vip.level >= 4;
         _loc1_ = currentIndex == 5;
         _loc1_ = UILang.SailorList;
         _loc1_ = hero.showList;
         _loc1_ = UILang.SailorNum + "：" + DataManager.Instance.hero.list.length + "/" + DataManager.Instance.role.heroAmount;
         _loc1_ = passOn;
         _loc1_ = coverPassOn;
         _loc1_ = passOn != null && coverPassOn != null;
         _loc1_ = UILang.Perfect;
         _loc1_ = UILang.PayLevelPassOn;
         _loc1_ = UILang.PassOnExplain1;
         _loc1_ = UILang.PassInSailor;
         _loc1_ = UILang.PassOnSailor;
         _loc1_ = passOn.name;
         _loc1_ = passOn.nameColor;
         _loc1_ = "Lv." + passOn.level.toString();
         _loc1_ = coverPassOn.name;
         _loc1_ = coverPassOn.nameColor;
         _loc1_ = "Lv." + (perfect == 0 || perfect == 2 ? (coverPassOn.level >= passOn.level ? coverPassOn.level.toString() : passOn.level.toString()) : (coverPassOn.level >= passOn.level * 0.7 ? coverPassOn.level.toString() : Math.floor(passOn.level * 0.7).toString()));
         _loc1_ = passOn.jobName;
         _loc1_ = coverPassOn.jobName;
         _loc1_ = passOn.growStrength;
         _loc1_ = passOn.growStrength == passOn.totalGrowStrength ? 16711680 : 16777215;
         _loc1_ = passOn.growIntelligence;
         _loc1_ = passOn.growIntelligence == passOn.totalGrowIntelligence ? 16711680 : 16777215;
         _loc1_ = passOn.growStamina;
         _loc1_ = passOn.growStamina == passOn.totalGrowStamina ? 16711680 : 16777215;
         _loc1_ = passOn.growAgility;
         _loc1_ = passOn.growAgility == passOn.totalGrowAgility ? 16711680 : 16777215;
         _loc1_ = li;
         _loc1_ = liColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = addLiStr + "" + addLi;
         _loc1_ = addLiColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = zhi;
         _loc1_ = zhiColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = addZhiStr + "" + addZhi;
         _loc1_ = addZhiColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = ti;
         _loc1_ = tiColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = addTiStr + "" + addTi;
         _loc1_ = addTiColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = min;
         _loc1_ = minColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = addMinStr + "" + addMin;
         _loc1_ = addMinColor;
         _loc1_ = coverPassOn != null && perfect != 2;
         _loc1_ = currentIndex != 5 && currentIndex != 1;
         _loc1_ = currentIndex == 1;
         _loc1_ = isDetailOpen;
         _loc1_ = UILang.AbilityDes;
         _loc1_ = UILang.ExtraAbility;
         _loc1_ = UILang.TiliReduce;
         _loc1_ = hero.selectHero.tiliReduce + "%";
         _loc1_ = UILang.PhysicsStrike;
         _loc1_ = hero.selectHero.physicsStrike + "%";
         _loc1_ = UILang.MagicStrike;
         _loc1_ = hero.selectHero.magicStrike + "%";
         _loc1_ = UILang.PhysicsAvoidHurt;
         _loc1_ = hero.selectHero.physicsAvoidHurt + "%";
         _loc1_ = UILang.MagicAvoidHurt;
         _loc1_ = hero.selectHero.magicAvoidHurt + "%";
         _loc1_ = UILang.AvoidCrit3;
         _loc1_ = hero.selectHero.avoidCrit + "%";
         _loc1_ = UILang.Block3;
         _loc1_ = hero.selectHero.block + "%";
         _loc1_ = UILang.Block4;
         _loc1_ = hero.selectHero.block2 + "%";
         _loc1_ = hero.page + "/" + (hero.list.length > 10 ? 2 : 1);
      }
      
      public function ___HeroPanel_ExtendTileList3_itemClick(event:ListEvent) : void
      {
         trainItemClick(event);
      }
      
      public function ___HeroPanel_GlowButton20_click(event:MouseEvent) : void
      {
         doUpEmbattle(1,2);
      }
      
      private function openActWin() : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENMAINWINDOW);
         event.url = "activationPanel";
         event.data = selectHero.hero;
         dispatchEvent(event);
      }
      
      public function set levelPassOn(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1678279284levelPassOn;
         if(_loc2_ !== param1)
         {
            this._1678279284levelPassOn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelPassOn",_loc2_,param1));
         }
      }
      
      private function set ti(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3701ti;
         if(oldValue !== value)
         {
            this._3701ti = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ti",oldValue,value));
         }
      }
      
      public function ___HeroPanel_GlowButton14_click(event:MouseEvent) : void
      {
         decidePolish(1);
      }
      
      public function ___HeroPanel_GlowButton1_click(event:MouseEvent) : void
      {
         changeIndex(1);
      }
      
      private function trainItemClick(event:ListEvent) : void
      {
         dispatchEvent(new GuideEvent("13-3"));
         var click:HeroTrainData = event.itemRenderer.data as HeroTrainData;
         if(selectHero)
         {
            selectHero.select = false;
            selectHero = null;
         }
         selectHero = click;
         selectHero.select = true;
         setSelectHero(selectHero.hero);
         if(selectHero.hero.isRole)
         {
            DataManager.Instance.currentSkillIsRole = true;
         }
         else
         {
            DataManager.Instance.currentSkillIsRole = false;
         }
      }
      
      private function set addMinStr(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._181219712addMinStr;
         if(oldValue !== value)
         {
            this._181219712addMinStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addMinStr",oldValue,value));
         }
      }
      
      private function init() : void
      {
         timer.addEventListener(TimerEvent.TIMER,refreshHeroData);
         this.addEventListener("passOn",mouseDownHandler);
         this.addEventListener("putDown",mouseDownHandler);
         DataManager.Instance.addEventListener("activation",activationHandler);
         clock = new ClockData();
         clock.addKind = -1;
         clock.func = refreshClock;
      }
      
      private function _HeroPanel_RadioButtonGroup2_i() : RadioButtonGroup
      {
         var temp:RadioButtonGroup = new RadioButtonGroup();
         r4 = temp;
         temp.initialized(this,"r4");
         return temp;
      }
      
      private function set trainGold(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._903979656trainGold;
         if(oldValue !== value)
         {
            this._903979656trainGold = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainGold",oldValue,value));
         }
      }
      
      private function reallyTrain(result:int) : void
      {
         var trainLength:int = 0;
         var trainAdd:int = 0;
         if(result)
         {
            trainLength = 0;
            trainAdd = parseInt(Button(r4.selection).id.substring(4)) - 1;
            HttpServerManager.getInstance().callServer("manorService","trainingStart",resolveTrain,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,selectHero.hero.id,trainAdd,trainLength]);
         }
      }
      
      public function ___HeroPanel_GlowButton25_click(event:MouseEvent) : void
      {
         quickTrain(2);
      }
      
      [Bindable(event="propertyChange")]
      private function get zhiColor() : int
      {
         return this._1243050712zhiColor;
      }
      
      private function zhuanshen() : void
      {
         if(selectHero)
         {
            GameAlert.show(10,UILang.ReliveTip,decideZhuanshen,selectHero);
         }
      }
      
      private function set addZhi(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1422518630addZhi;
         if(oldValue !== value)
         {
            this._1422518630addZhi = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addZhi",oldValue,value));
         }
      }
      
      override public function hide() : void
      {
         needAbilityChange = false;
         dispatchEvent(new GuideEvent("4-7"));
         dispatchEvent(new GuideEvent("13-6"));
         dispatchEvent(new GuideEvent("21-4"));
         super.hide();
         selectHero = null;
         timer.stop();
         DataManager.Instance.isUpgradeEmbattleTask = false;
         DataManager.Instance.isFastTrain = false;
         DataManager.Instance.isCultivate = false;
      }
      
      public function ___HeroPanel_GlowButton19_click(event:MouseEvent) : void
      {
         doUpEmbattle(1,1);
      }
      
      private function decideFireGeneral(result:int, fireData:HeroData) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","fire",resolveFireHero,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,fireData.id]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : GlowRadioButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : GlowRadioButton
      {
         return this._3034454btn2;
      }
      
      public function ___HeroPanel_Button4_click(event:MouseEvent) : void
      {
         isPassOnClickHandler();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : GlowRadioButton
      {
         return this._3034456btn4;
      }
      
      private function _HeroPanel_ClassFactory5_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = PassOnRenderer;
         return temp;
      }
      
      public function ___HeroPanel_GlowButton6_click(event:MouseEvent) : void
      {
         changeIndex(5);
      }
      
      private function isPassOnClickHandler() : void
      {
         if(perfect == 0)
         {
            GameAlert.show(107,UILang.PassOnAlert1,passOnClickHandler);
         }
         else if(perfect == 1)
         {
            GameAlert.show(108,UILang.PassOnAlert2,passOnClickHandler);
         }
         else if(perfect == 2)
         {
            GameAlert.show(535,UILang.PassOnAlert3,passOnClickHandler);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : GlowRadioButton
      {
         return this._3034455btn3;
      }
      
      mx_internal function _HeroPanel_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_HeroPanel_StylesInit_done)
         {
            return;
         }
         mx_internal::_HeroPanel_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".Border235");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border235",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border235_png_717724999;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1095");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1095",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1095_jpg_301276251;
            };
         }
         style = StyleManager.getStyleDeclaration(".Button1029");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Button1029",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.selectedDownSkin = _embed_css__images_Button_btn1029_3_png_502815369;
               this.selectedUpSkin = _embed_css__images_Button_btn1029_5_png_502971577;
               this.selectedOverSkin = _embed_css__images_Button_btn1029_2_png_475021965;
               this.upSkin = _embed_css__images_Button_btn1029_1_png_479755449;
               this.downSkin = _embed_css__images_Button_btn1029_3_png_502815369;
               this.overSkin = _embed_css__images_Button_btn1029_2_png_475021965;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1092");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1092",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1092_jpg_271019359;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1093");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1093",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1093_png_293300695;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1058");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1058",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1058_png_1842834731;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1057");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1057",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1057_png_1833001511;
            };
         }
         style = StyleManager.getStyleDeclaration(".Border1094");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Border1094",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__images_Border_Border1094_png_297605547;
            };
         }
      }
      
      private function set canAdd(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._1367757135canAdd;
         if(oldValue !== value)
         {
            this._1367757135canAdd = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canAdd",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get passOnImage() : SWFLoader
      {
         return this._197143915passOnImage;
      }
      
      [Bindable(event="propertyChange")]
      private function get li() : int
      {
         return this._3453li;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn21() : GlowRadioButton
      {
         return this._94068123btn21;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn23() : GlowRadioButton
      {
         return this._94068125btn23;
      }
      
      public function ___HeroPanel_Button9_click(event:MouseEvent) : void
      {
         changePage(2);
      }
      
      public function set currentIndex(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1448410841currentIndex;
         if(oldValue !== value)
         {
            this._1448410841currentIndex = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentIndex",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn22() : GlowRadioButton
      {
         return this._94068124btn22;
      }
      
      private function _HeroPanel_ClassFactory3_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HeroEmbattleItemRenderer;
         return temp;
      }
      
      private function set getExp(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1249363225getExp;
         if(oldValue !== value)
         {
            this._1249363225getExp = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getExp",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get passOn() : HeroData
      {
         return this._995381808passOn;
      }
      
      private function resolveHeroInfo(e:ResultEvent) : void
      {
         var info:HeroData = null;
         hero.resolveHeroList(e);
         if(hero.selectHero)
         {
            for each(info in hero.list)
            {
               if(hero.selectHero.id == info.id)
               {
                  setSelectHero(info);
               }
            }
         }
         else
         {
            setSelectHero(hero.list.getItemAt(0) as HeroData);
         }
         if(selectHero.hero.isRole)
         {
            DataManager.Instance.currentSkillIsRole = true;
         }
         else
         {
            DataManager.Instance.currentSkillIsRole = false;
         }
         resloveStar(e.result);
      }
      
      private function set addTi(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._92659446addTi;
         if(oldValue !== value)
         {
            this._92659446addTi = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addTi",oldValue,value));
         }
      }
      
      private function set zhi(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._120571zhi;
         if(oldValue !== value)
         {
            this._120571zhi = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhi",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get addMin() : int
      {
         return this._1422531087addMin;
      }
      
      [Bindable(event="propertyChange")]
      private function get addLi() : int
      {
         return this._92659198addLi;
      }
      
      [Bindable(event="propertyChange")]
      public function get r2() : RadioButtonGroup
      {
         return this._3584r2;
      }
      
      [Bindable(event="propertyChange")]
      public function get r4() : RadioButtonGroup
      {
         return this._3586r4;
      }
      
      public function __btn21_click(event:MouseEvent) : void
      {
         refreshWillGetExp();
      }
      
      private function doUpEmbattle(result:int, type:int) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("generalService","formationLevelUp",resolveUpEmbattle,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.currentEmbattle.id,type]);
         }
      }
      
      private function set isDetailOpen(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._1134829317isDetailOpen;
         if(oldValue !== value)
         {
            this._1134829317isDetailOpen = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDetailOpen",oldValue,value));
         }
      }
      
      public function set cell1(param1:PassOnRendererRenderer) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94544655cell1;
         if(_loc2_ !== param1)
         {
            this._94544655cell1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cell1",_loc2_,param1));
         }
      }
      
      public function set cell0(param1:PassOnRendererRenderer) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94544654cell0;
         if(_loc2_ !== param1)
         {
            this._94544654cell0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cell0",_loc2_,param1));
         }
      }
      
      private function resolveUpEmbattle(e:ResultEvent) : void
      {
         dispatchEvent(new GuideEvent("15-2"));
         if(e.result.error_code == -1)
         {
            if(e.result.formation_add_critic == true)
            {
               main.inst.showEffect("dcrit",0,0);
            }
            else
            {
               main.inst.showEffect("upgrade",0,0);
            }
         }
         if(DataManager.Instance.task.checkTaskChange(TaskConfig.FINISH_FORMATION_UP))
         {
            HttpServerManager.getInstance().callServer("sceneService","npc",SceneManager.getInstance().resolveNPCState,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
         }
         DataManager.Instance.parcel.resolveMoney(e);
         hero.resolveHeroList(e);
         resloveStar(e.result);
      }
      
      private function set selectHero(hero:HeroTrainData) : void
      {
         if(Boolean(hero) && hero.isTraining)
         {
            conIndex = 2;
         }
         else
         {
            conIndex = 1;
         }
         _selectHero = hero;
      }
      
      private function resolveCure(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-1,UILang.RestoreCpt);
         }
         hero.resolveHeroList(e);
      }
      
      private function itemClick(e:ListEvent) : void
      {
         dispatchEvent(new GuideEvent("21-1"));
         var click:HeroData = e.itemRenderer.data as HeroData;
         if(!selectHero)
         {
            selectHero = new HeroTrainData();
         }
         selectHero.hero = click;
         if(selectHero.hero.isRole)
         {
            DataManager.Instance.currentSkillIsRole = true;
         }
         else
         {
            DataManager.Instance.currentSkillIsRole = false;
         }
         setSelectHero(click);
      }
      
      public function ___HeroPanel_Canvas118_click(event:MouseEvent) : void
      {
         onClick();
      }
      
      [Bindable(event="propertyChange")]
      private function get min() : int
      {
         return this._108114min;
      }
      
      private function _HeroPanel_ClassFactory1_c() : ClassFactory
      {
         var temp:ClassFactory = new ClassFactory();
         temp.generator = HeroItemRenderer;
         return temp;
      }
      
      private function set trainSilver(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._1479084853trainSilver;
         if(oldValue !== value)
         {
            this._1479084853trainSilver = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainSilver",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get ti() : int
      {
         return this._3701ti;
      }
      
      public function ___HeroPanel_GlowButton12_click(event:MouseEvent) : void
      {
         parade();
      }
      
      private function set moveState(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._1057379136moveState;
         if(oldValue !== value)
         {
            this._1057379136moveState = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveState",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get addZhi() : int
      {
         return this._1422518630addZhi;
      }
      
      private function set trainPosition(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._51799889trainPosition;
         if(oldValue !== value)
         {
            this._51799889trainPosition = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trainPosition",oldValue,value));
         }
      }
      
      private function decideZhuanshen(result:int, hero:HeroTrainData) : void
      {
         if(result)
         {
            HttpServerManager.getInstance().callServer("manorService","reincarnate",resolveZhuanshen,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.hero.id]);
         }
      }
      
      public function ___HeroPanel_GlowButton23_click(event:MouseEvent) : void
      {
         quickTrain(trainQuick.selected ? 3 : 1);
      }
      
      private function set addLiStr(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._1253720237addLiStr;
         if(oldValue !== value)
         {
            this._1253720237addLiStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addLiStr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get canAdd() : Boolean
      {
         return this._1367757135canAdd;
      }
      
      private function set addTiStr(value:String) : void
      {
         var oldValue:Object = null;
         oldValue = this._1246332069addTiStr;
         if(oldValue !== value)
         {
            this._1246332069addTiStr = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addTiStr",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get addMinStr() : String
      {
         return this._181219712addMinStr;
      }
      
      public function ___HeroPanel_GlowButton17_click(event:MouseEvent) : void
      {
         openShipUp();
      }
      
      public function ___HeroPanel_GlowButton4_click(event:MouseEvent) : void
      {
         changeIndex(3);
      }
      
      public function ___HeroPanel_Button2_click(event:MouseEvent) : void
      {
         openWin("skillPre");
      }
      
      [Bindable(event="propertyChange")]
      public function get currentIndex() : int
      {
         return this._1448410841currentIndex;
      }
      
      [Bindable(event="propertyChange")]
      private function get addTi() : int
      {
         return this._92659446addTi;
      }
      
      [Bindable(event="propertyChange")]
      private function get zhi() : int
      {
         return this._120571zhi;
      }
      
      [Bindable(event="propertyChange")]
      private function get isDetailOpen() : Boolean
      {
         return this._1134829317isDetailOpen;
      }
      
      public function ___HeroPanel_GlowButton9_click(event:MouseEvent) : void
      {
         parade();
      }
      
      private function polish() : void
      {
         if(hero.selectHero)
         {
            HttpServerManager.getInstance().callServer("generalService","polish",resolvePolish,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,hero.selectHero.id,Button(r2.selection).id.substr(3)]);
         }
      }
      
      public function ___HeroPanel_Button7_click(event:MouseEvent) : void
      {
         detailClick(false);
      }
      
      private function upEmbattle(type:int) : void
      {
         if(type == 0)
         {
            GameAlert.show(4,UILang.CostUpgBoat_S,doUpEmbattle,type);
         }
         else
         {
            GameAlert.show(5,UILang.CostUpgBoat_G,doUpEmbattle,type);
         }
      }
      
      private function set canClick(value:Boolean) : void
      {
         var oldValue:Object = null;
         oldValue = this._152520808canClick;
         if(oldValue !== value)
         {
            this._152520808canClick = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canClick",oldValue,value));
         }
      }
      
      public function ___HeroPanel_ExtendTileList1_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get trainPosition() : int
      {
         return this._51799889trainPosition;
      }
      
      [Bindable(event="propertyChange")]
      private function get addLiStr() : String
      {
         return this._1253720237addLiStr;
      }
      
      private function resolveAddPosition(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            ShowResult.inst.showResult(-2,UILang.AddTrainSucc);
         }
         resolveHeroTrainData(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      private function set heros(value:ArrayCollection) : void
      {
         var oldValue:Object = null;
         oldValue = this._99168185heros;
         if(oldValue !== value)
         {
            this._99168185heros = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heros",oldValue,value));
         }
      }
      
      public function ___HeroPanel_ExtendTileList4_itemClick(event:ListEvent) : void
      {
         itemClick(event);
      }
      
      [Bindable(event="propertyChange")]
      private function get canClick() : Boolean
      {
         return this._152520808canClick;
      }
      
      private function set cost(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._3059661cost;
         if(oldValue !== value)
         {
            this._3059661cost = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost",oldValue,value));
         }
      }
      
      private function set usePosition(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._2029013968usePosition;
         if(oldValue !== value)
         {
            this._2029013968usePosition = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"usePosition",oldValue,value));
         }
      }
      
      private function detailClick(isOpen:Boolean) : void
      {
         if(isOpen)
         {
            isDetailOpen = true;
         }
         else
         {
            isDetailOpen = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get heros() : ArrayCollection
      {
         return this._99168185heros;
      }
      
      private function cureHero() : void
      {
         HttpServerManager.getInstance().callServer("generalService","recover",resolveCure,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function set liColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._137500646liColor;
         if(oldValue !== value)
         {
            this._137500646liColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"liColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cost() : int
      {
         return this._3059661cost;
      }
      
      private function stopSkillAwaken() : void
      {
         HttpServerManager.getInstance().callServer("generalService","general",hero.resolveHeroList,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus]);
      }
      
      private function resolvePolishConfirm(e:ResultEvent) : void
      {
         var info:HeroData = null;
         var click:HeroData = null;
         if(e.result.error_code == -1)
         {
            hero.resolveHeroList(e);
            for each(info in hero.list)
            {
               if(hero.selectHero.id == info.id)
               {
                  dispatchEvent(new GuideEvent("21-1"));
                  click = info;
                  if(!selectHero)
                  {
                     selectHero = new HeroTrainData();
                  }
                  selectHero.hero = click;
                  if(selectHero.hero.isRole)
                  {
                     DataManager.Instance.currentSkillIsRole = true;
                  }
                  else
                  {
                     DataManager.Instance.currentSkillIsRole = false;
                  }
                  hero.selectHero.heroSelect = false;
                  hero.selectHero = null;
                  setSelectHero(click);
               }
            }
         }
      }
      
      private function set addMinColor(value:int) : void
      {
         var oldValue:Object = null;
         oldValue = this._1926588402addMinColor;
         if(oldValue !== value)
         {
            this._1926588402addMinColor = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addMinColor",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get liColor() : int
      {
         return this._137500646liColor;
      }
      
      private function resolveJumpSpike(e:ResultEvent) : void
      {
         resolveHeroTrainData(e);
         DataManager.Instance.parcel.resolveMoney(e);
      }
      
      public function ___HeroPanel_GlowButton10_click(event:MouseEvent) : void
      {
         openActWin();
      }
   }
}


package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import ui.hero.ActivationPanel;
   
   public class _ui_hero_ActivationPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _ui_hero_ActivationPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ActivationPanel.watcherSetupUtil = new _ui_hero_ActivationPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[1] = new PropertyWatcher("demon",{"propertyChange":true},[param3[9],param3[1],param3[10]],param2);
         param4[12] = new PropertyWatcher("needItem",{"propertyChange":true},[param3[10]],null);
         param4[2] = new PropertyWatcher("skill",{"propertyChange":true},[param3[9],param3[1]],null);
         param4[3] = new PropertyWatcher("desc2",{"propertyChange":true},[param3[1]],null);
         param4[11] = new PropertyWatcher("url",{"propertyChange":true},[param3[9]],null);
         param4[6] = new StaticPropertyWatcher("Activation",{"propertyChange":true},[param3[5]],null);
         param4[7] = new StaticPropertyWatcher("FastBuy",{"propertyChange":true},[param3[7]],null);
         param4[4] = new StaticPropertyWatcher("ActivationTerm",{"propertyChange":true},[param3[2]],null);
         param4[8] = new PropertyWatcher("hero",{"propertyChange":true},[param3[8]],param2);
         param4[10] = new PropertyWatcher("level",{"propertyChange":true},[param3[8]],null);
         param4[9] = new PropertyWatcher("quality",null,[param3[8]],null);
         param4[0] = new StaticPropertyWatcher("SpecialActivationTerm",{"propertyChange":true},[param3[0]],null);
         param4[5] = new PropertyWatcher("have",{"propertyChange":true},[param3[4],param3[6],param3[3]],param2);
         param4[1].updateParent(param1);
         param4[1].addChild(param4[12]);
         param4[1].addChild(param4[2]);
         param4[2].addChild(param4[3]);
         param4[2].addChild(param4[11]);
         param4[6].updateParent(UILang);
         param4[7].updateParent(UILang);
         param4[4].updateParent(UILang);
         param4[8].updateParent(param1);
         param4[8].addChild(param4[10]);
         param4[8].addChild(param4[9]);
         param4[0].updateParent(UILang);
         param4[5].updateParent(param1);
      }
   }
}


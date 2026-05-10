package
{
   import flash.display.Sprite;
   import lang.UILang;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import war.Comp.TeamMemberItemRenderer;
   
   public class _war_Comp_TeamMemberItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _war_Comp_TeamMemberItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TeamMemberItemRenderer.watcherSetupUtil = new _war_Comp_TeamMemberItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[5] = new StaticPropertyWatcher("UpperPosition",{"propertyChange":true},[param3[4]],null);
         param4[0] = new PropertyWatcher("member",{"propertyChange":true},[param3[2],param3[1],param3[3],param3[5],param3[0]],param2);
         param4[2] = new PropertyWatcher("level",{"propertyChange":true},[param3[1]],null);
         param4[3] = new PropertyWatcher("job",{"propertyChange":true},[param3[2]],null);
         param4[4] = new PropertyWatcher("isLeader",{"propertyChange":true},[param3[3],param3[5]],null);
         param4[1] = new PropertyWatcher("name",{"propertyChange":true},[param3[0]],null);
         param4[5].updateParent(UILang);
         param4[0].updateParent(param1);
         param4[0].addChild(param4[2]);
         param4[0].addChild(param4[3]);
         param4[0].addChild(param4[4]);
         param4[0].addChild(param4[1]);
      }
   }
}


package
{
   import flash.system.ApplicationDomain;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   import mx.managers.SystemManager;
   
   public class _main_mx_managers_SystemManager extends SystemManager implements IFlexModuleFactory
   {
      
      public function _main_mx_managers_SystemManager()
      {
         super();
      }
      
      override public function create(... rest) : Object
      {
         if(rest.length > 0 && !(rest[0] is String))
         {
            return super.create.apply(this,rest);
         }
         var _loc2_:String = rest.length == 0 ? "main" : String(rest[0]);
         var _loc3_:Class = Class(getDefinitionByName(_loc2_));
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:Object = new _loc3_();
         if(_loc4_ is IFlexModule)
         {
            IFlexModule(_loc4_).moduleFactory = this;
         }
         return _loc4_;
      }
      
      override public function info() : Object
      {
         return {
            "applicationComplete":"onAppInit()",
            "backgroundAlpha":"1",
            "backgroundColor":"0x000000",
            "color":"0x000000",
            "compiledLocales":["en_US"],
            "compiledResourceBundleNames":["SharedResources","collections","containers","controls","core","effects","formatters","logging","messaging","rpc","skins","styles"],
            "currentDomain":ApplicationDomain.currentDomain,
            "fontSize":"12",
            "height":"600",
            "horizontalScrollPolicy":"off",
            "layout":"absolute",
            "mainClassName":"main",
            "mixins":["_main_FlexInit","_alertButtonStyleStyle","_ScrollBarStyle","_activeTabStyleStyle","_textAreaHScrollBarStyleStyle","_ToolTipStyle","_ComboBoxStyle","_DragManagerStyle","_advancedDataGridStylesStyle","_TextAreaStyle","_comboDropdownStyle","_ListBaseStyle","_textAreaVScrollBarStyleStyle","_ContainerStyle","_linkButtonStyleStyle","_globalStyle","_windowStatusStyle","_windowStylesStyle","_activeButtonStyleStyle","_errorTipStyle","_richTextEditorTextAreaStyleStyle","_CursorManagerStyle","_todayStyleStyle","_dateFieldPopupStyle","_TextInputStyle","_plainStyle","_dataGridStylesStyle","_ApplicationStyle","_SWFLoaderStyle","_headerDateTextStyle","_ButtonStyle","_popUpMenuStyle","_swatchPanelTextFieldStyle","_opaquePanelStyle","_weekDayStyleStyle","_RadioButtonStyle","_headerDragProxyStyleStyle","_TileListStyle","_ui_item_ShowGetItemListWatcherSetupUtil","_ui_land_Comp_CutPanelWatcherSetupUtil","_ui_land_Comp_BusinessRendererWatcherSetupUtil","_ui_abattoir_comp_MiddlePersonRendererWatcherSetupUtil"
            ,"_ui_abattoir_comp_SkillPreviewRendererWatcherSetupUtil","_ui_land_Comp_TradeRendererWatcherSetupUtil","_ui_land_Comp_CookRendererRendererWatcherSetupUtil","_ui_land_Comp_LinkRewardRendererWatcherSetupUtil","_ui_land_Comp_WareHouseRendererWatcherSetupUtil","_ui_target_TargetPanelWatcherSetupUtil","_ui_mail_Comp_MailButtonWatcherSetupUtil","_ui_role_FriendButtonWatcherSetupUtil","_ui_land_Comp_BuffRendererWatcherSetupUtil","_ui_land_Comp_CookTaskWatcherSetupUtil","_ui_task_PortTaskWatcherSetupUtil","_ui_land_Comp_CookRendererWatcherSetupUtil","_ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil","_ui_item_Comp_ItemItemRendererWatcherSetupUtil","_ui_land_Comp_FashionablePanelWatcherSetupUtil","_ToolTip_BattleToolTipWatcherSetupUtil","_ToolTip_ItemToolTipWatcherSetupUtil","_ToolTip_TitleToolTipWatcherSetupUtil","_ToolTip_EquipmentToolTipWatcherSetupUtil","_ToolTip_OtherHeroToolTipWatcherSetupUtil","_ToolTip_CompareToolTipWatcherSetupUtil","_ToolTip_AbHeroTipWatcherSetupUtil","_ToolTip_FoodBuffToolTipWatcherSetupUtil"
            ,"_ToolTip_OverlordToolTip2WatcherSetupUtil","_ToolTip_TavernToolTipWatcherSetupUtil","_ToolTip_CampaginToolTipWatcherSetupUtil","_ToolTip_ShipEquipToolTipWatcherSetupUtil","_ToolTip_CardToolTipWatcherSetupUtil","_ToolTip_HPToolTipWatcherSetupUtil","_ToolTip_AbHeroSkillTipWatcherSetupUtil","_ToolTip_TianfuToolTipWatcherSetupUtil","_ToolTip_OverlordTollTipWatcherSetupUtil","_ToolTip_MarinerToolTipWatcherSetupUtil","_ToolTip_HeroToolTipWatcherSetupUtil","_ToolTip_FruitToolTipWatcherSetupUtil","_ToolTip_HeroSoulToolTipWatcherSetupUtil","_ToolTip_MarinerToolTip2WatcherSetupUtil","_ToolTip_FightingToolTipWatcherSetupUtil","_ToolTip_LegionScienceToolTipWatcherSetupUtil","_ToolTip_SkillToolTipWatcherSetupUtil","_ToolTip_SoulToolTipWatcherSetupUtil","_ToolTip_PostToolTipWatcherSetupUtil","_ToolTip_StrideOverToolTipWatcherSetupUtil","_ui_task_TaskTrackWatcherSetupUtil","_ui_WallowPanelWatcherSetupUtil","_mainWatcherSetupUtil","_ui_ChatPanelWatcherSetupUtil","_ui_WaitingProcessWatcherSetupUtil","_ExtendComp_GameAlertWatcherSetupUtil"
            ,"_ui_land_PortPanelWatcherSetupUtil","_ui_abattoir_HeroPanelWatcherSetupUtil","_ui_abattoir_SkillListWatcherSetupUtil","_ui_treasure_TreasurePanelWatcherSetupUtil","_ui_land_Comp_InvestPanelWatcherSetupUtil","_ui_land_Comp_CookPanelWatcherSetupUtil","_ui_land_Comp_BusinessPanelWatcherSetupUtil","_ui_land_Comp_CookTaskPanelWatcherSetupUtil","_ui_land_Comp_WareHousePanelWatcherSetupUtil","_ui_land_Comp_ShipInfoPanelWatcherSetupUtil","_ui_land_Comp_TavernPanelWatcherSetupUtil","_ui_land_Comp_PortTaskPanelWatcherSetupUtil","_ui_MainUIWatcherSetupUtil","_ui_role_PresentButtonWatcherSetupUtil","_ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil","_ui_treasure_Comp_TreasureRendererWatcherSetupUtil"],
            "usePreloader":false,
            "verticalScrollPolicy":"off",
            "width":"1000"
         };
      }
   }
}


package
{
   import flash.system.ApplicationDomain;
   import mx.core.FlexModuleFactory;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   
   public class _GameMainUIPanel_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
   {
      
      public function _GameMainUIPanel_mx_core_FlexModuleFactory()
      {
         super();
      }
      
      override public function create(... rest) : Object
      {
         if(rest.length > 0 && !(rest[0] is String))
         {
            return super.create.apply(this,rest);
         }
         var _loc2_:String = rest.length == 0 ? "ui.GameMainUIPanel" : String(rest[0]);
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
            "compiledLocales":["en_US"],
            "compiledResourceBundleNames":["SharedResources","collections","containers","controls","core","effects","formatters","logging","messaging","rpc","skins","styles"],
            "currentDomain":ApplicationDomain.currentDomain,
            "height":"600",
            "isOnly":"false",
            "isRemeber":"false",
            "layout":"absolute",
            "mainClassName":"ui.GameMainUIPanel",
            "mixins":["_GameMainUIPanel_FlexInit","_alertButtonStyleStyle","_ScrollBarStyle","_activeTabStyleStyle","_textAreaHScrollBarStyleStyle","_ToolTipStyle","_ComboBoxStyle","_DragManagerStyle","_advancedDataGridStylesStyle","_TextAreaStyle","_comboDropdownStyle","_ListBaseStyle","_textAreaVScrollBarStyleStyle","_ContainerStyle","_linkButtonStyleStyle","_globalStyle","_windowStatusStyle","_windowStylesStyle","_activeButtonStyleStyle","_errorTipStyle","_richTextEditorTextAreaStyleStyle","_CursorManagerStyle","_todayStyleStyle","_dateFieldPopupStyle","_TextInputStyle","_plainStyle","_dataGridStylesStyle","_ApplicationStyle","_SWFLoaderStyle","_headerDateTextStyle","_ButtonStyle","_popUpMenuStyle","_swatchPanelTextFieldStyle","_opaquePanelStyle","_weekDayStyleStyle","_RadioButtonStyle","_headerDragProxyStyleStyle","_TileListStyle","_ui_WallowPanelWatcherSetupUtil","_ui_abattoir_comp_MiddlePersonRendererWatcherSetupUtil","_ui_land_Comp_WareHouseRendererWatcherSetupUtil","_ui_land_Comp_TradeRendererWatcherSetupUtil"
            ,"_ui_land_Comp_CookRendererRendererWatcherSetupUtil","_ui_land_Comp_LinkRewardRendererWatcherSetupUtil","_ui_abattoir_comp_SkillPreviewRendererWatcherSetupUtil","_ui_mail_Comp_MailButtonWatcherSetupUtil","_ui_role_FriendButtonWatcherSetupUtil","_ui_land_Comp_CutPanelWatcherSetupUtil","_ui_land_Comp_BusinessRendererWatcherSetupUtil","_ui_land_Comp_BuffRendererWatcherSetupUtil","_ui_land_Comp_CookTaskWatcherSetupUtil","_ui_task_PortTaskWatcherSetupUtil","_ui_land_Comp_CookRendererWatcherSetupUtil","_ui_item_Comp_ItemItemRendererWatcherSetupUtil","_ToolTip_TitleToolTipWatcherSetupUtil","_ToolTip_CardToolTipWatcherSetupUtil","_ui_target_TargetPanelWatcherSetupUtil","_ToolTip_AbHeroTipWatcherSetupUtil","_ToolTip_TianfuToolTipWatcherSetupUtil","_ToolTip_BattleToolTipWatcherSetupUtil","_ToolTip_MarinerToolTipWatcherSetupUtil","_ToolTip_OverlordToolTip2WatcherSetupUtil","_ToolTip_EquipmentToolTipWatcherSetupUtil","_ToolTip_SoulToolTipWatcherSetupUtil","_ToolTip_OverlordTollTipWatcherSetupUtil"
            ,"_ToolTip_CompareToolTipWatcherSetupUtil","_ToolTip_PostToolTipWatcherSetupUtil","_ToolTip_HeroToolTipWatcherSetupUtil","_ToolTip_MarinerToolTip2WatcherSetupUtil","_ToolTip_FruitToolTipWatcherSetupUtil","_ToolTip_FightingToolTipWatcherSetupUtil","_ToolTip_HPToolTipWatcherSetupUtil","_ToolTip_StrideOverToolTipWatcherSetupUtil","_ToolTip_AbHeroSkillTipWatcherSetupUtil","_ToolTip_ShipEquipToolTipWatcherSetupUtil","_ToolTip_OtherHeroToolTipWatcherSetupUtil","_ToolTip_HeroSoulToolTipWatcherSetupUtil","_ToolTip_TavernToolTipWatcherSetupUtil","_ToolTip_FoodBuffToolTipWatcherSetupUtil","_ToolTip_LegionScienceToolTipWatcherSetupUtil","_ToolTip_SkillToolTipWatcherSetupUtil","_ToolTip_ItemToolTipWatcherSetupUtil","_ToolTip_CampaginToolTipWatcherSetupUtil","_ui_land_Comp_FashionablePanelWatcherSetupUtil","_ExtendComp_GameAlertWatcherSetupUtil","_ui_WaitingProcessWatcherSetupUtil","_ui_item_ShowGetItemListWatcherSetupUtil","_ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil","_ui_task_TaskTrackWatcherSetupUtil"
            ,"_ui_MainUIWatcherSetupUtil","_ui_role_PresentButtonWatcherSetupUtil","_mainWatcherSetupUtil","_ui_land_PortPanelWatcherSetupUtil","_ui_abattoir_HeroPanelWatcherSetupUtil","_ui_land_Comp_TavernPanelWatcherSetupUtil","_ui_land_Comp_WareHousePanelWatcherSetupUtil","_ui_land_Comp_BusinessPanelWatcherSetupUtil","_ui_land_Comp_CookPanelWatcherSetupUtil","_ui_treasure_TreasurePanelWatcherSetupUtil","_ui_land_Comp_ShipInfoPanelWatcherSetupUtil","_ui_land_Comp_CookTaskPanelWatcherSetupUtil","_ui_land_Comp_PortTaskPanelWatcherSetupUtil","_ui_land_Comp_InvestPanelWatcherSetupUtil","_ui_abattoir_SkillListWatcherSetupUtil","_ui_ChatPanelWatcherSetupUtil","_ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil","_ui_treasure_Comp_TreasureRendererWatcherSetupUtil"],
            "width":"1000"
         };
      }
   }
}


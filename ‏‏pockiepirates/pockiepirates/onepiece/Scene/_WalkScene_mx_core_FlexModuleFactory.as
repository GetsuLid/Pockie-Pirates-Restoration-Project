package
{
   import flash.system.ApplicationDomain;
   import mx.core.FlexModuleFactory;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   
   public class _WalkScene_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
   {
      
      public function _WalkScene_mx_core_FlexModuleFactory()
      {
         super();
      }
      
      override public function create(... rest) : Object
      {
         if(rest.length > 0 && !(rest[0] is String))
         {
            return super.create.apply(this,rest);
         }
         var _loc2_:String = rest.length == 0 ? "Scene.WalkScene" : String(rest[0]);
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
            "backgroundColor":"0x000000",
            "click":"click(event)",
            "compiledLocales":["en_US"],
            "compiledResourceBundleNames":["SharedResources","collections","containers","controls","core","effects","formatters","logging","messaging","rpc","skins","styles"],
            "creationComplete":"init()",
            "currentDomain":ApplicationDomain.currentDomain,
            "doubleClick":"click(event,true)",
            "doubleClickEnabled":"true",
            "height":"600",
            "horizontalScrollPolicy":"off",
            "layout":"absolute",
            "mainClassName":"Scene.WalkScene",
            "mixins":["_WalkScene_FlexInit","_alertButtonStyleStyle","_ScrollBarStyle","_activeTabStyleStyle","_textAreaHScrollBarStyleStyle","_ToolTipStyle","_ComboBoxStyle","_DragManagerStyle","_advancedDataGridStylesStyle","_TextAreaStyle","_comboDropdownStyle","_ListBaseStyle","_textAreaVScrollBarStyleStyle","_ContainerStyle","_linkButtonStyleStyle","_globalStyle","_windowStatusStyle","_windowStylesStyle","_activeButtonStyleStyle","_errorTipStyle","_richTextEditorTextAreaStyleStyle","_CursorManagerStyle","_todayStyleStyle","_dateFieldPopupStyle","_TextInputStyle","_plainStyle","_dataGridStylesStyle","_ApplicationStyle","_SWFLoaderStyle","_headerDateTextStyle","_ButtonStyle","_popUpMenuStyle","_swatchPanelTextFieldStyle","_opaquePanelStyle","_weekDayStyleStyle","_RadioButtonStyle","_headerDragProxyStyleStyle","_TileListStyle","_Scene_Comp_SecretPlayerRendererWatcherSetupUtil","_Scene_Comp_EniesLobbyRankRendererWatcherSetupUtil","_Scene_Comp_HighBattleHurtRendererWatcherSetupUtil","_ui_land_Comp_TradeRendererWatcherSetupUtil"
            ,"_ui_land_Comp_CookRendererRendererWatcherSetupUtil","_ui_land_Comp_LinkRewardRendererWatcherSetupUtil","_ui_land_Comp_WareHouseRendererWatcherSetupUtil","_ui_abattoir_comp_MiddlePersonRendererWatcherSetupUtil","_ui_abattoir_comp_SkillPreviewRendererWatcherSetupUtil","_ui_target_TargetPanelWatcherSetupUtil","_ui_mail_Comp_MailButtonWatcherSetupUtil","_ui_role_FriendButtonWatcherSetupUtil","_ui_land_Comp_BusinessRendererWatcherSetupUtil","_ui_land_Comp_CutPanelWatcherSetupUtil","_ui_land_Comp_BuffRendererWatcherSetupUtil","_ui_land_Comp_CookTaskWatcherSetupUtil","_ui_task_PortTaskWatcherSetupUtil","_ui_land_Comp_CookRendererWatcherSetupUtil","_ui_item_Comp_ItemItemRendererWatcherSetupUtil","_ToolTip_OtherHeroToolTipWatcherSetupUtil","_ToolTip_MarinerToolTip2WatcherSetupUtil","_ToolTip_HPToolTipWatcherSetupUtil","_ToolTip_CardToolTipWatcherSetupUtil","_ToolTip_LegionScienceToolTipWatcherSetupUtil","_ToolTip_BattleToolTipWatcherSetupUtil","_ToolTip_TianfuToolTipWatcherSetupUtil","_ToolTip_CampaginToolTipWatcherSetupUtil"
            ,"_ToolTip_TavernToolTipWatcherSetupUtil","_ToolTip_OverlordToolTip2WatcherSetupUtil","_ToolTip_SoulToolTipWatcherSetupUtil","_ToolTip_TitleToolTipWatcherSetupUtil","_ToolTip_EquipmentToolTipWatcherSetupUtil","_ToolTip_AbHeroSkillTipWatcherSetupUtil","_ToolTip_PostToolTipWatcherSetupUtil","_ToolTip_FruitToolTipWatcherSetupUtil","_ToolTip_HeroToolTipWatcherSetupUtil","_ToolTip_HeroSoulToolTipWatcherSetupUtil","_ToolTip_SkillToolTipWatcherSetupUtil","_ToolTip_AbHeroTipWatcherSetupUtil","_ToolTip_ShipEquipToolTipWatcherSetupUtil","_ToolTip_FightingToolTipWatcherSetupUtil","_ToolTip_ItemToolTipWatcherSetupUtil","_ToolTip_CompareToolTipWatcherSetupUtil","_ToolTip_MarinerToolTipWatcherSetupUtil","_ToolTip_FoodBuffToolTipWatcherSetupUtil","_ui_item_ShowGetItemListWatcherSetupUtil","_ToolTip_OverlordTollTipWatcherSetupUtil","_ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil","_ToolTip_StrideOverToolTipWatcherSetupUtil","_ui_land_Comp_FashionablePanelWatcherSetupUtil","_Scene_Comp_SoulHeroBattleRewardWatcherSetupUtil"
            ,"_ui_task_TaskTrackWatcherSetupUtil","_mainWatcherSetupUtil","_ui_ChatPanelWatcherSetupUtil","_ui_WaitingProcessWatcherSetupUtil","_ui_WallowPanelWatcherSetupUtil","_ExtendComp_GameAlertWatcherSetupUtil","_ui_land_PortPanelWatcherSetupUtil","_ui_land_Comp_CookPanelWatcherSetupUtil","_ui_land_Comp_CookTaskPanelWatcherSetupUtil","_ui_land_Comp_ShipInfoPanelWatcherSetupUtil","_ui_land_Comp_BusinessPanelWatcherSetupUtil","_ui_treasure_TreasurePanelWatcherSetupUtil","_ui_land_Comp_TavernPanelWatcherSetupUtil","_ui_land_Comp_PortTaskPanelWatcherSetupUtil","_ui_land_Comp_InvestPanelWatcherSetupUtil","_ui_land_Comp_WareHousePanelWatcherSetupUtil","_ui_abattoir_HeroPanelWatcherSetupUtil","_ui_abattoir_SkillListWatcherSetupUtil","_ui_MainUIWatcherSetupUtil","_ui_role_PresentButtonWatcherSetupUtil","_ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil","_ui_waitinglistItemRendererWatcherSetupUtil","_ui_treasure_Comp_TreasureRendererWatcherSetupUtil","_ui_AllWaitingListWatcherSetupUtil","_Scene_Comp_HighBattleSceneWatcherSetupUtil"
            ,"_Scene_Comp_HangSceneWatcherSetupUtil","_Scene_Comp_SecretSceneWatcherSetupUtil","_Scene_Comp_EniesLobbySceneWatcherSetupUtil","_Scene_WalkSceneWatcherSetupUtil","_Scene_Comp_HighHangSceneWatcherSetupUtil"],
            "preinitialize":"pre()",
            "verticalScrollPolicy":"off",
            "width":"1000"
         };
      }
   }
}


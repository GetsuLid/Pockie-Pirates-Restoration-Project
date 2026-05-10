package
{
   import flash.system.ApplicationDomain;
   import mx.core.FlexModuleFactory;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   
   public class _GameMainUIContainer_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
   {
      
      public function _GameMainUIContainer_mx_core_FlexModuleFactory()
      {
         super();
      }
      
      override public function create(... rest) : Object
      {
         if(rest.length > 0 && !(rest[0] is String))
         {
            return super.create.apply(this,rest);
         }
         var _loc2_:String = rest.length == 0 ? "ui.GameMainUIContainer" : String(rest[0]);
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
            "compiledResourceBundleNames":["SharedResources","collections","containers","controls","core","effects","formatters","logging","messaging","rpc","skins","states","styles"],
            "currentDomain":ApplicationDomain.currentDomain,
            "height":"600",
            "isOnly":"false",
            "isRemeber":"false",
            "layout":"absolute",
            "mainClassName":"ui.GameMainUIContainer",
            "mixins":["_GameMainUIContainer_FlexInit","_alertButtonStyleStyle","_ControlBarStyle","_ScrollBarStyle","_activeTabStyleStyle","_textAreaHScrollBarStyleStyle","_ToolTipStyle","_ComboBoxStyle","_DragManagerStyle","_TextAreaStyle","_advancedDataGridStylesStyle","_comboDropdownStyle","_CheckBoxStyle","_ListBaseStyle","_textAreaVScrollBarStyleStyle","_ContainerStyle","_linkButtonStyleStyle","_globalStyle","_windowStatusStyle","_PanelStyle","_windowStylesStyle","_activeButtonStyleStyle","_ApplicationControlBarStyle","_errorTipStyle","_richTextEditorTextAreaStyleStyle","_CursorManagerStyle","_todayStyleStyle","_dateFieldPopupStyle","_TextInputStyle","_plainStyle","_dataGridStylesStyle","_ApplicationStyle","_SWFLoaderStyle","_headerDateTextStyle","_ButtonStyle","_popUpMenuStyle","_swatchPanelTextFieldStyle","_opaquePanelStyle","_weekDayStyleStyle","_RadioButtonStyle","_headerDragProxyStyleStyle","_TileListStyle","_ui_action_Comp_ActionRendererWatcherSetupUtil","_war_Comp_TeamMemberItemRendererWatcherSetupUtil"
            ,"_ui_davyFight_DavyButtonWatcherSetupUtil","_ToolTip_RewardItemItemRendererWatcherSetupUtil","_ui_land_Comp_LinkRewardRendererWatcherSetupUtil","_ui_abattoir_comp_MiddlePersonRendererWatcherSetupUtil","_ui_abattoir_comp_SkillPreviewRendererWatcherSetupUtil","_ui_role_Comp_ReceiveItemItemRendererWatcherSetupUtil","_ui_hero_Comp_FamouseHeroItemRendererWatcherSetupUtil","_ui_item_Comp_UpgrateEquipItemRendererWatcherSetupUtil","_war_Comp_TeamItemRendererWatcherSetupUtil","_ui_mail_Comp_MailButtonWatcherSetupUtil","_ui_role_FriendButtonWatcherSetupUtil","_ui_mail_Comp_MailItemRendererWatcherSetupUtil","_war_Comp_SelectWarItemRendererWatcherSetupUtil","_war_Comp_EliteCampRendererWatcherSetupUtil","_ui_land_Comp_BuffRendererWatcherSetupUtil","_ui_land_Comp_CookTaskWatcherSetupUtil","_ui_task_PortTaskWatcherSetupUtil","_ui_role_Comp_SeeOtherItemRendererWatcherSetupUtil","_teamWar_Comp_LadderRankRendererWatcherSetupUtil","_ui_target_TargetPanelWatcherSetupUtil","_teamWar_Comp_MergeBtnPanel3WatcherSetupUtil"
            ,"_ui_hero_Comp_SkillPreviewRendererWatcherSetupUtil","_ui_task_Comp_ExchangeShopRendererWatcherSetupUtil","_ui_legion_Comp_LegionMemberItemRendererWatcherSetupUtil","_teamWar_Comp_MergeBtnPanel2WatcherSetupUtil","_ui_legion_Comp_LegionRankLastRendererWatcherSetupUtil","_ui_legion_Comp_LegionRankNowRendererWatcherSetupUtil","_ui_land_Comp_WareHouseRendererWatcherSetupUtil","_ui_land_Comp_CookRendererRendererWatcherSetupUtil","_teamWar_Comp_MergeBtnPanel1WatcherSetupUtil","_ui_diary_Comp_DiaryHeroRendererWatcherSetupUtil","_ui_land_Comp_CookRendererWatcherSetupUtil","_ui_hero_Comp_EmbattleItemRendererWatcherSetupUtil","_ui_army_Comp_ArmyWarRendererWatcherSetupUtil","_ui_beast_Comp_BigLandRendererWatcherSetupUtil","_ui_beast_Comp_BeastBeastRendererWatcherSetupUtil","_ui_beast_Comp_SmallLandRendererWatcherSetupUtil","_ui_beast_Comp_VisitRendererWatcherSetupUtil","_ui_item_Comp_OverlordRendererRendererWatcherSetupUtil","_ui_task_Comp_DailyTaskItemRendererWatcherSetupUtil","_ui_drill_Comp_PrisonLevelRendererWatcherSetupUtil"
            ,"_teamWar_Comp_contendPanelWatcherSetupUtil","_ui_legion_Comp_LegionScienceItemRendererWatcherSetupUtil","_ui_drill_Comp_PrisonArmyRendererWatcherSetupUtil","_ui_friend_comp_FriendItemRendererWatcherSetupUtil","_ui_item_Comp_UpgrateHeroItemRendererWatcherSetupUtil","_ui_hero_Comp_PassOnRendererWatcherSetupUtil","_ui_beast_Comp_AbilityWatcherSetupUtil","_teamWar_Comp_LadderRendererWatcherSetupUtil","_teamWar_SecretRendererWatcherSetupUtil","_ui_diary_Comp_SkillRendererWatcherSetupUtil","_navigation_SeaRisk_Comp_SeaRiskCardRendererWatcherSetupUtil","_ui_hero_Comp_PassOnRendererRendererWatcherSetupUtil","_ui_hero_Comp_HeroTrainItemRendererWatcherSetupUtil","_ui_drill_Comp_AutoPrisonWatcherSetupUtil","_ui_land_Comp_TradeRendererWatcherSetupUtil","_ui_item_Comp_OverlordRenderer2WatcherSetupUtil","_ui_item_Comp_OverlordRendererWatcherSetupUtil","_ui_confusedFight_DiamondRendererWatcherSetupUtil","_ui_item_Comp_ItemItemRendererWatcherSetupUtil","_ui_drill_Comp_PrisonTalentRendererWatcherSetupUtil"
            ,"_teamWar_Comp_LadderExchangeRendererWatcherSetupUtil","_ui_land_Comp_CutPanelWatcherSetupUtil","_ui_land_Comp_BusinessRendererWatcherSetupUtil","_ToolTip_MarinerToolTip2WatcherSetupUtil","_ToolTip_FoodBuffToolTipWatcherSetupUtil","_ToolTip_SkillToolTipWatcherSetupUtil","_ToolTip_CardToolTipWatcherSetupUtil","_ToolTip_TianfuToolTipWatcherSetupUtil","_ToolTip_PostToolTipWatcherSetupUtil","_ToolTip_BattleToolTipWatcherSetupUtil","_ToolTip_TavernToolTipWatcherSetupUtil","_ToolTip_FruitToolTipWatcherSetupUtil","_ToolTip_HeroToolTipWatcherSetupUtil","_ToolTip_AbHeroSkillTipWatcherSetupUtil","_ToolTip_AbHeroTipWatcherSetupUtil","_ToolTip_OtherHeroToolTipWatcherSetupUtil","_ToolTip_ShipEquipToolTipWatcherSetupUtil","_ToolTip_EquipmentToolTipWatcherSetupUtil","_ToolTip_SoulToolTipWatcherSetupUtil","_ToolTip_ItemToolTipWatcherSetupUtil","_ToolTip_LegionScienceToolTipWatcherSetupUtil","_ToolTip_HPToolTipWatcherSetupUtil","_ToolTip_TitleToolTipWatcherSetupUtil","_ToolTip_CampaginToolTipWatcherSetupUtil"
            ,"_ToolTip_StrideOverToolTipWatcherSetupUtil","_ToolTip_OverlordTollTipWatcherSetupUtil","_ToolTip_CompareToolTipWatcherSetupUtil","_ToolTip_MarinerToolTipWatcherSetupUtil","_ui_item_ShowGetItemListWatcherSetupUtil","_ui_item_Comp_ShowGetItemListItemRendererWatcherSetupUtil","_ToolTip_HeroSoulToolTipWatcherSetupUtil","_ToolTip_OverlordToolTip2WatcherSetupUtil","_ToolTip_FightingToolTipWatcherSetupUtil","_ui_land_Comp_FashionablePanelWatcherSetupUtil","_ui_WallowPanelWatcherSetupUtil","_mainWatcherSetupUtil","_ExtendComp_GameAlertWatcherSetupUtil","_ui_WaitingProcessWatcherSetupUtil","_ui_ChatPanelWatcherSetupUtil","_ui_land_Comp_PortTaskPanelWatcherSetupUtil","_ui_land_Comp_CookTaskPanelWatcherSetupUtil","_ui_land_Comp_InvestPanelWatcherSetupUtil","_ui_land_Comp_ShipInfoPanelWatcherSetupUtil","_ui_MainUIWatcherSetupUtil","_ui_abattoir_SkillListWatcherSetupUtil","_ui_task_TaskTrackWatcherSetupUtil","_ui_role_PresentButtonWatcherSetupUtil","_ui_task_Comp_TaskTrackItemRendererWatcherSetupUtil"
            ,"_ui_shop_Comp_BuyPanelWatcherSetupUtil","_war_Comp_EnterCopyItemRendererWatcherSetupUtil","_ui_drill_Comp_PrisonInfoWatcherSetupUtil","_ui_mail_Comp_WriteBoxWatcherSetupUtil","_ui_mail_Comp_ReceiveBoxWatcherSetupUtil","_teamWar_Comp_HighBattelPanelWatcherSetupUtil","_teamWar_Comp_SkyWarPanelWatcherSetupUtil","_teamWar_Comp_TeamWarJoinRendererWatcherSetupUtil","_teamWar_Comp_ContendApplyPanelWatcherSetupUtil","_teamWar_Comp_HighHangPanelWatcherSetupUtil","_ui_hero_Comp_HeroEmbattleItemRendererWatcherSetupUtil","_ui_hero_Comp_HeroItemRendererWatcherSetupUtil","_ui_shop_Comp_MarketRendererWatcherSetupUtil","_ui_treasure_Comp_TreasureRendererWatcherSetupUtil","_ui_vip_Comp_DailyOnlineRendererWatcherSetupUtil","_ui_role_Comp_TianfuItemRendererWatcherSetupUtil","_ui_army_Comp_ArmyJoinRendererWatcherSetupUtil","_ui_action_Comp_CandyKindRendererWatcherSetupUtil","_ui_action_Comp_ActionRewardRendererWatcherSetupUtil","_ui_hero_Comp_HeroSkillItemRendererWatcherSetupUtil","_ui_land_Comp_TavernPanelWatcherSetupUtil"
            ,"_ui_land_Comp_BusinessPanelWatcherSetupUtil","_ui_abattoir_HeroPanelWatcherSetupUtil","_ui_legion_Comp_LegionLegionRendererWatcherSetupUtil","_ui_vip_Comp_NeedRendererWatcherSetupUtil","_ui_vip_Comp_SecretaryRendererWatcherSetupUtil","_ui_army_Comp_ArmyTeamRendererWatcherSetupUtil","_ui_Player_Comp_OtherPlayerItemRendererWatcherSetupUtil","_ui_shop_ShopPanelWatcherSetupUtil","_ui_parade_OverlordParadeWatcherSetupUtil","_ui_vip_OfferRewardPanelWatcherSetupUtil","_ui_item_ComposeGemPanelWatcherSetupUtil","_ui_action_CandyPanelWatcherSetupUtil","_ui_confusedFight_DiamondPanelWatcherSetupUtil","_ui_action_ActionPanelWatcherSetupUtil","_war_TeamPanelWatcherSetupUtil","_ui_army_ArmyPanelWatcherSetupUtil","_ui_item_GemPanelWatcherSetupUtil","_ui_item_UpGratePanelWatcherSetupUtil","_ui_role_TianfuPanelWatcherSetupUtil","_ui_vip_BlessingPanelWatcherSetupUtil","_ui_role_HoldRewardPanelWatcherSetupUtil","_ui_davyFight_DavyFightPanelWatcherSetupUtil","_ui_parade_HeroParadeWatcherSetupUtil","_ui_role_SeeOtherInfoPanelWatcherSetupUtil"
            ,"_ui_diary_DiaryPanelWatcherSetupUtil","_ui_vip_DailyOnlineWatcherSetupUtil","_ui_item_ShowGetItemPanelWatcherSetupUtil","_war_Comp_SelectWarPanelWatcherSetupUtil","_ui_compose_ComposePanelWatcherSetupUtil","_ui_hero_Comp_EmbattlePanelWatcherSetupUtil","_ui_hang_HangPanelWatcherSetupUtil","_ui_item_TallyPanelWatcherSetupUtil","_teamWar_Comp_LadderPanelWatcherSetupUtil","_ui_item_ShipUpGratePanelWatcherSetupUtil","_ui_land_Comp_StudyUpWatcherSetupUtil","_ui_lottery_LotteryWatcherSetupUtil","_ui_lottery_Comp_LotteryRendererWatcherSetupUtil","_ui_hang_HighHangCanWatcherSetupUtil","_ui_hero_SkillPreviewPanelWatcherSetupUtil","_ui_task_DailyTaskWatcherSetupUtil","_ui_treasure_TreasurePanelWatcherSetupUtil","_ui_friend_TalkPanelWatcherSetupUtil","_ui_item_InheritPanelWatcherSetupUtil","_ui_shop_MarketPanelWatcherSetupUtil","_teamWar_ChallengePanelWatcherSetupUtil","_ui_item_UpStarPanelWatcherSetupUtil","_ui_vip_DailyOnline2WatcherSetupUtil","_ui_vip_VipPanelWatcherSetupUtil","_ui_hang_HighHangInfoWatcherSetupUtil"
            ,"_ui_role_ActionOtherPanelWatcherSetupUtil","_ui_drill_DrillPanelWatcherSetupUtil","_ui_land_Comp_CookPanelWatcherSetupUtil","_ui_role_HoldOnPanelWatcherSetupUtil","_ui_land_Comp_WareHousePanelWatcherSetupUtil","_ui_land_PortPanelWatcherSetupUtil","_ui_item_OverlordPanelWatcherSetupUtil","_ui_legion_LegionPanelWatcherSetupUtil","_ui_legion_Comp_LegionApplyRendererWatcherSetupUtil","_ui_item_SmeltPanelWatcherSetupUtil","_war_Comp_ContinueCopyAttackPanelWatcherSetupUtil","_ui_beast_BeastPanelWatcherSetupUtil","_war_Comp_EnterCopyWarPanelWatcherSetupUtil","_ui_item_ItemPanelWatcherSetupUtil","_ui_item_OverLordWatcherSetupUtil","_ui_hero_HeroPanelWatcherSetupUtil","_ui_hero_Comp_Ability2WatcherSetupUtil","_ui_role_ReceiveOnlinePanelWatcherSetupUtil","_ui_strideOver_RulePanelWatcherSetupUtil","_teamWar_TeamWarPanelWatcherSetupUtil","_ui_hero_ActivationPanelWatcherSetupUtil","_teamWar_Comp_ArmyRendererWatcherSetupUtil","_ui_vip_PresentPanelWatcherSetupUtil","_ui_Player_OtherPlayerPanelWatcherSetupUtil"
            ,"_ui_parade_ItemParadeWatcherSetupUtil","_navigation_SeaRisk_Comp_SeaRiskEventPanelWatcherSetupUtil","_navigation_SeaRisk_SeaRiskTreasureRendererWatcherSetupUtil","_ui_vip_VipTastePanelWatcherSetupUtil","_ui_vip_IndicatorPanelWatcherSetupUtil","_ui_role_ReceiveItemTipPanelWatcherSetupUtil","_ui_vip_FirstRechargeableWatcherSetupUtil","_ui_friend_FriendPanelWatcherSetupUtil","_ui_confusedFight_ConfusedFightWatcherSetupUtil","_ui_mail_MailPanelWatcherSetupUtil","_ui_hero_FamousHeroPanelWatcherSetupUtil"],
            "width":"1000"
         };
      }
   }
}


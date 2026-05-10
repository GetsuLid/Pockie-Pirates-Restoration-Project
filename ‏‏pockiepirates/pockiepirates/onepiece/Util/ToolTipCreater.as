package Util
{
   import ExtendComp.BaseToolTip;
   import ToolTip.AbHeroSkillTip;
   import ToolTip.AbHeroTip;
   import ToolTip.BattleToolTip;
   import ToolTip.BufferToolTip;
   import ToolTip.CampaginToolTip;
   import ToolTip.CardToolTip;
   import ToolTip.CompareToolTip;
   import ToolTip.EquipmentToolTip;
   import ToolTip.FightingToolTip;
   import ToolTip.FoodBuffToolTip;
   import ToolTip.FruitToolTip;
   import ToolTip.HPToolTip;
   import ToolTip.HeroSoulToolTip;
   import ToolTip.HeroToolTip;
   import ToolTip.ItemToolTip;
   import ToolTip.LegionScienceToolTip;
   import ToolTip.MarinerToolTip;
   import ToolTip.MarinerToolTip2;
   import ToolTip.OtherHeroToolTip;
   import ToolTip.OverlordTollTip;
   import ToolTip.OverlordToolTip2;
   import ToolTip.PostToolTip;
   import ToolTip.ShipEquipToolTip;
   import ToolTip.SkillToolTip;
   import ToolTip.SoulToolTip;
   import ToolTip.StrideOverToolTip;
   import ToolTip.TavernToolTip;
   import ToolTip.TianfuToolTip;
   import ToolTip.TitleToolTip;
   import data.Item.ItemBase;
   import data.Item.OverlordData;
   import data.Land.BoatEquipData;
   import data.Land.FoodBuff;
   import data.Land.PostVisitor;
   import data.abattoir.AbHeroDatas;
   import data.battle.BattlePerson;
   import data.campagin.CampaginData;
   import data.hero.HeroData;
   import data.legion.LegionScienceData;
   import data.nereusData.SeaSkillData;
   import data.skill.SkillData;
   import data.skill.TianfuData;
   import data.soul.SoulData;
   import data.strideOver.StrideOverPlayerData;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import manager.DataManager;
   import mx.core.UIComponent;
   import nereus.SeaSkillToolTip;
   
   public class ToolTipCreater
   {
      
      private static var _tipsHeap:Dictionary = new Dictionary(true);
      
      public function ToolTipCreater()
      {
         super();
      }
      
      public static function heroSoulToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var heroSoulTip:HeroSoulToolTip = null;
         var tip:HeroSoulToolTip = _tipsHeap["HeroSoulToolTip"];
         if(!tip)
         {
            heroSoulTip = new HeroSoulToolTip();
            main.inst.systemManager.addChild(heroSoulTip);
            tip = _tipsHeap["HeroSoulToolTip"] = heroSoulTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function EquipToolTipCreater(item:ItemBase, e:MouseEvent) : void
      {
         var itemTip:EquipmentToolTip = null;
         if(item == null || item.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["EquipToolTip"];
         if(!tip)
         {
            itemTip = new EquipmentToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(itemTip);
            tip = _tipsHeap["EquipToolTip"] = itemTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = item;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function skillToolTipCreater(skill:SkillData, e:MouseEvent) : void
      {
         var skillTip:SkillToolTip = null;
         if(!skill || !skill.id)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["SkillToolTip"];
         if(!tip)
         {
            skillTip = new SkillToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(skillTip);
            tip = _tipsHeap["SkillToolTip"] = skillTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = skill;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function fightingToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var fightingTip:FightingToolTip = null;
         if(!hero || !hero.id)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["FightingToolTip"];
         if(!tip)
         {
            fightingTip = new FightingToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(fightingTip);
            tip = _tipsHeap["FightingToolTip"] = fightingTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function MarinerToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var heroTip:MarinerToolTip = null;
         if(hero == null || hero.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["MarinerToolTip"];
         if(!tip)
         {
            heroTip = new MarinerToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(heroTip);
            tip = _tipsHeap["MarinerToolTip"] = heroTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function tavernToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var heroTip:TavernToolTip = null;
         if(!hero || !hero.id)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["TavernToolTip"];
         if(!tip)
         {
            heroTip = new TavernToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(heroTip);
            tip = _tipsHeap["TavernToolTip"] = heroTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function abattoirHeroTipCreater(hero:AbHeroDatas, e:MouseEvent) : void
      {
         var abheroTip:AbHeroTip = null;
         if(!hero || !hero.pCfggladiatorId)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["AbHeroTip"];
         if(!tip)
         {
            abheroTip = new AbHeroTip();
            (e.currentTarget as UIComponent).systemManager.addChild(abheroTip);
            tip = _tipsHeap["AbHeroTip"] = abheroTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function MarinerToolTipCreater2(hero:HeroData, e:MouseEvent) : void
      {
         var heroTip:MarinerToolTip2 = null;
         if(hero == null || hero.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["MarinerToolTip2"];
         if(!tip)
         {
            heroTip = new MarinerToolTip2();
            (e.currentTarget as UIComponent).systemManager.addChild(heroTip);
            tip = _tipsHeap["MarinerToolTip2"] = heroTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function cardToolTipCreater(card:Object, e:MouseEvent) : void
      {
         var cardTip:CardToolTip = null;
         if(card == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["CardToolTip"];
         if(!tip)
         {
            cardTip = new CardToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(cardTip);
            tip = _tipsHeap["CardToolTip"] = cardTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = card;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function SeaSkillToolTipCreater(skill:SeaSkillData, e:MouseEvent) : void
      {
         var skillTip:SeaSkillToolTip = null;
         if(skill == null || skill.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["SeaSkillToolTip"];
         if(!tip)
         {
            skillTip = new SeaSkillToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(skillTip);
            tip = _tipsHeap["SeaSkillToolTip"] = skillTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = skill;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function OverlordToolTipCreater2(item:HeroData, e:MouseEvent) : void
      {
         var itemTip:OverlordToolTip2 = null;
         if(item == null || item.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["OverlordToolTip2"];
         if(!tip)
         {
            itemTip = new OverlordToolTip2();
            (e.currentTarget as UIComponent).systemManager.addChild(itemTip);
            tip = _tipsHeap["OverlordToolTip2"] = itemTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = item;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function titleToolTipCreater(title:String, style:int, e:MouseEvent) : void
      {
         var tiTip:TitleToolTip = null;
         var tip:TitleToolTip = _tipsHeap["TitleToolTip"];
         if(!tip)
         {
            tiTip = new TitleToolTip();
            main.inst.systemManager.addChild(tiTip);
            tip = _tipsHeap["TitleToolTip"] = tiTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = title;
         tip.reLocated();
         tip.styleKind = style;
         tip.visible = true;
      }
      
      public static function OverlordToolTipCreater(item:OverlordData, e:MouseEvent) : void
      {
         var itemTip:OverlordTollTip = null;
         if(item == null || item.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["OverlordToolTip"];
         if(!tip)
         {
            itemTip = new OverlordTollTip();
            (e.currentTarget as UIComponent).systemManager.addChild(itemTip);
            tip = _tipsHeap["OverlordToolTip"] = itemTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = item;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function otherHeroToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var heroTip:OtherHeroToolTip = null;
         if(!hero)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["OtherHeroToolTip"];
         if(!tip)
         {
            heroTip = new OtherHeroToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(heroTip);
            tip = _tipsHeap["OtherHeroToolTip"] = heroTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function StrideOverToolTipCreater(item:StrideOverPlayerData, e:MouseEvent) : void
      {
         var itemTip:StrideOverToolTip = null;
         if(item == null || item.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["StrideOverToolTip"];
         if(!tip)
         {
            itemTip = new StrideOverToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(itemTip);
            tip = _tipsHeap["StrideOverToolTip"] = itemTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = item;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function FoodBuffToolTipCreater(foodBuff:FoodBuff, e:MouseEvent) : void
      {
         var foodBuffTip:FoodBuffToolTip = null;
         if(foodBuff == null || foodBuff.att == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["FoodBuffToolTip"];
         if(!tip)
         {
            foodBuffTip = new FoodBuffToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(foodBuffTip);
            tip = _tipsHeap["FoodBuffToolTip"] = foodBuffTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = foodBuff;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function ItemToolTipCreater(item:ItemBase, e:MouseEvent) : void
      {
         var itemTip:ItemToolTip = null;
         if(item == null || item.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["ItemToolTip"];
         if(!tip)
         {
            itemTip = new ItemToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(itemTip);
            tip = _tipsHeap["ItemToolTip"] = itemTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = item;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function ShipEquipToolTipCreater(boatEquip:BoatEquipData, e:MouseEvent) : void
      {
         var shipEquipTip:ShipEquipToolTip = null;
         if(boatEquip == null || boatEquip.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["ShipEquipToolTip"];
         if(!tip)
         {
            shipEquipTip = new ShipEquipToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(shipEquipTip);
            tip = _tipsHeap["ShipEquipToolTip"] = shipEquipTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = boatEquip;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function tianfuToolTipCreater(tianfu:TianfuData, e:MouseEvent) : void
      {
         var tianfuTip:TianfuToolTip = null;
         var tip:BaseToolTip = _tipsHeap["TianfuToolTip"];
         if(!tip)
         {
            tianfuTip = new TianfuToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(tianfuTip);
            tip = _tipsHeap["TianfuToolTip"] = tianfuTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = tianfu;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function LegionScienceToolTipCreater(science:LegionScienceData, e:MouseEvent) : void
      {
         var scienceTip:LegionScienceToolTip = null;
         if(science == null || science.name == null)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["LegionScienceToolTip"];
         if(!tip)
         {
            scienceTip = new LegionScienceToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(scienceTip);
            tip = _tipsHeap["LegionScienceToolTip"] = scienceTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = science;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function heroToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var heroTip:HeroToolTip = null;
         if(!hero || !hero.id)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["HeroToolTip"];
         if(!tip)
         {
            heroTip = new HeroToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(heroTip);
            tip = _tipsHeap["HeroToolTip"] = heroTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function FruitToolTipCreater(hero:HeroData, e:MouseEvent) : void
      {
         var fruitTip:FruitToolTip = null;
         if(!hero || !hero.id)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["FruitToolTip"];
         if(!tip)
         {
            fruitTip = new FruitToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(fruitTip);
            tip = _tipsHeap["FruitToolTip"] = fruitTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function battlePersonToolTipCreater(battlePerson:BattlePerson, e:MouseEvent) : void
      {
         var battleTip:BattleToolTip = null;
         var tip:BaseToolTip = _tipsHeap["BattleToolTip"];
         if(!tip)
         {
            battleTip = new BattleToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(battleTip);
            tip = _tipsHeap["BattleToolTip"] = battleTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = battlePerson;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function bufferToolTipCreater(states:Array, e:MouseEvent) : void
      {
         var bufferTip:BufferToolTip = null;
         if(!states || !states.length)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["BufferToolTip"];
         if(!tip)
         {
            bufferTip = new BufferToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(bufferTip);
            tip = _tipsHeap["BufferToolTip"] = bufferTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = states;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function abattoirSkillTipCreater(hero:AbHeroDatas, _id:String, e:MouseEvent) : void
      {
         var abheroskill:AbHeroSkillTip = null;
         if(!hero || !hero.pCfggladiatorId)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["AbHeroSkillTip"];
         if(!tip)
         {
            abheroskill = new AbHeroSkillTip();
            (e.currentTarget as UIComponent).systemManager.addChild(abheroskill);
            tip = _tipsHeap["AbHeroSkillTip"] = abheroskill;
            abheroskill.myid = _id;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hero;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function soulToolTipCreater(soul:SoulData, e:MouseEvent) : void
      {
         var soulTip:SoulToolTip = null;
         if(!soul || !soul.id)
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["SoulToolTip"];
         if(!tip)
         {
            soulTip = new SoulToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(soulTip);
            tip = _tipsHeap["SoulToolTip"] = soulTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = soul;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function destoryTip(e:MouseEvent) : void
      {
         var item:UIComponent = null;
         for each(item in _tipsHeap)
         {
            item.visible = false;
         }
      }
      
      public static function PostToolTipCreater(post:PostVisitor, e:MouseEvent) : void
      {
         var postTip:PostToolTip = null;
         if(!post || post.toolTip == "")
         {
            return;
         }
         var tip:BaseToolTip = _tipsHeap["PostToolTip"];
         if(!tip)
         {
            postTip = new PostToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(postTip);
            tip = _tipsHeap["PostToolTip"] = postTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = post;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function hpToolTipCreater(hp:String, e:MouseEvent) : void
      {
         var hpTip:HPToolTip = null;
         var tip:HPToolTip = _tipsHeap["HPToolTip"];
         if(!tip)
         {
            hpTip = new HPToolTip();
            main.inst.systemManager.addChild(hpTip);
            tip = _tipsHeap["HPToolTip"] = hpTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = hp;
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function compareToolTip(item:ItemBase, e:MouseEvent) : void
      {
         var itemTip:CompareToolTip = null;
         if(item == null || item.name == null)
         {
            return;
         }
         var com:ItemBase = DataManager.Instance.hero.findEquip(item.part);
         var tip:BaseToolTip = _tipsHeap["CompareToolTip"];
         if(!tip)
         {
            itemTip = new CompareToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(itemTip);
            tip = _tipsHeap["CompareToolTip"] = itemTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         CompareToolTip(tip).show(item,com);
         tip.visible = true;
         tip.reLocated();
      }
      
      public static function campaginToolTipCreater(campagin:CampaginData, preCampagin:CampaginData, e:MouseEvent) : void
      {
         var campaginTip:CampaginToolTip = null;
         if(!campagin || !campagin.campaginId)
         {
            return;
         }
         var obj:Object = new Object();
         obj.campagin = campagin;
         obj.preCampagin = preCampagin;
         var tip:BaseToolTip = _tipsHeap["CampaginToolTip"];
         if(!tip)
         {
            campaginTip = new CampaginToolTip();
            (e.currentTarget as UIComponent).systemManager.addChild(campaginTip);
            tip = _tipsHeap["CampaginToolTip"] = campaginTip;
         }
         tip.x = e.stageX;
         tip.y = e.stageY;
         tip.data = obj;
         tip.visible = true;
         tip.reLocated();
      }
   }
}


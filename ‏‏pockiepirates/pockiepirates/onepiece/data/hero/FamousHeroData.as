package data.hero
{
   import constant.Global;
   import data.Item.ItemBase;
   import data.role.JobData;
   import data.skill.SkillData;
   import lang.UILang;
   import mx.events.PropertyChangeEvent;
   
   public class FamousHeroData extends HeroData
   {
      
      private var _1224456612hasGet:Boolean;
      
      private var _906021636select:Boolean = false;
      
      public var sceneId:int;
      
      private var _428243696canGetByItem:Boolean;
      
      private var _870916507getCondition:String;
      
      public var famousIndex:int;
      
      public var cfgId:int;
      
      private var _2058845668isFired:Boolean = false;
      
      public function FamousHeroData()
      {
         super();
      }
      
      public function set isFired(value:Boolean) : void
      {
         var oldValue:Object = this._2058845668isFired;
         if(oldValue !== value)
         {
            this._2058845668isFired = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFired",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canGetByItem() : Boolean
      {
         return this._428243696canGetByItem;
      }
      
      public function resolveFamousData(info:Object) : void
      {
         var skillData:Object = null;
         var skill:SkillData = null;
         level = info.level;
         maxHp = info.health_point_max;
         id = info.general_id;
         agility = info.agility;
         growAgility = info.agi_grow;
         intelligence = info.intellect;
         growIntelligence = info.int_grow;
         stamina = info.stamina;
         growStamina = info.sta_grow;
         strength = info.strength;
         growStrength = info.str_grow;
         lucky = info.luck;
         skills.removeAll();
         if(info.skills)
         {
            while(info.skills.length)
            {
               skillData = (info.skills.source as Array).shift();
               skill = Global.getSkill(skillData.cfg_skill_id);
               if(skill)
               {
                  skill.level = skillData.level;
                  skills.addItem(skill);
               }
            }
         }
         isFired = info.is_fired;
         hasGet = true;
      }
      
      public function set getCondition(value:String) : void
      {
         var oldValue:Object = this._870916507getCondition;
         if(oldValue !== value)
         {
            this._870916507getCondition = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getCondition",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hasGet() : Boolean
      {
         return this._1224456612hasGet;
      }
      
      public function set canGetByItem(value:Boolean) : void
      {
         var oldValue:Object = this._428243696canGetByItem;
         if(oldValue !== value)
         {
            this._428243696canGetByItem = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canGetByItem",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFired() : Boolean
      {
         return this._2058845668isFired;
      }
      
      [Bindable(event="propertyChange")]
      public function get getCondition() : String
      {
         return this._870916507getCondition;
      }
      
      public function resolveFamousBasicInfo(info:Object) : void
      {
         cfgId = info.cfgGeneralId;
         bigHead = "../assets/images/Head/Big/" + info.face + ".swf";
         name = info.name;
         sceneId = info.sceneId;
         ownSkill = Global.getSkill(info.cfgSkillId);
         famousIndex = info.idx;
         jobData = Global.jobs[info.job] as JobData;
         var item:ItemBase = Global.getItemConfig(info.tallyType);
         if(item)
         {
            canGetByItem = true;
            getCondition = UILang.CostToExHero_I.replace("#1",info.tallyAmount).replace("#2",item.name);
         }
      }
      
      public function set hasGet(value:Boolean) : void
      {
         var oldValue:Object = this._1224456612hasGet;
         if(oldValue !== value)
         {
            this._1224456612hasGet = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasGet",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get select() : Boolean
      {
         return this._906021636select;
      }
      
      public function set select(value:Boolean) : void
      {
         var oldValue:Object = this._906021636select;
         if(oldValue !== value)
         {
            this._906021636select = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"select",oldValue,value));
         }
      }
   }
}


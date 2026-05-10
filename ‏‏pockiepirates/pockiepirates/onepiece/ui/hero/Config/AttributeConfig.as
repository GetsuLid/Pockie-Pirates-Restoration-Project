package ui.hero.Config
{
   public class AttributeConfig
   {
      
      private static var attributeInfo:XML = <root>
			<physicalAttack>
				<sss>65000</sss><ss>40000</ss><s>20000</s><a>10000</a><b>5000</b><c>2000</c>
			</physicalAttack>
			<physicalDefence>
				<sss>35000</sss><ss>20000</ss><s>12000</s><a>8000</a><b>3000</b><c>1000</c>
			</physicalDefence>
			<spellAttack>
				<sss>65000</sss><ss>40000</ss><s>20000</s><a>10000</a><b>5000</b><c>2000</c>
			</spellAttack>
			<spellDefence>
				<sss>35000</sss><ss>20000</ss><s>12000</s><a>8000</a><b>3000</b><c>1000</c>
			</spellDefence>
			<hit>
				<sss>2200</sss><ss>2000</ss><s>1800</s><a>1600</a><b>1400</b><c>1200</c>
			</hit>
			<dodge>
				<sss>1200</sss><ss>1000</ss><s>800</s><a>600</a><b>400</b><c>200</c>
			</dodge>
			<critic>
				<sss>1000</sss><ss>750</ss><s>600</s><a>450</a><b>300</b><c>150</c>
			</critic>
			<speed>
				<sss>40000</sss><ss>20000</ss><s>15000</s><a>10000</a><b>6000</b><c>3000</c>
			</speed>
			<anger>
				<sss>125</sss><ss>112</ss><s>100</s><a>88</a><b>75</b><c>62</c>
			</anger>
			<physicsPenetrate>
				<sss>1200</sss><ss>1000</ss><s>800</s><a>600</a><b>400</b><c>200</c>
			</physicsPenetrate>
			<magicPenetrate>
				<sss>1200</sss><ss>1000</ss><s>800</s><a>600</a><b>400</b><c>200</c>
			</magicPenetrate>
			<physicsDerate>
				<sss>1200</sss><ss>1000</ss><s>800</s><a>600</a><b>400</b><c>200</c>
			</physicsDerate>
			<magicDerate>
				<sss>1200</sss><ss>1000</ss><s>800</s><a>600</a><b>400</b><c>200</c>
			</magicDerate>
			<resistCritic>
				<sss>10000</sss><ss>7500</ss><s>6000</s><a>4500</a><b>3000</b><c>1500</c>
			</resistCritic>
			<parry>
				<sss>10000</sss><ss>7500</ss><s>6000</s><a>4500</a><b>3000</b><c>1500</c>
			</parry>
			<brokenParry>
				<sss>10000</sss><ss>7500</ss><s>6000</s><a>4500</a><b>3000</b><c>1500</c>
			</brokenParry>
		</root>;
      
      public function AttributeConfig()
      {
         super();
      }
      
      public static function getQuality(type:int, value:int) : int
      {
         var obj:Object = null;
         if(value == -1)
         {
            return -1;
         }
         obj = new Object();
         switch(type)
         {
            case 1:
               obj = attributeInfo.physicalAttack;
               break;
            case 2:
               obj = attributeInfo.physicalDefence;
               break;
            case 3:
               obj = attributeInfo.spellAttack;
               break;
            case 4:
               obj = attributeInfo.spellDefence;
               break;
            case 5:
               obj = attributeInfo.hit;
               break;
            case 6:
               obj = attributeInfo.dodge;
               break;
            case 7:
               obj = attributeInfo.critic;
               break;
            case 8:
               obj = attributeInfo.speed;
               break;
            case 9:
               obj = attributeInfo.anger;
               value = value;
               break;
            case 10:
               obj = attributeInfo.physicsPenetrate;
               value *= 100;
               break;
            case 11:
               obj = attributeInfo.magicPenetrate;
               value *= 100;
               break;
            case 12:
               obj = attributeInfo.physicsDerate;
               value *= 100;
               break;
            case 13:
               obj = attributeInfo.magicDerate;
               value *= 100;
               break;
            case 14:
               obj = attributeInfo.resistCritic;
               value *= 100;
               break;
            case 15:
               obj = attributeInfo.parry;
               value *= 100;
               break;
            case 16:
               obj = attributeInfo.brokenParry;
               value *= 100;
         }
         if(value >= obj.sss)
         {
            return 6;
         }
         if(value >= obj.ss)
         {
            return 5;
         }
         if(value >= obj.s)
         {
            return 4;
         }
         if(value >= obj.a)
         {
            return 3;
         }
         if(value >= obj.b)
         {
            return 2;
         }
         if(value >= obj.c)
         {
            return 1;
         }
         return 0;
      }
   }
}


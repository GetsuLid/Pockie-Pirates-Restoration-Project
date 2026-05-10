package ui.target.Config
{
   public class TargetConfig
   {
      
      private static var targetInfo:XML = <root>				
			<target>	
				<id>1</id><title>Goal 1: Find Luffy</title><desc>Accept this task and complete it then you can find Luffy</desc><level>1</level>
			</target>	
			<target>	
				<id>2</id><title>Goal 2: Be Stronger</title><desc>Acquiring skills and enhancing equipment will make you stronger.</desc><level>2</level>
			</target>	
			<target>	
				<id>3</id><title>Goal 3: I'm Not Alone</title><desc>Defeat a few more enemies and you will have new crew.</desc><level>5</level>
			</target>	
<target>				
				<id>4</id><title>Goal 4: New Adventure</title><desc>Defeat Alvida to begin a new adventure.</desc><level>10</level>
			</target>	
<target>				
				<id>5</id><title>Goal 5: My Warship</title><desc>Now you have your own warship.</desc><level>13</level>
			</target>	
<target>				
				<id>6</id><title>Goal 6: My Aptitude</title><desc>Battle aptitude will make you more powerful.</desc><level>15</level>
			</target>	
<target>				
				<id>7</id><title>Goal 7: Join the Affiliation</title><desc>Defeat Morgan to get recognized by the leader and join the affiliation.</desc><level>17</level>
			</target>	
<target>				
				<id>8</id><title>Goal 8: My Harbor</title><desc>Now you have your own harbor, take good care of it.</desc><level>20</level>
			</target>	
<target>				
				<id>9</id><title>Goal 9: Daily Tasks</title><desc>Daily tasks will help you level up faster.</desc><level>21</level>
			</target>	
<target>				
				<id>10</id><title>Goal 10: New Crew</title><desc>Reach Lv.24 to recruit new crew.</desc><level>23</level>
			</target>	
<target>				
				<id>11</id><title>Goal 11: Top of the World</title><desc>Enter arena, it's time to prove yourself.</desc><level>24</level>
			</target>	
<target>				
				<id>12</id><title>Goal 12: Make It Big</title><desc>Reach Lv.55 to arrange 5 crew to overwhelm your enemy.</desc><level>28</level>
			</target>	
<target>				
				<id>13</id><title>Goal 13: Supreme Set</title><desc>Enter instance everyday to get rare materials to synthesize supreme set.</desc><level>35</level>
			</target>	
<target>				
				<id>14</id><title>Goal 14: Shadow Shop</title><desc>Equipping special shadow will be a great help in the battle.</desc><level>40</level>
			</target>	
		</root>;
      
      public function TargetConfig()
      {
         super();
      }
      
      public static function getTargetFromLevel(level:int) : Object
      {
         var obj:Object = null;
         var xmllst:XMLList = targetInfo["target"];
         var tempObj:Object = new Object();
         for each(obj in xmllst)
         {
            if(Boolean(tempObj.level) && level < parseInt(obj.level))
            {
               return tempObj;
            }
            if(level >= parseInt(obj.level))
            {
               tempObj = obj;
               if(level >= 40 && level <= 50)
               {
                  return obj;
               }
            }
         }
         return "";
      }
   }
}


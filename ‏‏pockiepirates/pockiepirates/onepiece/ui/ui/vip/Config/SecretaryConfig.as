package ui.vip.Config
{
   public class SecretaryConfig
   {
      
      private static var secretaryInfo:XML = <root>
		<kind1>	
			<id>1</id><title>Top Up</title><desc>Go to official website and top up to win gold</desc><star>3</star><url>1</url>
		</kind1>	
		<kind1>	
			<id>2</id><title>Battle Chest</title><desc>Randomly gain gold by opening Battle Progress Chest</desc><star>2</star><url></url>
		</kind1>	
		<kind1>	
			<id>3</id><title>Login Reward</title><desc>Login daily to win Gold Card</desc><star>1</star><url>2</url>
		</kind1>	
		<kind1>	
			<id>4</id><title>Trial Reward</title><desc>Complete different levels of trials to win Gold Card </desc><star>1</star><url>drillPanel</url>
		</kind1>	
		<kind1>	
			<id>5</id><title>Newbie Growth Pack</title><desc>Level up and use newbie pack to win gold</desc><star>1</star><url></url>
		</kind1>	
		<kind2>	
			<id>6</id><title>Harbour Taxation</title><desc>Enter harbour, use residence taxation to earn silver</desc><star>3</star><url></url><module>ui/land/LandPanel.swf</module>
		</kind2>	
		<kind2>	
			<id>7</id><title>Capture Labor</title><desc>Enter harbor, capture and make the labor work to earn silver</desc><star>3</star><url>occupy</url><module>ui/land/LandPanel.swf</module>
		</kind2>	
		<kind2>	
			<id>8</id><title>Harbour Fishing</title><desc>Enter harbor, use fishing boat to catch fish and earn silver</desc><star>3</star><url>farm</url><module>ui/land/LandPanel.swf</module>
		</kind2>	
		<kind2>	
			<id>9</id><title>Challenge the Whitebeard</title><desc>Join the daily Whitebeard challenge activity to earn silver</desc><star>3</star><url>teamWar</url>
		</kind2>	
		<kind2>	
			<id>10</id><title>Underwater Treasure</title><desc>Salvage in underwater treasure to earn large amount of silver card</desc><star>3</star><url></url><module>ui/underSea/UnderSeaPanel.swf</module>
		</kind2>	
		<kind2>	
			<id>11</id><title>Arena Reward</title><desc>A large number of silver will be given away according to daily arena ranking</desc><star>2</star><url></url><module>ui/land/Comp/LeitaiPanel.swf</module>
		</kind2>	
		<kind2>	
			<id>12</id><title>Tournament Rewards</title><desc>Be the winner of the Shichibukai Tournament and win lots of gold coins</desc><star>2</star><url></url><module>ui/land/Comp/ContestsPanel.swf</module>
		</kind2>	
		<kind2>	
			<id>13</id><title>Auto-hunting</title><desc>Silver coin reward is available every 30 seconds when auto-hunting</desc><star>2</star><url>3</url>
		</kind2>	
		<kind3>	
			<id>14</id><title>Vitality Points Purchase</title><desc>Vitality points can be purchased based on VIP level</desc><star>3</star><url>4</url>
		</kind3>	
		<kind3>	
			<id>15</id><title>Daily Fishing</title><desc>Go fishing in other players' harbor to gain vitality points</desc><star>2</star><url></url><module>ui/land/LandPanel.swf</module>
		</kind3>	
		<kind3>	
			<id>16</id><title>Daily Task</title><desc>Complete no.3 and no.7 tasks to claim vitality points</desc><star>2</star><url>daily</url>
		</kind3>	
		<kind3>	
			<id>17</id><title>Sign-in Rewards</title><desc>Sign in everyday and claim vitality potion to increase vitality points</desc><star>1</star><url>2</url>
		</kind3>	
		<kind3>	
			<id>18</id><title>Secretary</title><desc>Complete secretary tasks, increase activity level to get vitality potion</desc><star>2</star><url>5</url>
		</kind3>	
		<kind4>	
			<id>19</id><title>Defeat the Legion </title><desc>Enter campaign, defeat legion and gain Exp</desc><star>3</star><url></url>
		</kind4>	
		<kind4>	
			<id>20</id><title>Main Task</title><desc>Complete main task to gain lots of Exp rewards</desc><star>3</star><url></url>
		</kind4>	
		<kind4>	
			<id>21</id><title>Daily Instance</title><desc>Complete daily instance campaign to gain lots of Exp rewards</desc><star>3</star><url></url>
		</kind4>	
		<kind4>	
			<id>22</id><title>Daily Task</title><desc>Complete daily task to gain Exp</desc><star>3</star><url>daily</url>
		</kind4>	
		<kind4>	
			<id>23</id><title>Advanced Hunting</title><desc>Join daily advanced hunting event to gain Exp</desc><star>2</star><url>teamWar</url>
		</kind4>	
		<kind4>	
			<id>24</id><title>Auto-hunting</title><desc>Exp reward is available every 30 seconds when auto-hunting</desc><star>2</star><url>3</url>
		</kind4>	
		<kind4>	
			<id>25</id><title>Team Battle Event</title><desc>Join daily team battle event to gain Exp</desc><star>1</star><url>teamWar</url>
		</kind4>	
		<kind5>	
			<id>26</id><title>Defeat the Legion</title><desc>Enter campaign, defeat the legion to win prestige</desc><star>3</star><url></url>
		</kind5>	
		<kind5>	
			<id>27</id><title>Port Trade</title><desc>Enter harbor, trade in the ship to win prestige</desc><star>2</star><url></url><module>ui/land/LandPanel.swf</module>
		</kind5>	
		<kind5>	
			<id>28</id><title>Battlefield Rewards</title><desc>Prestige is awarded based on daily battlefield ranking</desc><star>1</star><url></url><module>ui/land/Comp/LeitaiPanel.swf</module>
		</kind5>	
		<kind6>	
			<id>29</id><title>Side Task</title><desc>Complete side tasks to gain gold coin rewards</desc><star>3</star><url></url>
		</kind6>	
		<kind6>	
			<id>30</id><title>Main Task</title><desc>Complete main tasks to gain gold coin rewards</desc><star>2</star><url></url>
		</kind6>	
		<kind6>	
			<id>31</id><title>Advanced Hunting</title><desc>Rare beasts and gold coin rewards are available in advanced hunting</desc><star>2</star><url>TeamWar</url>
		</kind6>	
		<kind6>	
			<id>32</id><title>Legion Battle</title><desc>Join Tuesday and Friday legion battle to win gold rewards</desc><star>2</star><url>TeamWar</url>
		</kind6>	
		<kind6>	
			<id>33</id><title>One Piece Competition</title><desc>Join Wednesday and Saturday Pirate King tournament to win gold coin rewards</desc><star>2</star><url>teamWar</url>
		</kind6>	
	</root>;
      
      public function SecretaryConfig()
      {
         super();
      }
      
      public static function getInfo(index:String) : XMLList
      {
         return secretaryInfo["kind" + index];
      }
   }
}


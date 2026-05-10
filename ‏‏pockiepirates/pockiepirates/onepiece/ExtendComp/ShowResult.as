package ExtendComp
{
   import Scene.SceneManager;
   import events.NavigationEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   import manager.DataManager;
   
   public class ShowResult
   {
      
      private static var _inst:ShowResult;
      
      public var isAnnounceEnd:Boolean = true;
      
      private var announceArray:Array = new Array();
      
      public var announceTimer:Timer = new Timer(5000);
      
      private var tips:Boolean;
      
      public function ShowResult()
      {
         super();
      }
      
      public static function get inst() : ShowResult
      {
         if(!_inst)
         {
            _inst = new ShowResult();
         }
         return _inst;
      }
      
      private function openWindow(url:String) : void
      {
         var event:NavigationEvent = new NavigationEvent(NavigationEvent.OPENWINDOW);
         event.url = url;
         DataManager.Instance.dispatchEvent(event);
      }
      
      private function decideRefresh(result:int) : void
      {
         var config:XML = null;
         tips = false;
         if(result)
         {
            config = main.inst.config;
            if(Boolean(config) && Boolean(config.index))
            {
               navigateToURL(new URLRequest(config.index),"_self");
            }
            else
            {
               navigateToURL(new URLRequest("http://127.0.0.1:8080/xxxx/"),"_self");
            }
         }
      }
      
      private function showAnnounceLabel(msg:String, color:uint = 16776960, x:int = 0, y:int = 150, glowColor:uint = 6560256) : void
      {
         var label:AnnounceLabel = new AnnounceLabel();
         if(x != 0)
         {
            label.x = x;
         }
         else
         {
            label.setStyle("horizontalCenter",0);
         }
         label.y = 50;
         label.showResult(msg,color,glowColor);
      }
      
      public function showResult(result:int, msg:String = "", x:int = 0, y:int = 150) : void
      {
         var config:XML = null;
         switch(result)
         {
            case -1000:
               announceArray.push(msg);
               announceTimer.addEventListener(TimerEvent.TIMER,onAnnounceTimer);
               announceTimer.start();
               break;
            case -1:
               showLabel(msg,16728576,x,y,7274515);
               break;
            case -2:
               showLabel(msg,65535,x,y,1911395);
               break;
            case -3:
               showLabel("Please add HP",16776960);
               openWindow("addHp");
               break;
            case 98:
               if(!tips)
               {
                  tips = true;
                  GameAlert.show(60,"Sever connection failed, please relog in the game.",decideRefresh);
               }
               break;
            case -101:
               if(main.inst.wallowAdr != "")
               {
                  navigateToURL(new URLRequest(main.inst.wallowAdr));
               }
               break;
            case -102:
               if(main.inst.charge != "")
               {
                  navigateToURL(new URLRequest(main.inst.charge));
               }
               break;
            case 101:
               showLabel("Password Incorrect");
               break;
            case 102:
               showLabel("Repeated Character Name");
               break;
            case 103:
               showLabel("Creation Failed");
               break;
            case 104:
               showLabel("The name is too long. ");
               break;
            case 106:
               showLabel("Name with illegal character");
               break;
            case 201:
               showLabel("Item not existed");
               break;
            case 202:
               showLabel("Not enough gold");
               break;
            case 205:
               showLabel("Crew member not existed");
               break;
            case 206:
               showLabel("Arousal Failed");
               break;
            case 207:
               showLabel("No skill to learn");
               break;
            case 208:
               showLabel("Not enough skill points");
               break;
            case 209:
               showLabel("Profession skill is full");
               break;
            case 210:
               showLabel("Crew member level not high enough");
               break;
            case 211:
               showLabel("Skill not existed");
               break;
            case 212:
               showLabel("Warship slot not opened");
               break;
            case 213:
               showLabel("Warship not existed");
               break;
            case 214:
               showLabel("Protagonist Level not high enough");
               break;
            case 215:
               showLabel("Warship reaches the highest level");
               break;
            case 216:
               showLabel("Crew member is with gear. Can\'t fire him");
               break;
            case 217:
               showLabel("Not for sale");
               break;
            case 218:
               showLabel("Taxation not on cooldown");
               break;
            case 219:
               showLabel("Not enough taxation times");
               break;
            case 220:
               showLabel("Taxation event not existed");
               break;
            case 221:
               showLabel("Crew in training  ");
               break;
            case 222:
               showLabel("Not enough training slots ");
               break;
            case 223:
               showLabel("Crew not in training");
               break;
            case 224:
               showLabel("Speedy training on cooldown");
               break;
            case 225:
               showLabel("Enhancement not cool down");
               break;
            case 226:
               showLabel("Gear enhancement level can\'t be higher than Protagonist Level");
               break;
            case 227:
               showLabel("Scene does not exist");
               break;
            case 228:
               showLabel("Learning Aptitude failed");
               break;
            case 229:
               showLabel("Aptitude Level reaches level cap");
               break;
            case 230:
               showLabel("Maximum crew recruited");
               break;
            case 231:
               showLabel("Not enough silver");
               break;
            case 232:
               showLabel("Number of taken quests reaches the maximum");
               break;
            case 233:
               showLabel("Can\'t take quest repeatedly");
               break;
            case 234:
               showLabel("Quest not existed");
               break;
            case 235:
               showLabel("Largest available training slot");
               break;
            case 236:
               showLabel("Quest can\'t be discarded");
               break;
            case 237:
               showLabel("Skill unavailable to upgrade");
               break;
            case 238:
               showLabel("Skill reaches the level cap");
               break;
            case 239:
               showLabel("Success rate of enhancement has been modified");
               break;
            case 240:
               showLabel("Not joined affiliation");
               break;
            case 241:
               showLabel("Other affiliation quests are underway");
               break;
            case 242:
               showLabel("HP pool used up. Recovery failed");
               break;
            case 243:
               showLabel("Ship in operation not existed");
               break;
            case 244:
               showLabel("Target player not existed");
               break;
            case 245:
               showLabel("Scene info incorrect");
               break;
            case 246:
               showLabel("The item is not for sale");
               break;
            case 247:
               showLabel("Mail not existed");
               break;
            case 248:
               showLabel("Can\'t send mail to yourself");
               break;
            case 249:
               showLabel("Operation target can\'t be yourself");
               break;
            case 250:
               showLabel("Ship not returned to harbour");
               break;
            case 251:
               showLabel("There\'s nothing valuable in the ship");
               break;
            case 252:
               showLabel("Not enough Vitality");
               break;
            case 253:
               showLabel("Can\'t occupy repeatedly");
               break;
            case 254:
               showLabel("The item is not gear");
               break;
            case 255:
               showLabel("The speech is too lengthy");
               break;
            case 256:
               showLabel("Feed not cooldowned");
               break;
            case 257:
               showLabel("Horse not adopted yet");
               break;
            case 258:
               showLabel("Horse not existed");
               break;
            case 259:
               showLabel("Occupation reaches the limit");
               break;
            case 260:
               showLabel("Challenge tries used up");
               break;
            case 261:
               showLabel("Groom number reaches maximum");
               break;
            case 262:
               showLabel("Times for stealing fodder is up");
               break;
            case 263:
               showLabel("Times for the other side being stolen is up  ");
               break;
            case 264:
               showLabel("Times for cleaning is up");
               break;
            case 265:
               showLabel("Times for the other side being cleaned is up");
               break;
            case 266:
               showLabel("Special Skill");
               break;
            case 267:
               showLabel("Can\'t use quest object");
               break;
            case 268:
               showLabel("Can\'t equip shard");
               break;
            case 269:
               showLabel("Item must degrade first");
               break;
            case 270:
               showLabel("Only Shard is tradable");
               break;
            case 271:
               showLabel("Warship has been in service");
               break;
            case 272:
               showLabel("Groom communication not cooldowned");
               break;
            case 273:
               showLabel("Aptitude Upgrade not cooldowned");
               break;
            case 274:
               if(SceneManager.getInstance().currentSceneId != 3001 && SceneManager.getInstance().currentSceneId != 3002)
               {
                  showLabel("Enemy entrenched there is too strong");
               }
               break;
            case 275:
               showLabel("Send enough ships");
               break;
            case 276:
               showLabel("Vip not high enough");
               break;
            case 277:
               showLabel("Mailbox is empty");
               break;
            case 278:
               showLabel("Not enough Prestige");
               break;
            case 279:
               showLabel("Not enough elites");
               break;
            case 280:
               showLabel("Skill list is blank");
               break;
            case 281:
               showLabel("Skill Discovery number reaches the limit");
               break;
            case 282:
               showLabel("No need to reset skill");
               break;
            case 283:
               showLabel("Team not existed");
               break;
            case 284:
               showLabel("Purchase times for Vitality reaches the maximum of the level");
               break;
            case 285:
               showLabel("Crew Level can\'t exceed Protagonist Level");
               break;
            case 286:
               showLabel("The piscary has been opened for fishing");
               break;
            case 287:
               showLabel("Piscary not existed");
               break;
            case 288:
               showLabel("Piscary isn\'t ready for acquisition");
               break;
            case 289:
               showLabel("Horse racing tries today are used up");
               break;
            case 290:
               showLabel("The number of developable stables reaches maximum");
               break;
            case 291:
               showLabel("A huge gap between target levels");
               break;
            case 292:
               showLabel("Plunder tries today are used up");
               break;
            case 293:
               showLabel("Opponent been defeated ");
               break;
            case 294:
               showLabel("Redemption rewards not existed");
               break;
            case 295:
               showLabel("Inadequate duel credits");
               break;
            case 296:
               showLabel("Already had groom ");
               break;
            case 297:
               showLabel("Groom not existed");
               break;
            case 298:
               showLabel("Inadequate grain");
               break;
            case 299:
               showLabel("Skill hasn\'t been locked ");
               break;
            case 300:
               showLabel("Skill hasn\'t been locked ");
               break;
            case 301:
               showLabel("Inadequate Vitality Water");
               break;
            case 302:
               showLabel("The other side is at phase of protection");
               break;
            case 303:
               showLabel("Gift Pack Code not existed");
               break;
            case 304:
               showLabel("Gift Pack Code been used");
               break;
            case 305:
               showLabel("Gift Pack been claimed");
               break;
            case 306:
               showLabel("Rewards not existed");
               break;
            case 307:
               showLabel("Rewards not existed");
               break;
            case 308:
               showLabel("Rewards claiming requirement not reached");
               break;
            case 309:
               showLabel("Have been in the team");
               break;
            case 310:
               showLabel("Can\'t bookmark repeatedly");
               break;
            case 311:
               showLabel("Bookmark not existed");
               break;
            case 312:
               showLabel("Legion not existed");
               break;
            case 313:
               showLabel("Have been on the application list");
               break;
            case 314:
               showLabel("Legion applied is not in the same Affiliation");
               break;
            case 315:
               showLabel("Legion member not existed");
               break;
            case 316:
               showLabel("Permission Denied");
               break;
            case 317:
               showLabel("Not on the application list");
               break;
            case 318:
               showLabel("Have been in the legion");
               break;
            case 319:
               showLabel("Not in the legion");
               break;
            case 320:
               showLabel("Legion leader can\'t leave");
               break;
            case 321:
               showLabel("The other side not in the legion");
               break;
            case 322:
               showLabel("Same Legion Name");
               break;
            case 323:
               showLabel("Emblem Level reached the maximum");
               break;
            case 324:
               showLabel("The other side not online");
               break;
            case 325:
               showLabel("The other side has been your friend ");
               break;
            case 326:
               showLabel("Friend not existed");
               break;
            case 327:
               showLabel("Legion number is full");
               break;
            case 328:
               showLabel("Legion name can\'t be blank");
               break;
            case 329:
               showLabel("Purchase times for duels has been used up");
               break;
            case 330:
               showLabel("Crew members can upgrade after reincarnation");
               break;
            case 331:
               showLabel("Daily task been taken");
               break;
            case 332:
               showLabel("Daily task not existed");
               break;
            case 333:
               showLabel("Daily task can\'t been submitted");
               break;
            case 334:
               showLabel("Daily task not completed");
               break;
            case 335:
               showLabel("Daily task unavailable");
               break;
            case 336:
               showLabel("Inadequate Remaining Daily Tasks ");
               break;
            case 337:
               showLabel("Crew\'s incarnation times is up");
               break;
            case 338:
               showLabel("Contribute the most");
               break;
            case 339:
               showLabel("Equipping items are not for sale");
               break;
            case 340:
               showLabel("Inadequate Commander\'s Seal");
               break;
            case 341:
               showLabel("Trading");
               break;
            case 355:
               showLabel("Duel on cooldown");
               break;
            case 358:
               showLabel("Shadow reaches the maximum");
               break;
            case 359:
               showLabel("Shadow Inventory is full");
               break;
            case 364:
               showLabel("Shadow euiped,cant be sold");
               break;
            case 365:
               showLabel("Can not equip same type of shadow");
               break;
            case 366:
               showLabel("Player can catch fish once per day");
               break;
            case 368:
               showLabel("Fishing times is up");
               break;
            case 369:
               showLabel("Catching fish times is up");
               break;
            case 370:
               showLabel("Claiming times today is up");
               break;
            case 371:
               showLabel("Not on the ranking. Can\'t claim");
               break;
            case 372:
               showLabel("Available for enhancement currently");
               break;
            case 373:
               showLabel("Still not the time. Can\'t claim rewards");
               break;
            case 374:
               showLabel("The 5th crew member will be released when you reach lv.55");
               break;
            case 376:
               showLabel("Level of inherited gear is too low. Can\'t inherit");
               break;
            case 380:
               showLabel("Occupation tries for labour are up");
               break;
            case 384:
               showLabel("Not signed up for Legion");
               break;
            case 385:
               showLabel("Legion members not signed up ");
               break;
            case 386:
               showLabel("You\'ve signed up");
               break;
            case 387:
               showLabel("Reward been claimed");
               break;
            case 388:
               showLabel("Sign-up for Legion Battle not started yet");
               break;
            case 389:
               showLabel("Legion Battle is underway");
               break;
            case 390:
               showLabel("Unavailable to upgrade after taking daily task");
               break;
            case 391:
               showLabel("Legion Battle unavailable to join currently");
               break;
            case 392:
               showLabel("Inadequate Training Potion");
               break;
            case 393:
               showLabel("Gear not matched with profession");
               break;
            case 394:
               showLabel("Extra feed times in piscary reaches the maximum");
               break;
            case 395:
               showLabel("Sent ships for max times");
               break;
            case 396:
               showLabel("Aptitude on cooldown");
               break;
            case 397:
               showLabel("Enemy not existed");
               break;
            case 398:
               showLabel("Entered other Instancing ");
               break;
            case 399:
               showLabel("Instancing not passed yet");
               break;
            case 400:
               showLabel("Instancing is auto playing");
               break;
            case 401:
               showLabel("Instancing entries reaches maximum today");
               break;
            case 402:
               showLabel("Exceed the maximum purchase times of team battle");
               break;
            case 403:
               showLabel("Password Incorrect");
               break;
            case 404:
               showLabel("Enough team members");
               break;
            case 405:
               showLabel("Not the time to start team battle");
               break;
            case 406:
               showLabel("Upgrade materials not enough");
               break;
            case 407:
               showLabel("Equipped item can\'t be upgraded");
               break;
            case 408:
               showLabel("Joined pirate force");
               break;
            case 409:
               showLabel("Item unavailable");
               break;
            case 410:
               showLabel("Protagonist can\'t go off battle");
               break;
            case 411:
               showLabel("Duel number not enough ");
               break;
            case 412:
               showLabel("Can\'t add times of doing Daily tasks");
               break;
            case 417:
               showLabel("The same gear can\'t be embedded with the shell of the same attribute");
               break;
            case 419:
               showLabel("Slot number incorrect");
               break;
            case 421:
               showLabel("Crew Level can\'t be higher than Protagonist Level");
               break;
            case 422:
               showLabel("Can\'t upgrade protagonist");
               break;
            case 423:
               showLabel("Gold gift pack claimed");
               break;
            case 424:
               showLabel("Times for being caught fish reaches the maximum");
               break;
            case 425:
               showLabel("Not enough team times");
               break;
            case 426:
               showLabel("Not enough people for team. Can\'t start battle");
               break;
            case 427:
               showLabel("Not time for team");
               break;
            case 428:
               showLabel("Battle entry level not high enough");
               break;
            case 429:
               showLabel("Protagonist Level not high enough. Can\'t take quest");
               break;
            case 430:
               showLabel("Character is prohibited to speak");
               break;
            case 431:
               showLabel("Event of challenging whitebeard not started");
               break;
            case 432:
               showLabel("There\'s no need to revive");
               break;
            case 433:
               showLabel("Whitebeard has been defeated");
               break;
            case 434:
               showLabel("Recovering time not cleared");
               break;
            case 435:
               showLabel("Whitebeard is in the battle. Please try it later");
               break;
            case 436:
               showLabel("Claimed wrong treasure chest");
               break;
            case 437:
               showLabel("Can\'t synthesize with one click");
               break;
            case 438:
               showLabel("Bounty Claimed");
               break;
            case 439:
               showLabel("Shell is unavailable to use");
               break;
            case 440:
               showLabel("Call-up Incorrect");
               break;
            case 441:
               showLabel("Call-up not existed");
               break;
            case 442:
               showLabel("Recruitment Error");
               break;
            case 443:
               showLabel("Famous crew\'s flop times incorrect");
               break;
            case 444:
               showLabel("Inadequate merchant fleet times");
               break;
            case 445:
               showLabel("Incorrect merchant fleet quality");
               break;
            case 446:
               showLabel("Merchant fleet is on plunder cooldown");
               break;
            case 447:
               showLabel("Merchant fleet reaches the highest level");
               break;
            case 448:
               showLabel("Treasure chest info incorrect");
               break;
            case 449:
               showLabel("Protagonist can\'t use EXP Card");
               break;
            case 450:
               showLabel("Number of taken side quests reaches maximum");
               break;
            case 451:
               showLabel("In chain attack, please wait patiently");
               break;
            case 452:
               showLabel("Army not won yet. Can\'t do chain attack");
               break;
            case 453:
               showLabel("Battle not unlocked yet. Can\'t do chain attack");
               break;
            case 454:
               showLabel("Warship appearance not existed");
               break;
            case 455:
               showLabel("There\'s no match record");
               break;
            case 456:
               showLabel("There\'s no match lately");
               break;
            case 457:
               showLabel("Match not ended yet");
               break;
            case 458:
               showLabel("Match not started yet");
               break;
            case 460:
               showLabel("Can\'t claim rewards");
               break;
            case 461:
               showLabel("Can\'t sign up");
               break;
            case 462:
               showLabel("Signed up already");
               break;
            case 463:
               showLabel("No war report");
               break;
            case 464:
               showLabel("Daily rewards claimed");
               break;
            case 465:
               showLabel("Can\'t claim daily rewards");
               break;
            case 466:
               showLabel("Claiming requirement not satisfied");
               break;
            case 467:
               showLabel("Claiming requirement not satisfied");
               break;
            case 468:
               showLabel("Not within event time for claiming ");
               break;
            case 469:
               showLabel("Unable to sell socketed items");
               break;
            case 470:
               showLabel("Battle Report doesnt exist");
               break;
            case 474:
               showLabel("Not Enough Liveliness");
               break;
            case 475:
               showLabel("Liveliness Chest has been claimed");
               break;
            case 484:
               showLabel("Cant rescue this one");
               break;
            case 485:
               showLabel("Lack of Avatar card, buy it in VIP Mall ");
               break;
            case 486:
               showLabel("Item can\'t be used directly");
               break;
            case 487:
               showLabel("Target has been occupied");
               break;
            case 488:
               showLabel("Failed to start Team Battle");
               break;
            case 489:
               showLabel("Stop training before you fire the crew");
               break;
            case 490:
               showLabel("Fail to replace Legion leader");
               break;
            case 496:
               showLabel("You\'ve already had this crew");
               break;
            case 497:
               showLabel("Advanced Hunting hasn\'t started yet");
               break;
            case 498:
               showLabel("Not in Advanced Hunting");
               break;
            case 499:
               showLabel("Run out of resouce");
               break;
            case 500:
               showLabel("Members are full in advanced hunting");
               break;
            case 501:
               showLabel("Hunting");
               break;
            case 502:
               showLabel("Advanced hunting place doesn\'t exsit");
               break;
            case 503:
               showLabel("Recovering Time");
               break;
            case 505:
               showLabel("Level is not available");
               break;
            case 506:
               showLabel("Can\'t challenge the winner");
               break;
            case 507:
               showLabel("Tournament doesn\'t exsit");
               break;
            case 508:
               showLabel("Tournament CD");
               break;
            case 509:
               showLabel("Not opened yet");
               break;
            case 510:
               showLabel("Challenge failed. Please revive to continue");
               break;
            case 511:
               showLabel("Incorrect challenge order");
               break;
            case 512:
               showLabel("Run out of challenge times");
               break;
            case 513:
               showLabel("Revived");
               break;
            case 514:
               showLabel("Challenging");
               break;
            case 515:
               showLabel("Lack of trial point");
               break;
            case 516:
               showLabel("Not enough Honor Medal");
               break;
            case 517:
               showLabel("Not enough growth Medal");
               break;
            case 518:
               showLabel("Lack of adventure times");
               break;
            case 519:
               showLabel("Recruited all crew members");
               break;
            case 520:
               showLabel("Not enough Fame");
               break;
            case 531:
               showLabel("Not in Advanced Hunting Island");
               break;
            case 534:
               showLabel("Upgraded to full stars");
               break;
            case 535:
               showLabel("Not enough materials");
               break;
            case 536:
               showLabel("This gear can\'t upgrade star");
               break;
            case 537:
               showLabel("Wearing now, can\'t be melt");
               break;
            case 538:
               showLabel("Can not equip");
               break;
            case 539:
               showLabel("Not enough hunting honor");
               break;
            case 541:
               showLabel("Can\'t melt gear with shells");
               break;
            case 545:
               showLabel("Battle of Marineford doesnt start");
               break;
            case 546:
               showLabel("Cant fight during weakness time");
               break;
            case 547:
               showLabel("Target is dead");
               break;
            case 551:
               showLabel("Interaction under CD");
               break;
            case 552:
               showLabel("Not enough interactive time");
               break;
            case 553:
               showLabel("Guardian beast doesnt exist");
               break;
            case 554:
               showLabel("Guardian beast attributes full");
               break;
            case 555:
               showLabel("Not enough energy ball");
               break;
            case 556:
               showLabel("Items of guardian beast cant be directly used");
               break;
            case 557:
               showLabel("Dont reach the evolution level");
               break;
            case 558:
               showLabel("Max evolution");
               break;
            case 559:
               showLabel("Highest skill level");
               break;
            case 560:
               showLabel("Max level guardian beast");
               break;
            case 561:
               showLabel("Not hatch yet");
               break;
            case 562:
               showLabel("Guardian beast skill slots full");
               break;
            case 563:
               showLabel("You\'ve got this guardian beast");
               break;
            case 564:
               showLabel("Skill book not matched with Guardian Beast category. Can\'t use ");
               break;
            case 565:
               showLabel("Recruit before entering allbule Lv.1 ");
               break;
            case 566:
               showLabel("The crew has inherited");
               break;
            case 567:
               showLabel("Not the same class. Can\'t inherit ");
               break;
            case 568:
               showLabel("Transfer requirement not met. Can\'t inherit ");
               break;
            case 569:
               showLabel("Cannot use directly");
               break;
            case 570:
               showLabel("Warship doesn\'t exist");
               break;
            case 571:
               showLabel("Warship equipment doesn\'t exist");
               break;
            case 572:
               showLabel("Warship equipment max level reached");
               break;
            case 573:
               showLabel("Cannot remodel warship equipment");
               break;
            case 574:
               showLabel("Not enough warship remodel materials");
               break;
            case 575:
               showLabel("Low crew intimacy");
               break;
            case 576:
               showLabel("Crew has been appointed");
               break;
            case 578:
               showLabel("Warship not in the port");
               break;
            case 580:
               showLabel("Specialty doesn\'t exist");
               break;
            case 582:
               showLabel("Max food capacity reached");
               break;
            case 583:
               showLabel("Max sailor capacity reached");
               break;
            case 584:
               showLabel("Max durability capacity reached");
               break;
            case 586:
               showLabel("Not enough quest materials");
               break;
            case 589:
               showLabel("Crew has been appointed");
            case 591:
               showLabel("Not enough storage capacity");
               break;
            case 592:
               showLabel("Condition not met, must finish remodeling all the parts of same level first");
               break;
            case 593:
               showLabel("Not enough trade level");
               break;
            case 594:
               showLabel("Not enough cooking level");
               break;
            case 595:
               showLabel("Not enough materials");
               break;
            case 596:
               showLabel("Cooking in cooldown");
               break;
            case 597:
               showLabel("Recipe doesn\'t exist");
               break;
            case 598:
               showLabel("Recipe locked");
               break;
            case 601:
               showLabel("Not enough Record Pointer. Can\'t draw");
               break;
            case 610:
               showLabel("Not enough adventure level");
               break;
            case 611:
               showLabel("Not enough adventure pass");
               break;
            case 612:
               break;
            case 613:
               showLabel("Cannot move");
               break;
            case 614:
               showLabel("Not enough skip chances");
               break;
            case 615:
               showLabel("Not enough move chances");
               break;
            case 616:
               showLabel("Cannot teleport");
               break;
            case 617:
               showLabel("Not at finish point");
               break;
            case 618:
               showLabel("Entry requirement not met");
               break;
            case 619:
               showLabel("Dead in adventure");
               break;
            case 620:
               showLabel("BOSS defeated");
               break;
            case 622:
               showLabel("Warship in repair");
               break;
            case 623:
               showLabel("Free plunder unlocked at Navigation Lv.30");
               break;
            case 624:
               showLabel("Player in newbie protection");
               break;
            case 625:
               showLabel("Plunder in cooldown");
               break;
            case 626:
               showLabel("In plunder protection");
               break;
            case 627:
               showLabel("Plunder target out of range");
               break;
            case 630:
               showLabel("Food refilled");
               break;
            case 631:
               showLabel("Durability refilled");
               break;
            case 632:
               showLabel("Food doesn\'t exist");
               break;
            case 633:
               showLabel("Warship not on sea");
               break;
            case 667:
               showLabel("Cannot discover the same skill");
               break;
            case 635:
               showLabel("No treasure map");
               break;
            case 636:
               showLabel("Treasure map locked");
               break;
            case 637:
               showLabel("Treasure map cleared");
               break;
            case 638:
               showLabel("Out of range, please explore nearby areas");
               break;
            case 639:
               showLabel("Action in cooldown");
               break;
            case 640:
               showLabel("No search chances");
               break;
            case 641:
               showLabel("Already searched");
               break;
            case 642:
               showLabel("Unexplored");
               break;
            case 643:
               showLabel("Cannot move there");
               break;
            case 644:
               showLabel("Uncleared");
               break;
            case 661:
               showLabel("Treasure seeker disappeared");
               break;
            case 662:
               showLabel("Treasure seeker out of attacking range");
               break;
            case 676:
               showLabel("Unlock after passing 100 floors");
               break;
            case 677:
               showLabel("No stage challenge");
               break;
            case 678:
               showLabel("Stage challenge has ended");
               break;
            case 679:
               showLabel("Healing attempts not enough");
               break;
            case 680:
               showLabel("Skip attempts not enough");
               break;
            case 690:
               showLabel("Log pose not opened");
               break;
            case 691:
               showLabel("Shirahoshi\'s blessing not opened");
               break;
            case 693:
               showLabel("Ladder Battle is not available for player under lv.30 ");
               break;
            case 694:
               showLabel("Not enough ladder challenges");
               break;
            case 695:
               showLabel("Ladder Battle not opened yet");
               break;
            case 696:
               showLabel("Already in group battle matching");
               break;
            case 697:
               showLabel("Already in individual battle matching");
               break;
            case 701:
               showLabel("Insufficient Honor");
               break;
            case 702:
               showLabel("Max Battle Royal tries reached");
               break;
            case 703:
               showLabel("Character level not reached Lv.60");
               break;
            case 704:
               showLabel("Battle Royal reached 5 times");
               break;
            case 706:
               showLabel("Not enough Diamond");
               break;
            case 707:
               showLabel("Level not reached Lv.50");
               break;
            case 708:
               showLabel("Max summoning times reached");
               break;
            case 709:
               showLabel("Max input times reached");
               break;
            case 710:
               showLabel("The last input failed, can\'t input again");
               break;
            case 712:
               showLabel("Reward claimed");
               break;
            case 713:
               showLabel("Ancient Dragon has started");
               break;
            case 714:
               showLabel("Max number reached");
               break;
            case 730:
               showLabel("Ship remodel level not enough");
               break;
            case 731:
               showLabel("Shipwright doesn\'t exist");
               break;
            case 732:
               showLabel("Progress less than 60 points");
               break;
            case 733:
               showLabel("Warship level cap reached");
               break;
            case 734:
               showLabel("Enhancement level cap reached");
               break;
            case 750:
               showLabel("Battle in progress. Cannot change crews");
               break;
            case 753:
               showLabel("You can choose 5 members at most");
               break;
            case 758:
               showLabel("Please choose battlers");
               break;
            case 2000:
               showLabel("Not in the registration stage");
               break;
            case 2001:
               showLabel("Already signed up");
               break;
            case 2002:
               showLabel("You haven\'t joined the contest");
               break;
            case 2003:
               showLabel("The contest is not over yet");
               break;
            case 2004:
               showLabel("You have bet");
               break;
            case 2005:
               showLabel("Can\'t bet");
               break;
            case 2006:
               showLabel("Not bet yet");
               break;
            case 2007:
               showLabel("The most bet times");
               break;
            case 2008:
               showLabel("Can only bet one person on each round");
               break;
            case 2009:
               showLabel("Can\'t bet players within Top 32");
               break;
            case 2010:
               showLabel("Bet data error");
               break;
            case 2011:
               showLabel("Reward claimed");
               break;
            case 2012:
               showLabel("Server address error");
               break;
            case 2013:
               showLabel("Can\'t synchronize information while in combat phase");
               break;
            case 2014:
               showLabel("Reward claimed");
         }
      }
      
      private function onAnnounceTimer(e:TimerEvent) : void
      {
         var str:String = null;
         if(isAnnounceEnd)
         {
            if(announceArray.length)
            {
               isAnnounceEnd = false;
               str = announceArray.shift();
               showAnnounceLabel(str);
            }
         }
      }
      
      private function showLabel(msg:String, color:uint = 16728576, x:int = 0, y:int = 150, glowColor:uint = 7274515) : void
      {
         var label:ResultLabel = new ResultLabel();
         if(x != 0)
         {
            label.x = x;
         }
         else
         {
            label.setStyle("horizontalCenter",0);
         }
         label.y = y;
         label.showResult(msg,color,glowColor);
      }
   }
}


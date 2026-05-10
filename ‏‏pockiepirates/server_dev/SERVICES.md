# Pockie Pirates Service Registry

These are the **42 service destinations** and **112+ RPC method names** extracted
directly from the ABC bytecode (decompiled ActionScript constant pool) of
`onepiece/main.swf`. The Flex client registers exactly 21+ `RemoteObject`
instances inside an `HttpServerManager` class - each maps to one destination
below.

This is the protocol map a server emulator needs to handle.

## Destinations (services)

| Destination | Likely subsystem |
|---|---|
| `loginService` | Authentication and session |
| `roleService` | Character creation, role/profile data |
| `worldService` | World state, server-wide info |
| `sceneService` | Scene/map navigation |
| `battleService` | Combat (turn-based) |
| `generalService` | Heroes/generals roster |
| `itemService` | Inventory, equipment |
| `taskService` | Quests |
| `mailService` | Mail system |
| `chatService` | Chat |
| `friendAction` | Friends list |
| `legionService` | Guild / legion |
| `auctionService` | Auction house |
| `rankService` | Leaderboards |
| `arenaService` (?) | Arena PvP - inferred from `getArenaRank*` |
| `matchService` | Matchmaking for PvP |
| `voyageService` | Sea voyages |
| `manorService` | Manor / housing |
| `campService` | Camp / war camps |
| `activityService` | Daily activities |
| `dailyAction` | Daily-reward calls |
| `farmAction` | Farming feature |
| `dealAction` | Trade with NPCs |
| `fateService` | Fate / luck system |
| `skyladderService` | Sky Ladder PvP tournament |
| `stableAction` | Pet stable |
| `createService` | Generic create-entity service |

(Plus 15 more framework destinations that exist for Flex internals.)

## Discovered RPC method names (selected)

These methods appear in the client's call sites - so the server must implement them:

### Heroes / generals
- `getGeneralRank`
- `getArmyMessage`
- `getEmbattle` / `getUpgrateEmbattle` (formation/embattle)

### Combat
- `enterQuarryBattle` (probably starts a stage battle)
- `getWarConfig`, `getWarReward`
- `setReward`, `setRewardInfo`, `setTeamwarShow`
- `getOfferReward`

### Items / inventory
- `getItem`, `getItemConfig`, `getItemCount`
- `createItem`
- `buyOrSell`

### Roles / characters
- `createRole`
- `setRolePosition`
- `getRoleRank`

### Skills
- `getSkill`, `getSkillList`

### Scenes / movement
- `getSceneInfo`, `getSceneImageInfo`, `getScenePoint`
- `setTargetScene`
- `enterSercetScene`, `leaveSercetScene` (sic - "secret" misspelled)
- `enterStepId`

### NPCs / interaction
- `getNpc`
- `setTargetNPCId`, `setTargetNPCChange`

### Ports / trade
- `getPort`, `getPortExtend`
- `leavePort`
- `getShipProductAmount`

### Legion (guild)
- `getBelongLegion`
- `getLegionBattleRank`
- `getLegionWarReward`

### Arena
- `getArenaRank`, `getArenaRankRewards`

### Currency / progression
- `setExp`, `levelExp`, `levelUpNeedExp`
- `setGold`, `getGoldPresent`
- `setVipLevel`

### Misc
- `getCampaginConfig`
- `getForgeData`
- `moveSoulData`

## How this list was made

1. Located all `DoABC` tags inside the decompressed `main.swf`.
2. Parsed the ABC constant pool to extract all 44,769 unique strings.
3. Filtered for identifier-like names matching service or RPC patterns.
4. Cross-referenced with the 58 game data table names from `gameData.sg`.

## What is still missing

* **The exact arguments** each method expects. The skeleton's logging will
  reveal them when a real client connects (it pretty-prints every body).
* **The mapping from method to destination.** A method like `getItem` could
  be on `itemService` or on a generic `roleService`. Resolve by watching the
  `destination` field of `RemotingMessage`s the client sends.
* **Combat formulas.** They live in the `BattleField` class, which is in
  `WalkScene.swf` (separate ABC blob). Same parsing technique applies.

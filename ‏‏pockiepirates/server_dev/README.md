# Pockie Pirates Server Emulator – Development Kit

This folder contains everything needed to start building a private server for
**Pockie Pirates** (the English-language Flash MMO published 2012-2015 by
NGames / Game321, internal codename "OnePiece", server originally at
`http://115.236.38.146:8080/`).

The game shut down years ago. There is **no working private server** anywhere
in 2026 (verified May 2026: nothing on RaGEZONE, elitepvpers, GitHub,
jiaosf.com, mir6.com, 52pojie.cn, or Wayback Machine for the original portals).
This kit is a starting point.

---

## What is here

```
server_dev/
├── README.md                  ← this file
├── data/                      ← 58 game data tables, 19,122 records, 13.7 MB JSON
│   ├── gameData.json          ←   complete dump
│   ├── item_cfg.json          ←   1,603 items with full stats
│   ├── general_cfg.json       ←   313 heroes
│   ├── general_epic_cfg.json  ←   112 epic heroes
│   ├── skill_cfg.json         ←   328 skills with descriptions
│   ├── npc_cfg.json           ←   138 NPCs
│   ├── task_cfg.json          ←   878 quests
│   ├── army_cfg.json          ←   2,140 enemy units
│   ├── raid_*.json            ←   raid system
│   ├── port_*.json            ←   trade-port system
│   └── ...                        plus 47 more tables
└── skeleton/                  ← runnable Python server
    ├── amf3_codec.py          ←   AMF3 encoder/decoder
    ├── amf_packet.py          ←   BlazeDS packet framing
    └── server.py              ←   HTTP+AMF server with stub handlers
```

Run the skeleton:

```
cd skeleton && python3 server.py
# Listens on http://0.0.0.0:8080/
```

---

## What we know about the game

The client is a **Flash (SWF) application** that talks to the server using
**AMF3 over BlazeDS** (Adobe's Action Message Format remoting protocol over
HTTP). This is great news because:

* AMF3 is a fully open, documented protocol.
* BlazeDS endpoints are simple HTTP POST – no custom socket protocol to
  reverse-engineer.
* SWFs are decompilable. The client tells you exactly what calls it makes.

Concrete facts gathered from the leaked client:

| Fact | Source |
|---|---|
| Endpoint URL: `http://115.236.38.146:8080/` | hardcoded string in main.swf |
| Cross-domain policy: `domain="*"` | `crossdomain.xml` |
| Protocol: AMF3 + BlazeDS | `messagebroker/` folder + Flex framework classes in SWFs |
| Client version: `12072101` | `onepiece/config.xml` |
| Game language: English | `general_cfg.json` ("Audrey – Intern doctor") |
| Game data ships preloaded | `assets/GameData/gameData.sg` (zlib + AMF3) |

---

## The path to a working server

### Stage 1 – Protocol discovery (1-2 weeks of work)

The skeleton will receive every call the client makes and log its destination
and operation name. The fastest way to map the protocol is:

1. **Decompile `onepiece/main.swf` with [JPEXS Free Flash Decompiler](https://github.com/jindrapetrik/jpexs-decompiler).**
   It's free, open source, and the de-facto standard for SWF reversing.
   Look for:
   * `RemoteObject` declarations – they list every service `destination`.
   * `mx.rpc.remoting.RemoteObject` `.send()` calls – method names and arg lists.
   * Classes with `[RemoteClass]` metadata – AMF type aliases.
2. **Grep the decompiled ActionScript for `getOperation`, `setRemoteCredentials`, `endpoint`.**
   Those tell you the service registry.
3. **Run the skeleton + the Flash client locally.**
   Redirect `115.236.38.146` to your server with `/etc/hosts` (or a Charles/Fiddler
   proxy). Each unimplemented call shows up in the server log; implement them
   one at a time.

Expected output of stage 1: a list of ~30-80 service operations like
`hero.HeroService.getHeroList`, `battle.BattleService.startFight`, etc.

### Stage 2 – Static data services (3-5 days)

For most operations the answer is "look up X in the JSON tables and return it".
The skeleton already has `getGameData` stubbed. Add more like:

```python
elif operation == 'getItem':
    item_id = body[0]
    return make_acknowledge(msg_id,
        next((i for i in GAME_DATA['item_cfg'] if i['cfgItemId'] == item_id), None))
```

The 58 tables in `data/` cover items, heroes, skills, scenes, NPCs, quests,
ports, ships, formations, talents, VIP, recipes, raids, voyages, and more.

### Stage 3 – Player state (1-2 weeks)

The server needs to persist per-player state: character, inventory, hero
roster, completed quests, position, currency, etc. Use SQLite to start.

Schema can be modeled directly on the JSON shapes – you'll have a `players`
table, a `player_items` table referencing `item_cfg.cfgItemId`, etc.

### Stage 4 – Combat (2-4 weeks)

The combat formulas are not in `data/` – they're in the SWF. From decompiled
`battle.BattleField` ActionScript you can extract:

* damage formula (typically `attack × skill_ratio − defense × def_ratio`)
* crit / dodge / parry / counter rolls
* turn order (driven by `agility`)
* status effects
* skill effects (the `skill_cfg.desc` string already documents the 200%-1000%
  damage ranges – the formulas are in the client)

**Trick:** Pockie Pirates is turn-based, and turn-based combat in Flash MMOs
is almost always *deterministic and computed client-side too* (so the player
sees the animation match the result). That means the formulas are *fully*
present in the SWF. You're not reverse-engineering server math – you're
copying client math.

### Stage 5 – Everything else

Quests, friends list, chat, mail, guild, arena PvP, daily activities, login
rewards, sea voyages. Each of these is independent and small once stages 1-4
are done. Estimate: 2-4 weeks for a "playable solo experience", longer for
multiplayer features that require concurrency.

---

## Realistic timeline summary

| Goal | Time | Difficulty |
|---|---|---|
| Login screen → character creation | 1-2 days | easy |
| Walk around starting scene | 3-5 days | easy |
| First combat against an NPC | 2 weeks | medium |
| Quest progression to level 20 | 3-4 weeks | medium |
| All single-player content | 2-3 months | medium-hard |
| PvP, guilds, full social | 4-6 months | hard |

This is for **one motivated developer**. With two it's roughly half.

---

## Why this is not impossible

Flash MMO server emulators with similar scope have been built by hobbyists.
Examples (linked here as proof-of-concept, not as code to copy):

* **Conquer Online** (TQ Digital, same engine family as Pockie Pirates) –
  multiple emulators on GitHub: CoEmu, Comet, Redux, Throne, Eternal.
* **Wartune** (R2 Games Flash MMO) – community emulators exist.
* **Dofus 1.x** – years of community server work.

The pattern is identical: AMF protocol + decompilable client + leaked game
data → working private server.

---

## Why this is still hard

* **No protocol documentation exists for Pockie Pirates specifically.** Every
  service operation must be discovered by watching client traffic.
* **Combat formulas need verification.** Even if the SWF tells you the math,
  bugs in your implementation will be invisible until a player notices their
  damage is wrong.
* **Social features are complex.** Multi-player chat, guilds, and trade need
  real concurrency support, not just request/response.
* **Anti-cheat in the original client.** The SWF may have integrity checks
  that compare expected packet sequences. These need to be patched out of
  the client SWF if they trigger.

---

## Files inventory

* **APK assets** (extracted earlier into `../extracted_assets/`) – 425 MB of
  graphics, sound, and config from the abandoned mobile client. **Not used by
  this Flash-based emulator** but useful as visual reference.
* **Flash client** (in `../pockiepirates/`) – the actual files this server
  emulator targets.
* **JSON game data** (in `data/`) – ready to be served.
* **Server skeleton** (in `skeleton/`) – ready to be extended.

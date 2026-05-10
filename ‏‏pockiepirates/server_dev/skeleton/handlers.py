"""
Pockie Pirates -- service handlers (v6).

Adds: scene response so the world appears, face=job mapping so the chosen
class shows correctly, item-data fallback for reward/rewardCode/rewardCreate
so Parcel.resolveItems doesn't crash.
"""
import json
import os
import random
import time



# Player avatar mapping. Pockie Pirates uses TWO files per character:
#   Head/Role/{face}.swf       -- head portrait (4-digit IDs 1001..1008)
#   Person/{figure}.swf        -- full body sprite
#
# We have ALL 8 head portraits (1001-1008) but only ONE body (Person/1006.swf,
# the female sniper). Until the missing 1001-1005, 1007, 1008 body SWFs are
# recreated, every player visually wears the female-sniper body but the
# head portrait still reflects their chosen class.
#
# When the user produces additional Person/{N}.swf files (by editing the
# 1006.fla template or recreating from the create-panel images), update
# JOB_TO_FIGURE to point each job to its proper body.
JOB_TO_FACE = {        # head portrait -- all 8 are present
    1: 1001, 2: 1002, 3: 1003, 4: 1004,
    5: 1005, 6: 1006, 7: 1007, 8: 1008,
}
JOB_TO_FIGURE = {      # body sprite -- only 1006 exists
    1: 1006, 2: 1006, 3: 1006, 4: 1006,
    5: 1006, 6: 1006, 7: 1006, 8: 1006,
}

# NPCs whose face SWF we don't have -- fall back to one we do, so they
# render and become clickable instead of being invisible.
FACE_FALLBACKS = {
    10070: 10001,   # Coconut -> use Woop's body (placeholder)
    10061: 10003,   # Renee   -> use Bill's body (placeholder)
    10066: 10001,
    10063: 10001,
}

import os as _os
import json
_AVAILABLE_FACES = set()

# Hero pools bucketed by quality (= rarity grade). The original game uses:
#   Q3 = B grade  (198 heroes, most common)
#   Q4 = A grade  (~50 heroes)
#   Q5 = S grade  (~48 heroes)
#   Q6 = SS grade (~100 heroes including epic)
#   Q7 = special / event
try:
    with open(_os.path.join(_os.path.dirname(__file__), '..', 'data',
                            'general_cfg.json'), encoding='utf-8') as _f:
        _GENERAL_CFG = json.load(_f)
    try:
        with open(_os.path.join(_os.path.dirname(__file__), '..', 'data',
                                'general_epic_cfg.json'), encoding='utf-8') as _f:
            _GENERAL_CFG = _GENERAL_CFG + json.load(_f)
    except Exception:
        pass
    HERO_BY_QUALITY = {3: [], 4: [], 5: [], 6: [], 7: []}
    HERO_LOOKUP = {}
    for _g in _GENERAL_CFG:
        _q = _g.get('quality', 3)
        if _q in HERO_BY_QUALITY:
            HERO_BY_QUALITY[_q].append(_g['cfgGeneralId'])
        HERO_LOOKUP[_g['cfgGeneralId']] = _g
except Exception:
    HERO_BY_QUALITY = {3: [10031001, 10031005, 10031009, 10031013, 10031017],
                      4: [], 5: [], 6: [], 7: []}
    HERO_LOOKUP = {}




# Level/exp curve from level_experience_cfg.json. Each entry has
# {level, experienceNeed} -- the experience needed to advance FROM that
# level to the next. Level 1 needs 2000 exp to reach level 2.
try:
    with open(_os.path.join(_os.path.dirname(__file__), '..', 'data',
                            'level_experience_cfg.json'), encoding='utf-8') as _f:
        _LEVEL_DATA = json.load(_f)
    LEVEL_EXP_TABLE = {int(e['level']): int(e['experienceNeed'])
                       for e in _LEVEL_DATA}
except Exception:
    # Fallback: doubling curve
    LEVEL_EXP_TABLE = {n: 2000 * (2 ** (n-1)) for n in range(1, 151)}


def _grant_exp(player, amount):
    """Add exp to player, rolling level-ups. Returns (new_level, leveled_up)."""
    if 'exp' not in player:
        player['exp'] = 0
    if 'level' not in player:
        player['level'] = 1
    leveled_up = False
    player['exp'] += int(amount)
    while True:
        threshold = LEVEL_EXP_TABLE.get(player['level'], 999_999_999)
        if player['exp'] < threshold or player['level'] >= 150:
            break
        player['exp'] -= threshold
        player['level'] += 1
        leveled_up = True
    return player['level'], leveled_up


def _exp_threshold(level):
    """How much exp the player needs to advance from `level` to level+1."""
    return LEVEL_EXP_TABLE.get(int(level), 999_999_999)

# Convene drop-rate tables. weights are [B, A, S, SS] (i.e. quality 3..6).
# Each card is rolled independently with these weights.
CONVENE_WEIGHTS = {
    'normal':   [85, 12,  3,  0],   # generalService.recruit
    'advanced': [50, 35, 13,  2],   # generalService.recruitTavern
    'super':    [20, 35, 30, 15],   # generalService.recruitAllBlue
}

try:
    _person_dir = _os.path.join(_os.path.dirname(__file__), '..', '..',
                                'pockiepirates', 'assets', 'images', 'Person')
    for _fn in _os.listdir(_person_dir):
        if _fn.endswith('.swf') and _fn[:-4].isdigit():
            _AVAILABLE_FACES.add(int(_fn[:-4]))
except Exception:
    pass


def _safe_face(face_id):
    """Return face_id if its SWF exists, otherwise a fallback."""
    if face_id in _AVAILABLE_FACES or not _AVAILABLE_FACES:
        return face_id
    return FACE_FALLBACKS.get(face_id, 10001)


def _arg(body, idx, default=None):
    return body[idx] if isinstance(body, list) and idx < len(body) else default


PLAYERS = {}

# Starting scene - Coconut Island has 4 helpful NPCs
START_SCENE_ID = 2001

# Load NPC table for scene population
_DATA_DIR = os.path.join(os.path.dirname(__file__), '..', 'data')
try:
    with open(os.path.join(_DATA_DIR, 'npc_cfg.json'), encoding='utf-8') as f:
        NPC_CFG = json.load(f)
except Exception:
    NPC_CFG = []


def _npcs_in_scene(scene_id):
    """Return persons-array entries for every NPC in the scene."""
    out = []
    for npc in NPC_CFG:
        if npc.get('cfgSceneId') != scene_id:
            continue
        out.append({
            'role_id':      900000 + npc['cfgNpcId'],   # synthetic NPC role IDs
            'name':         npc['name'],
            'face':         _safe_face(npc['face']),
            'figure':       _safe_face(npc.get('figure', npc['face'])),
            'scene_x':      npc['sceneX'],
            'scene_y':      npc['sceneY'],
            'is_npc':       True,
            'nation':       npc.get('nation', 0),
            'vip_level':    0,
            'main_soul':    0,
            'is_leizhu':    False,
            'area_title':   0,
            'lobby_title':  0,
        })
    return out


def get_or_create_player(passport, name=None, job=None):
    if passport not in PLAYERS:
        chosen_job = job or 1
        PLAYERS[passport] = {
            'passport': passport,
            'role_id': len(PLAYERS) + 100001,
            'name': name or passport or 'Pirate',
            'job': chosen_job,
            'face': JOB_TO_FACE.get(chosen_job, 1006),
            'figure': JOB_TO_FIGURE.get(chosen_job, 1006),    # face = 1001..1008 matches job 1..8
            'level': 1, 'exp': 0, 'prestige': 0,
            'gold': 1000, 'copper': 100, 'diamond': 0,
            'scene_id': START_SCENE_ID,
            'scene_x': 600, 'scene_y': 35,
            'owned_heroes': list(DEFAULT_STARTER_CREW),
            'created_at': int(time.time()),
        }
    if name:
        PLAYERS[passport]['name'] = name
    if job:
        PLAYERS[passport]['job'] = int(job)
        PLAYERS[passport]['face'] = JOB_TO_FACE.get(int(job), 1006)
        PLAYERS[passport]['figure'] = JOB_TO_FIGURE.get(int(job), 1006)
    return PLAYERS[passport]


# ------------------------------------------------------------------
# Login / character creation bundle
# ------------------------------------------------------------------

def _role_data(player, server_url='http://127.0.0.1:8080/'):
    return {
        'area_title':           '',
        'server_url':           server_url,
        'server_name':          'Pockie Emulator',
        'server_id':            1,
        'role_id':              player['role_id'],
        'name':                 player['name'],
        'face':                 player['face'],
        'figure':               player.get('figure', 1006),
        'nation':               0,
        'step':                 14,         # skip the new-player tutorial
        'login_days':           1,
        'lobby_title':          0,
        'pool':                 0,
        'barn':                 0,
        'diamond':              player.get('diamond', 0),
        'action_point':         100,
        'ap_max':               100,
        'ap_charge':            0,
        'ap_wand':              0,
        'vip_level':            0,
        'vip_charge':           0,
        'create_reward_get':    False,
        'arena_reward_get':     False,
        'prestige_reward_get':  False,
        'legion_reward_get':    False,
        'action_point_reward_get': False,
        'legion_id':            0,
        'legion_name':          '',
        'arena_rank':           0,
        'junior_token':         0,
        'middle_token':         0,
        'advance_token':        0,
        'free_token':           0,
        'is_team_replaced':     False,
        'is_in_team':           False,
        'cfg_team_id':          0,
        'role_team_id':         0,
        'army_bot_id':          0,
        'camp_bot_id':          0,
        'bot_general_start':    False,
        'is_hunting':           False,
        'raid_sweep_id':        0,
        'cfg_raid_id':          0,
        'raid_count':           0,
        'prestige':             0,
        'next_prestige':        0,
        'exploit':              0,
        'gold':                 player.get('gold', 0),
        'copper':               player.get('copper', 100),
        # ---- level / prestige (read by RoleData.resolvePrestigeLevel) ----
        # Both 'prestige' and 'level' must be present on the response or
        # the level stays at 0. setting level=1 makes the player show as L1.
        'level':                player.get('level', 1),
        'experience':           player.get('exp', 0),
        'experienceNeed':       _exp_threshold(player.get('level', 1)),
        'prestige':             player.get('prestige', 0),
    }


def _make_role_hero(player):
    """The player's own hero (in formation slot 0)."""
    return {
        'general_id':       1,
        'cfg_general_id':   {1: 10001, 2: 10002, 3: 10003, 4: 10004,
                             5: 10005, 6: 10006, 7: 10007,
                             8: 10008}.get(player['job'], 10001),
        'is_role':          True,
        'level':            player.get('level', 1),
        'experience':       player.get('exp', 0),
        'star':             1,
        'general_quality':  1,
        'general_skill_deal': False,
        'con_role_level':   0,
        'con_role_camp':    0,
        'skill_point':      0,
        'is_in_team':       True,
        'pos':              0,
    }


def _make_crew_hero(general_id, cfg_general_id, pos):
    """A non-role hero entry by cfg id."""
    return {
        'general_id':       general_id,
        'cfg_general_id':   cfg_general_id,
        'is_role':          False,
        'level':            1,
        'experience':       0,
        'star':             1,
        'general_quality':  1,
        'general_skill_deal': False,
        'con_role_level':   0,
        'con_role_camp':    0,
        'skill_point':      0,
        'is_in_team':       pos < 6,         # first 6 slots are in team
        'pos':              pos,
    }


# Default starter crew the player gets at character creation.
DEFAULT_STARTER_CREW = [10031001, 10031005, 10031009]   # 3 heroes from general_cfg


def _general_data(player):
    """Returns formation info + every hero the player owns. The first entry
    is always the player themselves (is_role=true). Subsequent entries are
    the heroes recruited via recall/recruit/etc., stored in
    player['owned_heroes'] (list of cfg_general_ids).
    """
    generals = [_make_role_hero(player)]
    for i, cfg_gid in enumerate(player.get('owned_heroes', []), start=2):
        generals.append(_make_crew_hero(general_id=i, cfg_general_id=cfg_gid,
                                         pos=i - 1))
    return {
        'formation_level': 1,
        'formation_card':  1,
        'formation_shape': 1,
        'generals':        generals,
    }


def _item_data():
    return {
        'error_code':            -1,
        'ship_product_capacity': 0,
        'items':                 [],
        'action_point':          100,
        'ap_max':                100,
        'ap_charge':             0,
        'silver':                1000,
        'copper':                100,
        'gold':                  0,
    }


def _task_data():
    """Hand the player the first beginner quest already in progress.
    AllTaskData.resolveTasks reads mem_task_list[0] and uses it to populate
    currentTask. The task config (text, reward, etc.) comes from the
    static gameData.sg file the client loads at boot, looked up by
    cfg_task_id."""
    return {
        # First main quest in progress: "Talk to Fushia Village's Coconut"
        'mem_task_list': [
            {'cfg_task_id': 100001, 'do_value': 0},
        ],
        'mem_branch_task_list':         [],
        'accpetable_branch_task_list':  [],
        'accpetable_task':              0,
        'get_task':                     0,
        'main_task_list':               [],
        'accept_main_task_list':        [],
        'daily_task_list':              [],
        'finished_task_list':           [],
    }


def _soul_data():
    return {'soul_list': []}


def _bot_reward_data():
    return {'start_time': 0, 'bot_copper': 0, 'bot_experience': 0}


def make_login_bundle(player, server_url='http://127.0.0.1:8080/'):
    return {
        'error_code':           -1,
        'is_active':            True,
        'passport':             player['passport'],
        'seaBlessIsActive':     False,
        'seaBlessCanBuy':       False,
        'request_code':         '1',
        'soul_data':            _soul_data(),
        'item_data':            _item_data(),
        'general_data':         _general_data(player),
        'role_data':            _role_data(player, server_url),
        'task_data':            _task_data(),
        'bot_reward_data':      _bot_reward_data(),
    }


def _heartbeat():
    return {
        'error_code':           -1,
        'add_list':             [],
        'has_private_message':  False,
        'new_mail':             0,
        'area_has_fetch':       True,
        'area_battle_start':    False,
        'seabless_valid':       False,
        'turntable_valid':      False,
        'sky_ladder_start':     False,
        'all_blue_colosseum':   False,
        'hunting_start':        False,
        'team_start':           False,
        'boss_start':           False,
        'legion_start':         False,
        'war_start':            False,
        'match_stage':          -1,
        'adult_flag':           False,
        'fate_point':           0,
        'private_message_list': [],
        'last_index':           0,
    }


# ------------------------------------------------------------------
# Service handlers
# ------------------------------------------------------------------

def h_login(body):
    passport = _arg(body, 0, 'guest') or 'guest'
    if passport in PLAYERS:
        return make_login_bundle(PLAYERS[passport])
    return {
        'error_code':       -1,
        'is_active':        False,
        'passport':         passport,
        'seaBlessIsActive': False,
        'seaBlessCanBuy':   False,
    }


def h_create(body):
    passport = _arg(body, 0, 'guest') or 'guest'
    name     = _arg(body, 1, 'Pirate')
    job      = _arg(body, 2, 1)
    player   = get_or_create_player(passport, name=name, job=int(job))
    return make_login_bundle(player)


def h_generate_random_name(body):
    parts = ['Mugiwara', 'Roronoa', 'Sanji', 'Usopp', 'Chopper', 'Robin',
             'Franky', 'Brook', 'Jinbe', 'Buggy', 'Crocodile', 'Doflamingo']
    return {'error_code': -1,
            'random_name': random.choice(parts) + str(random.randint(10, 9999))}


def h_get_server_info(body):
    return {'error_code': -1,
            'serverName': 'Pockie Emulator',
            'serverTime': int(time.time() * 1000),
            'onlinePlayers': len(PLAYERS),
            'maintenance': False}


def h_all_cooldown(body):
    return {
        'error_code':              -1,
        'server_time':             int(time.time()),
        'cool_time':               0, 'can_forge':              False,
        'cool_time_second':        0, 'cool_time_second_open':  False,
        'can_forge_second':        False,
        'talent_cooldown':         0, 'fish_cool_time':         0,
        'farm_finished':           0, 'farm_max':               0,
    }


def h_reward_check(body):
    return {'error_code': -1, 'daily_login': False, 'pay_first': False}


def h_fate(body):
    """Heartbeat -- also grants passive idle xp."""
    player = _first_player()
    _grant_exp(player, 50)   # +50 exp per heartbeat tick (~every 5s)
    return _heartbeat()


def _first_player():
    if PLAYERS:
        return list(PLAYERS.values())[-1]
    return {'passport': 'guest', 'role_id': 100001, 'name': 'Pirate',
            'job': 1, 'face': 1001, 'figure': 1006, 'level': 1, 'prestige': 0, 'gold': 0, 'copper': 100, 'diamond': 0,
            'scene_id': START_SCENE_ID, 'scene_x': 600, 'scene_y': 35}


def h_role(body):
    return _role_data(_first_player())


def h_item(body):
    return _item_data()


def h_haki(body):
    return {'error_code': -1, 'haki_list': []}


def h_general(body):
    return _general_data(_first_player())







# ------------------------------------------------------------------
# Crew recruit / diary recall handlers
# ------------------------------------------------------------------

def _add_hero_to_player(player, cfg_general_id):
    """Add a hero to the player's roster if not already there."""
    if 'owned_heroes' not in player:
        player['owned_heroes'] = list(DEFAULT_STARTER_CREW)
    if cfg_general_id not in player['owned_heroes']:
        player['owned_heroes'].append(cfg_general_id)
    return player


def h_recall(body):
    """generalService.recall([roleId, status, cfgGeneralId]).
    Diary panel calls this to "recall" (recruit) a hero. The client expects
    {error_code:-1, gold, copper} on success."""
    cfg_gid = _arg(body, 2, 0)
    player = _first_player()
    if cfg_gid:
        _add_hero_to_player(player, int(cfg_gid))
    return {
        'error_code': -1,
        'gold':       player.get('gold', 0),
        'copper':     player.get('copper', 100),
    }


# ---- Convene (5-card tavern recruit) ----
#
# Original game flow:
#   1. Player opens Tavern UI, picks tier (Normal/Advanced/Super Convene)
#   2. Client sends recruit / recruitTavern / recruitAllBlue
#   3. Server returns 5 cards, each with a random hero weighted by tier
#   4. UI shows cards face-up briefly, flips face-down, shuffles
#   5. Player clicks one card -> client sends pick index
#   6. Server returns the hero at that slot AND adds it to the roster
#
# The recruit panel SWF is missing from our extraction so the user can't
# trigger this flow yet. We still implement it so:
#   (a) when the SWF eventually shows up the protocol is ready
#   (b) the 5-card preview can be requested via curl/test for verification
#
# Body conventions: [roleId, status]            -> draw 5 cards (preview)
#                   [roleId, status, picked_idx] -> claim card at index 0..4

def _draw_cards(tier_name):
    """Roll 5 random heroes using the tier weights."""
    weights = CONVENE_WEIGHTS.get(tier_name, CONVENE_WEIGHTS['normal'])
    cards = []
    for _ in range(5):
        # Pick a quality bucket
        q = random.choices([3, 4, 5, 6], weights=weights, k=1)[0]
        pool = HERO_BY_QUALITY.get(q) or HERO_BY_QUALITY[3]
        cfg_gid = random.choice(pool)
        info = HERO_LOOKUP.get(cfg_gid, {})
        cards.append({
            'cfg_general_id': cfg_gid,
            'quality':        q,
            'name':           info.get('name', f'General {cfg_gid}'),
            'face':           info.get('face', 10004),
        })
    return cards


def _do_convene(body, tier_name):
    player = _first_player()
    cards = _draw_cards(tier_name)
    picked_idx = _arg(body, 2)

    if picked_idx is None or not isinstance(picked_idx, (int, float)):
        # Preview only -- show the 5 cards
        return {
            'error_code': -1,
            'tier':       tier_name,
            'cards':      cards,
            'gold':       player.get('gold', 0),
            'copper':     player.get('copper', 100),
        }

    # Claim mode: pick the card at the given index
    idx = max(0, min(4, int(picked_idx)))
    chosen = cards[idx]
    _add_hero_to_player(player, chosen['cfg_general_id'])
    return {
        'error_code':       -1,
        'tier':             tier_name,
        'picked_idx':       idx,
        'cards':            cards,
        'cfg_general_id':   chosen['cfg_general_id'],
        'general_id':       len(player['owned_heroes']) + 1,
        'quality':          chosen['quality'],
        'name':             chosen['name'],
        'gold':             player.get('gold', 0),
        'copper':           player.get('copper', 100),
    }


def h_recruit(body):
    """generalService.recruit -- Normal Convene (mostly B, rare A, very rare S)."""
    return _do_convene(body, 'normal')


def h_recruit_tavern(body):
    """generalService.recruitTavern -- Advanced Convene (more A/S)."""
    return _do_convene(body, 'advanced')


def h_recruit_all_blue(body):
    """generalService.recruitAllBlue -- Super Convene (best odds, SS possible)."""
    return _do_convene(body, 'super')


def h_star_general(body):
    """generalService.starGeneral -> DiaryPanel.resolveDiaryInfo.
    The diary reads Global.famousHeroDic from gameData.sg locally; the
    server response only needs error_code:-1 plus parcel data."""
    return {'error_code': -1, 'star_list': []}


def h_skill_talent(body):
    return {'error_code': -1, 'talent_list': []}


def h_mail(body):
    return {'error_code': -1, 'mail_list': []}


def h_chat_friend(body):
    return {'error_code': -1, 'friend_list': [], 'request_list': []}


def h_check_private_message(body):
    return {'error_code': -1, 'has_private_message': False}


def h_match_login(body):
    return {'error_code': -1, 'match_state': 0}


def h_scene(body):
    """scene-service.scene -> SceneManager.resolveSceneInfo. Returns the
    scene the player is in plus the list of NPCs there. Without scene_id
    set, the function returns early at "received scene ID 0" and the world
    stays empty."""
    player = _first_player()
    scene_id = player.get('scene_id', START_SCENE_ID)
    persons = _npcs_in_scene(scene_id)
    # Add the player themselves
    persons.append({
        'role_id':      player['role_id'],
        'name':         player['name'],
        'face':         player['face'],
        'figure':       player.get('figure', 1006),
        'scene_x':      player.get('scene_x', 600),
        'scene_y':      player.get('scene_y', 35),
        'is_npc':       False,
        'nation':       0,
        'vip_level':    0,
        'main_soul':    0,
        'is_leizhu':    False,
        'area_title':   0,
        'lobby_title':  0,
    })
    return {
        'error_code':    -1,
        'scene_id':      scene_id,
        'persons':       persons,
        'lufei_follows': False,
    }


def h_scene_check(body):
    return {'error_code': -1}


def h_chat(body):
    return {'error_code': -1}


def h_chat_history(body):
    return {'error_code': -1, 'message_list': [], 'last_index': 0}


def h_default_ok(body):
    return {'error_code': -1}


def h_reward_default(body):
    """activity-service reward / rewardCode / rewardCreate go through
    Parcel.resolveItems -- need full item-data shape, not just error_code."""
    return _item_data()




# Quick lookup of NPC config by synthetic role_id
NPC_BY_ROLE_ID = {}
for _npc in NPC_CFG:
    NPC_BY_ROLE_ID[900000 + _npc['cfgNpcId']] = _npc


def h_word(body):
    """scene-service.word -> SceneManager.resolveNPCWord -> changeDialogIndex
    -> DialogData.resolveDialog. The client reads:
      result.npc_id           (for the dialog's owner)
      result.words[0].cfg_word_id   (matched against the index it requested)
      result.words[i].word_content  (the dialog text -- MUST exist or #1009)
      result.words[i].options       (option array; for-each tolerates missing)
    """
    target_id = int(_arg(body, 2, 0) or 0)
    # +200 exp every time you talk to an NPC
    _grant_exp(_first_player(), 200)
    npc = NPC_BY_ROLE_ID.get(target_id)
    if not npc:
        return {'error_code': -1, 'npc_id': target_id, 'words': []}
    return {
        'error_code': -1,
        'npc_id':     target_id,
        'words':      [{
            'cfg_word_id':  npc.get('cfgWordId', 1),
            'word_content': npc.get('word', ''),
            'options':      [
                # effect 4+ goes to funOptions, not taskOptions, and gives
                # the user something visible to click.
                {'content': 'Goodbye', 'effect': 4, 'sid': 0,
                 'cfg_word_id': npc.get('cfgWordId', 1)},
            ],
        }],
    }


def h_npc_state(body):
    """scene-service.npc -> SceneManager.resolveNPCState. npc_status:
       0 = nothing, 1 = ! quest available, 2 = ? quest in progress (turn in)
    The first quest's submitNpc is 1 (Coconut) so we mark her with '?'.
    """
    out = []
    for _npc in NPC_CFG:
        if _npc.get('cfgSceneId') != START_SCENE_ID:
            continue
        npc_id = 900000 + _npc['cfgNpcId']
        # Highlight Coconut (cfgNpcId 1) for the starter quest
        status = 2 if _npc['cfgNpcId'] == 1 else 0
        out.append({'npc_id': npc_id, 'npc_status': status})
    return {'error_code': -1, 'npc_list': out}

# ------------------------------------------------------------------
# Routing
# ------------------------------------------------------------------
HANDLERS = {
    # Login + creation
    ('login-service',    'login'):              h_login,
    ('login-service',    None):                 h_login,
    ('create-service',   'create'):             h_create,
    ('create-service',   'generateRandomName'): h_generate_random_name,
    ('create-service',   None):                 h_default_ok,
    # World
    ('world-service',    'getServerInfo'):      h_get_server_info,
    ('world-service',    None):                 h_default_ok,
    # Scene
    ('scene-service',    'allCooldown'):        h_all_cooldown,
    ('scene-service',    'scene'):              h_scene,
    ('scene-service',    'sceneCheck'):         h_scene_check,
    ('scene-service',    'word'):               h_word,
    ('scene-service',    'npc'):                h_npc_state,
    ('scene-service',    None):                 h_default_ok,
    # Activity (reward calls go through Parcel.resolveItems)
    ('activity-service', 'rewardCheck'):        h_reward_check,
    ('activity-service', 'reward'):             h_reward_default,
    ('activity-service', 'rewardCode'):         h_reward_default,
    ('activity-service', 'rewardCreate'):       h_reward_default,
    ('activity-service', 'consumptionCheck'):   h_default_ok,
    ('activity-service', 'activity'):           h_default_ok,
    ('activity-service', None):                 h_default_ok,
    # Heartbeat
    ('fate-service',     'fate'):               h_fate,
    ('fate-service',     None):                 h_fate,
    # Role / Item / General
    ('role-service',     'role'):               h_role,
    ('role-service',     None):                 h_role,
    ('item-service',     'item'):               h_item,
    ('item-service',     'haki'):               h_haki,
    ('item-service',     None):                 h_default_ok,
    ('general-service',  'general'):            h_general,
    ('general-service',  'starGeneral'):        h_star_general,
    ('general-service',  'recall'):            h_recall,
    ('general-service',  'recruit'):           h_recruit,
    ('general-service',  'recruitTavern'):     h_recruit_tavern,
    ('general-service',  'recruitAllBlue'):    h_recruit_all_blue,
    ('general-service',  'skillTalent'):        h_skill_talent,
    ('general-service',  None):                 h_general,
    # Mail / Chat / Match
    ('mail-service',     'mail'):               h_mail,
    ('mail-service',     None):                 h_mail,
    ('chat-service',     'friend'):             h_chat_friend,
    ('chat-service',     'checkPrivateMessage'): h_check_private_message,
    ('chat-service',     'chat'):               h_chat,
    ('chat-service',     'history'):            h_chat_history,
    ('chat-service',     None):                 h_default_ok,
    ('match-service',    'login'):              h_match_login,
    ('match-service',    None):                 h_default_ok,
    # Manor / Camp / Voyage / Auction / Skyladder / Legion / Fate / Rank
    ('manor-service',    None):                 h_default_ok,
    ('camp-service',     None):                 h_default_ok,
    ('voyage-service',   None):                 h_default_ok,
    ('auction-service',  None):                 h_default_ok,
    ('skyladder-service', None):                h_default_ok,
    ('legion-service',   None):                 h_default_ok,
    ('rank-service',     None):                 h_default_ok,
    ('task-service',     None):                 h_default_ok,
    ('battle-service',   None):                 h_default_ok,
}

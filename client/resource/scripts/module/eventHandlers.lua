-- Begins from 3.
-- Show _G : for n in pairs(_G) do print(n) end

--EVENT_HIDE_TOUCH_LAYER = 3
--EVENT_GET_GRID_MAP = 3
--EVENT_GET_GRID_SIZE = 4
EVENT_ENTER_PORT = 1

EVENT_ROLE_SELECT = 4

EVENT_STOP_TOUCH = 5
EVENT_START_TOUCH = 6
EVENT_SCREEN_ENLARGE_GET_SCALE_MIN_LIMIT = 7
EVENT_BULLETS_SHOOT = 8
EVENT_SHIP_SAIL = 9
EVENT_SHIP_BLOOD = 11
EVENT_EXPLORE_ITEMS_TIMER_CB = 12
EVENT_EXPLORE_SAIL_TURN = 14

EVENT_LOGIN_SET_CONNECT = 18
EVENT_LOGIN_GET_CONNECT = 19
EVENT_LOGIN_DO = 20

EVENT_BATTLE_ATTRS_START = 21
EVENT_BATTLE_ATTRS_END = 22
EVENT_BATTLE_ATTRS_BULLET_HITED = 23
EVENT_BATTLE_ATTRS_SET_BUFF = 24
EVENT_BATTLE_ADD_BUFF = 25
EVENT_BATTLE_DEL_BUFF = 26

EVENT_GET_ALL_SHIPS = 27

EVENT_BUFF_ADD = 28
EVENT_BUFF_DEL = 29

EVENT_SKILL_DO = 30
EVENT_BATTLE_SET_SKILL = 31
EVENT_BATTLE_SET_DATA = 32
EVENT_BATTLE_GUILD_BOSS_PIRATE_KILL_UPDATE = 33
EVENT_EXPLORE_SKILL_DO = 34 --wmh todo
EVENT_BATTLE_GUILD_BOSS_FLUSH_CURAMOUNT = 35
EVENT_BATTLE_GUILD_BOSS_FLUSH_RANK = 36

EVENT_MISSION_FILL_CONDITION = 37

EVENT_SAVE_FILE = 38
EVENT_LOAD_SAVE = 39

EVENT_MAIN_SELECT_LAYER = 40

EVENT_BATTLE_RECORD_CTRL = 41

EVENT_MAKE_SHIP = 42
EVENT_GAIN_SHIP = 43

EVENT_BATTLE_START_BATTLE_LAYER = 44

EVENT_TECH_UP = 46

EVENT_EQUIP_ADD = 52
EVENT_EQUIP_DEL = 53
EVENT_EQUIP_ON = 54
EVENT_EQUIP_OFF = 55

EVENT_SAILOR_RECRUIT = 56
EVENT_SAILOR_LEVELUP = 57
EVENT_SAILOR_APPINTMENT = 58

EVENT_SAILOR_ROOM = 59


EVENT_SHOW_COLLECTUI = 62
EVENT_HIDE_COLLECTUI = 63

EVENT_SHIP_SAIL_BOTTOM_EFFECT = 64
EVENT_SHIP_SAIL_UPPER_EFFECT = 65
EVENT_GET_SCENE_SIZE = 66


------------�ۿںŶ�70----------
EVENT_PORT_TOUCH_RECOVER = 67
EVENT_PORT_MARKET_PORT_STORE =69
EVENT_PORT_MARKET_PORT_STORE2 =690
EVENT_PORT_TRADE_RPC_PORT =691
EVENT_PORT_MARKET_PORT_CARGO =70
EVENT_PORT_EXCHANGE_SELL = 71
EVENT_PORT_EXCHANGE_BUY = 72
EVENT_PORT_EXPLORE_ENTER = 68

EVENT_PORT_MARKET_SOUND = 74 --交易音效
EVENT_COMMISSION_ALERT = 75  --commission 
--换船港口按钮要修改
EVENT_PORT_CHANGE_BOAT = 77

EVENT_SWITCH_UNSELECT = 78
EVENT_SWITCH_SELECT = 79
EVENT_PORT_BLACK_MARKET_INFO =83

EVENT_PORT_CLEAR_BUTTON_EFFECT = 88
EVENT_PORT_MARKET_PORT_CARGO2 =89


------------�ۿںŶ�79----------

EVENT_REMOVE_MISSION_LIST = 90
EVENT_MISSION_SHOW_LIST = 91
EVENT_MISSION_UPDATE = 910
EVENT_MISSION_OR_DAILY_UPDATE = 911
EVENT_MISSION_DONE = 92
EVENT_MISSION_ACCEPT = 93
EVENT_MISSION_GET_REWARD = 94
EVENT_SET_MISSION_STATUS = 95
EVENT_MISSION_REWARD_DIALOG = 96
EVENT_MISSION_REMOVE_UI = 97
EVENT_GET_BATTLE_FIELD_POS = 98

EVENT_ADD_PORT_ITEM =99
EVENT_DEL_PORT_ITEM =100

EVENT_SHOW_DIALOG = 101
EVENT_HIDE_DIALOG = 102
--EVENT_SHOW_INFO   = 103
--EVENT_HIDE_INFO   = 104

EVENT_BATTLE_END_SHOW_UI = 105
EVENT_BATTLE_EFFECT_HITED = 106
EVENT_SHIP_SAIL_ONETIME_EFFECT = 108

EVENT_SHOW_TIP = 109
EVENT_BATTLE_TO_MAIN_SCENE = 110
EVENT_BATTLE_RESET = 111
EVENT_EXPLORE_SHOW_ANIEFFECT = 112
EVENT_LOGIN_GET_ACCOUNT = 113

EVENT_MISSION_PLOT_START = 114

--�  120 - 130

EVENT_SHOW_ACTIVITYMAINUI = 120
EVENT_CHANGE_UI = 121 --need to rename ynj
EVENT_RESET_ACTIVITYPAGE  = 122
EVENT_BATTLE_SHOW_LIST = 123
EVENT_CHANGE_SECONDE_UI = 124 --need to rename --ynj
EVENT_SHOW_LOOTSEARCH_RESULT = 125
EVENT_REMOVE_LOOTSEARCH_RESULT = 126
EVENT_SEARCH_LOOTTARGET = 127
EVENT_ASK_FOR_DATA = 128
EVENT_BATTLE_CLEAR_LIST = 129

-- 探索、地图相关  130 - 180

EVENT_EXPLORE_BOX_HIDE = 130
EVENT_EXPLORE_BOX_SHOW = 131

EVENT_LOOT_CD_ZERO = 132

--EVENT_EXPLORER_RECEIVE_NEED_GOOD = 134
EVENT_UPDATE_PORT_ACHIEVE= 136
EVENT_EXPLORER_EFFECT_TIME = 140 --wmh todo
EVENT_EXPLORE_SHOW_DIALOG = 141
EVENT_EXPLORE_HIDE_DIALOG = 142

EVENT_EXPLORE_GET_SKILL_INFO = 147

EVENT_EXPLORE_SHOW_PORT_INFO = 148
EVENT_EXPLORE_SHOW_STRONGHOLD_INFO = 1480
EVENT_EXPLORE_SHOW_WHIRLPOOL_INFO = 1482

EVENT_EXPLORE_AUTO_SEARCH = 151
EVENT_EXPLORE_QUICK_ENTER_PORT = 152

--两边牌子
EVENT_SHOW_PANEL = 165
EVENT_HIDE_PANEL = 166
--下面的码头好友按钮
EVENT_SHOW_MENU = 167
EVENT_HIDE_MENU = 168

-- EVENT_SHOW_CENTER_MENU = 169
EVENT_SHOW_SEAAREA = 170

EVENT_PORT_LIST_UPDATE = 1710
EVENT_BATTLE_SET_PAUSE = 172

EVENT_EXPLORE_SHOW_GOAL_PORT = 173
EVENT_EXPLORE_HIDE_GOAL_PORT = 174
EVENT_EXPLORE_CANCEL_GOAL_PORT = 175

--EVENT_MAP_HOTSELL_PORT = 175
-- EVENT_UPDATE_SAILOR_HEAD = 176
--EVENT_EXPLORE_CREATE_LOOT_SHIP = 177
EVENT_DELETE_ITEMS_LAYER = 179

--180 - 200
EVENT_EQUIP_UPDATE = 180
EVENT_EQUIP_SETEQUIPITEM = 181
EVENT_EQUIP_UPDATE_ASSIGN_DESCIPTION = 182
EVENT_EQUIP_UPDATE_INFO = 183
EVENT_EQUIP_SELECT_ITEM = 184
EVENT_EQIUP_SHOW_EQUIP_FILTER = 185
EVENT_EQIUP_EQUIP_IDS = 186
EVENT_EQIUP_PROMOTION_TIME = 187
EVENT_SELF_EQUIP_REWARD_LIST = 188

EVENT_BATTLE_SET_HP_EVENT = 192
EVENT_BATTLE_SELECT_BATTLE = 193
EVENT_EXPLORE_EVENT_CLOUD = 194 --wmh todo
EVENT_EXPLORE_EVENT_STORM = 195 --wmh todo
EVENT_EXPLORE_EVENT_CHANGE_WAVE = 196
EVENT_EXPLORE_EVENT_STORM_HIDE = 197 --wmh todo
EVENT_EXPLORE_SCENE_SHAKE = 198
EVENT_EXPLORE_SAIL = 199 --wmh todo

EVENT_UPDATE_APPOINT_TIME=200
EVENT_UPDATE_APPOINT_INFO=201
EVENT_PLAYER_CHANGE_PORT_ID=203

EVENT_EXPLORE_EVENT_FORGE_HIDE = 210 --wmh todo
EVENT_EXPLORE_EVENT_FORGE = 211 --wmh todo
EVENT_EXPLORE_EVENT_FORGE_SEE = 212 --wmh todo
EVENT_EXPLORE_EVENT_ROTATE_WAVE = 213
EVENT_EXPLORE_RELEASE_EVENT_ITEM = 214 --wmh todo
EVENT_EXPLORE_RELEASE_EVENT_PVE_ITEM = 2140

--装备
EVENT_UPDATE_ALL_EQUIP=215
EVENT_UPDATE_SINGLE_EQUIP=216
EVENT_UPDATE_LEARNING_EQUIP=217
EVENT_UPDATE_EQUIP_FARMER=218

EVENT_EXPLORE_SEAAREA_CHANGE = 221
EVENT_EXPLORE_CROSS_UNKNOW_AREA = 2210
EVENT_EXPLORE_CROSS_KNOW_AREA = 2211
EVENT_EXPLORE_PAUSE = 222
EVENT_EXPLORE_RESUME = 223
EVENT_EXPLORE_MYSHIP_PAUSE = 2220
EVENT_EXPLORE_MYSHIP_RESUME = 2230

EVENT_EXPLORER_SAILOR_FOOD = 227
EVENT_PORT_SAILOR_FOOD = 228

--装备研究
EVENT_UPDATE_EQUIP_MATERIAL_NUM = 229
--230-240 for assembel装配
EVENT_ASSEMBLE_REMOVE_SELECTLIST = 230
EVENT_ASSEMBLE_SET_EQUIP = 231
EVENT_ASSEMBLE_TYPE_SELECT = 232
EVENT_ASSEMBLE_SHOW_SELECTLIST = 233
EVENT_SHOW_BOAT_ASSEMBLE_UI = 234


EVENT_SAILOR_SELECT_CLOSE=240

EVENT_SAILOR_SELECT_SHOW=241
EVENT_SAILOR_SELECT_HIDE=242
EVENT_SAILOR_STUDY_CHANGE=243


EVENT_BATTLE_RELEASE_SHIP_BY_ID = 250
--EVENT_EXPLORE_CLOUD_REFLESH = 251
EVENT_BATTLE_AUTO_FIGHT_START = 252
EVENT_BATTLE_AUTO_FIGHT_STOP = 253
EVENT_BATTLE_END = 254

EVENT_BATTLE_SKILL_DO = 258
EVENT_BATTLE_SHOW_SMOKE_EFFECT = 259
EVENT_BATTLE_MK_BULLECT_EFFECT = 260
EVENT_BATTLE_GET_LOOT_INFO = 261
EVENT_BATTLE_GET_OWNER_INFO = 262
EVENT_BATTLE_HP_MODIFY = 263
EVENT_BATTLE_UI_SET_BATTLE_RESULT_DATA = 264
EVENT_BATTLE_ADD_EXTRA_PLUNDER_GOOD = 265
EVENT_BATTLE_GET_PLAYER_SHIP = 266
EVENT_BATTLE_SHOW_DAMGE_WORD = 267
EVENT_BATTLE_CHANGE_AI = 268
EVENT_BATTLE_AI_CONDICTION_UPDATE = 269
EVENT_BATTLE_IS_VIDEO = 270

EVENT_BATTLE_SET_SHOW_TIMER = 273

EVENT_BATTLE_IS_ENDED = 275


EVENT_BATTLE_SAIL_DOWN = 279

--280- 290 for loot
EVENT_LOOT_PLAY_SEARCH_ACTION = 280
EVENT_LOOT_STOP_SEARCH_ACTION = 281
EVENT_MAKE_BULLET_VIDEO_ACTION = 283
EVENT_SET_LOOT_OPPONENT_DATA = 284

EVENT_LOOT_REVENGE = 286
EVENT_LOOT_REVENGE_FORBIDDEN = 287

--for achivement collect 300 - 310
--EVENT_SHOW_ACHIVEMENT_LIST = 300
--EVENT_REMOVE_ACHIEVEMENT_LIST = 301
--EVENT_SET_AHIEVEMENT_COMPLETE = 302  -- 完成成就的通知
--EVENT_ACHIEVEMENT_GET_REWARD = 303 -- 完成且领取奖励
--EVENT_ACHIEVEMENT_FINISHED = 304 -- 完成未领取奖励
-- EVENT_ACHIEVEMENT_REWARD_RESULT = 305
--EVENT_SET_AHIEVEMENT_STATUS = 306
--EVENT_SET_AHIEVEMENT_PROGRESS = 307
--EVENT_ACHIEVEMENT_DONE = 308

EVENT_GET_BATTLE_SKILL_CFG_BY_ID = 310

EVENT_ACHIEVEMENT_DIALOG_UPDATE_DATA = 311
EVENT_ACHIEVEMENT_DESK_DIALOG_UPDATE_DATA = 312
--EVENT_ACHIEVEMENT_CREATE_DIALOG = 313

--for relic and baowu collect 330-340
EVENT_COLLECT_BAOWU_REFRESH = 329
EVENT_REMOVE_RELIC_LIST = 330
EVENT_SHOW_RELIC_LIST = 331
EVENT_REMOVE_BAOWU_LIST = 332
EVENT_SHOW_BAOWU_LIST = 333
EVENT_SHOW_BAOWU_INFO = 334
EVENT_SHOW_RELIC_INFO = 335
EVENT_RELIC_UPDATE_INFO_UI = 336
EVENT_SHOW_RELIC_INFO = 337
EVENT_RELIC_DONE = 338
EVENT_SET_RELIC_STATUS = 339
EVENT_RELIC_REWARD_DIALOG = 340
EVENT_BAOWU_REWARD_DIALOG = 341
EVENT_BAOWU_DONE = 342
EVENT_SET_BAOWU_STATUS = 345


EVENT_GET_SAILOR_BOAT_ADDITION = 346
EVENT_GET_SKILL_BOAT_ADDITION = 347

EVENT_MAIN_INFO_EFFECT = 350
EVENT_MAIN_INFO_NO_EFFECT = 3501
EVENT_EQUIP_REWARD_DIALOG = 351

EVENT_SET_BOAT_NAME = 400

-- EVENT_SHOW_PLATE = 401
-- EVENT_HIDE_PLATE = 402

EVENT_UPDATE_REWARD = 404
EVENT_UPDATE_NOTICE = 405

EVENT_SET_BATTLE_OPPONENT_DATA = 501
EVENT_SET_BATTLE_OWNER_DATA = 502

EVENT_BOAT_CHANGEING = 590
EVENT_BOAT_CHANGEING_TIME = 591

--friend module
EVENT_FRIEND_VIEW = 600
EVENT_FRIEND_REMOVEVIEW = 601
EVENT_FRIEND_REMOVEPANEL = 602
EVENT_FRIEND_OPEN_DEFAULT_TAB = 603
EVENT_FRIEND_SET_MSG_CONTENT= 604
EVENT_FRIEND_SET_HEAD = 605
EVENT_SHOW_MYFRIEND_MENU = 606
EVENT_FRIEND_SET_FRIENDNUM = 607
EVENT_FRIEND_GOTO_WRITE_MSG = 608
EVENT_UPDAT_MYFRIEND_LIST = 610
EVENT_FRIEND_UPDATE_SEARCH_RESULT = 611
EVENT_FRIEND_UPDATE_APPLY_RESULT = 612
EVENT_FRIEND_UPDATE_MSGINFO = 613
EVENT_FRIEND_GOTO_READ_MSG = 614
EVENT_FRIEND_UPDATE_RANKINFO = 615
EVENT_FRIEND_CAPTAIN_HEAD = 616
EVENT_FRIEND_SET_LOTTERYPOINT = 617
EVENT_BATTLE_SET_BOAT_ATTRIBUTE = 618
--EVENT_BATTLE_ENTER_ATTACK = 619
EVENT_SET_LOOTMAP_OPACITY = 620
EVENT_OPEN_BEFORE_BATTLE = 621
-- EVENT_APPOINT_REPORT = 622
EVENT_LOOT_PLAY_SEARCH_ACTION_PRE = 623
EVENT_BATTLE_START = 623
EVENT_BATTLE_SH_MODIFY = 624
EVENT_SHIP_SAIL_BLOOD = 625
EVENT_BATTLE_SKILL_FIRE_EFFECT = 626
EVENT_BATTLE_GET_ALL_NEAR_SHIPS = 627
EVENT_FRIEND_BAOWU_INFO = 632
EVENT_FRIEND_RELIC_INFO = 633
EVENT_FRIEND_ACHIEVEMENT_INFO = 634
EVENT_FRIEND_EQUIP_INFO = 635
EVENT_FRIEND_GET_RECOMMENDED_COUNT = 636
EVENT_FRIEND_SET_RECOMMENDED_SUCCESS = 637
EVENT_FRIEND_SET_RECOMMENDED_FAIL = 638
EVENT_FRIEND_GET_RECOMMENDED = 639

--调校系统
EVENT_EQUIPADJUST_SET_ATTRIBUTE= 730

--系统开放
EVENT_OPEN_QUAY = 744

--EVENT_OPEN_TOWN = 747

EVENT_UP_GRADE_EQUIP = 770
EVENT_QUICK_UP_EQUIP=771
EVENT_EQUIP_MODIFY_SUCCESSED = 773
EVENT_EQUIP_MODIFY_MKBOARD = 774

-- Arena  
EVENT_ARENA_USERINFO_UPDATE = 8200
EVENT_ARENA_GET_RANK_LIST = 820
EVENT_ARENA_SEARCH_RESULT = 822
EVENT_ARENA_CHECK_RESULT = 8220
EVENT_ARENA_SEARCH_RESULT_RESET = 8221
EVENT_ARENA_ADD_REPORT_INFO = 824
EVENT_ARENA_SET_CHALLENGE_COUNT = 825
EVENT_ARENA_AFTER_START_TIME = 827
EVENT_SWITCH_TO_ARENA_MATCH = 828
EVENT_ARENA_AFTER_REMAIN_TIME = 8270
EVENT_ARENA_REWARD_INDEX_UPDATE = 8271

--单挑
EVENT_SAILOR_BATTLE_CHECK = 830
EVENT_SAILOR_BATTLE_START = 831
EVENT_SAILOR_BATTLE_CLEAR = 832

EVENT_HIDE_ALL_DIALOG = 900
AUTOBATTLE_CALLBACK = 1001
EVENT_SAILOR_BATTLE_SKILL_ATTACK_ENEMY = 1002
EVENT_SAILOR_BATTLE_SKILL_USE_PLAYER = 1003

--成就
EVENT_SHOW_MAIN_LAYER = 1080
EVENT_SHOW_PORT_NAME  = 1082

---任务
EVENT_CLEAR_GUIDE_PORT = 1101
EVENT_RESUME_SHIPYARD_EFFECT = 1110
EVENT_END_REMIAN_TIME_SHIPYARD_EFFECT = 1111
-- EVENT_PORT_SETTOUCH = 1201
EVENT_OPEN_MATE_EFFECT = 1202
EVENT_GUIDE_UPDATE_HOTEL = 1220
EVENT_GUIDE_UPDATE_MARKET = 1221
EVENT_GUIDE_UPDATE_SHIPYARD = 1222
EVENT_GUIDE_UPDATE_EQUIPENHANCE = 12221
EVENT_GUIDE_UPDATE_PVEUI = 1224
EVENT_GUIDE_UPDATE_EXPLOREUI = 1225
EVENT_GUIDE_UPDATE_SAILORRECUI = 1226
EVENT_PORT_LAYER_TOUCH = 1250

--EVENT_HOTEL_UNLOCK_TUTOR = 1269
--每日任务
EVENT_DAILY_ACCEPT_MISSION = 1270
EVENT_HOTEL_SET_TOUCH = 1271
EVENT_HOTEL_SHOW_CDLAYER = 1272
EVENT_HOTEL_SHOW_CDTIME = 1273

--登陆&VIP奖励
EVENT_LOGIN_VIP_AWARD_GET_SUC = 1300
-- EVENT_LOGIN_VIP_MAINUI_TOUCH = 1304
--STUDY
--EVENT_STUDY_SEAT =1400
--EVENT_STUDY_QUEUE =1401
--EVENT_STUDY_QUEUE_TIME =1402
--EVENT_STUDY_UPDATE_INFO =1403
--EVENT_STUDY_FNISH =1404

-- EVENT_UNLOCK_PORT_EFFECT =1500

--工会
EVENT_GUILD_OPEN_VIEW = 1600
EVENT_GUILD_OPEN_GUILDMEMBER_REQUESTVIEW = 1601
EVENT_GUILD_GUILDMEMBER_APPROVING = 1602
EVENT_GUILD_GUILDMEMBER_REFUSING = 1603
EVENT_GUILD_GUILD_SEARCH_LIST=1604
EVENT_GUILD_UPDATE_INFO_PANEL_LISTVIEW = 1605
EVENT_GUILD_UPDATE_REQUEST_LISTVIEW = 1606
EVENT_GUILD_UPDATE_REQUEST_VIEW_REMOVECELL = 1607
EVENT_GUILD_UPDATE_REQUEST_STAR = 1608
EVENT_GUILD_UPDATE_REQUEST_PRESTIGE = 1609
EVENT_GUILD_OPEN_TAB_SELECT_VIEW = 1610
EVENT_GUILD_ADD_FRIEND = 1611
EVENT_GUILD_SET_VIEW_TOUCH = 1612
EVENT_GUILD_SHOW_BUTTON = 1613
EVENT_GUILD_CLOSE_CREATE_DIALOG_VIEW = 1614
EVENT_CLOSE_PARENT_VIEW = 1615
EVENT_GUILD_UPDATE_NOTICE_LABEL = 1616
EVENT_GUILD_AID_LIST = 1617
EVENT_GUILD_SHOW_EDIT_VIEW_BOX = 1618
EVENT_GUILD_SHOW_GUILD_LEVEL = 1619
--舰队
EVENT_FLEET_CHANGE_CELL = 1701
EVENT_ARENA_FLEET = 1702
EVENT_GUILD_HELP_AID_UPDATE_2 = 1704
--Arena
EVENT_ARENA_UPDATE_POINT = 1801
EVENT_ARENA_UPDATE_TIME = 1802
EVENT_ARENA_UPDATE_REWARD = 1803

--qihai achieve
EVENT_QIHAI_ACHIEVE_UPDATE_ALL_INFO = 1901

--tips
EVENT_TIPS_UPDATE_DATA = 2001
EVENT_MAIN_UI_CLEAR_RELIC_BUFF_PICTURE = 2002

--探索技能
EVENT_EXPLORE_CREATE_SKILL_ICON = 3003 --wmh todo
EVENT_EXPLORE_REMOVE_SKILL_ICON_FROM_UI = 3004 --wmh todo
EVENT_EXPLORE_SET_SALVAGE_DATA = 3005
EVENT_EXPLORE_EVENT_WHALE_WATER_EFFECT = 3006 --wmh todo
EVENT_EXPLORE_EVENT_SPECIAL_EVENT_EFFECT = 3007--wmh todo 删
EVENT_EXPLORE_EVENT_CLEAR_2D_RESOURCE = 3008 --wmh todo 删
EVENT_EXPLORE_SHOW_SKILL_DIALOG = 3012
EVENT_EXPLORE_SHOW_SKILL_RUNNING_DIALOG = 3013
EVENT_EXPLORE_SHOW_GET_REWARD_EFFECT = 3014 --wmh todo
EVENT_EXPLORE_INSERT_REWARD_EFFECT = 3015 --wmh todo
EVENT_EXPLORE_TORNADO_START = 3016 --wmh todo
EVENT_EXPLORE_TORNADO_END = 3017 --wmh todo
EVENT_EXPLORE_GET_EXPLORE_SKILL_INFO = 3018
EVENT_EXPLORE_SKILL_HAS_SAILOR = 3019
--探索PVE
EVENT_EXPLORE_PVE_CPDATA_ALL_UPDATE = 4000
EVENT_EXPLORE_PVE_CPDATA_ALL_UPDATE_STATUS = 4001
EVENT_EXPLORE_PVE_CPDATA_PORT_UPDATE = 4002
EVENT_EXPLORE_PVE_CPDATA_SH_UPDATE = 4003
EVENT_PORT_PVE_CPDATA_ALL_UPDATE = 4004
EVENT_PORT_PVE_CPDATA_PORT_UPDATE = 4005
EVENT_PORT_PVE_CPDATA_SH_UPDATE = 4006
EVENT_EXPLORE_PLOT_DIALOG = 4007
EVENT_EXPLORE_SHOW_PLOT_DIALOG = 4008
EVENT_PORT_OWNER_INFO_UPDATE_GROUP_ICON = 4010
EVENT_EXPLORE_SHOW_SHIP_DIALOG = 4011
--悬赏
EVENT_HOTEL_CREATE_HOTEL_REWARD_VIEW = 5001
EVENT_HOTEL_ACCEPT_MISSION_SUCCESE = 5003
EVENT_UI_SHOW_TREASURE_ICON = 5004  --藏宝图
EVENT_HOTEL_REWARD_GET_SUCCESS = 5005
EVENT_HOTEL_TEA_ADD = 5006

--宝物更新
EVENT_BAOWU_SET_CHANGE_SUCCESS = 5010

--装备升级特效
EVENT_UPDATE_EQUIP_SHOW_EFFECT = 6000
EVENT_EQUIP_ENHANCE_UPDATE_SUBKIND_FIRST_VIEW = 6001
EVENT_EQUIP_ENHANCE_UPDATE_SUBKIND_SECOND_VIEW = 6002

--遗迹
EVENT_SELF_RELIC_INFO =  6004

--新版VIP奖励
EVENT_VIP_AWARD_UPDATEVIPAWARDVIEW = 6005
EVENT_VIP_AWARD_FLYGOLD = 6006

--新版遗迹内容
EVENT_RELIC_SUPLY_DONE = 6010
EVENT_PORT_PVE_CPDATA_RELIC_UPDATE = 6016 -- 用来刷地图显示的
EVENT_PORT_PVE_CPDATA_RELIC_OPEN = 6017 -- 用来刷地图显示的

--场景触摸
EVENT_SCENE_TOUCH_BEGIN = 7000
EVENT_SCENE_TOUCH_END = 7001
EVENT_SCENE_TOUCH_MOVE = 7002

--掠夺搜索时间
EVENT_LOOT_SEARCH_UPDATE_VIEW = 7003
--修补船时间
EVENT_LOOT_FAIR_SHIP_TIME = 7004
EVENT_LOOT_SHOW_BUY_RESULT = 7005

-- 更新被掠夺时等待的时间
EVENT_PLAYER_LOOTED_WAIT_TIME = 8001

--清除被掠夺玩家的船
EVENT_CLEAR_LOOTED_PLAYER_SHIP = 8002 --wmh todo
--更新竞技场界面
EVENT_UPDATE_ARENA_VIEW = 8003
EVENT_UPDATE_GET_BOX_AWARD = 8004
EVENT_UPDATE_MYSELF_ARENA_INFO = 8005

--更新聊天信息
EVENT_CHAT_MESSAGE = 8006
EVENT_CHAT_REDPOINT_TIPS = 8007

EVENT_SHOW_HOTEL_LINE = 8008
EVENT_UPDATE_FLAGSHIP = 8009

--投资繁荣度
EVENT_UPDATA_HORN_NUM = 8011

--背包系统
EVENT_BAG_PROPS_UPDATE = 8012
-- EVENT_PORT_ANNOUNCE_PLOT = 8013
EVENT_EXPLORE_ANNOUNCE_PLOT = 8014
-- EVENT_PORT_UPDATE_ENABLE_LOOT_TIME = 8015

--港口商品
EVENT_PORT_GOOD_INFO_UPDATE = 8016

--港口商会
EVENT_PORT_OWNER_INFO_UPDATE = 8017
EVENT_PORT_OWNER_INFO_UPDATE1 = 8018

--活动
EVENT_ACTIVITY_LIST_UPDATE = 9000
EVENT_EXPLORE_EFFECT_LAYER_IS_OR_NOT_CLICK = 9001
EVENT_HOTEL_SET_ENABLE_TOUCH = 9003
--好友
EVENT_UPDATE_PANEL_LIST = 9004 --更新面板list
EVENT_CHAT_FRIEND_MESSAGE = 9006
EVENT_GUILD_AID_FRIEND_FIGHT_INFO = 9007 --更新公会增援战斗信息
EVENT_SHOW_CHAT_MISSION_PANEL = 9008

-- EVENT_UI_SHOW_INVEST_ICON = 9010
--注意接下来的
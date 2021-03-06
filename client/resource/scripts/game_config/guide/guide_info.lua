-- ------------------------------
-- desc: generated by xls2data.py
-- source: guide_info.xls
-- sheet: 指引表
-- ------------------------------


local guide_info = {
	['btn_get'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 686, ["y"] = 125},
		['guide_rect'] = {["w"] = 87, ["h"] = 31},
		['condition'] = nil,
	},
	['btn_sail'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 905, ["y"] = 54},
		['guide_rect'] = {["w"] = 87, ["h"] = 80},
		['condition'] = nil,
	},
	['btn_sail_go'] = {
		['panel_step'] = {"PortMap",},
		['guide_pos'] = {["x"] = 770, ["y"] = 42},
		['guide_rect'] = {["w"] = 114, ["h"] = 40},
		['condition'] = nil,
	},
	['btn_skill'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 716, ["y"] = 55},
		['guide_rect'] = {["w"] = 58, ["h"] = 71},
		['condition'] = nil,
	},
	['btn_add'] = {
		['panel_step'] = {"clsRoleSkillView",},
		['guide_pos'] = {["x"] = 459, ["y"] = 391},
		['guide_rect'] = {["w"] = 25, ["h"] = 25},
		['condition'] = nil,
	},
	['btn_market'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 55, ["y"] = 290},
		['guide_rect'] = {["w"] = 115, ["h"] = 50},
		['condition'] = nil,
	},
	['port_market_account'] = {
		['panel_step'] = {"ClsPortMarket",},
		['guide_pos'] = {["x"] = 83, ["y"] = 53},
		['guide_rect'] = {["w"] = 65, ["h"] = 65},
		['condition'] = nil,
	},
	['common_close'] = {
		['panel_step'] = {"ClsPortMarket",},
		['guide_pos'] = {["x"] = 920, ["y"] = 512},
		['guide_rect'] = {["w"] = 40, ["h"] = 40},
		['condition'] = nil,
	},
	['market_appoint'] = {
		['panel_step'] = {"ClsPortMarket","btn_idle"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_town'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 55, ["y"] = 350},
		['guide_rect'] = {["w"] = 115, ["h"] = 45},
		['condition'] = nil,
	},
	['port_town_appoint'] = {
		['panel_step'] = {"clsPortTownUI",},
		['guide_pos'] = {["x"] = 548, ["y"] = 70},
		['guide_rect'] = {["w"] = 135, ["h"] = 35},
		['condition'] = nil,
	},
	['btn_green'] = {
		['panel_step'] = {"ClsTeamMissionPortUI",},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['team_enter_activity'] = {
		['panel_step'] = {"ClsPortTeamUI","btn_enter"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_activity'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 579, ["y"] = 502},
		['guide_rect'] = {["w"] = 47, ["h"] = 43},
		['condition'] = nil,
	},
	['btn_activity_go'] = {
		['panel_step'] = {"ClsActivityMain","show_view","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 3,},
	},
	['btn_fight_go'] = {
		['panel_step'] = {"ClsEliteBattleUI","btn_fight"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_shipyard'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 55, ["y"] = 230},
		['guide_rect'] = {["w"] = 115, ["h"] = 45},
		['condition'] = nil,
	},
	['shipyard_qh_page'] = {
		['panel_step'] = {"ClsShipyardMainUI",},
		['guide_pos'] = {["x"] = 105, ["y"] = 396},
		['guide_rect'] = {["w"] = 125, ["h"] = 55},
		['condition'] = nil,
	},
	['btn_strength'] = {
		['panel_step'] = {"ClsFleetStrengthenUI",},
		['guide_pos'] = {["x"] = 703, ["y"] = 73},
		['guide_rect'] = {["w"] = 130, ["h"] = 35},
		['condition'] = nil,
	},
	['shipyard_zb_page'] = {
		['panel_step'] = {"ClsShipyardMainUI",},
		['guide_pos'] = {["x"] = 105, ["y"] = 237},
		['guide_rect'] = {["w"] = 125, ["h"] = 55},
		['condition'] = nil,
	},
	['btn_award'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 639, ["y"] = 502},
		['guide_rect'] = {["w"] = 47, ["h"] = 43},
		['condition'] = nil,
	},
	['reward_receive'] = {
		['panel_step'] = {"ClsWefareMain","show_view","btn_get"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['tab_target_activity'] = {
		['panel_step'] = {"ClsActivityMain","tab_target",},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_title'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 900, ["y"] = 164},
		['guide_rect'] = {["w"] = 70, ["h"] = 64},
		['condition'] = nil,
	},
	['btn_upstep'] = {
		['panel_step'] = {"clsNobilityUI","btn_upstep"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_wine_treat'] = {
		['panel_step'] = {"ClsHotelMain","childPanel","wine_treat_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_xunbao_go'] = {
		['panel_step'] = {"ClsActivityMain","show_view","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 14,},
	},
	['btn_yj_go'] = {
		['panel_step'] = {"ClsActivityMain","show_view","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 16,},
	},
	['btn_backpack'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 798, ["y"] = 52},
		['guide_rect'] = {["w"] = 70, ["h"] = 64},
		['condition'] = nil,
	},
	['btn_staff'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 630, ["y"] = 52},
		['guide_rect'] = {["w"] = 70, ["h"] = 64},
		['condition'] = nil,
	},
	['btn_guild'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 543, ["y"] = 52},
		['guide_rect'] = {["w"] = 70, ["h"] = 64},
		['condition'] = nil,
	},
	['btn_hotel'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 55, ["y"] = 166},
		['guide_rect'] = {["w"] = 115, ["h"] = 45},
		['condition'] = nil,
	},
	['btn_friend'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 325, ["y"] = 500},
		['guide_rect'] = {["w"] = 48, ["h"] = 44},
		['condition'] = nil,
	},
	['shipyard_jz_page'] = {
		['panel_step'] = {"ClsDockUI","btn_build"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['shipyard_baowu_select'] = {
		['panel_step'] = {"ClsShipEquipTips","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['shipyard_baowu_equip'] = {
		['panel_step'] = {"ClsShipEquipTips","btn_equip"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['partner_strongth_btn'] = {
		['panel_step'] = {"ClsFleetPartner","btn_strengthen"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['partner_appoint_three'] = {
		['panel_step'] = {"ClsFleetPartner"},
		['guide_pos'] = {["x"] = 95, ["y"] = 225},
		['guide_rect'] = {["w"] = 126, ["h"] = 103},
		['condition'] = nil,
	},
	['partner_appoint_two'] = {
		['panel_step'] = {"ClsFleetPartner"},
		['guide_pos'] = {["x"] = 95, ["y"] = 335},
		['guide_rect'] = {["w"] = 126, ["h"] = 103},
		['condition'] = nil,
	},
	['sailor_skill_tab'] = {
		['panel_step'] = {"ClsPartnerInfoView","btn_skill"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['sailor_skill_btn'] = {
		['panel_step'] = {"ClsPartnerInfoView","skill_passivity_bg_3"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['sailor_upstar'] = {
		['panel_step'] = {"ClsPartnerInfoView","btn_star"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['sailor_uplevel'] = {
		['panel_step'] = {"ClsPartnerInfoView","btn_exp_add"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['skill_book'] = {
		['panel_step'] = {"ClsUpExpTip","btn_book"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['friend_my_friend'] = {
		['panel_step'] = {"ClsFriendMainUI"},
		['guide_pos'] = {["x"] = 80, ["y"] = 458},
		['guide_rect'] = {["w"] = 167, ["h"] = 55},
		['condition'] = nil,
	},
	['friend_send'] = {
		['panel_step'] = {"ClsFriendMainUI", "cur_panel", "getGiveGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['friend_add'] = {
		['panel_step'] = {"ClsFriendMainUI"},
		['guide_pos'] = {["x"] = 80, ["y"] = 374},
		['guide_rect'] = {["w"] = 167, ["h"] = 55},
		['condition'] = nil,
	},
	['friend_apply'] = {
		['panel_step'] = {"ClsFriendMainUI", "cur_panel", "getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['friend_thank'] = {
		['panel_step'] = {"ClsFriendMainUI", "cur_panel"},
		['guide_pos'] = {["x"] = 413, ["y"] = 463},
		['guide_rect'] = {["w"] = 115, ["h"] = 47},
		['condition'] = nil,
	},
	['friend_accpet_send'] = {
		['panel_step'] = {"ClsFriendMainUI", "cur_panel", "getReturnGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['baowu_upload'] = {
		['panel_step'] = {"ClsBaowuAttrTips","btn_upload"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['boat_fight'] = {
		['panel_step'] = {"ClsBoatAttrTips","btn_fighting"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['guild_mission'] = {
		['panel_step'] = {"clsGuildHallPanel"},
		['guide_pos'] = {["x"] = 100, ["y"] = 366},
		['guide_rect'] = {["w"] = 150, ["h"] = 60},
		['condition'] = nil,
	},
	['accept_btn'] = {
		['panel_step'] = {"clsPortRewardUI","accept_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['close_btn'] = {
		['panel_step'] = {"clsPortRewardUI","m_close_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['guild_pack'] = {
		['panel_step'] = {"ClsGuildMainUI","guild_warehouse_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['guild_hall'] = {
		['panel_step'] = {"ClsGuildMainUI","guild_hall_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['red_white_name'] = {
		['panel_step'] = {"ExploreUI","btn_trade"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['set_boat_sanjiao'] = {
		['panel_step'] = {"ClsFleetPartner","getBoatGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["item_id"] = 2,},
	},
	['set_boat_hansa'] = {
		['panel_step'] = {"ClsFleetPartner","getBoatGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["item_id"] = 5,},
	},
	['guild_contribute'] = {
		['panel_step'] = {"ClsGuildMainUI","btn_donate"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_buy'] = {
		['panel_step'] = {"ClsShopAlertPanel","btn_buy"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['select_one_item'] = {
		['panel_step'] = {"ClsGuildShopUI"},
		['guide_pos'] = {["x"] = 240, ["y"] = 340},
		['guide_rect'] = {["w"] = 232, ["h"] = 104},
		['condition'] = nil,
	},
	['backpack_boat_select_1'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 3,type = "id"},
	},
	['backpack_boat_wash'] = {
		['panel_step'] = {"ClsBoatAttrTips","btn_wash_attr"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['boat_wash_1'] = {
		['panel_step'] = {"ClsFleetRefineUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 1,},
	},
	['boat_wash_2'] = {
		['panel_step'] = {"ClsFleetRefineUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 2,},
	},
	['boat_btn_refine'] = {
		['panel_step'] = {"ClsFleetRefineUI","btn_refine"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['backpack_baowu_select'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 102,type = "baowuId"},
	},
	['backpack_baowu_dismantling'] = {
		['panel_step'] = {"ClsBaowuAttrTips","btn_dismantling"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['sailor_baowu'] = {
		['panel_step'] = {"ClsBackpackMainUI","getSailorBaowuObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 1,},
	},
	['baowu_dismantling'] = {
		['panel_step'] = {"ClsBaowuAttrTips","btn_wash"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['baowu_refine'] = {
		['panel_step'] = {"ClsBaowuRefineUI","btn_refine"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['baowu_refine_save'] = {
		['panel_step'] = {"ClsBaowuRefineUI","btn_save"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['boat_xilian_alert_confirm'] = {
		['panel_step'] = {"ClsFleetRefineUI","alert_layer","guide_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['backpack_boat_select_2'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 23,type = "id"},
	},
	['backpack_boat_fight'] = {
		['panel_step'] = {"ClsBoatAttrTips","btn_fighting"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['guild_hall_close_btn'] = {
		['panel_step'] = {"ClsGuildInfoPanel","btn_close"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['tab_vip_select'] = {
		['panel_step'] = {"ClsWefareMain","getWelfareGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["tab_pos"] = 1,},
	},
	['vip_btn_get'] = {
		['panel_step'] = {"ClsWefareMain","show_view","get_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['fomationswei_select'] = {
		['panel_step'] = {"ClsFleetPartner","getBoatGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["item_id"] = 3,},
	},
	['backpackwz_select'] = {
		['panel_step'] = {"ClsFleetPartner","getBoatGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["item_id"] = 6,},
	},
	['shuangwei_select'] = {
		['panel_step'] = {"ClsFleetPartner","getBoatGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["item_id"] = 23,},
	},
	['btn_world_map'] = {
		['panel_step'] = {"PortMap","widget_panel", "btn_worldmap"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['select_one_weapon'] = {
		['panel_step'] = {"ClsGuildShopUI"},
		['guide_pos'] = {["x"] = 725, ["y"] = 340},
		['guide_rect'] = {["w"] = 232, ["h"] = 104},
		['condition'] = nil,
	},
	['port_sailor_appoint'] = {
		['panel_step'] = {"clsAppointSailorUI","btn_appoint"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['port_reward_btn_refresh'] = {
		['panel_step'] = {"clsPortRewardUI","btn_refresh"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['backpack_tab_equip'] = {
		['panel_step'] = {"ClsBackpackMainUI","getTabObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 3,},
	},
	['backpack_select_equip'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 0,},
	},
	['xj_boat_select'] = {
		['panel_step'] = {"ClsDockUI"},
		['guide_pos'] = {["x"] = 824, ["y"] = 445},
		['guide_rect'] = {["w"] = 198, ["h"] = 60},
		['condition'] = nil,
	},
	['backpack_boat_select_5'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 5,type = "id"},
	},
	['backpack_boat_select_6'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 6,type = "id"},
	},
	['backpack_boat_select_26'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 26,type = "id"},
	},
	['arena_btn_match'] = {
		['panel_step'] = {"ClsArenaMainUI","btn_match"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_arena_go'] = {
		['panel_step'] = {"ClsActivityMain","show_view","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 2,},
	},
	['relic_dig'] = {
		['panel_step'] = {"ClsRelicDiscoverUI","btn_dig"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['relic_explore'] = {
		['panel_step'] = {"ClsRelicDiscoverUI","btn_explore"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['login_reward_tab'] = {
		['panel_step'] = {"ClsWefareMain","getWelfareGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["tab_pos"] = 7,},
	},
	['shipyard_zb_equip'] = {
		['panel_step'] = {"ClsFleetEquipUI"},
		['guide_pos'] = {["x"] = 631, ["y"] = 279},
		['guide_rect'] = {["w"] = 69, ["h"] = 68},
		['condition'] = nil,
	},
	['boat_btn_dismantic'] = {
		['panel_step'] = {"ClsBoatAttrTips","btn_dismantling"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['big_world_map_pos'] = {
		['panel_step'] = {"PortMap","guide_icon"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['world_mission_btn_go'] = {
		['panel_step'] = {"clsMissionTipUI","main_ui","btn_go"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_xuanshang_go'] = {
		['panel_step'] = {"ClsActivityMain","show_view","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 17,},
	},
	['btn_skill_close'] = {
		['panel_step'] = {"clsRoleSkill", "btn_close"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_relic_close'] = {
		['panel_step'] = {"ClsRelicDiscoverUI","m_close_btn"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_community'] = {
		['panel_step'] = {"ClsGuidePortLayer",},
		['guide_pos'] = {["x"] = 692, ["y"] = 500},
		['guide_rect'] = {["w"] = 47, ["h"] = 43},
		['condition'] = nil,
	},
	['btn_strategy'] = {
		['panel_step'] = {"ClsCommunityUI","btn_strategy"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_transfer'] = {
		['panel_step'] = {"PortMap","widget_panel","btn_transfer"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['backpack_boat_select_3'] = {
		['panel_step'] = {"ClsBackpackMainUI","getGuideObj"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = {["aid"] = 2,type = "id"},
	},
	['btn_treasure_confirm'] = {
		['panel_step'] = {"ClsTreasureMapConfirm","guide"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
	['btn_treasure_explore'] = {
		['panel_step'] = {"TreasureMapLayer","btn_explore"},
		['guide_pos'] = nil,
		['guide_rect'] = nil,
		['condition'] = nil,
	},
}

return guide_info
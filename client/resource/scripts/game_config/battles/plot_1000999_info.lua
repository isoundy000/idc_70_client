-- ------------------------------
-- desc: generated by xls2data.py
-- source: 999.xls
-- sheet: plot
-- ------------------------------


local plot_1000999_info = {
	[1] = {
		['plot'] = 'dialog',
		['param'] = {0,"",1,T("拉比斯，这里是。。。")},
	},
	[2] = {
		['plot'] = 'add_sprite',
		['param'] = {"ui/story/story_18.jpg",{0,0},1,1,1,1,1,"RGB565",{0.5,"VOICE_NPC_ADVISER_14"}},
	},
	[3] = {
		['plot'] = 'dialog',
		['param'] = {55,T("拉比斯"),1,T("那是传说中的海怪库拉肯，它过来了！别发呆了，快开炮！！"),ship_id=1},
	},
	[4] = {
		['plot'] = 'remove_sprite',
		['param'] = {1,0,1,0},
	},
	[5] = {
		['plot'] = 'add_sprite',
		['param'] = {"",{0,0},2,1,1,0,0,"RGB565",{0.5,"VOICE_ROLE_ADV_2"}},
	},
	[6] = {
		['plot'] = 'dialog',
		['param'] = {0,"",1,T("拉比斯，我们还是快离开这里吧，我总觉得这里有些诡异。"),7,false,"VOICE_ROLE_ADV_2"},
	},
	[7] = {
		['plot'] = 'remove_sprite',
		['param'] = {2,0,1,0},
	},
	[8] = {
		['plot'] = 'dialog',
		['param'] = {100,T("海盗阿芒德"),2,T("哈哈哈，想走？给我抓住他们！"),ship_id=14,5,false,"VOICE_AMMAND_1"},
	},
	[9] = {
		['plot'] = 'dialog',
		['param'] = {55,T("拉比斯"),1,T("放开我！该死的海盗！"),ship_id=2,3,false,"VOICE_NPC_ADVISER_15"},
	},
	[10] = {
		['plot'] = 'add_sprite',
		['param'] = {"ui/story/story_100.jpg",{0,0},2,1,1,1,3,"RGB565",{0.5,"VOICE_ROLE_ADV_3"}},
	},
	[11] = {
		['plot'] = 'text_display',
		['param'] = {{T("拉比斯！！！")},2,true,{480, 175}},
	},
	[12] = {
		['plot'] = 'remove_sprite',
		['param'] = {2,0,1,1},
	},
}

return plot_1000999_info
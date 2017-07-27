----------------------- Auto Genrate Begin --------------------

-- 定义技能继承类型

local clsSkillInitiative = require("module/battleAttrs/skill_initiative")

cls_sk16003 = class("cls_sk16003", clsSkillInitiative);


-- 属性段
---------------------------------------------------------------

-- 技能ID 
cls_sk16003.get_skill_id = function(self)
	return "sk16003";
end


-- 技能名 
cls_sk16003.get_skill_name = function(self)
	return T("突进（风向）");
end

-- 精简版技能描述 
cls_sk16003.get_skill_short_desc = function(self)
	return T("给射程内所有我方增加速度和攻击10秒");
end

-- 获取技能的描述
cls_sk16003.get_skill_desc = function(self, skill_data, lv)
	return string.format(T("增加射程内所有我方%0.1f%%速度及攻击，持续10秒。"), (25+1*lv))
end

-- 获取技能的富文本描述
cls_sk16003.get_skill_color_desc = function(self, skill_data, lv)
	return string.format(T("$(c:COLOR_CAMEL)增加射程内所有我方$(c:COLOR_GREEN)%0.1f%%$(c:COLOR_CAMEL)攻击及$(c:COLOR_GREEN)50$(c:COLOR_CAMEL)速度，持续10秒。"), (25+1*lv))
end

-- 公共CD 
cls_sk16003.get_common_cd = function(self)
	return 3;
end


-- 技能CD
cls_sk16003._get_skill_cd = function(self, attacker)
	local result
	
	-- 公式原文:结果=20
	result = 20;

	return result
end

-- 施法方状态限制 
local status_limit = {"silence", "stun", }

cls_sk16003.get_status_limit = function(self)
	return status_limit
end

-- 技能施法范围 
cls_sk16003.get_select_scope = function(self)
	return "FRIEND";
end


-- 最大施法限制距离
cls_sk16003.get_limit_distance_max = function(self, attacker, lv, target)
	local result
		-- attacker的攻击距离，不能设置，需要申明
	local iAAttRange = attacker:getFarRange();

	-- 公式原文:结果=A远程攻击距离
	result = iAAttRange;

	return result
end

-- SP消耗公式
cls_sk16003.calc_sp_cost = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=0
	result = 0;

	return result
end

---------------------------------------------------------------

-- 添加Buff区
-- 状态结算用的函数



-- 前置动作[加速]
local sk16003_pre_action_fast_0 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[加速]
local sk16003_select_cnt_fast_0 = function(attacker, lv)
	return 
999
end

-- 目标选择忽视状态[加速]
local sk16003_unselect_status_fast_0 = function(attacker, lv)
	return {"seal", "die", }
end

-- 状态持续时间[加速]
local sk16003_status_time_fast_0 = function(attacker, lv)
	return 
10
end

-- 状态心跳[加速]
local sk16003_status_break_fast_0 = function(attacker, lv)
	return 
0
end

-- 命中率公式[加速]
local sk16003_status_rate_fast_0 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000
	result = 1000;

	return result
end

-- 处理过程[加速]
local sk16003_calc_status_fast_0 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	-- 公式原文:加速=50
	tbResult.add_speed = 50;

	return tbResult
end

-- 前置动作[加远攻]
local sk16003_pre_action_add_att_far_1 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[加远攻]
local sk16003_select_cnt_add_att_far_1 = function(attacker, lv)
	return 
end

-- 目标选择忽视状态[加远攻]
local sk16003_unselect_status_add_att_far_1 = function(attacker, lv)
	return {"seal", "die", }
end

-- 状态持续时间[加远攻]
local sk16003_status_time_add_att_far_1 = function(attacker, lv)
	return 
10
end

-- 状态心跳[加远攻]
local sk16003_status_break_add_att_far_1 = function(attacker, lv)
	return 
0
end

-- 命中率公式[加远攻]
local sk16003_status_rate_add_att_far_1 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000
	result = 1000;

	return result
end

-- 处理过程[加远攻]
local sk16003_calc_status_add_att_far_1 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
		-- attacker的攻击，不能设置，需要申明
	local iAAtt = attacker:getAttFar();

	-- 公式原文:加远攻=(0.25+0.01*技能等级)*A远程攻击
	tbResult.add_att_far = (0.25+0.01*lv)*iAAtt;

	return tbResult
end

-- 前置动作[加近攻]
local sk16003_pre_action_add_att_near_2 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[加近攻]
local sk16003_select_cnt_add_att_near_2 = function(attacker, lv)
	return 
end

-- 目标选择忽视状态[加近攻]
local sk16003_unselect_status_add_att_near_2 = function(attacker, lv)
	return {"seal", "die", }
end

-- 状态持续时间[加近攻]
local sk16003_status_time_add_att_near_2 = function(attacker, lv)
	return 
10
end

-- 状态心跳[加近攻]
local sk16003_status_break_add_att_near_2 = function(attacker, lv)
	return 
0
end

-- 命中率公式[加近攻]
local sk16003_status_rate_add_att_near_2 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000
	result = 1000;

	return result
end

-- 处理过程[加近攻]
local sk16003_calc_status_add_att_near_2 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
		-- 
	local iANear = attacker:getAttNear();

	-- 公式原文:加近攻=(0.25+0.01*技能等级)*A近战攻击
	tbResult.add_att_near = (0.25+0.01*lv)*iANear;

	return tbResult
end

-- 前置动作[清除减益状态]
local sk16003_pre_action_clear_debuff_3 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[清除减益状态]
local sk16003_select_cnt_clear_debuff_3 = function(attacker, lv)
	return 
end

-- 目标选择忽视状态[清除减益状态]
local sk16003_unselect_status_clear_debuff_3 = function(attacker, lv)
	return {"", }
end

-- 状态持续时间[清除减益状态]
local sk16003_status_time_clear_debuff_3 = function(attacker, lv)
	return 
0
end

-- 状态心跳[清除减益状态]
local sk16003_status_break_clear_debuff_3 = function(attacker, lv)
	return 
0
end

-- 命中率公式[清除减益状态]
local sk16003_status_rate_clear_debuff_3 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000*取整(sk16003_SkillLv/sk16003_MAX_SkillLv)
	result = 1000*math.floor(attacker:getSkillLv("sk16003")/attacker:getSkillLv("sk16003_MAX"));

	return result
end

-- 处理过程[清除减益状态]
local sk16003_calc_status_clear_debuff_3 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end


-- 操作区

-- 添加状态数据
cls_sk16003.get_add_status = function(self)
		return {
	{
		["calc_status"]=sk16003_calc_status_fast_0, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk16003_pre_action_fast_0, 
		["scope"]="FRIEND", 
		["select_cnt"]=sk16003_select_cnt_fast_0, 
		["sort_method"]="", 
		["status"]="fast", 
		["status_break"]=sk16003_status_break_fast_0, 
		["status_rate"]=sk16003_status_rate_fast_0, 
		["status_time"]=sk16003_status_time_fast_0, 
		["unselect_status"]=sk16003_unselect_status_fast_0, 
	}, 
	{
		["calc_status"]=sk16003_calc_status_add_att_far_1, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk16003_pre_action_add_att_far_1, 
		["scope"]="LAST_TARGET", 
		["select_cnt"]=sk16003_select_cnt_add_att_far_1, 
		["sort_method"]="", 
		["status"]="add_att_far", 
		["status_break"]=sk16003_status_break_add_att_far_1, 
		["status_rate"]=sk16003_status_rate_add_att_far_1, 
		["status_time"]=sk16003_status_time_add_att_far_1, 
		["unselect_status"]=sk16003_unselect_status_add_att_far_1, 
	}, 
	{
		["calc_status"]=sk16003_calc_status_add_att_near_2, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk16003_pre_action_add_att_near_2, 
		["scope"]="LAST_TARGET", 
		["select_cnt"]=sk16003_select_cnt_add_att_near_2, 
		["sort_method"]="", 
		["status"]="add_att_near", 
		["status_break"]=sk16003_status_break_add_att_near_2, 
		["status_rate"]=sk16003_status_rate_add_att_near_2, 
		["status_time"]=sk16003_status_time_add_att_near_2, 
		["unselect_status"]=sk16003_unselect_status_add_att_near_2, 
	}, 
	{
		["calc_status"]=sk16003_calc_status_clear_debuff_3, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk16003_pre_action_clear_debuff_3, 
		["scope"]="LAST_TARGET", 
		["select_cnt"]=sk16003_select_cnt_clear_debuff_3, 
		["sort_method"]="", 
		["status"]="clear_debuff", 
		["status_break"]=sk16003_status_break_clear_debuff_3, 
		["status_rate"]=sk16003_status_rate_clear_debuff_3, 
		["status_time"]=sk16003_status_time_clear_debuff_3, 
		["unselect_status"]=sk16003_unselect_status_clear_debuff_3, 
	}, 
}
end

---------------------------------------------------------------


----------------------- Auto Genrate End   --------------------

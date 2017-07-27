----------------------- Auto Genrate Begin --------------------

-- 定义技能继承类型

local clsSkillAura = require("module/battleAttrs/skill_aura")

cls_sk44001 = class("cls_sk44001", clsSkillAura);


-- 属性段
---------------------------------------------------------------

-- 技能ID 
cls_sk44001.get_skill_id = function(self)
	return "sk44001";
end


-- 技能名 
cls_sk44001.get_skill_name = function(self)
	return T("乘风破浪");
end

-- 精简版技能描述 
cls_sk44001.get_skill_short_desc = function(self)
	return T("战斗中提升施法者闪避。");
end

-- 获取技能的描述
cls_sk44001.get_skill_desc = function(self, skill_data, lv)
	return string.format(T("战斗中提升施法者%0.1f%%闪避。"), (10+1*lv))
end

-- 获取技能的富文本描述
cls_sk44001.get_skill_color_desc = function(self, skill_data, lv)
	return string.format(T("$(c:COLOR_CAMEL)战斗中提升施法者闪避$(c:COLOR_GREEN)%0.1f%%"), (10+1*lv))
end

-- 公共CD 
cls_sk44001.get_common_cd = function(self)
	return 0;
end


-- 技能CD
cls_sk44001._get_skill_cd = function(self, attacker)
	local result
	
	-- 公式原文:结果=66666
	result = 66666;

	return result
end

-- 最小施法限制距离
cls_sk44001.get_limit_distance_min = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=0
	result = 0;

	return result
end

-- 最大施法限制距离
cls_sk44001.get_limit_distance_max = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=500
	result = 500;

	return result
end

-- SP消耗公式
cls_sk44001.calc_sp_cost = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=0
	result = 0;

	return result
end

---------------------------------------------------------------

-- 添加Buff区
-- 状态结算用的函数



-- 前置动作[闪避_2]
local sk44001_pre_action_dodge_2_0 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[闪避_2]
local sk44001_select_cnt_dodge_2_0 = function(attacker, lv)
	return 
end

-- 目标选择忽视状态[闪避_2]
local sk44001_unselect_status_dodge_2_0 = function(attacker, lv)
	return {"", }
end

-- 状态持续时间[闪避_2]
local sk44001_status_time_dodge_2_0 = function(attacker, lv)
	return 
666666
end

-- 状态心跳[闪避_2]
local sk44001_status_break_dodge_2_0 = function(attacker, lv)
	return 
0
end

-- 命中率公式[闪避_2]
local sk44001_status_rate_dodge_2_0 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000
	result = 1000;

	return result
end

-- 处理过程[闪避_2]
local sk44001_calc_status_dodge_2_0 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	-- 公式原文:提升闪避=100+10*技能等级
	tbResult.dodge= 100+10*lv;

	return tbResult
end

-- 前置动作[加速_2]
local sk44001_pre_action_fast_2_1 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[加速_2]
local sk44001_select_cnt_fast_2_1 = function(attacker, lv)
	return 
end

-- 目标选择忽视状态[加速_2]
local sk44001_unselect_status_fast_2_1 = function(attacker, lv)
	return {"", }
end

-- 状态持续时间[加速_2]
local sk44001_status_time_fast_2_1 = function(attacker, lv)
	return 
666666
end

-- 状态心跳[加速_2]
local sk44001_status_break_fast_2_1 = function(attacker, lv)
	return 
0
end

-- 命中率公式[加速_2]
local sk44001_status_rate_fast_2_1 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000*取整(sk44001_SkillLv/sk44001_MAX_SkillLv)
	result = 1000*math.floor(attacker:getSkillLv("sk44001")/attacker:getSkillLv("sk44001_MAX"));

	return result
end

-- 处理过程[加速_2]
local sk44001_calc_status_fast_2_1 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	-- 公式原文:加速=50
	tbResult.add_speed = 50;

	return tbResult
end


-- 操作区

-- 添加状态数据
cls_sk44001.get_add_status = function(self)
		return {
	{
		["calc_status"]=sk44001_calc_status_dodge_2_0, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk44001_pre_action_dodge_2_0, 
		["scope"]="SELF", 
		["select_cnt"]=sk44001_select_cnt_dodge_2_0, 
		["sort_method"]="", 
		["status"]="dodge_2", 
		["status_break"]=sk44001_status_break_dodge_2_0, 
		["status_rate"]=sk44001_status_rate_dodge_2_0, 
		["status_time"]=sk44001_status_time_dodge_2_0, 
		["unselect_status"]=sk44001_unselect_status_dodge_2_0, 
	}, 
	{
		["calc_status"]=sk44001_calc_status_fast_2_1, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk44001_pre_action_fast_2_1, 
		["scope"]="LAST_TARGET", 
		["select_cnt"]=sk44001_select_cnt_fast_2_1, 
		["sort_method"]="", 
		["status"]="fast_2", 
		["status_break"]=sk44001_status_break_fast_2_1, 
		["status_rate"]=sk44001_status_rate_fast_2_1, 
		["status_time"]=sk44001_status_time_fast_2_1, 
		["unselect_status"]=sk44001_unselect_status_fast_2_1, 
	}, 
}
end

---------------------------------------------------------------


----------------------- Auto Genrate End   --------------------

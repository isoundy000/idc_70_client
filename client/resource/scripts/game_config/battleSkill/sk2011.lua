----------------------- Auto Genrate Begin --------------------

-- 定义技能继承类型

local clsSkillInitiative = require("module/battleAttrs/skill_initiative")

cls_sk2011 = class("cls_sk2011", clsSkillInitiative);


-- 属性段
---------------------------------------------------------------

-- 技能ID 
cls_sk2011.get_skill_id = function(self)
	return "sk2011";
end


-- 技能名 
cls_sk2011.get_skill_name = function(self)
	return T("冲撞");
end

-- 精简版技能描述 
cls_sk2011.get_skill_short_desc = function(self)
	return T("快速冲向射程内敌方，造成一定近战范围伤害，该技能50%几率暴击");
end

-- 获取技能的描述
cls_sk2011.get_skill_desc = function(self, skill_data, lv)
	return string.format(T("快速冲向射程内一个敌方单位，造成%0.1f%%近战范围伤害，该技能50%%几率暴击"), (120+4*lv))
end

-- 获取技能的富文本描述
cls_sk2011.get_skill_color_desc = function(self, skill_data, lv)
	return string.format(T("$(c:COLOR_CAMEL)快速冲向射程内一个敌方单位，造成$(c:COLOR_GREEN)%0.1f%%$(c:COLOR_CAMEL)近战范围伤害，该技能50%%几率暴击"), (120+4*lv))
end

-- 公共CD 
cls_sk2011.get_common_cd = function(self)
	return 1;
end


-- 技能CD
cls_sk2011._get_skill_cd = function(self, attacker)
	local result
	
	-- 公式原文:结果=10-3*取整(sk2013_SkillLv/sk2013_MAX_SkillLv)
	result = 10-3*math.floor(attacker:getSkillLv("sk2013")/attacker:getSkillLv("sk2013_MAX"));

	return result
end

-- 施法方状态限制 
local status_limit = {"silence", "stun", }

cls_sk2011.get_status_limit = function(self)
	return status_limit
end

-- 技能施法范围 
cls_sk2011.get_select_scope = function(self)
	return "ENEMY";
end


-- 最大施法限制距离
cls_sk2011.get_limit_distance_max = function(self, attacker, lv, target)
	local result
		-- attacker的攻击距离，不能设置，需要申明
	local iAAttRange = attacker:getFarRange();

	-- 公式原文:结果=A远程攻击距离+100
	result = iAAttRange+100;

	return result
end

-- SP消耗公式
cls_sk2011.calc_sp_cost = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=0
	result = 0;

	return result
end

-- 施法前特效名称 
local before_effect_name = {"jn_xuli", }

cls_sk2011.get_before_effect_name = function(self)
	return before_effect_name
end

-- 施法前特效类型 
local before_effect_type = {"particle_local", }

cls_sk2011.get_before_effect_type = function(self)
	return before_effect_type
end

-- 施法前特效时间
cls_sk2011.get_before_effect_time = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=100+MIN(T距离*2,900)
	result = 100+math.min(GetDistanceFor3D(attacker.body.node, target.body.node)*2,900);

	return result
end

-- 施法音效 
cls_sk2011.get_effect_music = function(self)
	return "BT_SORTIE";
end


-- 受击音效 
cls_sk2011.get_hit_music = function(self)
	return "BT_SORTIE_HIT";
end


---------------------------------------------------------------

-- 添加Buff区
-- 状态结算用的函数



-- 前置动作[突击_2]
local sk2011_pre_action_tuji_self_0 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	return tbResult
end

-- 目标选择基础数量[突击_2]
local sk2011_select_cnt_tuji_self_0 = function(attacker, lv)
	return 
1
end

-- 目标选择忽视状态[突击_2]
local sk2011_unselect_status_tuji_self_0 = function(attacker, lv)
	return {"seal", "die", }
end

-- 状态持续时间[突击_2]
local sk2011_status_time_tuji_self_0 = function(attacker, lv)
	return 
2
end

-- 状态心跳[突击_2]
local sk2011_status_break_tuji_self_0 = function(attacker, lv)
	return 
0
end

-- 命中率公式[突击_2]
local sk2011_status_rate_tuji_self_0 = function(attacker, target, lv, tbParam)
	local result
	
	-- 公式原文:结果=1000
	result = 1000;

	return result
end

-- 处理过程[突击_2]
local sk2011_calc_status_tuji_self_0 = function(attacker, target, lv, objStatus, tbParam)
	local tbResult = {}
	
	-- 公式原文:突击触发技能="sk2011_1"
	tbResult.tj_skill_id = "sk2011_1";
	-- 公式原文:突击速度=650
	tbResult.tj_speed = 650;

	return tbResult
end


-- 操作区

-- 添加状态数据
cls_sk2011.get_add_status = function(self)
		return {
	{
		["calc_status"]=sk2011_calc_status_tuji_self_0, 
		["effect_name"]="", 
		["effect_time"]=0, 
		["effect_type"]="", 
		["pre_action"]=sk2011_pre_action_tuji_self_0, 
		["scope"]="SELF", 
		["select_cnt"]=sk2011_select_cnt_tuji_self_0, 
		["sort_method"]="", 
		["status"]="tuji_self", 
		["status_break"]=sk2011_status_break_tuji_self_0, 
		["status_rate"]=sk2011_status_rate_tuji_self_0, 
		["status_time"]=sk2011_status_time_tuji_self_0, 
		["unselect_status"]=sk2011_unselect_status_tuji_self_0, 
	}, 
}
end

---------------------------------------------------------------


----------------------- Auto Genrate End   --------------------
local skill_effect_util = require("module/battleAttrs/skill_effect_util")
-- 施法前显示
cls_sk2011.use_effect_display = function(self, attacker, targets, callback)
	skill_effect_util.beforeSkillTuji(attacker, targets, callback, self)
end

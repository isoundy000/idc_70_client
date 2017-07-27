----------------------- Auto Genrate Begin --------------------

-- 定义技能继承类型

local clsSkillAura = require("module/battleAttrs/skill_aura")

cls_sk51002 = class("cls_sk51002", clsSkillAura);


-- 属性段
---------------------------------------------------------------

-- 技能ID 
cls_sk51002.get_skill_id = function(self)
	return "sk51002";
end


-- 技能名 
cls_sk51002.get_skill_name = function(self)
	return T("远程船C级");
end

-- 获取技能的描述
cls_sk51002.get_skill_desc = function(self, skill_data, lv)
	return T("远程射击速度提升25%")
end

-- 获取技能的富文本描述
cls_sk51002.get_skill_color_desc = function(self, skill_data, lv)
	return T("$(c:COLOR_CAMEL)远程射击速度提升25%")
end

-- SP消耗公式
cls_sk51002.calc_sp_cost = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=0
	result = 0;

	return result
end

-- 施法前特效名称 
local before_effect_name = {"jn_xuli", }

cls_sk51002.get_before_effect_name = function(self)
	return before_effect_name
end

-- 施法前特效类型 
local before_effect_type = {"particle_local", }

cls_sk51002.get_before_effect_type = function(self)
	return before_effect_type
end

-- 施法前特效时间
cls_sk51002.get_before_effect_time = function(self, attacker, lv, target)
	local result
	
	-- 公式原文:结果=1500
	result = 1500;

	return result
end

---------------------------------------------------------------

-- 添加Buff区
-- 状态结算用的函数




-- 操作区

-- 添加状态数据
cls_sk51002.get_add_status = function(self)
		return {
}
end

---------------------------------------------------------------


----------------------- Auto Genrate End   --------------------
----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[敌军爆发]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIAddskill_explode_181 = class("ClsAIAddskill_explode_181", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIAddskill_explode_181:getId()
	return "addskill_explode_181";
end


-- AI时机
function ClsAIAddskill_explode_181:getOpportunity()
	return AI_OPPORTUNITY.RUN;
end

-- AI优先级别
function ClsAIAddskill_explode_181:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

-- [备注]
local function targetOther( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "friend";
	-- 目标排序方法
	local sort_key = "";
	local sort_asc = 1;
	-- 目标选择数量
	local select_cnt = 4;

	local tmp_targets = ai_obj:selectTargets(fanwei)

	local owner = ai_obj:getOwner()

	-- sort_method
	tmp_targets = battleData:sortShipsByKey(owner, tmp_targets, sort_key, sort_asc)

	-- 目标处于状态列表
	local lst_in_buff = {}
	-- 目标不处于状态列表
	local lst_no_in_buff = {}

	local func_condition = function(ai_obj, target_obj)
		for k, v in pairs(lst_in_buff) do
			if not target_obj:hasBuff(v) then return false end
		end

		for k, v in pairs(lst_no_in_buff) do
			if target_obj:hasBuff(v) then return false end
		end

		-- 如果是条件直接调用，如果是普通条件，解析

		return true
	end

	local tmp_cnt = 0
	local targets_result = {}
	for _, target in ipairs(tmp_targets) do
		local target_obj = battleData:getShipByGenID(target)
		if target == -2 then
			target_obj = battleData
		end
		if target_obj and func_condition(ai_obj, target_obj) then
			table.insert(targets_result, target)
			tmp_cnt = tmp_cnt + 1
			if tmp_cnt >= select_cnt then break end
		end
	end

	return targets_result
end


--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[T加怒=200]
local function addskill_explode_181_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:T加怒=200
	target_obj:addAnger( 200 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {addskill_explode_181_act_0, }, }, 
	{"add_skill", "", {1216, 2, "passive", }, }, 
	{"use_skill", "", {1216, }, }, 
	{"add_skill", targetOther, {1006, 2, }, }, 
}

function ClsAIAddskill_explode_181:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIAddskill_explode_181:getAllTargetMethod()
	return all_target_method
end

return ClsAIAddskill_explode_181

----------------------- Auto Genrate End   --------------------

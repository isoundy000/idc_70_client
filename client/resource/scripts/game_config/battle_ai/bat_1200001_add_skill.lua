----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_1200001_add_skill = class("ClsAIBat_1200001_add_skill", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_1200001_add_skill:getId()
	return "bat_1200001_add_skill";
end


-- AI时机
function ClsAIBat_1200001_add_skill:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_1200001_add_skill:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

-- [备注]
local function targetPlayer( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "all";
	-- 目标排序方法
	local sort_key = "";
	local sort_asc = 1;
	-- 目标选择数量
	local select_cnt = 1;

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

		-- T玩家标记
		local TIsPlayer = target_obj:is_player();
		if not (TIsPlayer) then return false end

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

-- [备注]设置-[O目标=TID]
local function bat_1200001_add_skill_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- TID
	local TID = target_obj:getId();

	-- 公式原文:O目标=TID
	owner:changeTarget( TID );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", targetPlayer, {bat_1200001_add_skill_act_0, }, }, 
	{"del_skill", "", {1, }, }, 
	{"del_skill", "", {2, }, }, 
	{"add_skill", "", {99003, 1, }, }, 
	{"add_skill", "", {99004, 1, }, }, 
	{"add_skill", "", {1126, 10, "passive", }, }, 
	{"add_skill", "", {1304, 10, "passive", }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_1", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_2", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_3", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_4", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_5", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_6", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_7", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_8", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_9", }, }, }, 
	{"add_ai", "", {{"bat_1200001_useskill_10", }, }, }, 
	{"add_effect_to_scene", "", {110102, "tx_shuibo", 0, 0, 100, 1, true, }, }, 
}

function ClsAIBat_1200001_add_skill:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_1200001_add_skill:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_1200001_add_skill

----------------------- Auto Genrate End   --------------------

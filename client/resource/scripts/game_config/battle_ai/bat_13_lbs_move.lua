----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[拉比斯追击]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_13_lbs_move = class("ClsAIBat_13_lbs_move", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_13_lbs_move:getId()
	return "bat_13_lbs_move";
end


-- AI时机
function ClsAIBat_13_lbs_move:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_13_lbs_move:getPriority()
	return -3;
end

-- AI停止标记
function ClsAIBat_13_lbs_move:getStopOtherFlg()
	return -3;
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

-- [备注]设置-[剧情镜头暂停=true]
local function bat_13_lbs_move_act_6( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:剧情镜头暂停=true
	ai_obj:setData( "__camera_stop", true );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"show_damage_range", "", {"false", }, }, 
	{"story_mode", "", {}, }, 
	{"move_to", "", {750, 640, 100, }, }, 
	{"camera_follow", targetPlayer, {0, 0, 1, 100, }, }, 
	{"play_plot", "", {{18, 1, 2, }, }, }, 
	{"delay", "", {500, }, }, 
	{"op", "", {bat_13_lbs_move_act_6, }, }, 
	{"run_ai", "", {{"bat_13_amd_enter", }, }, }, 
	{"delete_ai", "", {{"bat_13_lbs_move", }, }, }, 
}

function ClsAIBat_13_lbs_move:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_13_lbs_move:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_13_lbs_move

----------------------- Auto Genrate End   --------------------

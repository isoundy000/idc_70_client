----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[26]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAITiming2_122 = class("ClsAITiming2_122", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAITiming2_122:getId()
	return "timing2_122";
end


-- AI时机
function ClsAITiming2_122:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAITiming2_122:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndTimeis10(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 战斗已进行时间
	local BattleTime = battleData:getBattleTime();
	-- 战斗进行时间>=10000
	if ( not (BattleTime>=10000) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAITiming2_122:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndTimeis10(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"enter_scene", "", {14, }, }, 
	{"delete_ai", "", {{"timing2_122", }, }, }, 
}

function ClsAITiming2_122:getActions()
	return actions
end

local all_target_method = {
}

function ClsAITiming2_122:getAllTargetMethod()
	return all_target_method
end

return ClsAITiming2_122

----------------------- Auto Genrate End   --------------------

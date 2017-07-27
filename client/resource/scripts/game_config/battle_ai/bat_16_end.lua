----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_16_end = class("ClsAIBat_16_end", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_16_end:getId()
	return "bat_16_end";
end


-- AI时机
function ClsAIBat_16_end:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_16_end:getPriority()
	return 48;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]离场-[]
local function bat_16_end_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	target_obj:release(false, true)

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"move_to", "", {1300, 640, 100, }, }, 
	{"op", "", {bat_16_end_act_1, }, }, 
	{"delete_ai", "", {{"bat_16_end", }, }, }, 
}

function ClsAIBat_16_end:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_16_end:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_16_end

----------------------- Auto Genrate End   --------------------

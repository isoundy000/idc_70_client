----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_dead3_134 = class("ClsAIBat_dead3_134", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_dead3_134:getId()
	return "bat_dead3_134";
end


-- AI时机
function ClsAIBat_dead3_134:getOpportunity()
	return AI_OPPORTUNITY.DEATH;
end

-- AI优先级别
function ClsAIBat_dead3_134:getPriority()
	return 48;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"enter_scene", "", {4, }, }, 
}

function ClsAIBat_dead3_134:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_dead3_134:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_dead3_134

----------------------- Auto Genrate End   --------------------

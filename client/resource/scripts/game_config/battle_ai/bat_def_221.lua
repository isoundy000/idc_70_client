----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_def_221 = class("ClsAIBat_def_221", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_def_221:getId()
	return "bat_def_221";
end


-- AI时机
function ClsAIBat_def_221:getOpportunity()
	return AI_OPPORTUNITY.RUN;
end

-- AI优先级别
function ClsAIBat_def_221:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"add_skill", "", {1037, 2, }, }, 
}

function ClsAIBat_def_221:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_def_221:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_def_221

----------------------- Auto Genrate End   --------------------

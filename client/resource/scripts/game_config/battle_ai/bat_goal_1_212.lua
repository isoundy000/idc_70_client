----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[战斗目标1]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_goal_1_212 = class("ClsAIBat_goal_1_212", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_goal_1_212:getId()
	return "bat_goal_1_212";
end


-- AI时机
function ClsAIBat_goal_1_212:getOpportunity()
	return AI_OPPORTUNITY.RUN;
end

-- AI优先级别
function ClsAIBat_goal_1_212:getPriority()
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
	{"show_prompt", "", {T("击败敌方舰队"), }, }, 
}

function ClsAIBat_goal_1_212:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_goal_1_212:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_goal_1_212

----------------------- Auto Genrate End   --------------------

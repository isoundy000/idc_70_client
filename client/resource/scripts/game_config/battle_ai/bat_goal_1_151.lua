----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[战斗目标]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_goal_1_151 = class("ClsAIBat_goal_1_151", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_goal_1_151:getId()
	return "bat_goal_1_151";
end


-- AI时机
function ClsAIBat_goal_1_151:getOpportunity()
	return AI_OPPORTUNITY.RUN;
end

-- AI优先级别
function ClsAIBat_goal_1_151:getPriority()
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
	{"show_prompt", "", {T("消灭敌方舰队"), }, }, 
}

function ClsAIBat_goal_1_151:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_goal_1_151:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_goal_1_151

----------------------- Auto Genrate End   --------------------

----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_193_win = class("ClsAIBat_193_win", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_193_win:getId()
	return "bat_193_win";
end


-- AI时机
function ClsAIBat_193_win:getOpportunity()
	return AI_OPPORTUNITY.DEATH;
end

-- AI优先级别
function ClsAIBat_193_win:getPriority()
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
	{"play_plot", "", {{5, }, }, }, 
	{"battle_stop", "", {1, }, }, 
}

function ClsAIBat_193_win:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_193_win:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_193_win

----------------------- Auto Genrate End   --------------------

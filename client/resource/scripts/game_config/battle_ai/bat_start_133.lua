----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_start_133 = class("ClsAIBat_start_133", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_start_133:getId()
	return "bat_start_133";
end


-- AI时机
function ClsAIBat_start_133:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_start_133:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"play_plot", "", {{1, 2, 3, }, }, }, 
	{"show_prompt", "", {T("小心那些打不完的走私快船，集中火力消灭汪直的旗舰。"), }, }, 
}

function ClsAIBat_start_133:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_start_133:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_start_133

----------------------- Auto Genrate End   --------------------

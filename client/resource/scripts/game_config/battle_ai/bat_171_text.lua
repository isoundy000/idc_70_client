----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[战斗提示，剧情]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_171_text = class("ClsAIBat_171_text", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_171_text:getId()
	return "bat_171_text";
end


-- AI时机
function ClsAIBat_171_text:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_171_text:getPriority()
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
	{"play_plot", "", {{1, 2, 3, 4, 5, }, }, }, 
	{"show_prompt", "", {T("敌人会优先集火耐久少的船只"), }, }, 
}

function ClsAIBat_171_text:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_171_text:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_171_text

----------------------- Auto Genrate End   --------------------

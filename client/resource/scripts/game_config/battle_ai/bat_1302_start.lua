----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[开场的剧情]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_1302_start = class("ClsAIBat_1302_start", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_1302_start:getId()
	return "bat_1302_start";
end


-- AI时机
function ClsAIBat_1302_start:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_1302_start:getPriority()
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
	{"add_skill", "", {3501, 1, "", 4, }, }, 
	{"add_skill", "", {3101, 1, "", 1, }, }, 
	{"add_skill", "", {3201, 1, "", 2, }, }, 
	{"add_skill", "", {3301, 1, "", 3, }, }, 
	{"add_skill", "", {9001, 5, "", 5, }, }, 
}

function ClsAIBat_1302_start:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_1302_start:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_1302_start

----------------------- Auto Genrate End   --------------------

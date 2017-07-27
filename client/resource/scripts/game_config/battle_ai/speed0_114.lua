----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[10]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAISpeed0_114 = class("ClsAISpeed0_114", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAISpeed0_114:getId()
	return "speed0_114";
end


-- AI时机
function ClsAISpeed0_114:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAISpeed0_114:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[OAI变速=-O速度]
local function speed0_114_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- 宿主速度
	local OSpeed = owner:getSpeed();

	-- 公式原文:OAI变速=-O速度
	owner:setAISpeed( -OSpeed );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {speed0_114_act_0, }, }, 
}

function ClsAISpeed0_114:getActions()
	return actions
end

local all_target_method = {
}

function ClsAISpeed0_114:getAllTargetMethod()
	return all_target_method
end

return ClsAISpeed0_114

----------------------- Auto Genrate End   --------------------

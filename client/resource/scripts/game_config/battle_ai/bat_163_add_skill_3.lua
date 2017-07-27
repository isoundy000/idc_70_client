----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[小怪增加回血技能]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_163_add_skill_3 = class("ClsAIBat_163_add_skill_3", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_163_add_skill_3:getId()
	return "bat_163_add_skill_3";
end


-- AI时机
function ClsAIBat_163_add_skill_3:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_163_add_skill_3:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[O加怒=200]
local function bat_163_add_skill_3_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:O加怒=200
	owner:addAnger( 200 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"add_skill", "", {1210, 1, }, }, 
	{"op", "", {bat_163_add_skill_3_act_1, }, }, 
}

function ClsAIBat_163_add_skill_3:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_163_add_skill_3:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_163_add_skill_3

----------------------- Auto Genrate End   --------------------

----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_193_dangerous = class("ClsAIBat_193_dangerous", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_193_dangerous:getId()
	return "bat_193_dangerous";
end


-- AI时机
function ClsAIBat_193_dangerous:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_193_dangerous:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHpless50(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<50
	if ( not (OHpRate<50) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_193_dangerous:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless50(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[mark=1]
local function bat_193_dangerous_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:mark=1
	battleData:planningSetData("mark", 1);

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {bat_193_dangerous_act_0, }, }, 
	{"delete_ai", "", {{"bat_193_dangerous", }, }, }, 
	{"add_ai", "", {{"bat_193_dangerous", }, }, }, 
}

function ClsAIBat_193_dangerous:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_193_dangerous:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_193_dangerous

----------------------- Auto Genrate End   --------------------

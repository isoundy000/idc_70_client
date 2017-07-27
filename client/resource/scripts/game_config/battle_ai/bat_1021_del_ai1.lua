----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_1021_del_ai1 = class("ClsAIBat_1021_del_ai1", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_1021_del_ai1:getId()
	return "bat_1021_del_ai1";
end


-- AI时机
function ClsAIBat_1021_del_ai1:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_1021_del_ai1:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndNum1is1(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 战场测试变量
	local num1 = battleData:GetData("num1") or 0;
	-- num1>=1
	if ( not (num1>=1) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_1021_del_ai1:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndNum1is1(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"stop_ai", "", {{"bat_1021_move_to1", }, }, }, 
	{"delete_ai", "", {{"bat_1021_move_to1", }, }, }, 
}

function ClsAIBat_1021_del_ai1:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_1021_del_ai1:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_1021_del_ai1

----------------------- Auto Genrate End   --------------------

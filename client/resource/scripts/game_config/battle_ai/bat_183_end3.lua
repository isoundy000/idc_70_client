----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[基德马铃薯全部死亡]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_183_end3 = class("ClsAIBat_183_end3", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_183_end3:getId()
	return "bat_183_end3";
end


-- AI时机
function ClsAIBat_183_end3:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_183_end3:getPriority()
	return 48;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndDeadall(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 战场测试变量
	local dead1 = battleData:GetData("dead1") or 0;
	-- dead1==1
	if ( not (dead1==1) ) then  return false end

	-- 战场测试变量
	local dead2 = battleData:GetData("dead2") or 0;
	-- dead2==1
	if ( not (dead2==1) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_183_end3:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndDeadall(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"battle_stop", "", {1, }, }, 
	{"delete_ai", "", {{"bat_183_end3", }, }, }, 
}

function ClsAIBat_183_end3:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_183_end3:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_183_end3

----------------------- Auto Genrate End   --------------------
----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_191_hpless = class("ClsAIBat_191_hpless", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_191_hpless:getId()
	return "bat_191_hpless";
end


-- AI时机
function ClsAIBat_191_hpless:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_191_hpless:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHp_less(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<=60
	if ( not (OHpRate<=60) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_191_hpless:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHp_less(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[触发2=触发2+1]
local function bat_191_hpless_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- 战场测试变量
	local AI2 = battleData:GetData("__ai_2") or 0;

	-- 公式原文:触发2=触发2+1
	battleData:planningSetData("__ai_2", AI2+1);

end

-- [备注]设置-[触发1=触发1+1]
local function bat_191_hpless_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- 战场测试变量
	local AI1 = battleData:GetData("__ai_1") or 0;

	-- 公式原文:触发1=触发1+1
	battleData:planningSetData("__ai_1", AI1+1);

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {bat_191_hpless_act_0, }, }, 
	{"op", "", {bat_191_hpless_act_1, }, }, 
	{"delete_ai", "", {{"bat_191_hpless", }, }, }, 
}

function ClsAIBat_191_hpless:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_191_hpless:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_191_hpless

----------------------- Auto Genrate End   --------------------

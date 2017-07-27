----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[8]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_event2_102 = class("ClsAIBat_event2_102", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_event2_102:getId()
	return "bat_event2_102";
end


-- AI时机
function ClsAIBat_event2_102:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_event2_102:getPriority()
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

	-- 计数1
	local num1 = battleData:GetData("num1") or 0;
	-- num1==1
	if ( not (num1==1) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_event2_102:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndNum1is1(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[OAI变速=O速度*0.8]
local function bat_event2_102_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- 宿主速度
	local OSpeed = owner:getSpeed();

	-- 公式原文:OAI变速=O速度*0.8
	owner:setAISpeed( OSpeed*0.8 );

end

-- [备注]设置-[OAI变速=-O速度]
local function bat_event2_102_act_2( ai_obj, act_obj, target, delta_time )
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
	{"op", "", {bat_event2_102_act_0, }, }, 
	{"move_to", "", {144, 1117, 100, }, }, 
	{"op", "", {bat_event2_102_act_2, }, }, 
	{"delete_ai", "", {{"bat_event2_102", }, }, }, 
}

function ClsAIBat_event2_102:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_event2_102:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_event2_102

----------------------- Auto Genrate End   --------------------

----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAITiming3_112 = class("ClsAITiming3_112", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAITiming3_112:getId()
	return "timing3_112";
end


-- AI时机
function ClsAITiming3_112:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAITiming3_112:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndTimeis15(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 战斗已进行时间
	local BattleTime = battleData:getBattleTime();
	-- 战斗进行时间>11000
	if ( not (BattleTime>11000) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAITiming3_112:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndTimeis15(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[OAI变速=50]
local function timing3_112_act_3( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:OAI变速=50
	owner:setAISpeed( 50 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"stop_ai", "", {{"bat_move1_112", }, }, }, 
	{"delete_ai", "", {{"bat_move1_112", }, }, }, 
	{"delete_ai", "", {{"behit_112", }, }, }, 
	{"op", "", {timing3_112_act_3, }, }, 
	{"add_ai", "", {{"hpless90_112", }, }, }, 
	{"add_ai", "", {{"hpless50_112", }, }, }, 
	{"add_ai", "", {{"del_wudi_112_3", }, }, }, 
	{"stop_ai", "", {{"timing3_112", }, }, }, 
	{"delete_ai", "", {{"timing3_112", }, }, }, 
}

function ClsAITiming3_112:getActions()
	return actions
end

local all_target_method = {
}

function ClsAITiming3_112:getAllTargetMethod()
	return all_target_method
end

return ClsAITiming3_112

----------------------- Auto Genrate End   --------------------

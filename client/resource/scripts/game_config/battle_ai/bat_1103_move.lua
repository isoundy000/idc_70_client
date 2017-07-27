----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[玩家跟随拉比斯]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_1103_move = class("ClsAIBat_1103_move", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_1103_move:getId()
	return "bat_1103_move";
end


-- AI时机
function ClsAIBat_1103_move:getOpportunity()
	return AI_OPPORTUNITY.RUN;
end

-- AI优先级别
function ClsAIBat_1103_move:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[OAI变速=0]
local function bat_1103_move_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:OAI变速=0
	owner:setAISpeed( 0 );

end

-- [备注]设置-[OAI变速=80]
local function bat_1103_move_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:OAI变速=80
	owner:setAISpeed( 80 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {bat_1103_move_act_0, }, }, 
	{"op", "", {bat_1103_move_act_1, }, }, 
	{"move_to", "", {1500, 800, 250, }, }, 
}

function ClsAIBat_1103_move:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_1103_move:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_1103_move

----------------------- Auto Genrate End   --------------------

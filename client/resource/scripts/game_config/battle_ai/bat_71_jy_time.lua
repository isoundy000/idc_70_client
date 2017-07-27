----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_71_jy_time = class("ClsAIBat_71_jy_time", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_71_jy_time:getId()
	return "bat_71_jy_time";
end


-- AI时机
function ClsAIBat_71_jy_time:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_71_jy_time:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndBat_71_jy_time(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 战斗已进行时间
	local BattleTime = battleData:getBattleTime();
	-- 战斗进行时间>=3000
	if ( not (BattleTime>=3000) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_71_jy_time:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndBat_71_jy_time(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]说话-[帮帮我们，英国人想抓我们去当奴隶！]
local function bat_71_jy_time_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("帮帮我们，英国人想抓我们去当奴隶！")

	target_obj:say( name, word )

end

-- [备注]说话-[我的同伴被他们抓走了，救救他们。]
local function bat_71_jy_time_act_2( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("我的同伴被他们抓走了，救救他们。")

	target_obj:say( name, word )

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {bat_71_jy_time_act_0, }, }, 
	{"delay", "", {1000, }, }, 
	{"op", "", {bat_71_jy_time_act_2, }, }, 
	{"add_ai", "", {{"bat_71_jy_moto", }, }, }, 
	{"delete_ai", "", {{"bat_71_jy_time", }, }, }, 
}

function ClsAIBat_71_jy_time:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_71_jy_time:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_71_jy_time

----------------------- Auto Genrate End   --------------------

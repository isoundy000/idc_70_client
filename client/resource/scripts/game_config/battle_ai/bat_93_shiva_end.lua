----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_93_shiva_end = class("ClsAIBat_93_shiva_end", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_93_shiva_end:getId()
	return "bat_93_shiva_end";
end


-- AI时机
function ClsAIBat_93_shiva_end:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_93_shiva_end:getPriority()
	return -2;
end

-- AI停止标记
function ClsAIBat_93_shiva_end:getStopOtherFlg()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHpless91(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<91
	if ( not (OHpRate<91) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_93_shiva_end:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless91(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[O耐久=0]
local function bat_93_shiva_end_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:O耐久=0
	owner:AIsetHp( 0 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"run_ai", "", {{"bat_93_bigboom", }, }, }, 
	{"op", "", {bat_93_shiva_end_act_1, }, }, 
	{"play_plot", "", {{14, }, }, }, 
	{"battle_stop", "", {1, }, }, 
	{"delete_ai", "", {{"bat_93_shiva_die", }, }, }, 
}

function ClsAIBat_93_shiva_end:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_93_shiva_end:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_93_shiva_end

----------------------- Auto Genrate End   --------------------

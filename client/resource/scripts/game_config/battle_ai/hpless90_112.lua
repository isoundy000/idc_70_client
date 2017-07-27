----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIHpless90_112 = class("ClsAIHpless90_112", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIHpless90_112:getId()
	return "hpless90_112";
end


-- AI时机
function ClsAIHpless90_112:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIHpless90_112:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHpless90(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<90
	if ( not (OHpRate<90) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIHpless90_112:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless90(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]说话-[哼！漏网之鱼！]
local function hpless90_112_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("哼！漏网之鱼！")

	target_obj:say( name, word )

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {hpless90_112_act_0, }, }, 
	{"delete_ai", "", {{"hpless90_112", }, }, }, 
}

function ClsAIHpless90_112:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIHpless90_112:getAllTargetMethod()
	return all_target_method
end

return ClsAIHpless90_112

----------------------- Auto Genrate End   --------------------

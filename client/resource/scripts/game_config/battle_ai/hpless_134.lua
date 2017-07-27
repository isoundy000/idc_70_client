----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIHpless_134 = class("ClsAIHpless_134", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIHpless_134:getId()
	return "hpless_134";
end


-- AI时机
function ClsAIHpless_134:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIHpless_134:getPriority()
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
	-- O耐久百分比<=50
	if ( not (OHpRate<=50) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIHpless_134:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless50(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]说话-[武士生于战场，死于战场！弟兄们，点燃船只，我来为你们回复！]
local function hpless_134_act_2( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("武士生于战场，死于战场！弟兄们，点燃船只，我来为你们回复！")

	target_obj:say( name, word )

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"add_effect_to_ship", "", {1, "sf_tujin", 0, 0, 120, true, }, }, 
	{"add_skill", "", {5501, 1, }, }, 
	{"op", "", {hpless_134_act_2, }, }, 
	{"enter_scene", "", {7, }, }, 
	{"enter_scene", "", {8, }, }, 
	{"enter_scene", "", {9, }, }, 
	{"enter_scene", "", {10, }, }, 
	{"delete_ai", "", {{"hpless_134", }, }, }, 
}

function ClsAIHpless_134:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIHpless_134:getAllTargetMethod()
	return all_target_method
end

return ClsAIHpless_134

----------------------- Auto Genrate End   --------------------

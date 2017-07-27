----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIHs_hpless2_03 = class("ClsAIHs_hpless2_03", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIHs_hpless2_03:getId()
	return "hs_hpless2_03";
end


-- AI时机
function ClsAIHs_hpless2_03:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIHs_hpless2_03:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHpless30(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<30
	if ( not (OHpRate<30) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIHs_hpless2_03:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless30(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[OAI近攻=0.5*O近攻]
local function hs_hpless2_03_act_5( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- O近攻
	local ONearAtt = owner:getAttNear();

	-- 公式原文:OAI近攻=0.5*O近攻
	owner:setAINearAtt( 0.5*ONearAtt );

end

-- [备注]设置-[OAI远攻=0.5*O远攻]
local function hs_hpless2_03_act_6( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- O远攻
	local OFarAtt = owner:getAttFar(0);

	-- 公式原文:OAI远攻=0.5*O远攻
	owner:setAIFarAtt( 0.5*OFarAtt );

end

-- [备注]说话-[红旗帮听令！全军出击！]
local function hs_hpless2_03_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("红旗帮听令！全军出击！")

	target_obj:say( name, word )

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {hs_hpless2_03_act_0, }, }, 
	{"enter_scene", "", {3, }, }, 
	{"enter_scene", "", {4, }, }, 
	{"enter_scene", "", {5, }, }, 
	{"add_effect_to_ship", "", {1, "sf_tujin", 0, 0, 120, true, }, }, 
	{"op", "", {hs_hpless2_03_act_5, }, }, 
	{"op", "", {hs_hpless2_03_act_6, }, }, 
	{"add_skill", "", {99019, 2, }, }, 
	{"delete_ai", "", {{"hs_hpless2_03", }, }, }, 
}

function ClsAIHs_hpless2_03:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIHs_hpless2_03:getAllTargetMethod()
	return all_target_method
end

return ClsAIHs_hpless2_03

----------------------- Auto Genrate End   --------------------

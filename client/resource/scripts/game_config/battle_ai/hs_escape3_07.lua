----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIHs_escape3_07 = class("ClsAIHs_escape3_07", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIHs_escape3_07:getId()
	return "hs_escape3_07";
end


-- AI时机
function ClsAIHs_escape3_07:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIHs_escape3_07:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHpless40(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<40
	if ( not (OHpRate<40) ) then  return false end

	-- 战场测试变量
	local num1 = battleData:GetData("num1") or 0;
	-- num1==1
	if ( not (num1==1) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIHs_escape3_07:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless40(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]说话-[受够了这种打打杀杀的日子！看我跑的多快！]
local function hs_escape3_07_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("受够了这种打打杀杀的日子！看我跑的多快！")

	target_obj:say( name, word )

end

-- [备注]离场-[]
local function hs_escape3_07_act_2( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	target_obj:release(false, true)

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {hs_escape3_07_act_0, }, }, 
	{"move_to", "", {2000, 100, 100, }, }, 
	{"op", "", {hs_escape3_07_act_2, }, }, 
	{"delete_ai", "", {{"hs_escape3_07", }, }, }, 
}

function ClsAIHs_escape3_07:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIHs_escape3_07:getAllTargetMethod()
	return all_target_method
end

return ClsAIHs_escape3_07

----------------------- Auto Genrate End   --------------------

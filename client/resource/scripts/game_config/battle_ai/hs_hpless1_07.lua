----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIHs_hpless1_07 = class("ClsAIHs_hpless1_07", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIHs_hpless1_07:getId()
	return "hs_hpless1_07";
end


-- AI时机
function ClsAIHs_hpless1_07:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIHs_hpless1_07:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndHpless70(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- O耐久百分比
	local OHpRate = owner:getHpRate() * 100;
	-- O耐久百分比<70
	if ( not (OHpRate<70) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIHs_hpless1_07:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless70(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[OAI远攻=O远攻*0.5]
local function hs_hpless1_07_act_5( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- O远攻
	local OFarAtt = owner:getAttFar(0);

	-- 公式原文:OAI远攻=O远攻*0.5
	owner:setAIFarAtt( OFarAtt*0.5 );

end

-- [备注]设置-[OAI近攻=O近攻*0.5]
local function hs_hpless1_07_act_4( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- O近攻
	local ONearAtt = owner:getAttNear();

	-- 公式原文:OAI近攻=O近攻*0.5
	owner:setAINearAtt( ONearAtt*0.5 );

end

-- [备注]说话-[你们这群废物！快保护好我！]
local function hs_hpless1_07_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("你们这群废物！快保护好我！")

	target_obj:say( name, word )

end

-- [备注]设置-[num1=num1+1]
local function hs_hpless1_07_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- 战场测试变量
	local num1 = battleData:GetData("num1") or 0;

	-- 公式原文:num1=num1+1
	battleData:planningSetData("num1", num1+1);

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", "", {hs_hpless1_07_act_0, }, }, 
	{"op", "", {hs_hpless1_07_act_1, }, }, 
	{"show_prompt", "", {T("敌方军心崩溃，黑胡子守卫血量不足时会逃离战场"), }, }, 
	{"add_effect_to_ship", "", {1, "sf_tujin", 0, 0, 120, true, }, }, 
	{"op", "", {hs_hpless1_07_act_4, }, }, 
	{"op", "", {hs_hpless1_07_act_5, }, }, 
	{"add_skill", "", {4501, 5, }, }, 
	{"add_skill", "", {4101, 10, }, }, 
	{"add_skill", "", {99021, 1, }, }, 
	{"add_skill", "", {99024, 1, }, }, 
	{"add_skill", "", {3501, 1, }, }, 
	{"delete_ai", "", {{"hs_hpless1_07", }, }, }, 
}

function ClsAIHs_hpless1_07:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIHs_hpless1_07:getAllTargetMethod()
	return all_target_method
end

return ClsAIHs_hpless1_07

----------------------- Auto Genrate End   --------------------

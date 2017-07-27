----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[11→22→26]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_changeteam_32 = class("ClsAIBat_changeteam_32", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_changeteam_32:getId()
	return "bat_changeteam_32";
end


-- AI时机
function ClsAIBat_changeteam_32:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAIBat_changeteam_32:getPriority()
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
	-- O耐久百分比<=40
	if ( not (OHpRate<=40) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_changeteam_32:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndHpless40(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[num1=num1+1]
local function bat_changeteam_32_act_3( ai_obj, act_obj, target, delta_time )
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

-- [备注]设置-[O阵营=1]
local function bat_changeteam_32_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:O阵营=1
	battleData:changeTeam(owner, 1 );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"add_status", "", {"wudi", }, }, 
	{"op", "", {bat_changeteam_32_act_1, }, }, 
	{"play_plot", "", {{8, 9, 10, }, }, }, 
	{"op", "", {bat_changeteam_32_act_3, }, }, 
	{"delete_ai", "", {{"bat_changeteam_32", }, }, }, 
}

function ClsAIBat_changeteam_32:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_changeteam_32:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_changeteam_32

----------------------- Auto Genrate End   --------------------

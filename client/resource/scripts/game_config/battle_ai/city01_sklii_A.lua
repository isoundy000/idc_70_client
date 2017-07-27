----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[学技能1]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAICity01_sklii_A = class("ClsAICity01_sklii_A", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAICity01_sklii_A:getId()
	return "city01_sklii_A";
end


-- AI时机
function ClsAICity01_sklii_A:getOpportunity()
	return AI_OPPORTUNITY.RUN;
end

-- AI优先级别
function ClsAICity01_sklii_A:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]4选1
local function cnd4xuan1(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 记录随机数
	local RandomCnt = battleData:GetData("__random_cnt") or 0;
	-- 记录随机数<250
	if ( not (RandomCnt<250) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAICity01_sklii_A:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cnd4xuan1(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]说话-[年纪轻轻，下手不轻啊~]
local function city01_sklii_A_act_1( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end




	local name = ""
	local word = T("年纪轻轻，下手不轻啊~")

	target_obj:say( name, word )

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"add_skill", "", {1121, 1, }, }, 
	{"op", "", {city01_sklii_A_act_1, }, }, 
}

function ClsAICity01_sklii_A:getActions()
	return actions
end

local all_target_method = {
}

function ClsAICity01_sklii_A:getAllTargetMethod()
	return all_target_method
end

return ClsAICity01_sklii_A

----------------------- Auto Genrate End   --------------------

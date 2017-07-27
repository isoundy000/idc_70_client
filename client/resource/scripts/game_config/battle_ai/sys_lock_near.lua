----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[近战跟随AI]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAISys_lock_near = class("ClsAISys_lock_near", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAISys_lock_near:getId()
	return "sys_lock_near";
end


-- AI时机
function ClsAISys_lock_near:getOpportunity()
	return AI_OPPORTUNITY.TACTIC;
end

-- AI优先级别
function ClsAISys_lock_near:getPriority()
	return 905;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]近战内没目标
local function cndNear(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 近战内目标数量
	local targetCntInNear = ai_obj:targetCnt("innear");
	-- 近战内目标数量<1
	if ( not (targetCntInNear<1) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAISys_lock_near:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndNear(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

-- [备注]
local function targetInnear( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "enemy";
	-- 目标排序方法
	local sort_key = "";
	local sort_asc = 1;
	-- 目标选择数量
	local select_cnt = 1;

	local tmp_targets = ai_obj:selectTargets(fanwei)

	local owner = ai_obj:getOwner()

	-- sort_method
	tmp_targets = battleData:sortShipsByKey(owner, tmp_targets, sort_key, sort_asc)

	-- 目标处于状态列表
	local lst_in_buff = {}
	-- 目标不处于状态列表
	local lst_no_in_buff = {}

	local func_condition = function(ai_obj, target_obj)
		for k, v in pairs(lst_in_buff) do
			if not target_obj:hasBuff(v) then return false end
		end

		for k, v in pairs(lst_no_in_buff) do
			if target_obj:hasBuff(v) then return false end
		end

		-- 如果是条件直接调用，如果是普通条件，解析

		-- 目标与宿主的距离
		local Tdistance = GetDistanceFor3D(owner.body.node, target_obj.body.node);
		-- 宿主的近战射程
		local ONearRange = owner:getNearRange();
		if not (Tdistance<=ONearRange) then return false end

		return true
	end

	local tmp_cnt = 0
	local targets_result = {}
	for _, target in ipairs(tmp_targets) do
		local target_obj = battleData:getShipByGenID(target)
		if target == -2 then
			target_obj = battleData
		end
		if target_obj and func_condition(ai_obj, target_obj) then
			table.insert(targets_result, target)
			tmp_cnt = tmp_cnt + 1
			if tmp_cnt >= select_cnt then break end
		end
	end

	return targets_result
end


-- [备注]选取一个离自己最近的近战攻击目标
local function targetNear( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "enemy";
	-- 目标排序方法
	local sort_key = "distance";
	local sort_asc = 1;
	-- 目标选择数量
	local select_cnt = 1;

	local tmp_targets = ai_obj:selectTargets(fanwei)

	local owner = ai_obj:getOwner()

	-- sort_method
	tmp_targets = battleData:sortShipsByKey(owner, tmp_targets, sort_key, sort_asc)

	-- 目标处于状态列表
	local lst_in_buff = {}
	-- 目标不处于状态列表
	local lst_no_in_buff = {}

	local func_condition = function(ai_obj, target_obj)
		for k, v in pairs(lst_in_buff) do
			if not target_obj:hasBuff(v) then return false end
		end

		for k, v in pairs(lst_no_in_buff) do
			if target_obj:hasBuff(v) then return false end
		end

		-- 如果是条件直接调用，如果是普通条件，解析

		-- 目标与宿主的距离
		local Tdistance = GetDistanceFor3D(owner.body.node, target_obj.body.node);
		-- 宿主的近战射程
		local ONearRange = owner:getNearRange();
		if not (Tdistance>ONearRange) then return false end

		return true
	end

	local tmp_cnt = 0
	local targets_result = {}
	for _, target in ipairs(tmp_targets) do
		local target_obj = battleData:getShipByGenID(target)
		if target == -2 then
			target_obj = battleData
		end
		if target_obj and func_condition(ai_obj, target_obj) then
			table.insert(targets_result, target)
			tmp_cnt = tmp_cnt + 1
			if tmp_cnt >= select_cnt then break end
		end
	end

	return targets_result
end


--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[追随目标=TID;O目标=TID]
local function sys_lock_near_act_0( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- TID
	local TID = target_obj:getId();

	-- 公式原文:追随目标=TID
	ai_obj:setData( "__follow_target_id", TID );
	-- 公式原文:O目标=TID
	owner:changeTarget( TID );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"op", targetNear, {sys_lock_near_act_0, }, }, 
	{"follow", "", {200, }, }, 
}

function ClsAISys_lock_near:getActions()
	return actions
end

local all_target_method = {
	["innear"]=targetInnear, 
}

function ClsAISys_lock_near:getAllTargetMethod()
	return all_target_method
end

return ClsAISys_lock_near

----------------------- Auto Genrate End   --------------------
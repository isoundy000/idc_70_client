----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_1021_crash1 = class("ClsAIBat_1021_crash1", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_1021_crash1:getId()
	return "bat_1021_crash1";
end


-- AI时机
function ClsAIBat_1021_crash1:getOpportunity()
	return AI_OPPORTUNITY.CATCH;
end

-- AI优先级别
function ClsAIBat_1021_crash1:getPriority()
	return 1;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

-- [备注]
local function cndCatchcnt1is1(ai_obj, target)
	local owner = ai_obj:getOwner()
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if target and target >= 0 then
		target_obj = battleData:getShipByGenID(target)
		if not target_obj then return false end
	end

	-- 远程内目标数量
	local catchcnt1 = ai_obj:targetCnt("enemy1");
	-- catchcnt1==1
	if ( not (catchcnt1==1) ) then  return false end

	return true
end

-- 本AI的判定条件
function ClsAIBat_1021_crash1:checkCondition()
	local owner = self:getOwner()
	local battleData = getGameData():getBattleDataMt()
	return cndCatchcnt1is1(self, nil )
end

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

-- [备注]
local function targetEnemy1( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "all";
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

		-- 指战役ship表第一列的ID
		local TBaseID = target_obj:getBaseId();
		if not (TBaseID==2) then return false end

		-- 目标与宿主的距离
		local Tdistance = GetDistanceFor3D(owner.body.node, target_obj.body.node);
		if not (Tdistance<=150) then return false end

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


-- [备注]
local function targetEnemy1( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "all";
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

		-- 指战役ship表第一列的ID
		local TBaseID = target_obj:getBaseId();
		if not (TBaseID==2) then return false end

		-- 目标与宿主的距离
		local Tdistance = GetDistanceFor3D(owner.body.node, target_obj.body.node);
		if not (Tdistance<=150) then return false end

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


-- [备注]
local function targetEnemy1( ai_obj, last_targets )
	local battleData = getGameData():getBattleDataMt()

	-- 目标选择范围
	local fanwei = "all";
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

		-- 指战役ship表第一列的ID
		local TBaseID = target_obj:getBaseId();
		if not (TBaseID==2) then return false end

		-- 目标与宿主的距离
		local Tdistance = GetDistanceFor3D(owner.body.node, target_obj.body.node);
		if not (Tdistance<=150) then return false end

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

-- [备注]设置-[T耐久=T耐久*0.7]
local function bat_1021_crash1_act_4( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end

	-- T耐久
	local THp = target_obj:getHp();

	-- 公式原文:T耐久=T耐久*0.7
	target_obj:AIsetHp( THp*0.7 );

end

-- [备注]设置-[num1=num1+1]
local function bat_1021_crash1_act_5( ai_obj, act_obj, target, delta_time )
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
	battleData:SetData("num1", num1+1);

end

-- [备注]设置-[O耐久=0]
local function bat_1021_crash1_act_6( ai_obj, act_obj, target, delta_time )
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
	{"camera_follow", "", {2, 0, 1, 7, }, }, 
	{"delay", "", {1000, }, }, 
	{"scene_shake", "", {20, 20, }, }, 
	{"add_effect_to_ship", targetEnemy1, {1, "tx_judian_boom", 0, -50, 1, false, }, }, 
	{"op", targetEnemy1, {bat_1021_crash1_act_4, }, }, 
	{"op", "", {bat_1021_crash1_act_5, }, }, 
	{"op", "", {bat_1021_crash1_act_6, }, }, 
	{"delete_ai", "", {{"bat_1021_crash1", }, }, }, 
}

function ClsAIBat_1021_crash1:getActions()
	return actions
end

local all_target_method = {
	["enemy1"]=targetEnemy1, 
}

function ClsAIBat_1021_crash1:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_1021_crash1

----------------------- Auto Genrate End   --------------------

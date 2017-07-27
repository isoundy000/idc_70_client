----------------------- Auto Genrate Begin --------------------


-- 自动生成AI,来源于[]

local ClsAIBase = require("gameobj/battle/ai/ai_base")

local ClsAIBat_3012_camera_1 = class("ClsAIBat_3012_camera_1", ClsAIBase)

--------------------------- 基本属性函数开始 ------------------------------

-- AI ID
function ClsAIBat_3012_camera_1:getId()
	return "bat_3012_camera_1";
end


-- AI时机
function ClsAIBat_3012_camera_1:getOpportunity()
	return AI_OPPORTUNITY.FIGHT_START;
end

-- AI优先级别
function ClsAIBat_3012_camera_1:getPriority()
	return -2;
end

--------------------------- 基本属性函数结束 ------------------------------

--------------------------- 条件函数区开始 ------------------------------

--------------------------- 条件函数区结束 ------------------------------

--------------------------- 目标函数区开始 ------------------------------

--------------------------- 目标函数区结束 ------------------------------

--------------------------- 动作函数区开始 ------------------------------

-- [备注]设置-[剧情镜头暂停=true]
local function bat_3012_camera_1_act_4( ai_obj, act_obj, target, delta_time )
	local owner = ai_obj:getOwner();
	local battleData = getGameData():getBattleDataMt()

	local target_obj
	if ( target and target >= 0 ) then
		target_obj = battleData:getShipByGenID(target)
		if ( not target_obj ) then return false end
	end


	-- 公式原文:剧情镜头暂停=true
	ai_obj:setData( "__camera_stop", true );

end

--------------------------- 动作函数区结束 ------------------------------

local actions = {
	{"story_mode", "", {}, }, 
	{"hide_ship_ui", "", {}, }, 
	{"show_damage_range", "", {"false", }, }, 
	{"hide_land", "", {"false", }, }, 
	{"op", "", {bat_3012_camera_1_act_4, }, }, 
	{"camera_follow", "", {14, 0, 2, 2, }, }, 
	{"camera_scale", "", {2, 2000, 1480, 960, }, }, 
	{"camera_rotate", "", {-35, 4000, }, }, 
	{"delay", "", {4500, }, }, 
	{"play_plot", "", {{4, }, }, }, 
	{"run_ai", "", {{"bat_3012_camera_2", }, }, }, 
}

function ClsAIBat_3012_camera_1:getActions()
	return actions
end

local all_target_method = {
}

function ClsAIBat_3012_camera_1:getAllTargetMethod()
	return all_target_method
end

return ClsAIBat_3012_camera_1

----------------------- Auto Genrate End   --------------------

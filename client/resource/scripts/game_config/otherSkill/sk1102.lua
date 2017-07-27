----------------------- Auto Genrate Begin --------------------


local ClsOtherSkillBase = require("game_config/otherSkill/OtherSkillBase")
local ClsSk1102 = class("sk1102", ClsOtherSkillBase);

-- 技能名：劳有所得
function ClsSk1102:formula(skill_data, sailor_data, lv)
    local tbResult = {};
	-- 航海士品质 （1~6代表E~S）
	local sailor_star = sailor_data.star;

	-- 公式原文:增加百分比=(航海士品质-1)*10+技能等级*4
	tbResult.rate = (sailor_star-1)*10+lv*4;

    return tbResult;
end

-- 获取技能的描述
function ClsSk1102:get_skill_desc(skill_data, sailor_data, lv)
    	-- 航海士品质 （1~6代表E~S）
	local sailor_star = sailor_data.star;


    -- 描述：完成悬赏任务，获得商会声望值增加${增加百分比}%。
    -- 公式：增加百分比=(航海士品质-1)*10+技能等级*4
	local base_desc = string.format(T("完成悬赏任务，获得商会声望值增加%0.1f%%。"), ((sailor_star-1)*10+lv*4));
	local child_desc = "";
	return {["base_desc"] = base_desc, ["child_desc"] = child_desc};
end

-- 获取技能的描述
function ClsSk1102:get_skill_color_desc(skill_data, sailor_data, lv)
    	-- 航海士品质 （1~6代表E~S）
	local sailor_star = sailor_data.star;


	local base_desc = string.format(T("$(c:COLOR_CAMEL)完成悬赏任务，获得商会声望值增加$(c:COLOR_GREEN)%0.1f%%$(c:COLOR_CAMEL)。"), ((sailor_star-1)*10+lv*4))
	local child_desc = ""
	return {["base_desc"] = base_desc, ["child_desc"] = child_desc}
end

-- 获取精简版技能描述
function ClsSk1102:get_skill_short_desc()
	return T("完成悬赏任务，获得的商会声望增加")
end

return ClsSk1102

----------------------- Auto Genrate End   --------------------

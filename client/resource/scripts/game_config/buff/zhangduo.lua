----------------------- Auto Genrate Begin --------------------

-- 定义状态继承类型
local clsBuffBase = require("module/battleAttrs/buff_base")

cls_zhangduo = class("cls_zhangduo", clsBuffBase);

-- 属性段
---------------------------------------------------------------

-- 状态ID 
cls_zhangduo.get_status_id = function(self)
	return "zhangduo";
end


-- 状态名 
cls_zhangduo.get_status_name = function(self)
	return T("掌舵");
end

-- 增减益 
cls_zhangduo.get_status_type = function(self)
	return T("增益");
end

-- 特效 
cls_zhangduo.get_status_effect = function(self)
	return {"tx_speedup", };
end

-- 特效类型 
cls_zhangduo.get_status_effect_type = function(self)
	return {"particle_local", };
end

-- 状态图标 
cls_zhangduo.get_status_icon = function(self)
	return "jiasu.png";
end


---------------------------------------------------------------

-- 关系属性


----------------------- Auto Genrate End   --------------------
--
cls_zhangduo.deal_result = function(self, tbResult)
	self.super.deal_result(self, tbResult)
	if tbResult.add_speed then 
		self.target:add_speed(tbResult.add_speed)
	end
end

cls_zhangduo.un_deal_result = function(self, tbResult)
	self.super.un_deal_result(self, tbResult)
	if tbResult.add_speed then 
		self.target:sub_speed(tbResult.add_speed)
	end
end

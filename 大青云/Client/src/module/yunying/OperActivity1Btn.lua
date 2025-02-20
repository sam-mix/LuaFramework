﻿--[[首冲
2015年8月22日, PM 05:38:45
wangyanwei
]]

_G.OperActivity1Btn = BaseYunYingBtn:new();

YunYingBtnManager:RegisterBtnClass(YunYingConsts.BT_operActivity1,OperActivity1Btn);

function OperActivity1Btn:GetStageBtnName()
	return "operActivity1";
end

function OperActivity1Btn:IsShow()
	local btnStateVO = OperactivitiesModel:GetOperBtnState(OperactivitiesConsts.iconShouchong)
	local btnState = btnStateVO.reward
	if btnState == 2 then
		return false
	end
	if btnState < 0 then
		return false
	end
	if t_consts[126] then
		local constCfgNeedLevel = t_consts[126].val2
		if constCfgNeedLevel then
			local curRoleLvl = MainPlayerModel.humanDetailInfo.eaLevel -- 当前人物等级
			if curRoleLvl < constCfgNeedLevel then return false end
		end
	end
	
	return true
end

function OperActivity1Btn:OnBtnClick()
	OperActUIManager:ShowHideOperActUI(OperactivitiesConsts.iconShouchong)
end

function OperActivity1Btn:OnBtnInit()
	if self.button.initialized then
		if self.button.effect.initialized then
			self.button.effect:playEffect(0);
			self:OnGetIsShow();
		else
			self.button.effect.init = function()
				self.button.effect:playEffect(0);
				self:OnGetIsShow();
			end
		end
	end
	if self.button then
		self.button.rollOver = function() self:OnTouchrollOver(); end
		self.button.rollOut = function() self:OnTouchRollOut(); end
	end
	self:UnRegisterNotification()
	self:RegisterNotification()
end
function OperActivity1Btn:OnTouchrollOver()
	UIOperTips:Open(2)
end;
function OperActivity1Btn:OnTouchRollOut()
	UIOperTips:Hide()
end;

function OperActivity1Btn:OnGetIsShow()

end

--处理消息
function OperActivity1Btn:HandleNotification(name, body)
	if not self:IsShow() then return end
	if name == NotifyConsts.UpdateOperActBtnIconState then
		self:OnGetIsShow();
	elseif body.type == enAttrType.eaLevel then
		UIOperTips:IsToShowLevel()		
	end
end

--消息处理
function OperActivity1Btn:RegisterNotification()
	local setNotificatioin = self:ListNotificationInterests();
	if not setNotificatioin then return; end
	if not self.notifierCallBack then
		self.notifierCallBack = function(name,body)
			self:HandleNotification(name, body);
		end
	end
	for i,name in pairs(setNotificatioin) do
		Notifier:registerNotification(name, self.notifierCallBack)
	end
end

--取消消息注册
function OperActivity1Btn:UnRegisterNotification()
	local setNotificatioin = self:ListNotificationInterests();
	if not setNotificatioin then return; end
	if not self.notifierCallBack then return end
	for i,name in pairs(setNotificatioin) do
		Notifier:unregisterNotification(name, self.notifierCallBack)
	end
end

--监听消息
function OperActivity1Btn:ListNotificationInterests()
	return {
		NotifyConsts.UpdateOperActBtnIconState,
		NotifyConsts.PlayerAttrChange,
	} 
end
LevelInvestmentView = LevelInvestmentView or BaseClass(BaseRender)
LEVEL_INVEST_T = {682, 1280, 1880}
function LevelInvestmentView:__init(instance)
	self.plan_type = 0
end

function LevelInvestmentView:LoadCallBack()
	self:ListenEvent("InvestmentCostChange", BindTool.Bind(self.OnInvestmentCostChange,self))
	self:ListenEvent("ClickInvestment", BindTool.Bind(self.OnClickInvestment,self))
	self:ListenEvent("ClickLevelInvestTip", BindTool.Bind(self.OnClickLevelInvestTip,self))

	self.has_gold = self:FindVariable("HasGold")
	self.has_bind_gold = self:FindVariable("HasBindGold")
	self.dec1 = self:FindVariable("Dec1")
	self.dec2 = self:FindVariable("Dec2")
	self.can_invest = self:FindVariable("CanInvest")
	self.select_gold = self:FindObj("SelectGold").dropdown
	self:InitScroller()
end

function LevelInvestmentView:__delete()
	if self.cell_list then
		for k,v in pairs(self.cell_list) do
			v:DeleteMe()
		end
		self.cell_list = {}
	end
end

function LevelInvestmentView:InitScroller()
	self.cell_list = {}
	self.scroller = self:FindObj("List")
	local delegate = self.scroller.list_simple_delegate
	-- 生成数量
	delegate.NumberOfCellsDel = function()
		return #InvestData.Instance:GetPlanAuto(self.plan_type)
	end
	-- 格子刷新
	delegate.CellRefreshDel = function(cell, data_index, cell_index)
		data_index = data_index + 1

		local target_cell = self.cell_list[cell]

		if nil == target_cell then
			self.cell_list[cell] =  LevelInvestmentCell.New(cell.gameObject)
			target_cell = self.cell_list[cell]
			target_cell.mother_view = self
		end
		local data = InvestData.Instance:GetPlanAuto(self.plan_type)
		local cell_data = data[data_index]
		cell_data.data_index = data_index
		target_cell:SetData(cell_data)
	end
end

function LevelInvestmentView:OnInvestmentCostChange(index)
	self.plan_type = index
	self:OnFlush()
end

function LevelInvestmentView:OpenCallBack()
	local cur_plan = InvestData.Instance:GetNormalActivePlan()
	if cur_plan < 0 then
		self.select_gold.value = 2
	else
		self.select_gold.value = cur_plan
	end
	self.plan_type = self.select_gold.value
end

function LevelInvestmentView:OnClickInvestment()
	local other_cfg = ConfigManager.Instance:GetAutoConfig("touzijihua_auto").other[1]
	local highest_plan = InvestData.Instance:GetActiveHighestPlan()
	local invest_price = other_cfg["plan_" .. self.plan_type .. "_price"] or 0
	local extrace_price = other_cfg["plan_" .. highest_plan .. "_price"] or 0
	local role_gold = GameVoManager.Instance:GetMainRoleVo().gold
	local func = function ()
		if role_gold >= invest_price or (highest_plan > -1 and role_gold >= invest_price - extrace_price) then
			InvestCtrl.Instance:SendTouzijihuaActive(self.plan_type)
		else
			TipsCtrl.Instance:ShowLackDiamondView()
		end
	end
	local desc = ""
	if highest_plan < 0 then
		desc = string.format(Language.Common.InvestTips, invest_price)
	else
		desc = string.format(Language.Common.ExtraceInvestTips, invest_price - extrace_price)
	end
	TipsCtrl.Instance:ShowCommonTip(func, nil, desc)
end

function LevelInvestmentView:OnClickLevelInvestTip()
	TipsCtrl.Instance:ShowHelpTipView(156)
end

function LevelInvestmentView:OnFlush()
	local other_cfg = ConfigManager.Instance:GetAutoConfig("touzijihua_auto").other[1]
	local gold = CommonDataManager.ConverMoney(PlayerData.Instance.role_vo.gold)
	local bind_gold = CommonDataManager.ConverMoney(PlayerData.Instance.role_vo.bind_gold)
	self.has_gold:SetValue(gold)
	self.has_bind_gold:SetValue(bind_gold)

	local highest_plan = InvestData.Instance:GetActiveHighestPlan()
	self.can_invest:SetValue(highest_plan < self.plan_type and InvestData.Instance:CanInvestLevel(self.plan_type))

	local cur_plan = InvestData.Instance:GetActiveHighestPlan()
	self.dec1:SetValue(cur_plan < 0 and Language.Investment.CurPlan[1] or string.format(Language.Investment.CurPlan[2], other_cfg["plan_" .. cur_plan .. "_price"] or 0))
	self.dec2:SetValue(string.format(Language.Investment.CurPlanCost, other_cfg["plan_" .. self.plan_type .. "_price"] or 0))
	if self.scroller.scroller.isActiveAndEnabled then
		self.scroller.scroller:RefreshAndReloadActiveCellViews(true)
	end
end

---------------------------------------------------------------
--滚动条格子

LevelInvestmentCell = LevelInvestmentCell or BaseClass(BaseCell)

function LevelInvestmentCell:__init()
	self.task_dec = self:FindVariable("Dec")
	self.reward_btn_enble = self:FindVariable("BtnEnble")
	self.reward_btn_txt = self:FindVariable("RewardBtnTxt")
	self.cost = self:FindVariable("Cost")

	self.reward = ItemCell.New(self:FindObj("Item1"))

	self:ListenEvent("Reward",
		BindTool.Bind(self.ClickReward, self))

end

function LevelInvestmentCell:__delete()
	if self.reward ~= nil then
		self.reward:DeleteMe()
		self.reward = nil
	end
end

function LevelInvestmentCell:ClickReward()
	if self.data == nil then return end
	InvestCtrl.Instance:SendFetchTouZiJiHuaReward(self.data.type, self.data.seq)
end

function LevelInvestmentCell:OnFlush()
	local other_cfg = ConfigManager.Instance:GetAutoConfig("touzijihua_auto").other[1]
	local plan_cost = other_cfg["plan_" .. self.data.type .. "_price"] or 0
	local dec = self.data.seq == 0 and string.format(Language.Investment.NormalPlanRewardDec[1], math.floor(self.data.reward_gold_bind / plan_cost * 100))
	or string.format(Language.Investment.NormalPlanRewardDec[2], PlayerData.GetLevelString(self.data.need_level), math.floor(self.data.reward_gold_bind / plan_cost * 100))
	self.task_dec:SetValue(dec)

	local has_reward = InvestData.Instance:GetNormalInvestHasReward(self.data.type, self.data.seq)
	local gold = InvestData.Instance:GetHasRewardGoldByTypeAndSeq(self.data.type, self.data.seq)

	local highest_plan = InvestData.Instance:GetActiveHighestPlan()
	local cur_plan = InvestData.Instance:GetNormalActivePlan()
	local level = PlayerData.Instance.role_vo.level
	self.reward_btn_enble:SetValue(highest_plan == self.data.type and self.data.need_level <= level and not has_reward)
	self.cost:SetValue(self.data.reward_gold_bind - gold == 0 and self.data.reward_gold_bind or self.data.reward_gold_bind - gold)
	self.reward_btn_txt:SetValue(has_reward and Language.Common.YiLingQu or Language.Common.LingQu)

	self.reward:SetData({item_id = 65533})
end
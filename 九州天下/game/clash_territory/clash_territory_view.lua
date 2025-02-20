
ClashTerritoryView = ClashTerritoryView or BaseClass(BaseView)

local Reward_Count = 4

function ClashTerritoryView:__init()
	self.ui_config = {"uis/views/clashterritory","ClashTerritoryView"}
	self.play_audio = true
	self.territory_t = {}
	self.territory_state_t = {}
end

function ClashTerritoryView:__delete()

end

function ClashTerritoryView:ReleaseCallBack()
	for k, v in ipairs(self.item_list) do
		v:DeleteMe()
	end
	self.item_list = {}
	for k, v in ipairs(self.territory_t) do
		v:DeleteMe()
	end
	self.territory_t = {}
	for k, v in ipairs(self.territory_state_t) do
		v:DeleteMe()
	end
	self.territory_state_t = {}
end

function ClashTerritoryView:LoadCallBack()
	--获取组件
	self.item_list = {}
	for i = 1, 4 do
		local item = ItemCell.New(self:FindObj("Reward" .. i))
		item:SetData(nil)
		table.insert(self.item_list, item)
	end

	local fight_info = self:FindObj("FightInfo")
	self.territory_t = {}
	self.territory_state_t = {}
	for i = 1, 10 do
		self.territory_t[i] = ClashTerritoryGuildInfo.New(fight_info.transform:FindHard("Terri" .. i))
		self.territory_t[i]:SetIndex(i)
	end
	for i = 1, 5 do
		self.territory_state_t[i] = ClashTerritoryStateInfo.New(fight_info.transform:FindHard("TerriTime" .. i))
	end

	self:ListenEvent("Close",
		BindTool.Bind(self.Close, self))
	self:ListenEvent("OnClickEnter",
		BindTool.Bind(self.OnClickEnter, self))
	self:ListenEvent("OnClickHelp",
		BindTool.Bind(self.OnClickHelp, self))
end

function ClashTerritoryView:OpenCallBack()
	ClashTerritoryCtrl.SendTerritoryWarQualification()
	self:Flush()
end

function ClashTerritoryView:OnClickEnter()
	local index = 0
	if ClashTerritoryData.Instance:GetTerritoryRankById() then
		local rank = ClashTerritoryData.Instance:GetTerritoryRankById()
		index = math.max(math.ceil(rank / 2) - 1, 0)
	end
	ActivityCtrl.Instance:SendActivityEnterReq(ACTIVITY_TYPE.CLASH_TERRITORY, index)
	self:Close()
end

function ClashTerritoryView:OnFlush()
	local act_info = ActivityData.Instance:GetActivityInfoById(ACTIVITY_TYPE.CLASH_TERRITORY)
	self:SetRewardState(act_info)
	for i,v in ipairs(self.territory_t) do
		local guild_id, is_occupy = ClashTerritoryData.Instance:GetGuildIdByRank(i)
		v:SetData({guild_id = guild_id, is_occupy = is_occupy})
	end
	for i,v in ipairs(self.territory_state_t) do
		local guild_id1, is_occupy1 = ClashTerritoryData.Instance:GetGuildIdByRank(i * 2 - 1)
		local guild_id2, is_occupy2 = ClashTerritoryData.Instance:GetGuildIdByRank(i * 2)
		v:SetData({guild_id1 = guild_id1, is_occupy1 = is_occupy1, guild_id2 = guild_id2, is_occupy2 = is_occupy2})
	end
end

--设置是否显示奖励
function ClashTerritoryView:SetRewardState(act_info)
	for k, v in ipairs(self.item_list) do
		if act_info["reward_item" .. k] and next(act_info["reward_item" .. k]) then
			self.item_list[k].root_node:SetActive(true)
			self.item_list[k]:SetData(act_info["reward_item" .. k])
			self.item_list[k]:SetInteractable(true)
		else
			self.item_list[k]:SetInteractable(false)
			self.item_list[k].root_node:SetActive(false)
		end
	end
end

function ClashTerritoryView:OnClickHelp()
	local fb_config = ConfigManager.Instance:GetAutoConfig("fb_scene_config_auto")
	if fb_config.fb_scene_cfg_list[SceneType.ClashTerritory] then
		TipsCtrl.Instance:ShowHelpTipView(fb_config.fb_scene_cfg_list[SceneType.ClashTerritory].fb_desc)
	end
end



ClashTerritoryGuildInfo = ClashTerritoryGuildInfo or BaseClass(BaseCell)

function ClashTerritoryGuildInfo:__init()
	self.territory_name = self:FindVariable("TerriName")
	self.guild_name = self:FindVariable("GuildName")
end

function ClashTerritoryGuildInfo:SetIndex(index)
	local cfg = GuildData.Instance:GetTerritoryConfig(index)
	if cfg then
		self.territory_name:SetValue(cfg.territory_name)
	end
end

function ClashTerritoryGuildInfo:OnFlush()
	if self.data == nil then
		return
	end
	if self.data.guild_id and self.data.guild_id > 0 then
		local guild_info = GuildData.Instance:GetGuildInfoById(self.data.guild_id)
		if guild_info then
			self.guild_name:SetValue(guild_info.guild_name)
		else
			self.guild_name:SetValue("")
		end
	else
		self.guild_name:SetValue(Language.ClashTerritory.NotOccupy)
	end
end


ClashTerritoryStateInfo = ClashTerritoryStateInfo or BaseClass(BaseCell)

function ClashTerritoryStateInfo:__init()
	self.show_occupy = self:FindVariable("ShowYZL")
	self.open_time = self:FindVariable("OpenTime")
end

function ClashTerritoryStateInfo:__delete()
	GlobalTimerQuest:CancelQuest(self.open_timer)
end

function ClashTerritoryStateInfo:OnFlush()
	if self.data == nil then
		return
	end
	GlobalTimerQuest:CancelQuest(self.open_timer)
	if self.data.is_occupy1 or self.data.is_occupy2 then
		self.show_occupy:SetValue(Language.ClashTerritory.OccupyTxt[1])
		self.open_time:SetValue("")
	elseif (self.data.guild_id1 == nil or self.data.guild_id1 == 0) and (self.data.guild_id2 == nil or self.data.guild_id2 == 0) then
		self.show_occupy:SetValue(Language.ClashTerritory.OccupyTxt[2])
		self.open_time:SetValue("")
	else
		self.show_occupy:SetValue("")
		self.open_timer = GlobalTimerQuest:AddRunQuest(BindTool.Bind(self.UpdateOpenTime, self), 1)
		self:UpdateOpenTime()
	end

end

function ClashTerritoryStateInfo:UpdateOpenTime()
	local activity_info = ActivityData.Instance:GetActivityStatuByType(ACTIVITY_TYPE.CLASH_TERRITORY)
	if activity_info then
		local time = activity_info.status == ACTIVITY_STATUS.OPEN and Language.Activity.KaiQiZhong or TimeUtil.FormatSecond(activity_info.next_time - TimeCtrl.Instance:GetServerTime(), 3)
		self.open_time:SetValue(string.format(Language.ClashTerritory.ActivityOpenTxt, time))
	end
end
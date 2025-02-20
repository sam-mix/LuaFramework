ActiveFamFightView = ActiveFamFightView or BaseClass(BaseView)

function ActiveFamFightView:__init()
	self.ui_config = {"uis/views/bossview","ActiveFamFightView"}
	self.active_close = false
	self.fight_info_view = true
	self.view_layer = UiLayer.MainUILow
	self.item_t = {}
	self.dabao_info_event = BindTool.Bind(self.Flush, self)
	self.is_safe_area_adapter = true
end

function ActiveFamFightView:__delete()

end

function ActiveFamFightView:ReleaseCallBack()
	if BossData.Instance then
		BossData.Instance:RemoveListener(BossData.ACTIVE_BOSS, self.dabao_info_event)
	end
	if self.show_mode_list_event ~= nil then
		GlobalEventSystem:UnBind(self.show_mode_list_event)
		self.show_mode_list_event = nil
	end
	if self.menu_toggle_event then
		GlobalEventSystem:UnBind(self.menu_toggle_event)
	end
	self.item_t = {}

	-- 清理变量和对象
	self.anger = nil
	self.show_panel = nil
	self.time = nil
	self.slider = nil
	self.show_limit = nil
	self.list_view = nil
	self.max_anger = nil
end

function ActiveFamFightView:LoadCallBack()
	self.anger = self:FindVariable("Anger")
	BossData.Instance:AddListener(BossData.ACTIVE_BOSS, self.dabao_info_event)
	self.show_panel = self:FindVariable("ShowPanel")
	self.time = self:FindVariable("time")
	self.slider = self:FindVariable("slider")
	self.show_limit = self:FindVariable("show_limit")
	self.max_anger = self:FindVariable("max_anger")
	self.max_anger:SetValue(BossData.Instance:GetActiveMaxValue())
	self:ListenEvent("boss_click", BindTool.Bind(self.BossClick, self))
	self.list_view = self:FindObj("TaskList")
	local list_delegate = self.list_view.list_simple_delegate
	list_delegate.NumberOfCellsDel = BindTool.Bind(self.BagGetNumberOfCells, self)
	list_delegate.CellRefreshDel = BindTool.Bind(self.BagRefreshCell, self)
	self.menu_toggle_event = GlobalEventSystem:Bind(MainUIEventType.SHOW_OR_HIDE_OTHER_BUTTON,BindTool.Bind(self.PortraitToggleChange, self))
	self:Flush()
end

function ActiveFamFightView:SetRendering(value)
	BaseView.SetRendering(self, value)
	if value then
		self:Flush()
	end
end

function ActiveFamFightView:BossClick(is_click)
	if is_click then
		self:Flush()
	end
end

function ActiveFamFightView:CloseCallBack()
	if self.time_coundown then
		GlobalTimerQuest:CancelQuest(self.time_coundown)
		self.time_coundown = nil
	end
end

function ActiveFamFightView:OpenCallBack()
	local scene_id = Scene.Instance:GetSceneId()
	self.show_limit:SetValue(scene_id == 9040)
	GlobalEventSystem:Fire(MainUIEventType.PORTRAIT_TOGGLE_CHANGE, false)

	local info = nil
	info = BossData.Instance:GetCurBossInfo(BOSS_ENTER_TYPE.TYPE_BOSS_ACTIVE)
	if info then
		MoveCache.end_type = MoveEndType.Auto
		GuajiCtrl.Instance:MoveToPos(info.scene_id, info.born_x, info.born_y, 10, 10, nil, nil, true)
	end
end

function ActiveFamFightView:PortraitToggleChange(state)
	if state then
		self:Flush()
	end
	self.show_panel:SetValue(state)
end

function ActiveFamFightView:OnFlush()
	local boss_data = BossData.Instance
	local max_val = boss_data:GetActiveMaxValue()
	local angry_val = boss_data:GetActiveBossInfo()
	self.anger:SetValue(angry_val .. "/".. max_val)
	self.slider:SetValue(angry_val/max_val)
	if self.list_view.scroller.isActiveAndEnabled then
		self.list_view.scroller:ReloadData(0)
	end
	local kick_time = BossData.Instance:GetActiveKickTime()
	local time = kick_time - TimeCtrl.Instance:GetServerTime()
	if time > 0 then
		self.time_coundown = GlobalTimerQuest:AddTimesTimer(
			BindTool.Bind(self.OnBossUpdate, self), 1, time)
		self:OnBossUpdate()
	end
end

function ActiveFamFightView:OnBossUpdate()
	local kick_time = BossData.Instance:GetActiveKickTime()
	local time = math.max(0, kick_time - TimeCtrl.Instance:GetServerTime())
	if time > 0 then
		self.time:SetValue(string.format(Language.Common.DaBaoKickTime, TimeUtil.FormatSecond(time)))
	else
		GlobalTimerQuest:CancelQuest(self.time_coundown)
	end
end

function ActiveFamFightView:BagGetNumberOfCells()
	local data_list = self:GetDataList() or {}
	return #data_list
end

function ActiveFamFightView:BagRefreshCell(cell, data_index, cell_index)
	local item = self.item_t[cell]
	if nil == item then
		item = ActiveBossItem.New(cell.gameObject, self)
		self.item_t[cell] = item
	end

	local data_list = self:GetDataList() or {}
	if data_list[cell_index + 1] then
		item:SetData(data_list[cell_index + 1])
	end
	item:SetItemIndex(cell_index + 1)
	item:FlushHl()
end

function ActiveFamFightView:GetDataList()
	local scene_id = Scene.Instance:GetSceneId()
	return BossData.Instance:GetActiveBossList(scene_id)
end

function ActiveFamFightView:GetCurIndex()
	return self.cur_index
end

function ActiveFamFightView:SetCurIndex(index)
	self.cur_index = index
end

function ActiveFamFightView:FlushAllHl()
	for k,v in pairs(self.item_t) do
		v:FlushHl()
	end
end
----------------------------打宝bossItem
ActiveBossItem = ActiveBossItem or BaseClass(BaseRender)

function ActiveBossItem:__init(instance, parent)
	self.parent = parent
	self.desc = self:FindVariable("Desc")
	self.name = self:FindVariable("Name")
	self.time = self:FindVariable("Time")
	self.show_hl = self:FindVariable("show_hl")
	self.time_color = self:FindVariable("TimeColor")
	self.level_text = self:FindVariable("Level")
	self.index = 0
	self.next_refresh_time = 0
	self:ListenEvent("Click", BindTool.Bind(self.ClickKill, self))
end

function ActiveBossItem:__delete()
	if self.time_coundown then
		GlobalTimerQuest:CancelQuest(self.time_coundown)
		self.time_coundown = nil
	end
end

function ActiveBossItem:ClickKill(is_click)
	if self.data == nil then return end
	self.parent:SetCurIndex(self.index)
	GuajiCtrl.Instance:SetGuajiType(GuajiType.None)
	MoveCache.end_type = MoveEndType.Auto
	GuajiCtrl.Instance:MoveToPos(self.data.scene_id, self.data.born_x, self.data.born_y, 0, 0, nil, nil, true)
	self.parent:FlushAllHl()
	return
end

function ActiveBossItem:SetData(data)
	self.data = data
	self:Flush()
end

function ActiveBossItem:GetBossData(boss_id)
	local scene_id = Scene.Instance:GetSceneId()
	local boss_info = BossData.Instance:GetActiveBossList(scene_id)
	for k,v in pairs(boss_info) do
		if v.bossID == boss_id then
			return v
		end
	end
end

function ActiveBossItem:SetItemIndex(index)
	self.index = index
end

function ActiveBossItem:Flush()
	if nil == self.data then
		self.root_node:SetActive(false)
		return
	else
		self.root_node:SetActive(true)
	end
	local monster_cfg = ConfigManager.Instance:GetAutoConfig("monster_auto").monster_list[self.data.bossID]
	if monster_cfg then
		self.name:SetValue(monster_cfg.name)
		self.level_text:SetValue(monster_cfg.level)
	end

	local boss_data = self:GetBossData(self.data.bossID)
	if boss_data then
		self.flush_time = BossData.Instance:GetActiveStatusByBossId(self.data.bossID, self.data.scene_id)
		self.time_color:SetValue(self.flush_time <= 0 and TEXT_COLOR.GREEN_3 or "#ff0000ff")
		-- self.next_refresh_time = boss_data.next_refresh_time
		if self.flush_time <= 0 then
			self.time:SetValue(Language.Boss.CanKill)
		else
			self.time_coundown = GlobalTimerQuest:AddTimesTimer(
				BindTool.Bind(self.OnBossUpdate, self), 1, self.flush_time - TimeCtrl.Instance:GetServerTime())
			self:OnBossUpdate()
		end
	end
	local scene_cfg = ConfigManager.Instance:GetSceneConfig(self.data.scene_id)
	if scene_cfg then
		self.desc:SetValue(scene_cfg.name .. "(" .. self.data.born_x .. "," .. self.data.born_y .. ")")
	end
	self:FlushHl()
end

function ActiveBossItem:FlushHl()
	if self.show_hl then
		self.show_hl:SetValue(self.parent:GetCurIndex() == self.index)
	end
end

function ActiveBossItem:OnBossUpdate()
	local time = math.max(0, self.flush_time - TimeCtrl.Instance:GetServerTime())
	if time <= 0 then
		self.time:SetValue(ToColorStr(Language.Boss.CanKill, TEXT_COLOR.GREEN))
	else
		self.time:SetValue(ToColorStr(TimeUtil.FormatSecond(time), TEXT_COLOR.RED))
	end
end
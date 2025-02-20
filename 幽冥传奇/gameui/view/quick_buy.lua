
QuickBuy = QuickBuy or BaseClass(BaseView)

function QuickBuy:__init()
	self.texture_path_list[1] = 'res/xui/bag.png'
	self.config_tab = {
		{"itemtip_ui_cfg", 7, {0}}
	}
	self.item_id = nil
	self.item_cell = nil
	self.num_keyboard = nil
	self.item_count = 1

	self:SetIsAnyClickClose(true)
	self:SetModal(true)
	self.zorder = 99
end

function QuickBuy:__delete()
end

function QuickBuy:ReleaseCallBack()
	self.item_count = 1
	self.item_id = nil
	self.item_price_cfg = nil
	self.auto_use = nil

	if nil ~= self.item_cell then
		self.item_cell:DeleteMe()
		self.item_cell = nil
	end

	if nil ~= self.num_keyboard then
		self.num_keyboard:DeleteMe()
		self.num_keyboard = nil
	end
end

function QuickBuy:OpenCallBack()
	
end

function QuickBuy:CloseCallBack()
	self.item_count = 1
end

function QuickBuy:LoadCallBack()
	self:CreateItemCell()
	self:CreateKeyBoard()

	XUI.AddClickEventListener(self.node_t_list.img9_buy_num_bg.node, BindTool.Bind1(self.OnOpenPopNum, self), false)
	XUI.AddClickEventListener(self.node_t_list.btn_minus.node, BindTool.Bind2(self.OnClickChangeNum, self, -1))
	XUI.AddClickEventListener(self.node_t_list.btn_plus.node, BindTool.Bind2(self.OnClickChangeNum, self, 1))
	XUI.AddClickEventListener(self.node_t_list.btn_OK.node, BindTool.Bind1(self.OnClickBuy, self))
	XUI.AddClickEventListener(self.node_t_list.btn_cancel.node, BindTool.Bind1(self.OnClickCancel, self))
	XUI.AddClickEventListener(self.node_t_list.btn_max.node, BindTool.Bind(self.OnClickMax, self))
end

function QuickBuy:ShowIndexCallBack()
	self:Flush()
end

function QuickBuy:OnFlush(param_t, index)
	if param_t.param then
		self.item_id = tonumber(param_t.param[1])
	end
	
	if nil == self.item_id then
		Log("You need an item_id !!")
		return
	end

	self.item_price_cfg = ShopData.GetItemPriceCfg(self.item_id, param_t.param and param_t.param[2])
	if self.item_price_cfg == nil then
		return
	end

	local item_config = ItemData.Instance:GetItemConfig(self.item_id)
	if nil == item_config then
		return
	end

	local price_type = self.item_price_cfg.price[1].type
	self.node_t_list.img_cost_type.node:loadTexture(ShopData.GetMoneyTypeIcon(price_type))

	local item_data = {item_id = self.item_id, num = self.item_price_cfg.buyOnceCount, is_bind = self.item_price_cfg.price[1].bind and 1 or 0}
	self.item_cell:SetData(item_data)

	self.node_t_list.lbl_item_name.node:setString(item_config.name)
	self.node_t_list.lbl_item_name.node:setColor(Str2C3b(string.sub(string.format("%06x", item_config.color), 1, 6)))

	self:RefreshPurchaseView(self.item_count)
end

function QuickBuy:SetItemCount(count)
	self.item_count = count
end

function QuickBuy:SetItemId(item_id)
	self.item_id = item_id
	self:Flush()
end

--创建物品格子
function QuickBuy:CreateItemCell()
	if self.item_cell then return end

	local item_cell = BaseCell.New()
	item_cell:SetPosition(self.ph_list.ph_cell.x, self.ph_list.ph_cell.y)
	item_cell:SetCellBg(ResPath.GetCommon("cell_100"))
	item_cell:GetCell():setAnchorPoint(0.5, 0.5)
	item_cell:SetIsShowTips(true)
	self.node_t_list.layout_quick_buy.node:addChild(item_cell:GetCell(), 200, 200)
	self.item_cell = item_cell
end

--创建数字键盘
function QuickBuy:CreateKeyBoard()
	if self.num_keyboard then return end

	self.num_keyboard = NumKeypad.New()
	self.num_keyboard:SetOkCallBack(BindTool.Bind1(self.OnClickEnterNumber, self))
end

function QuickBuy:GetMaxBuyNum()
	if self.item_price_cfg == nil then
		return 1
	end

	local item_price = self.item_price_cfg.price[1].price
	local price_type = self.item_price_cfg.price[1].type
	local obj_attr_index = ShopData.GetMoneyObjAttrIndex(price_type)
	local role_money = RoleData.Instance:GetAttr(obj_attr_index)
	local enough_num = math.floor(role_money / item_price)

	return enough_num > 0 and enough_num or 1
end

function QuickBuy:OnOpenPopNum()
	if nil ~= self.num_keyboard then
		self.num_keyboard:Open()
		self.num_keyboard:SetText(self.item_count)
		self.num_keyboard:SetMaxValue(self:GetMaxBuyNum())
	end
end

function QuickBuy:OnClickMax()
	self:RefreshPurchaseView(self:GetMaxBuyNum())
end

function QuickBuy:OnClickChangeNum(change_num)
	local num = self.item_count + change_num
	
	if num < 1 then
		return
	end

	if num > self:GetMaxBuyNum() then
		SysMsgCtrl.Instance:FloatingTopRightText(Language.Common.MaxValue)
		return
	end

	self.item_count = num
	self:RefreshPurchaseView(self.item_count)
end

--刷新购买版界面
function QuickBuy:RefreshPurchaseView(item_count)
	if self.item_price_cfg == nil then
		return
	end

	local item_price = self.item_price_cfg.price[1].price
	self.node_t_list.lbl_num.node:setString(item_count)
	self.node_t_list.label_cost.node:setString(item_count * item_price)
	self.item_count = item_count
	if self.item_id == SettingData.DELIVERY_T[1] or self.item_id == SettingData.DELIVERY_T[2] then
		self.item_cell:SetRightBottomText(item_count * 50)
	end
end

--输入数字
function QuickBuy:OnClickEnterNumber(num)
	self:RefreshPurchaseView(num)
end

--点击购买
function QuickBuy:OnClickBuy()
	if self.item_price_cfg == nil then
		return
	end

	--有些物品不需要使用
	local need_auto_use = not ItemData.Instance:GetItemConfig(self.item_id).openUi
	ShopCtrl.BuyItemFromStore(self.item_price_cfg.id, self.item_count, self.item_id, (self.auto_use and need_auto_use) and 1 or 0)
	self.auto_use = nil
	self:Close()
end

function QuickBuy:OnClickCancel()
	self:Close()
end

-- 设置一次购买并使用
function QuickBuy:SetOnceAutoUse(auto_use)
	self.auto_use = auto_use and 1 or 0
end
GoddessShieldOptimize = GoddessShieldOptimize or BaseClass(BaseShieldOptimize)

function GoddessShieldOptimize:__init()
	self.max_appear_count = 10
	self.min_appear_count = 3
end

function GoddessShieldOptimize:__delete()

end

function GoddessShieldOptimize:GetAllObjIds()
	local all_objids = {}
	local appear_count = 0

	local role_list = Scene.Instance:GetRoleList()
	for _, v in pairs(role_list) do
		local is_visible = v:IsRoleVisible()
		all_objids[v:GetObjId()] = is_visible
		
		if is_visible then
			appear_count = appear_count + 1
		end
	end

	return all_objids, appear_count
end

function GoddessShieldOptimize:AppearObj(obj_id)
	local obj = Scene.Instance:GetObj(obj_id)
	if obj == nil or obj:GetType() ~= SceneObjType.Role then
		return false
	end

	if SettingData.Instance:GetSettingData(SETTING_TYPE.CLOSE_GODDESS) then -- 已经屏精灵
		return false
	end

	obj:SetBeautyVisible(not SettingData.Instance:IsShieldOtherRole(Scene.Instance:GetSceneId()))

	return true
end

function GoddessShieldOptimize:DisAppearObj(obj_id)
	local obj = Scene.Instance:GetObj(obj_id)
	if obj == nil or obj:GetType() ~= SceneObjType.Role then
		return false
	end

	if SettingData.Instance:GetSettingData(SETTING_TYPE.CLOSE_GODDESS) then -- 已经屏精灵
		return false
	end

	obj:SetBeautyVisible(false)

	return true
end

-- 技能 天龙马大招触发闪电
-- 技能ID 35071~75
-- 给自己上层BUFF,回点能量
--[[
	hunling 天龙马
	ID:2008
	psf 2019-6-14
]]--

local hl_tianlongma_dazhao_buff_trigger = {
    CLASS = "composite.QSBParallel",
    ARGS = {
		{
			CLASS = "action.QSBApplyBuff",
			OPTIONS = {buff_id = "hl_tianlongma_dazhao_buff_1"},
		},
		{
			CLASS = "action.QSBApplyBuff",
			OPTIONS = {buff_id = "hl_tianlongma_dazhao_rage_buff"},
		},
		{
			CLASS = "action.QSBAttackFinish",
		},
    },
}

return hl_tianlongma_dazhao_buff_trigger
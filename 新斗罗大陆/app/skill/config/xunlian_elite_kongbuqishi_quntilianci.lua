--枪骑兵群体连刺
--NPC ID: 10015 10016 10017
--技能ID: 50304
--蓄力,群体连刺
--[[-----------------------------------------
	不要轻易修改,有特殊需求,尽量复制一份使用.
	避免影响其他同原型NPC!!!
]]-------------------------------------------
--创建人：庞圣峰
--创建时间:2018-3-21

local npc_qiangqibing_quntilianci = {
    CLASS = "composite.QSBParallel",
    ARGS = {
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false},
        },
		{
			CLASS = "action.QSBPlaySound"
		},	
		{
			CLASS = "action.QSBPlayLoopEffect",
			OPTIONS = {effect_id = "yezhiqiu_attack11_1_2", is_hit_effect = false},
		},		
        {
             CLASS = "composite.QSBSequence",
             ARGS = {
                {
                    CLASS = "action.QSBPlayAnimation",
                    ARGS = {
                        {
                            CLASS = "composite.QSBParallel",
                            ARGS = {
                                {
                                    CLASS = "action.QSBPlayEffect",
                                    OPTIONS = {is_hit_effect = true },
                                },
                                {
                                    CLASS = "action.QSBPlayEffect",
                                    OPTIONS = {is_second_hit_effect = true},
                                },
                                {
                                    CLASS = "action.QSBHitTarget",
                                },
                            },
                        },
                    },
                },
				{
					CLASS = "action.QSBStopLoopEffect",
					OPTIONS = {effect_id = "yezhiqiu_attack11_1_2"},
				},	
                {
                    CLASS = "action.QSBAttackFinish"
                },
            },
        },
    },
}

return npc_qiangqibing_quntilianci


local ssqianshitangsan_pugong1 = 
{
    CLASS = "composite.QSBParallel",
    ARGS = 
    {   
        {
            CLASS = "action.QSBPlayGodSkillAnimation"
        },        
        {
            CLASS = "composite.QSBSequence",
            ARGS = 
            {
                {
                    CLASS = "action.QSBArgsIsUnderStatus",
                    OPTIONS = {is_attacker = true,status = "sspqianrenxue_sj4_jt1"},
                },
                {
                    CLASS = "composite.QSBSelector",
                    ARGS = 
                    {
                        {
                            CLASS = "composite.QSBSequence",
                            ARGS = 
                            {
                                {
                                    CLASS = "action.QSBRemoveBuff",
                                    OPTIONS = {is_target = false, buff_id = "pf2_sspqianrenxue_sj4_jt1",no_cancel = true},
                                },
                                {
                                    CLASS = "action.QSBApplyBuff",
                                    OPTIONS = {is_target = false, buff_id = "pf2_sspqianrenxue_sj4_jt2", no_cancel = true},
                                },
                            },
                        },
                        {
                            CLASS = "action.QSBAttackFinish",
                        },
                    },
                },
            },
        },
        {
            CLASS = "action.QSBAttackFinish",
        },
        {
            CLASS = "composite.QSBSequence",
            ARGS = 
            {
                {
                    CLASS = "action.QSBArgsFindTargets",
                    OPTIONS = {teammate = true},
                },
                {
                    CLASS = "action.QSBStrikeAgreement",
                    OPTIONS = {percent = 0.25,time = 10,hp_threshold = 0.05},
                },
            },
        }, 
        {
            CLASS = "action.QSBApplyBuff",
            OPTIONS = {buff_id = "pf2_sspqianrenxue_sj4_buff1",teammate_and_self = true},
        }, 
        {
            CLASS = "action.QSBApplyBuff",
            OPTIONS = {buff_id = "pf2_sspqianrenxue_sj4_buff2",teammate_and_self = true},
        },
        {
            CLASS = "action.QSBApplyBuff",
            OPTIONS = {buff_id = "pf2_sspqianrenxue_sj4_buff4",teammate_and_self = true},
        },
        {
            CLASS = "action.QSBApplyBuff",
            OPTIONS = {buff_id = "pf2_sspqianrenxue_sj4_debuff1",enemy = true},
        },
        {
            CLASS = "action.QSBApplyBuff",
            OPTIONS = {buff_id = "pf2_sspqianrenxue_sj4_js1",is_target = false},
        },       
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf2_sspqianrenxue_shenji_1"},
        }, 
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf2_sspqianrenxue_shenji_2"},
        },  
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf2_sspqianrenxue_shenji_3"},
        },
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf2_sspqianrenxue_attack11_6"},
        },                                                            
    },
}

return ssqianshitangsan_pugong1
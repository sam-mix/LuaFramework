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
                    OPTIONS = {is_attacker = true,status = "sspbosaixi_sj0_jt1"},
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
                                    OPTIONS = {is_target = false, buff_id = "pf02_sspbosaixi_sj0_jt1",no_cancel = true},
                                },
                                {
                                    CLASS = "action.QSBApplyBuff",
                                    OPTIONS = {is_target = false, buff_id = "pf02_sspbosaixi_sj0_jt2", no_cancel = true},
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
                    CLASS = "action.QSBDelayTime",
                    OPTIONS = {delay_frame = 30},
                },
                {
                    CLASS = "action.QSBJumpLaser",
                    OPTIONS = {effect_id = "pf02_sspbosaixi_sj_05", first_offset = {x = 100, y = 45 },hit_dummy = "dummy_center",attack_dummy = "dummy_body2", sort_layer_with_pos = true, --层级取目标
                    hit_effect_id = "pf02_sspbosaixi_sj_06",effect_width = 1300/2, jump_num = 20,move_time = 0.15,duration = 0.6,
                    apply_buffIds ={"sspbosaixi_sj0_debuff1","sspbosaixi_sj_jiance","pf02_sspbosaixi_sj0_debuff2"}},
                },
            },
        },        
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf02_sspbosaixi_sj_01"},
        }, 
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf02_sspbosaixi_sj_02"},
        },  
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf02_sspbosaixi_sj_03"},
        }, 
        {
            CLASS = "action.QSBPlayEffect",
            OPTIONS = {is_hit_effect = false, effect_id = "pf02_sspbosaixi_sj_04"},
        },                                                            
    },
}

return ssqianshitangsan_pugong1
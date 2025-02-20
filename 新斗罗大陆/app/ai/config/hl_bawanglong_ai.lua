
local hl_bawanglong_ai = {
    CLASS = "composite.QAISelector",
    ARGS = 
    {
		{
			CLASS = "composite.QAISequence",
            ARGS = 
            {
                {
                    CLASS = "action.QAIIsOutOfDistance",
					OPTIONS = {distance = 550},
                },
                {
                    CLASS = "action.QAIUseSkill",
                    OPTIONS = {skill_id = 31005}, --跳
                },
            },
        },
		{
            CLASS = "action.QAIElf",
        },
		{
			CLASS = "action.QAIAttackByStatus",
			OPTIONS = {status = "highest_rage"},
		},
        {
			CLASS = "composite.QAISelector",
            ARGS = 
            {
                {
                    CLASS = "action.QAIIsAttacking",
                },
                {
                    CLASS = "action.QAIBeatBack",
                },
                {
                    CLASS = "action.QAIAttackClosestEnemy",
                },
            },
        },

    },
}

return hl_bawanglong_ai
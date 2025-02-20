return {
{
	iconID = 22,
	desc = Lang.Skill.s22L1Desc,
	singTime = 0,
	cooldownTime = 6000,
	actions = {
            { act = 1, effect = 0, sound = 9, delay = 0, wait = 800 },
	},
	actRange = {
            {
            xStart = 0,
            xEnd = 0,
            yStart = 0,
            yEnd = 0,
            rangeType = 0,
            rangeCenter = 0,
            acts = {
                {
					targetType = 1,
                    conds = {
                    },
                    results = {
                    },
                    specialEffects={
                    { type = 4, mj = 0, id = 8, keepTime = 600, delay = 0, always = true },
                    },
                },
            },
            },
            {
            xStart = -1,
            xEnd = 1,
            yStart = -1,
            yEnd = 1,
            rangeType = 3,
            rangeCenter = 0,
            acts = {
                {
                    conds = {
                    { cond = 13, value = 1, },
                    },
                    results = {
                    { mj = 0, timeParam = 1, type = 3, delay = 200, rate = 15000, value = 0 },
                    { mj = 0, timeParam = 30, type = 1, id = 499, rate = -900, rateType = 2, delay = 200 },
                    },
                    specialEffects={
                    },
                },
            },
            },
	},
	trainConds = {
	},
	spellConds = {
            { cond = 13, value = 6, consume = false },
	},
},
}
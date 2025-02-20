module(...)
--dialogueani editor build
DATA={
	[1]={
		cmdList={
			[1]={
				args={
					[1]={[1]=[[我]],},
					[2]={[1]=0,},
					[3]={[1]=17.8,[2]=9.3,},
					[4]={[1]=150,},
					[5]={[1]=1,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[2]={
				args={
					[1]={[1]=[[白无常]],},
					[2]={[1]=504,},
					[3]={[1]=20.1,[2]=8.3,},
					[4]={[1]=-40,},
					[5]={[1]=2,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[3]={
				args={
					[1]={[1]=[[黑无常]],},
					[2]={[1]=503,},
					[3]={[1]=21.3,[2]=7.2,},
					[4]={[1]=-40,},
					[5]={[1]=3,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[4]={
				args={
					[1]={[1]=1,},
					[2]={[1]=1,},
					[3]={[1]=1,},
					[4]={[1]=[[none]],},
					[5]={[1]=0,},
					[6]={[1]=0,},
					[7]={[1]=[[none]],},
					[8]={[1]=[[none]],},
				},
				cmdType=[[setting]],
				func=[[SetDialogueAniViewActive]],
				name=[[显示剧情界面]],
			},
			[5]={
				args={[1]={[1]=[[bgm_1010]],},[2]={[1]=0,},},
				cmdType=[[setting]],
				func=[[SetBgMusic]],
				name=[[背景音乐]],
			},
			[6]={
				args={[1]={[1]=2,},},
				cmdType=[[setting]],
				func=[[SetCameraFollow]],
				name=[[镜头跟随]],
			},
		},
		delay=1,
		idx=1,
		startTime=0,
		type=[[player]],
	},
	[2]={
		cmdList={
			[1]={
				args={
					[1]={[1]=2,[2]=[[白无常]],},
					[2]={
						[1]=[[我们只想确定一下，继续捂着藏着你就要倒~大~霉~了。]],
					},
					[3]={[1]=5,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[白无常]],},[2]={[1]=[[idleWar]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
			[3]={
				args={
					[1]={[1]=[[判官]],},
					[2]={[1]=509,},
					[3]={[1]=19,[2]=8.9,},
					[4]={[1]=-133,},
					[5]={[1]=4,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[4]={
				args={[1]={[1]=4,[2]=[[判官]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
		},
		delay=5,
		idx=2,
		startTime=1,
		type=[[player]],
	},
	[3]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[判官]],},
					[2]={[1]=[[新历X年，鬼差白和活人在冥界打架，扣薪一个月……]],},
					[3]={[1]=3,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={
					[1]={[1]=4,[2]=[[判官]],},
					[2]={[1]=[[ui_eff_story_01]],},
					[3]={[1]=0,[2]=0,[3]=0,},
					[4]={[1]=0,[2]=0,[3]=0,},
					[5]={[1]=10,},
				},
				cmdType=[[player]],
				func=[[PlayerDoEffect]],
				name=[[人物特效]],
			},
			[3]={
				args={[1]={[1]=4,[2]=[[判官]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[4]={
				args={[1]={[1]=4,[2]=[[判官]],},[2]={[1]=[[idleCity]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=3,
		idx=3,
		startTime=6,
		type=[[player]],
	},
	[4]={
		cmdList={
			[1]={
				args={
					[1]={[1]=2,[2]=[[白无常]],},
					[2]={[1]=[[老大。一个月有点过了吧。]],},
					[3]={[1]=2,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[白无常]],},[2]={[1]=[[idleCity]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=2,
		idx=4,
		startTime=9,
		type=[[player]],
	},
	[5]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[判官]],},
					[2]={[1]=[[两个月。]],},
					[3]={[1]=2,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=4,[2]=[[判官]],},[2]={[1]=133,},},
				cmdType=[[player]],
				func=[[SetPlayerFaceTo]],
				name=[[设置人物朝向]],
			},
		},
		delay=2,
		idx=5,
		startTime=11,
		type=[[player]],
	},
	[6]={
		cmdList={
			[1]={
				args={
					[1]={[1]=2,[2]=[[白无常]],},
					[2]={[1]=[[当我没说话谢谢。]],},
					[3]={[1]=2,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=2,
		idx=6,
		startTime=13,
		type=[[player]],
	},
	[7]={
		cmdList={
			[1]={
				args={
					[1]={[1]=1,[2]=[[我]],},
					[2]={[1]=[[你是……？]],},
					[3]={[1]=2,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={
					[1]={[1]=[[奉主夜鹤]],},
					[2]={[1]=510,},
					[3]={[1]=16,[2]=12.3,},
					[4]={[1]=173,},
					[5]={[1]=5,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[3]={
				args={[1]={[1]=5,[2]=[[奉主夜鹤]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
		},
		delay=2,
		idx=7,
		startTime=15,
		type=[[player]],
	},
	[8]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[奉主夜鹤]],},
					[2]={[1]=[[ui_eff_story_04_smoke]],},
					[3]={[1]=0,[2]=0,[3]=0,},
					[4]={[1]=0,[2]=0,[3]=0,},
					[5]={[1]=10,},
				},
				cmdType=[[player]],
				func=[[PlayerDoEffect]],
				name=[[人物特效]],
			},
			[2]={
				args={[1]={[1]=5,[2]=[[奉主夜鹤]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[3]={
				args={[1]={[1]=5,[2]=[[奉主夜鹤]],},[2]={[1]=[[attack2]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
			[4]={
				args={[1]={[1]=5,},},
				cmdType=[[setting]],
				func=[[SetCameraFollow]],
				name=[[镜头跟随]],
			},
			[5]={
				args={[1]={[1]=2,[2]=[[白无常]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[6]={
				args={[1]={[1]=3,[2]=[[黑无常]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[7]={
				args={[1]={[1]=4,[2]=[[判官]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[8]={
				args={
					[1]={[1]=5,[2]=[[奉主夜鹤]],},
					[2]={
						[1]=[[命运之子。欢迎来到冥界，我是冥界的管理者，奉主夜鹤。]],
					},
					[3]={[1]=4,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=4,
		idx=8,
		startTime=17,
		type=[[player]],
	},
	[9]={
		cmdList={
			[1]={
				args={[1]={[1]=1,[2]=[[我]],},[2]={[1]=16,[2]=10.8,},[3]={[1]=-22,},},
				cmdType=[[player]],
				func=[[PlayerRunto]],
				name=[[人物移动]],
			},
			[2]={
				args={
					[1]={[1]=[[判官]],},
					[2]={[1]=509,},
					[3]={[1]=14.7,[2]=12.8,},
					[4]={[1]=158,},
					[5]={[1]=6,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[3]={
				args={
					[1]={[1]=[[黑无常]],},
					[2]={[1]=503,},
					[3]={[1]=17.2,[2]=11.5,},
					[4]={[1]=-66,},
					[5]={[1]=7,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[4]={
				args={
					[1]={[1]=[[白无常]],},
					[2]={[1]=504,},
					[3]={[1]=14.5,[2]=11.3,},
					[4]={[1]=18,},
					[5]={[1]=8,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
		},
		delay=4,
		idx=9,
		startTime=21,
		type=[[player]],
	},
	[10]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[判官]],},
					[2]={[1]=[[我是奉主高级秘书——判官。]],},
					[3]={[1]=2,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=2,
		idx=10,
		startTime=25,
		type=[[player]],
	},
	[11]={
		cmdList={
			[1]={
				args={
					[1]={[1]=1,[2]=[[我]],},
					[2]={[1]=[[管理者？]],},
					[3]={[1]=2,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=1,[2]=[[我]],},[2]={[1]=[[idleWar]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=2,
		idx=11,
		startTime=27,
		type=[[player]],
	},
	[12]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[奉主夜鹤]],},
					[2]={
						[1]=[[黑，藐视冥界规定插手人间因果的鬼差应该怎么处罚？]],
					},
					[3]={[1]=4,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=5,[2]=[[奉主夜鹤]],},[2]={[1]=138,},},
				cmdType=[[player]],
				func=[[SetPlayerFaceTo]],
				name=[[设置人物朝向]],
			},
		},
		delay=4,
		idx=12,
		startTime=29,
		type=[[player]],
	},
	[13]={
		cmdList={
			[1]={
				args={
					[1]={[1]=8,[2]=[[白无常]],},
					[2]={[1]=[[与黑无关，是我的意思。罚多少年的薪水都可以。]],},
					[3]={[1]=3,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=8,[2]=[[白无常]],},[2]={[1]=15,[2]=11.8,},[3]={[1]=18,},},
				cmdType=[[player]],
				func=[[PlayerRunto]],
				name=[[人物移动]],
			},
		},
		delay=3,
		idx=13,
		startTime=33,
		type=[[player]],
	},
	[14]={
		cmdList={
			[1]={
				args={
					[1]={[1]=7,[2]=[[黑无常]],},
					[2]={[1]=[[应该除去鬼差的职位。]],},
					[3]={[1]=2,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=2,
		idx=14,
		startTime=36,
		type=[[player]],
	},
	[15]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[奉主夜鹤]],},
					[2]={[1]=[[嗯。把活人带进冥界又应该怎么处罚？]],},
					[3]={[1]=3,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=3,
		idx=15,
		startTime=38,
		type=[[player]],
	},
	[16]={
		cmdList={
			[1]={
				args={
					[1]={[1]=8,[2]=[[白无常]],},
					[2]={[1]=[[是我的锅，跟小黑没有关系……！]],},
					[3]={[1]=3,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=3,
		idx=16,
		startTime=41,
		type=[[player]],
	},
	[17]={
		cmdList={
			[1]={
				args={
					[1]={[1]=7,[2]=[[黑无常]],},
					[2]={[1]=[[闭嘴！应该关进拘魂院300年。]],},
					[3]={[1]=3,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=7,[2]=[[黑无常]],},[2]={[1]=16.6,[2]=11.7,},[3]={[1]=-58,},},
				cmdType=[[player]],
				func=[[PlayerRunto]],
				name=[[人物移动]],
			},
		},
		delay=3,
		idx=17,
		startTime=44,
		type=[[player]],
	},
	[18]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[奉主夜鹤]],},
					[2]={
						[1]=[[同时犯了两条规定的鬼差，从未有过先例啊。判官怎么看？]],
					},
					[3]={[1]=4,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=4,
		idx=18,
		startTime=47,
		type=[[player]],
	},
	[19]={
		cmdList={
			[1]={
				args={
					[1]={[1]=6,[2]=[[判官]],},
					[2]={[1]=[[建议理清前因后果再做判断。]],},
					[3]={[1]=2,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=4,[2]=[[判官]],},[2]={[1]=[[idleWar]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=2,
		idx=19,
		startTime=51,
		type=[[player]],
	},
	[20]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[奉主夜鹤]],},
					[2]={[1]=[[是呢。那让我们先取证。]],},
					[3]={[1]=3,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[0]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=5,[2]=[[奉主夜鹤]],},[2]={[1]=[[attack1]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=3,
		idx=20,
		startTime=53,
		type=[[player]],
	},
}

CONFIG={
	isLoop=0,
	isStroy=1,
	isTrigger=0,
	loopTime=0,
	mapInfo=[[]],
	minTriggerLevel=1,
	name=[[剧场动画名_10512]],
}

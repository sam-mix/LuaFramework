module(...)
--dialogueani editor build
DATA={
	[1]={
		cmdList={
			[1]={
				args={
					[1]={[1]=[[黑]],},
					[2]={[1]=800,},
					[3]={[1]=7.7,[2]=22.7,},
					[4]={[1]=-16,},
					[5]={[1]=1,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[2]={
				args={
					[1]={[1]=[[白]],},
					[2]={[1]=801,},
					[3]={[1]=8.8,[2]=23.3,},
					[4]={[1]=-65,},
					[5]={[1]=2,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[3]={
				args={
					[1]={[1]=[[判官]],},
					[2]={[1]=509,},
					[3]={[1]=7,[2]=24.2,},
					[4]={[1]=140,},
					[5]={[1]=3,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[4]={
				args={[1]={[1]=3,},},
				cmdType=[[setting]],
				func=[[SetCameraFollow]],
				name=[[镜头跟随]],
			},
			[5]={
				args={[1]={[1]=[[bgm_1010]],},[2]={[1]=0,},},
				cmdType=[[setting]],
				func=[[SetBgMusic]],
				name=[[背景音乐]],
			},
			[6]={
				args={[1]={[1]=3,[2]=[[判官]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
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
					[1]={[1]=3,[2]=[[判官]],},
					[2]={[1]=[[ui_eff_story_04_smoke]],},
					[3]={[1]=0,[2]=0,[3]=0,},
					[4]={[1]=0,[2]=0,[3]=0,},
					[5]={[1]=10,},
				},
				cmdType=[[player]],
				func=[[PlayerDoEffect]],
				name=[[人物特效]],
			},
		},
		delay=0.5,
		idx=2,
		startTime=1,
		type=[[player]],
	},
	[3]={
		cmdList={
			[1]={
				args={[1]={[1]=3,[2]=[[判官]],},[2]={[1]=[[show]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
			[2]={
				args={[1]={[1]=3,[2]=[[判官]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
		},
		delay=2,
		idx=3,
		startTime=1.5,
		type=[[player]],
	},
	[4]={
		cmdList={
			[1]={
				args={[1]={[1]=1,},[2]={[1]=1,},[3]={[1]=1,},[4]={[1]=[[none]],},},
				cmdType=[[setting]],
				func=[[SetDialogueAniViewActive]],
				name=[[显示剧情界面]],
			},
			[2]={
				args={
					[1]={[1]=3,[2]=[[判官]],},
					[2]={[1]=[[确定是命运之子？]],},
					[3]={[1]=3,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002601]],},
					[9]={[1]=1,},
					[10]={[1]=[[idle]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=3,
		idx=4,
		startTime=3.5,
		type=[[player]],
	},
	[5]={
		cmdList={
			[1]={
				args={
					[1]={[1]=1,[2]=[[黑]],},
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
				args={
					[1]={[1]=2,[2]=[[白]],},
					[2]={[1]=[[ui_eff_story_04_smoke]],},
					[3]={[1]=0,[2]=0,[3]=0,},
					[4]={[1]=0,[2]=0,[3]=0,},
					[5]={[1]=10,},
				},
				cmdType=[[player]],
				func=[[PlayerDoEffect]],
				name=[[人物特效]],
			},
			[3]={
				args={[1]={[1]=1,[2]=[[黑]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[4]={
				args={[1]={[1]=2,[2]=[[白]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[5]={
				args={
					[1]={[1]=[[黑]],},
					[2]={[1]=503,},
					[3]={[1]=7.7,[2]=22.7,},
					[4]={[1]=-16,},
					[5]={[1]=4,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
			[6]={
				args={
					[1]={[1]=[[白]],},
					[2]={[1]=504,},
					[3]={[1]=8.8,[2]=23.3,},
					[4]={[1]=-65,},
					[5]={[1]=5,},
					[6]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[AddPlayer]],
				name=[[生成人物]],
			},
		},
		delay=0.5,
		idx=5,
		startTime=6.5,
		type=[[player]],
	},
	[6]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[白无常]],},
					[2]={[1]=[[他身上有一股上古妖族的气息，应该不会错。]],},
					[3]={[1]=8,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002602]],},
					[9]={[1]=1,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[白]],},[2]={[1]=[[idleWar]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=8,
		idx=6,
		startTime=7,
		type=[[player]],
	},
	[7]={
		cmdList={
			[1]={
				args={
					[1]={[1]=3,[2]=[[判官]],},
					[2]={[1]=[[后面还有什么部署？]],},
					[3]={[1]=3,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002603]],},
					[9]={[1]=1,},
					[10]={[1]=[[idle]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=3,
		idx=7,
		startTime=15,
		type=[[player]],
	},
	[8]={
		cmdList={
			[1]={
				args={
					[1]={[1]=5,[2]=[[白无常]],},
					[2]={
						[1]=[[他既然来帝都参加比赛，无非就是想查出过去的渊源。我和黑打算给予他一些引导，至少保证能不让敌人下手。]],
					},
					[3]={[1]=19,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002604]],},
					[9]={[1]=1,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[白]],},[2]={[1]=[[idleCity]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=19,
		idx=8,
		startTime=18,
		type=[[player]],
	},
	[9]={
		cmdList={
			[1]={
				args={
					[1]={[1]=3,[2]=[[判官]],},
					[2]={
						[1]=[[不。冥界不会过多的干预活人的世界，我们是见证者。如果命运的终结就是秩序的消亡，那也只是证明新世界的到来罢了。]],
					},
					[3]={[1]=20,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002605]],},
					[9]={[1]=0,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=20,
		idx=9,
		startTime=37,
		type=[[player]],
	},
	[10]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[黑无常]],},
					[2]={[1]=[[明白。]],},
					[3]={[1]=4,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002606]],},
					[9]={[1]=1,},
					[10]={[1]=[[default]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=3,[2]=[[判官]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
		},
		delay=4,
		idx=10,
		startTime=57,
		type=[[player]],
	},
	[11]={
		cmdList={
			[1]={
				args={[1]={[1]=4,[2]=[[黑无常]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[2]={
				args={[1]={[1]=5,[2]=[[白无常]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[3]={
				args={[1]={[1]=1,[2]=[[黑]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[4]={
				args={[1]={[1]=2,[2]=[[白]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetPlayerActive]],
				name=[[设置人物是否可见]],
			},
			[5]={
				args={
					[1]={[1]=1,[2]=[[黑]],},
					[2]={[1]=[[ui_eff_story_04_smoke]],},
					[3]={[1]=0,[2]=0,[3]=0,},
					[4]={[1]=0,[2]=0,[3]=0,},
					[5]={[1]=10,},
				},
				cmdType=[[player]],
				func=[[PlayerDoEffect]],
				name=[[人物特效]],
			},
			[6]={
				args={
					[1]={[1]=2,[2]=[[白]],},
					[2]={[1]=[[ui_eff_story_04_smoke]],},
					[3]={[1]=0,[2]=0,[3]=0,},
					[4]={[1]=0,[2]=0,[3]=0,},
					[5]={[1]=10,},
				},
				cmdType=[[player]],
				func=[[PlayerDoEffect]],
				name=[[人物特效]],
			},
		},
		delay=1,
		idx=11,
		startTime=61,
		type=[[player]],
	},
	[12]={
		cmdList={
			[1]={
				args={[1]={[1]=2,[2]=[[白]],},[2]={[1]=-120,},},
				cmdType=[[player]],
				func=[[SetPlayerFaceTo]],
				name=[[设置人物朝向]],
			},
			[2]={
				args={
					[1]={[1]=2,[2]=[[白]],},
					[2]={
						[1]=[[老大嘴上说不重要，其实心里着急得很，看来以后我们有的忙了。]],
					},
					[3]={[1]=15,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002607]],},
					[9]={[1]=1,},
					[10]={[1]=[[idle]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=15,
		idx=12,
		startTime=62,
		type=[[player]],
	},
	[13]={
		cmdList={
			[1]={
				args={
					[1]={[1]=1,[2]=[[黑]],},
					[2]={
						[1]=[[即使冥界出手，也是命运的选择。我们都在轮回之中，没人能够独善其身。]],
					},
					[3]={[1]=15,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002608]],},
					[9]={[1]=1,},
					[10]={[1]=[[serious]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=1,[2]=[[黑]],},[2]={[1]=35,},},
				cmdType=[[player]],
				func=[[SetPlayerFaceTo]],
				name=[[设置人物朝向]],
			},
		},
		delay=15,
		idx=13,
		startTime=77,
		type=[[player]],
	},
	[14]={
		cmdList={
			[1]={
				args={
					[1]={[1]=2,[2]=[[白]],},
					[2]={
						[1]=[[既然这样，就让我来推他一把。哎呀呀~未来的发展真让人期待呢，你说是吧小黑。]],
					},
					[3]={[1]=15,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002609]],},
					[9]={[1]=1,},
					[10]={[1]=[[idle]],},
					[11]={[1]=0,},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=15,
		idx=14,
		startTime=92,
		type=[[player]],
	},
	[15]={
		cmdList={
			[1]={
				args={
					[1]={[1]=1,[2]=[[黑]],},
					[2]={[1]=[[闭嘴。在这里叫我黑大人！]],},
					[3]={[1]=5,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002610]],},
					[9]={[1]=1,},
					[10]={[1]=[[serious]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
			[2]={
				args={[1]={[1]=1,[2]=[[黑]],},[2]={[1]=[[idleWar]],},},
				cmdType=[[player]],
				func=[[PlayerDoAction]],
				name=[[人物动作]],
			},
		},
		delay=5,
		idx=15,
		startTime=107,
		type=[[player]],
	},
	[16]={
		cmdList={
			[1]={
				args={
					[1]={[1]=2,[2]=[[白]],},
					[2]={[1]=[[是是是，女王大人。]],},
					[3]={[1]=4,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=0,},
					[7]={[1]=1,},
					[8]={[1]=[[1002611]],},
					[9]={[1]=1,},
					[10]={[1]=[[idle]],},
				},
				cmdType=[[player]],
				func=[[PlayerUISay]],
				name=[[剧场界面说话]],
			},
		},
		delay=4,
		idx=16,
		startTime=112,
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
	name=[[剧场动画名_10505]],
}

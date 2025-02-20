module(...)
--dialogueani editor build
DATA={
	[1]={
		cmdList={
			[1]={
				args={[1]={[1]=[[bgm_6000]],},[2]={[1]=1,},},
				cmdType=[[setting]],
				func=[[SetBgMusic]],
				name=[[背景音乐]],
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
					[1]={[1]=[[观绪]],},
					[2]={[1]=416,},
					[3]={[1]=-270,[2]=-140,},
					[4]={[1]=1,},
					[5]={[1]=1,},
					[6]={[1]=1,},
					[7]={[1]=[[fadein]],},
					[8]={[1]=10,},
					[9]={[1]=1,[2]=0,},
				},
				cmdType=[[player]],
				func=[[AddLayerAniPlayer]],
				name=[[生成界面人物]],
			},
			[2]={
				args={
					[1]={[1]=[[青竹]],},
					[2]={[1]=410,},
					[3]={[1]=-400,[2]=-40,},
					[4]={[1]=1,},
					[5]={[1]=0,},
					[6]={[1]=2,},
					[7]={[1]=[[fadein]],},
					[8]={[1]=10,},
					[9]={[1]=1,[2]=0,},
				},
				cmdType=[[player]],
				func=[[AddLayerAniPlayer]],
				name=[[生成界面人物]],
			},
			[3]={
				args={
					[1]={[1]=[[稻荷]],},
					[2]={[1]=402,},
					[3]={[1]=-270,[2]=-140,},
					[4]={[1]=1,},
					[5]={[1]=0,},
					[6]={[1]=3,},
					[7]={[1]=[[fadein]],},
					[8]={[1]=10,},
					[9]={[1]=1,[2]=0,},
				},
				cmdType=[[player]],
				func=[[AddLayerAniPlayer]],
				name=[[生成界面人物]],
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
				args={[1]={[1]=1,[2]=[[熊猫爷爷]],},[2]={[1]=0,},[3]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[6]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=0,},[3]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[7]={
				args={[1]={[1]=3,[2]=[[执阳]],},[2]={[1]=0,},[3]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
		},
		delay=0.2,
		idx=2,
		startTime=1,
		type=[[player]],
	},
	[3]={
		cmdList={
			[1]={
				args={
					[1]={[1]=1,[2]=[[熊猫爷爷]],},
					[2]={[1]=1,},
					[3]={[1]=0,[2]=180,},
					[4]={[1]=1,},
					[5]={[1]=1.6,},
				},
				cmdType=[[player]],
				func=[[LayerAniCameraScale]],
				name=[[界面镜头缩放]],
			},
		},
		delay=0.8,
		idx=3,
		startTime=1.2,
		type=[[player]],
	},
	[4]={
		cmdList={
			[1]={
				args={
					[1]={[1]=[[蓝蓝]],},
					[2]={[1]=414,},
					[3]={[1]=140,[2]=0,},
					[4]={[1]=0,},
					[5]={[1]=1,},
					[6]={[1]=4,},
					[7]={[1]=[[rotation]],},
					[8]={[1]=10,},
					[9]={[1]=1,[2]=0,},
				},
				cmdType=[[player]],
				func=[[AddLayerAniPlayer]],
				name=[[生成界面人物]],
			},
		},
		delay=2,
		idx=4,
		startTime=2,
		type=[[player]],
	},
	[5]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[蓝堂昼]],},
					[2]={[1]=[[众后辈们，齐来迎接王的回归！]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=3,
		idx=5,
		startTime=4,
		type=[[player]],
	},
	[6]={
		cmdList={
			[1]={
				args={[1]={[1]=1,[2]=[[熊猫爷爷]],},[2]={[1]=1,},[3]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=1,},[3]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[3]={
				args={
					[1]={[1]=[[废弃]],},
					[2]={[1]=409,},
					[3]={[1]=400,[2]=-60,},
					[4]={[1]=0,},
					[5]={[1]=0,},
					[6]={[1]=5,},
					[7]={[1]=[[rotation]],},
					[8]={[1]=10,},
					[9]={[1]=1,[2]=0,},
				},
				cmdType=[[player]],
				func=[[AddLayerAniPlayer]],
				name=[[生成界面人物]],
			},
			[4]={
				args={[1]={[1]=5,[2]=[[犬妖]],},[2]={[1]=0,},[3]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
		},
		delay=1,
		idx=6,
		startTime=7,
		type=[[player]],
	},
	[7]={
		cmdList={
			[1]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=-170,[2]=-10,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerRunto]],
				name=[[人物移动]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=-300,[2]=-10,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerRunto]],
				name=[[人物移动]],
			},
			[3]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerDepth]],
				name=[[设置界面人物层级]],
			},
			[4]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=2,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerDepth]],
				name=[[设置界面人物层级]],
			},
			[5]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=[[mengbi]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
			[6]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=[[mengbi]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
		},
		delay=3,
		idx=7,
		startTime=8,
		type=[[player]],
	},
	[8]={
		cmdList={
			[1]={
				args={[1]={[1]=4,[2]=[[蓝堂昼]],},[2]={[1]=[[恭迎吾王！]],},[3]={[1]=2,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
			[2]={
				args={[1]={[1]=4,[2]=[[蓝蓝]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerFaceTo]],
				name=[[设置界面人物朝向]],
			},
		},
		delay=2,
		idx=8,
		startTime=11,
		type=[[player]],
	},
	[9]={
		cmdList={
			[1]={
				args={
					[1]={[1]=[[鸦]],},
					[2]={[1]=1511,},
					[3]={[1]=300,[2]=-30,},
					[4]={[1]=0,},
					[5]={[1]=0,},
					[6]={[1]=6,},
					[7]={[1]=[[rotation]],},
					[8]={[1]=10,},
					[9]={[1]=1,[2]=0,},
				},
				cmdType=[[player]],
				func=[[AddLayerAniPlayer]],
				name=[[生成界面人物]],
			},
		},
		delay=2,
		idx=9,
		startTime=13,
		type=[[player]],
	},
	[10]={
		cmdList={
			[1]={
				args={
					[1]={[1]=6,[2]=[[鸦]],},
					[2]={[1]=[[由此吾便接管妖族，带领大家打败人族！]],},
					[3]={[1]=4,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=4,
		idx=10,
		startTime=15,
		type=[[player]],
	},
	[11]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[蓝蓝]],},
					[2]={[1]=[[咳此处应有掌声！]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
			[2]={
				args={[1]={[1]=4,[2]=[[蓝蓝]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerFaceTo]],
				name=[[设置界面人物朝向]],
			},
		},
		delay=3,
		idx=11,
		startTime=19,
		type=[[player]],
	},
	[12]={
		cmdList={
			[1]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerFaceTo]],
				name=[[设置界面人物朝向]],
			},
			[2]={
				args={
					[1]={[1]=1,[2]=[[观绪]],},
					[2]={[1]=[[哇哦！我遇到活的中二病！]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=3,
		idx=12,
		startTime=22,
		type=[[player]],
	},
	[13]={
		cmdList={
			[1]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=[[wuyu2]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
		},
		delay=3,
		idx=13,
		startTime=25,
		type=[[player]],
	},
	[14]={
		cmdList={
			[1]={
				args={[1]={[1]=3,[2]=[[稻荷]],},[2]={[1]=-10,[2]=0,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerRunto]],
				name=[[人物移动]],
			},
			[2]={
				args={[1]={[1]=3,[2]=[[稻荷]],},[2]={[1]=3,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerDepth]],
				name=[[设置界面人物层级]],
			},
			[3]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=2,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerDepth]],
				name=[[设置界面人物层级]],
			},
			[4]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerDepth]],
				name=[[设置界面人物层级]],
			},
			[5]={
				args={[1]={[1]=3,[2]=[[稻荷]],},[2]={[1]=1,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[6]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerFaceTo]],
				name=[[设置界面人物朝向]],
			},
		},
		delay=3,
		idx=14,
		startTime=28,
		type=[[player]],
	},
	[15]={
		cmdList={
			[1]={
				args={
					[1]={[1]=3,[2]=[[稻荷]],},
					[2]={[1]=[[统帅部规定新人先做身份登记。姓名？]],},
					[3]={[1]=4,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
			[2]={
				args={[1]={[1]=4,[2]=[[蓝蓝]],},[2]={[1]=0,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerFaceTo]],
				name=[[设置界面人物朝向]],
			},
		},
		delay=4,
		idx=15,
		startTime=31,
		type=[[player]],
	},
	[16]={
		cmdList={
			[1]={
				args={[1]={[1]=4,[2]=[[蓝蓝]],},[2]={[1]=[[tiaodong]],},[3]={[1]=[[none]],},},
				cmdType=[[player]],
				func=[[LayerAniPlayerDoAction]],
				name=[[界面人物动作]],
			},
			[2]={
				args={[1]={[1]=4,[2]=[[蓝蓝]],},[2]={[1]=[[shengqi]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
		},
		delay=3,
		idx=16,
		startTime=35,
		type=[[player]],
	},
	[17]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[蓝蓝]],},
					[2]={[1]=[[见到上古妖王竟然如此无礼！]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=3,
		idx=17,
		startTime=38,
		type=[[player]],
	},
	[18]={
		cmdList={
			[1]={
				args={
					[1]={[1]=3,[2]=[[稻荷]],},
					[2]={[1]=[[帝国内妖妖平等，姓名！]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=4,
		idx=18,
		startTime=41,
		type=[[player]],
	},
	[19]={
		cmdList={
			[1]={
				args={[1]={[1]=6,[2]=[[鸦]],},[2]={[1]=[[dian]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
		},
		delay=3,
		idx=19,
		startTime=45,
		type=[[player]],
	},
	[20]={
		cmdList={
			[1]={
				args={
					[1]={[1]=6,[2]=[[鸦]],},
					[2]={[1]=[[吾为上古妖王，名讳为鸦。]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=3,
		idx=20,
		startTime=48,
		type=[[player]],
	},
	[21]={
		cmdList={
			[1]={
				args={
					[1]={[1]=3,[2]=[[稻荷]],},
					[2]={[1]=[[上古·鸦？名字真洋气，下一位！]],},
					[3]={[1]=3,},
				},
				cmdType=[[player]],
				func=[[LayerAniPlayerSay]],
				name=[[界面人物冒泡说话]],
			},
		},
		delay=3,
		idx=21,
		startTime=51,
		type=[[player]],
	},
	[22]={
		cmdList={
			[1]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=[[wuyu3]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
			[2]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=[[wuyu3]],},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[LayerAniPlayerShowSocialEmoji]],
				name=[[界面社交表情]],
			},
		},
		delay=3,
		idx=22,
		startTime=54,
		type=[[player]],
	},
	[23]={
		cmdList={
			[1]={
				args={
					[1]={[1]=4,[2]=[[蓝蓝]],},
					[2]={[1]=0,},
					[3]={[1]=0,[2]=0,},
					[4]={[1]=1,},
					[5]={[1]=1.7,},
				},
				cmdType=[[player]],
				func=[[LayerAniCameraScale]],
				name=[[界面镜头缩放]],
			},
			[2]={
				args={[1]={[1]=1,[2]=[[观绪]],},[2]={[1]=0,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[3]={
				args={[1]={[1]=2,[2]=[[青竹]],},[2]={[1]=0,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[4]={
				args={[1]={[1]=3,[2]=[[稻荷]],},[2]={[1]=0,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[5]={
				args={[1]={[1]=4,[2]=[[蓝蓝]],},[2]={[1]=0,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
			[6]={
				args={[1]={[1]=6,[2]=[[鸦]],},[2]={[1]=0,},[3]={[1]=1,},},
				cmdType=[[player]],
				func=[[SetLayerAniPlayerActive]],
				name=[[设置界面人物是否可见]],
			},
		},
		delay=1,
		idx=23,
		startTime=57,
		type=[[player]],
	},
	[24]={cmdList={},delay=1,idx=24,startTime=58,type=[[player]],},
}

CONFIG={
	isLoop=0,
	isStroy=3,
	isTrigger=0,
	loopTime=0,
	mapInfo=[[3015]],
	minTriggerLevel=1,
	name=[[剧场动画名_3015]],
}

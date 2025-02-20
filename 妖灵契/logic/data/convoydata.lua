module(...)
--auto generate data
DATA={
	[1]={
		config={
			[1]={convoy_pool=1,init_weight=35,level=1,rewarid=1001,weight=0,},
			[2]={
				convoy_pool=2,
				init_weight=45,
				level=2,
				rewarid=1002,
				weight=25,
			},
			[3]={
				convoy_pool=3,
				init_weight=20,
				level=3,
				rewarid=1003,
				weight=25,
			},
			[4]={convoy_pool=4,init_weight=0,level=4,rewarid=1004,weight=25,},
			[5]={convoy_pool=5,init_weight=0,level=5,rewarid=1005,weight=25,},
		},
		id=1,
	},
}

RandomTalk={
	[1]={content=[[桀桀桀~可爱的小脑瓜蹦~]],id=1,},
	[2]={
		content=[[我听到主所爱的人的呼求，你可以带我前往吗？]],
		id=2,
	},
	[3]={content=[[请问你知道神父去哪里了吗？]],id=3,},
	[4]={content=[[求你保护我的性命，搭救我。]],id=4,},
	[5]={content=[[新兵，怎么是你？]],id=5,},
	[6]={
		content=[[箱子里有宝物哦~（对方露出一个诡异的笑容）]],
		id=6,
	},
	[7]={
		content=[[年轻人，你知道哪里不会被人打扰吗？]],
		id=7,
	},
	[8]={
		content=[[（轻勾唇角哑声道）你，真的不愿意帮我吗？]],
		id=8,
	},
	[9]={
		content=[[你看到我透着粉色光泽的强健身体了吗？]],
		id=9,
	},
	[10]={
		content=[[青涩的果实就像爱情，是甜蜜的毒药~]],
		id=10,
	},
	[11]={
		content=[[汪汪汪~~（我是一只喵~喵喵喵）]],
		id=11,
	},
	[12]={content=[[嗷呜~]],id=12,},
	[13]={content=[[喵~~喵~~喵~~]],id=13,},
	[14]={content=[[咕噜咕噜噜~~]],id=14,},
	[15]={
		content=[[有人盯上了我怀里的新衣服，请帮帮我。]],
		id=15,
	},
	[16]={
		content=[[我才不要相亲，快带我到一个别人找不到的地方！]],
		id=16,
	},
	[17]={content=[[我，我……我已经有男票了]],id=17,},
	[18]={
		content=[[他们都不是学我的武学的料，请帮我阻止他们。]],
		id=18,
	},
	[19]={
		content=[[喵~小萌茶会的票已经没了，可是他们还死活追着我。]],
		id=19,
	},
}

FollowTalk={
	[1002]={
		content={[1]=1,[2]=2,[3]=3,},
		id=1002,
		name=[[鬼幽子]],
		shape=1002,
		ui_talk={[1]=1,},
	},
	[1009]={
		content={[1]=4,[2]=5,[3]=6,},
		id=1009,
		name=[[神父]],
		shape=1009,
		ui_talk={[1]=2,},
	},
	[1010]={
		content={[1]=7,[2]=8,[3]=9,},
		id=1010,
		name=[[修女]],
		shape=1010,
		ui_talk={[1]=3,},
	},
	[1011]={
		content={[1]=10,[2]=11,[3]=12,},
		id=1011,
		name=[[信徒]],
		shape=1011,
		ui_talk={[1]=4,},
	},
	[1014]={
		content={[1]=13,[2]=14,[3]=15,},
		id=1014,
		name=[[乔焱]],
		shape=1014,
		ui_talk={[1]=5,},
	},
	[1016]={
		content={[1]=16,[2]=17,[3]=18,},
		id=1016,
		name=[[水生]],
		shape=1016,
		ui_talk={[1]=6,},
	},
	[1018]={
		content={[1]=19,[2]=20,[3]=21,},
		id=1018,
		name=[[甘]],
		shape=1018,
		ui_talk={[1]=7,},
	},
	[1020]={
		content={[1]=22,[2]=23,[3]=24,},
		id=1020,
		name=[[锁魂师]],
		shape=1020,
		ui_talk={[1]=8,},
	},
	[1200]={
		content={[1]=25,[2]=26,[3]=27,},
		id=1200,
		name=[[青翼]],
		shape=1200,
		ui_talk={[1]=9,},
	},
	[1201]={
		content={[1]=28,[2]=29,[3]=30,},
		id=1201,
		name=[[绯翼]],
		shape=1201,
		ui_talk={[1]=10,},
	},
	[1503]={
		content={[1]=31,[2]=32,[3]=33,},
		id=1503,
		name=[[喵小布]],
		shape=1503,
		ui_talk={[1]=11,},
	},
	[1504]={
		content={[1]=34,[2]=35,[3]=36,},
		id=1504,
		name=[[喵小虎]],
		shape=1504,
		ui_talk={[1]=12,},
	},
	[1505]={
		content={[1]=37,[2]=38,[3]=39,},
		id=1505,
		name=[[喵小玉]],
		shape=1505,
		ui_talk={[1]=13,},
	},
	[1506]={
		content={[1]=40,[2]=41,[3]=42,},
		id=1506,
		name=[[小狸猫]],
		shape=1506,
		ui_talk={[1]=14,},
	},
	[1508]={
		content={[1]=43,[2]=44,[3]=45,},
		id=1508,
		name=[[小惠]],
		shape=1508,
		ui_talk={[1]=15,},
	},
	[1509]={
		content={[1]=46,[2]=47,[3]=48,},
		id=1509,
		name=[[小玉]],
		shape=1509,
		ui_talk={[1]=16,},
	},
	[1510]={
		content={[1]=49,[2]=50,[3]=51,},
		id=1510,
		name=[[嘉嘉]],
		shape=1510,
		ui_talk={[1]=17,},
	},
	[1750]={
		content={[1]=52,[2]=53,[3]=54,},
		id=1750,
		name=[[白婆婆]],
		shape=1750,
		ui_talk={[1]=18,},
	},
	[1752]={
		content={[1]=55,[2]=56,[3]=57,},
		id=1752,
		name=[[喵小萌]],
		shape=1752,
		ui_talk={[1]=19,},
	},
}

TalkContent={
	[1]={content=[[桀桀桀桀~]],id=1,},
	[2]={
		content=[[好玩，好玩。让他们来吧。桀桀桀桀~]],
		id=2,
	},
	[3]={content=[[♬桀♪桀桀桀♪♪桀桀♬♫]],id=3,},
	[4]={content=[[我的心仰望你。]],id=4,},
	[5]={
		content=[[我们在爱里得蒙救赎，罪过得以赦免。]],
		id=5,
	},
	[6]={
		content=[[主，我必以勤奋向你陈明心意。]],
		id=6,
	},
	[7]={
		content=[[主最贵的名和荣耀充满了大地。]],
		id=7,
	},
	[8]={
		content=[[我要找到神父，还不能跟他们回去。]],
		id=8,
	},
	[9]={
		content=[[我们要赞美慈爱的主，他会救赎迷途之人。]],
		id=9,
	},
	[10]={content=[[喜欢吃小萌我做的包子吗]],id=10,},
	[11]={content=[[咕~~(╯﹏╰)b，好像饿了。]],id=11,},
	[12]={content=[[幸运会一直在你身边保护你。]],id=12,},
	[13]={content=[[走快点。]],id=13,},
	[14]={content=[[那些家伙还跟在后头吗？]],id=14,},
	[15]={
		content=[[切，那些人还真是忙着赶死，竟然还敢追来。]],
		id=15,
	},
	[16]={
		content=[[下次我带你去看看大海奔腾的美。]],
		id=16,
	},
	[17]={
		content=[[我不是人类，我是龟族的最富商人。]],
		id=17,
	},
	[18]={
		content=[[箱子里的宝物可不能被人抢了。]],
		id=18,
	},
	[19]={
		content=[[远山拾梦，却惊醒了梦中的你。]],
		id=19,
	},
	[20]={
		content=[[梦中飞出的红玫瑰，如风中的爱情让人措手不及。]],
		id=20,
	},
	[21]={
		content=[[年轻人，你喜欢读什么类型的书籍？]],
		id=21,
	},
	[22]={content=[[我的鬼镰，锋利吧。]],id=22,},
	[23]={
		content=[[呵呵~你不要轻易碰我比较好哦。]],
		id=23,
	},
	[24]={
		content=[[我的鬼镰能将灵魂一点一点慢慢慢慢地撕裂。]],
		id=24,
	},
	[25]={
		content=[[强健之躯是艺术，而爱，是它的灵魂！]],
		id=25,
	},
	[26]={
		content=[[爱与正义的化身，我就是比翼鸟组合的青翼~]],
		id=26,
	},
	[27]={
		content=[[啊，绯翼最近的腰真是越来越细了。]],
		id=27,
	},
	[28]={
		content=[[不忠之人即为恶，这一箭会让他神魂颠倒哟~~]],
		id=28,
	},
	[29]={
		content=[[爱与正义的化身，我就是比翼鸟组合的绯翼~]],
		id=29,
	},
	[30]={
		content=[[白婆婆说过，时尚就是流畅的线条，光滑的肌肉。]],
		id=30,
	},
	[31]={content=[[汪~]],id=31,},
	[32]={content=[[汪汪~（走快点~）]],id=32,},
	[33]={
		content=[[汪汪汪~~（我是一只喵~喵喵喵）]],
		id=33,
	},
	[34]={content=[[嗷~~嗷~]],id=34,},
	[35]={content=[[嗷呜~]],id=35,},
	[36]={content=[[嗷呜~吼~]],id=36,},
	[37]={content=[[yuyuyu~yuyuyu~]],id=37,},
	[38]={content=[[喵~~喵~~喵~~]],id=38,},
	[39]={content=[[喵~]],id=39,},
	[40]={content=[[咕噜咕噜~]],id=40,},
	[41]={content=[[咕噜咕噜噜~~]],id=41,},
	[42]={content=[[咕噜？？]],id=42,},
	[43]={content=[[我今天的衣服好看吗？]],id=43,},
	[44]={content=[[慢点走，好累啊。]],id=44,},
	[45]={content=[[今天天气真好~和我一样好看。]],id=45,},
	[46]={content=[[今天的太阳好刺眼啊。]],id=46,},
	[47]={content=[[风，喧嚣起来了。]],id=47,},
	[48]={content=[[你觉得我这个新发型好看吗？]],id=48,},
	[49]={
		content=[[慢，慢，点走。好，好，累啊。]],
		id=49,
	},
	[50]={
		content=[[我，我，不是，口吃，只是吃多了，在打嗝。]],
		id=50,
	},
	[51]={
		content=[[昨，天，一不小心，就，就吃多了。]],
		id=51,
	},
	[52]={
		content=[[年轻人，你这身装扮很时尚，有品味。]],
		id=52,
	},
	[53]={
		content=[[年轻人我看你骨骼惊奇，很适合学武。]],
		id=53,
	},
	[54]={content=[[呵呵，不要小看老人家哦。]],id=54,},
	[55]={content=[[你喜欢小萌做的包子吗？]],id=55,},
	[56]={content=[[下次我请你去茶会吧~喵]],id=56,},
	[57]={
		content=[[茶会有很多吃的，还有美味的蛋糕。]],
		id=57,
	},
}

ConvoyPool={
	[1]={
		coin=[[20000]],
		convoy_pool={[1]=1506,[2]=1503,[3]=1504,[4]=1505,},
		exp=[[5200]],
		id=1,
	},
	[2]={
		coin=[[25000]],
		convoy_pool={[1]=1016,[2]=1200,[3]=1201,},
		exp=[[5400]],
		id=2,
	},
	[3]={
		coin=[[32000]],
		convoy_pool={[1]=1009,[2]=1018,[3]=1750,},
		exp=[[5600]],
		id=3,
	},
	[4]={
		coin=[[40000]],
		convoy_pool={[1]=1002,[2]=1010,[3]=1011,[4]=1508,[5]=1509,[6]=1510,},
		exp=[[5800]],
		id=4,
	},
	[5]={
		coin=[[50000]],
		convoy_pool={[1]=1014,[2]=1020,[3]=1752,},
		exp=[[6000]],
		id=5,
	},
}

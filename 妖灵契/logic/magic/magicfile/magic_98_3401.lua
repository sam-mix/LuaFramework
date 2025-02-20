module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={
			args={sound_path=[[Magic/sound_magic_3401_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0,
		},
		[2]={args={time=1.6,},func_name=[[HideUI]],start_time=0,},
		[3]={args={player_swipe=false,},func_name=[[CameraLock]],start_time=0,},
		[4]={
			args={action_name=[[attack1]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0.1,
		},
		[5]={
			args={
				alive_time=2,
				bind_type=[[pos]],
				body_pos=[[foot]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3401/Prefabs/magic_eff_3401_att03.prefab]],
					preload=true,
				},
				excutor=[[atkobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.25,
		},
		[6]={
			args={
				alive_time=0.55,
				bind_type=[[pos]],
				body_pos=[[waist]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3401/Prefabs/magic_eff_3401_hit.prefab]],
					preload=true,
				},
				excutor=[[vicobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.4,
		},
		[7]={
			args={shake_dis=0.03,shake_rate=10,shake_time=0.2,},
			func_name=[[ShakeScreen]],
			start_time=0.5,
		},
		[8]={
			args={shake_dis=0.03,shake_rate=10,shake_time=0.2,},
			func_name=[[ShakeScreen]],
			start_time=0.8,
		},
		[9]={args={player_swipe=true,},func_name=[[CameraLock]],start_time=1.6,},
		[10]={args={},func_name=[[End]],start_time=1.6,},
	},
	group_cmds={},
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_3401/Prefabs/magic_eff_3401_att03.prefab]],
		[2]=[[Effect/Magic/magic_eff_3401/Prefabs/magic_eff_3401_hit.prefab]],
	},
	run_env=[[war]],
	type=1,
	wait_goback=false,
}

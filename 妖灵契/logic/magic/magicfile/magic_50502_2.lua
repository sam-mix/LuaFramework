module(...)
--magic editor build
DATA={
	atk_stophit=false,
	cmds={
		[1]={
			args={
				alive_time=2.5,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_505/Prefabs/magic_eff_50502_hit01.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=-0.2,},
				excutor=[[vicobjs]],
			},
			func_name=[[StandEffect]],
			start_time=0,
		},
		[2]={
			args={sound_path=[[Magic/sound_magic_50502_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0,
		},
		[3]={args={},func_name=[[End]],start_time=0.15,},
		[4]={
			args={
				alive_time=0.2,
				ease_hide_time=0.05,
				ease_show_time=0.05,
				excutor=[[vicobj]],
				mat_path=[[Material/effect_Fresnel_Blue_blend.mat]],
			},
			func_name=[[ActorMaterial]],
			start_time=1.2,
		},
		[5]={
			args={
				consider_hight=false,
				damage_follow=true,
				face_atk=false,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=1.2,
		},
		[6]={
			args={
				alive_time=1,
				bind_type=[[pos]],
				body_pos=[[foot]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_505/Prefabs/magic_eff_50501_hit02.prefab]],
					preload=true,
				},
				excutor=[[vicobjs]],
				height=0.35,
			},
			func_name=[[BodyEffect]],
			start_time=1.2,
		},
		[7]={
			args={shake_dis=0.04,shake_rate=20,shake_time=0.15,},
			func_name=[[ShakeScreen]],
			start_time=1.2,
		},
	},
	group_cmds={},
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_505/Prefabs/magic_eff_50502_hit01.prefab]],
		[2]=[[Effect/Magic/magic_eff_505/Prefabs/magic_eff_50501_hit02.prefab]],
	},
	run_env=[[war]],
	type=1,
	wait_goback=true,
}

module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={args={alive_time=0.5,},func_name=[[Name]],start_time=0,},
		[2]={
			args={sound_path=[[Magic/sound_magic_100901_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0,
		},
		[3]={
			args={
				alive_time=1.5,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_att.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[atk]],depth=0,relative_angle=0,relative_dis=0,},
				excutor=[[atkobj]],
			},
			func_name=[[StandEffect]],
			start_time=0.1,
		},
		[4]={
			args={action_name=[[attack1]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0.1,
		},
		[5]={
			args={
				alive_time=1.5,
				bind_idx=100,
				bind_type=[[node]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_att_bone15.prefab]],
					preload=true,
				},
				excutor=[[atkobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.1,
		},
		[6]={
			args={
				excutor=[[atkobj]],
				face_to=[[fixed_pos]],
				pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=0,},
				time=1,
			},
			func_name=[[FaceTo]],
			start_time=0.4,
		},
		[7]={args={},func_name=[[MagcAnimStart]],start_time=0.5,},
		[8]={
			args={
				alive_time=2,
				begin_pos={base_pos=[[atk]],depth=0.6,relative_angle=0,relative_dis=1.5,},
				delay_time=0.3,
				ease_type=[[InQuad]],
				effect={
					is_cached=false,
					magic_layer=[[top]],
					path=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_fly.prefab]],
					preload=true,
				},
				end_pos={base_pos=[[vic]],depth=0.6,relative_angle=0,relative_dis=0,},
				excutor=[[vicobj]],
				move_time=0.9,
			},
			func_name=[[ShootEffect]],
			start_time=0.7,
		},
		[9]={args={},func_name=[[MagcAnimEnd]],start_time=1.15,},
		[10]={
			args={
				alive_time=1,
				effect={
					is_cached=false,
					magic_layer=[[top]],
					path=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_hit.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[vic]],depth=0.6,relative_angle=0,relative_dis=0,},
				excutor=[[vicobjs]],
			},
			func_name=[[StandEffect]],
			start_time=1.9,
		},
		[11]={
			args={
				consider_hight=false,
				damage_follow=true,
				face_atk=true,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=1.9,
		},
		[12]={args={},func_name=[[End]],start_time=2.2,},
	},
	group_cmds={},
	magic_anim_end_time=1.15,
	magic_anim_start_time=0.5,
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_att.prefab]],
		[2]=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_att_bone15.prefab]],
		[3]=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_fly.prefab]],
		[4]=[[Effect/Magic/magic_eff_1009/Prefabs/magic_eff_100901_hit.prefab]],
	},
	run_env=[[war]],
	type=1,
	wait_goback=true,
}
